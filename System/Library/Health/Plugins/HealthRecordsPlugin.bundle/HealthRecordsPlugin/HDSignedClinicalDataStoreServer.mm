@interface HDSignedClinicalDataStoreServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDSignedClinicalDataStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension signedClinicalDataManager:(id)manager;
- (void)remote_deleteSignedClinicalDataRecord:(id)record completion:(id)completion;
- (void)remote_fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)completion;
- (void)remote_fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)completion;
- (void)remote_fetchPublicKeyEntriesWithCompletion:(id)completion;
- (void)remote_fetchPublicKeyWithKeyID:(id)d completion:(id)completion;
- (void)remote_fetchSignedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options completion:(id)completion;
- (void)remote_insertOrReplaceIssuerRegistryEntries:(id)entries completion:(id)completion;
- (void)remote_insertOrReplacePublicKeyEntries:(id)entries completion:(id)completion;
- (void)remote_removePublicKeyEntriesWithKeyIDs:(id)ds completion:(id)completion;
- (void)remote_setRegistryIssuerContentVersion:(id)version completion:(id)completion;
- (void)remote_setRegistryPublicKeyContentVersion:(id)version completion:(id)completion;
@end

@implementation HDSignedClinicalDataStoreServer

- (HDSignedClinicalDataStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension signedClinicalDataManager:(id)manager
{
  extensionCopy = extension;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = HDSignedClinicalDataStoreServer;
  v16 = [(HDSignedClinicalDataStoreServer *)&v19 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_profileExtension, extensionCopy);
    objc_storeStrong(&v17->_signedClinicalDataManager, manager);
  }

  return v17;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  clientCopy = client;
  profile = [clientCopy profile];
  v17 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  signedClinicalDataManager = [v17 signedClinicalDataManager];
  if (signedClinicalDataManager)
  {
    v19 = [[self alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy profileExtension:v17 signedClinicalDataManager:signedClinicalDataManager];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    profile2 = [clientCopy profile];

    [NSError hk_assignError:error code:100 format:@"Cannot use %@ on profile without SCD manager: %@", v21, profile2];
    v19 = 0;
    clientCopy = v21;
  }

  return v19;
}

- (void)remote_fetchSignedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options completion:(id)completion
{
  signedClinicalDataManager = self->_signedClinicalDataManager;
  v13 = 0;
  completionCopy = completion;
  v9 = [(HDSignedClinicalDataManager *)signedClinicalDataManager signedClinicalDataGroupBackingMedicalRecord:record options:options error:&v13];
  v10 = v13;
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  (completionCopy)[2](completionCopy, v9, v12);
}

- (void)remote_deleteSignedClinicalDataRecord:(id)record completion:(id)completion
{
  signedClinicalDataManager = self->_signedClinicalDataManager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDSignedClinicalDataManager *)signedClinicalDataManager deleteSignedClinicalDataRecord:record error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v11 = 0;
  v7 = [createSignedClinicalDataRegistry issuerContentVersionWithError:&v11];
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10 || ![v8 hk_isHealthKitErrorWithCode:11])
  {
    completionCopy[2](completionCopy, v7, v9);
  }

  else
  {
    completionCopy[2](completionCopy, &off_110030, 0);
  }
}

- (void)remote_setRegistryIssuerContentVersion:(id)version completion:(id)completion
{
  completionCopy = completion;
  versionCopy = version;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v12 = 0;
  v10 = [createSignedClinicalDataRegistry setIssuerContentVersion:versionCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_insertOrReplaceIssuerRegistryEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14390;
  v14[3] = &unk_106148;
  v10 = entriesCopy;
  v15 = v10;
  v11 = createSignedClinicalDataRegistry;
  v16 = v11;
  v12 = [v11 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  if (v12)
  {
    [(HDSignedClinicalDataManager *)self->_signedClinicalDataManager updateIssuerTitlesUsingRegistry:v11];
  }

  completionCopy[2](completionCopy, v12, v13);
}

- (void)remote_fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v11 = 0;
  v7 = [createSignedClinicalDataRegistry publicKeyContentVersionWithError:&v11];
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10 || ![v8 hk_isHealthKitErrorWithCode:11])
  {
    completionCopy[2](completionCopy, v7, v9);
  }

  else
  {
    completionCopy[2](completionCopy, &off_110030, 0);
  }
}

- (void)remote_setRegistryPublicKeyContentVersion:(id)version completion:(id)completion
{
  completionCopy = completion;
  versionCopy = version;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v12 = 0;
  v10 = [createSignedClinicalDataRegistry setPublicKeyContentVersion:versionCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_insertOrReplacePublicKeyEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v16 = createSignedClinicalDataRegistry;
  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14770;
  v14[3] = &unk_106148;
  v15 = entriesCopy;
  v10 = createSignedClinicalDataRegistry;
  v11 = entriesCopy;
  v12 = [v10 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  completionCopy[2](completionCopy, v12, v13);
}

- (void)remote_fetchPublicKeyWithKeyID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v9 = [createSignedClinicalDataRegistry publicKeyWithID:dCopy];

  completionCopy[2](completionCopy, v9, 0);
}

- (void)remote_fetchPublicKeyEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_14B4C;
  v19 = sub_14B5C;
  v20 = 0;
  v13 = &v15;
  v14 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_14B64;
  v11[3] = &unk_106170;
  v7 = createSignedClinicalDataRegistry;
  v12 = v7;
  v8 = [v7 performTransactionWithError:&v14 block:v11];
  v9 = v14;
  if (v8)
  {
    v10 = v16[5];
  }

  else
  {
    v10 = 0;
  }

  completionCopy[2](completionCopy, v10, v9);

  _Block_object_dispose(&v15, 8);
}

- (void)remote_removePublicKeyEntriesWithKeyIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  createSignedClinicalDataRegistry = [WeakRetained createSignedClinicalDataRegistry];

  v16 = createSignedClinicalDataRegistry;
  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14CE4;
  v14[3] = &unk_106148;
  v15 = dsCopy;
  v10 = createSignedClinicalDataRegistry;
  v11 = dsCopy;
  v12 = [v10 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  completionCopy[2](completionCopy, v12, v13);
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end