resourceGroupName="myeastusresourcegroupx"
locationUS="eastus"
certificatePassword="passKword123$"
certificateSubjectName="azcsn.eastus.cloudapp.azure.com"
clusterName="myazsfcluster"
clusterSize=2
operatingSystem="UbuntuServer1604"
vaultName="myusvault"
vmPassword="passw0rD101£"
vmUsername="sftestuser"
sleep 5
az group create --name $resourceGroupName --location $locationUS
sleep 20
az sf cluster create --resource-group $resourceGroupName --location $locationUS --certificate-output-folder . --certificate-password $certificatePassword --certificate-subject-name $certificateSubjectName --cluster-name $clusterName --cluster-size $clusterSize --os $operatingSystem --vault-name $vaultName --vault-resource-group $resourceGroupName --vm-password $vmPassword --vm-user-name $vmUsername
sleep 3