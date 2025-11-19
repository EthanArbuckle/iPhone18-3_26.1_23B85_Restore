@interface HDSignedClinicalDataStoreServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDSignedClinicalDataStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7 signedClinicalDataManager:(id)a8;
- (void)remote_deleteSignedClinicalDataRecord:(id)a3 completion:(id)a4;
- (void)remote_fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)a3;
- (void)remote_fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)a3;
- (void)remote_fetchPublicKeyEntriesWithCompletion:(id)a3;
- (void)remote_fetchPublicKeyWithKeyID:(id)a3 completion:(id)a4;
- (void)remote_fetchSignedClinicalDataGroupBackingMedicalRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_insertOrReplaceIssuerRegistryEntries:(id)a3 completion:(id)a4;
- (void)remote_insertOrReplacePublicKeyEntries:(id)a3 completion:(id)a4;
- (void)remote_removePublicKeyEntriesWithKeyIDs:(id)a3 completion:(id)a4;
- (void)remote_setRegistryIssuerContentVersion:(id)a3 completion:(id)a4;
- (void)remote_setRegistryPublicKeyContentVersion:(id)a3 completion:(id)a4;
@end

@implementation HDSignedClinicalDataStoreServer

- (HDSignedClinicalDataStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7 signedClinicalDataManager:(id)a8
{
  v14 = a7;
  v15 = a8;
  v19.receiver = self;
  v19.super_class = HDSignedClinicalDataStoreServer;
  v16 = [(HDSignedClinicalDataStoreServer *)&v19 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_profileExtension, v14);
    objc_storeStrong(&v17->_signedClinicalDataManager, a8);
  }

  return v17;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a5;
  v16 = [v15 profile];
  v17 = [v16 profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  v18 = [v17 signedClinicalDataManager];
  if (v18)
  {
    v19 = [[a1 alloc] initWithUUID:v12 configuration:v13 client:v15 delegate:v14 profileExtension:v17 signedClinicalDataManager:v18];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v15 profile];

    [NSError hk_assignError:a7 code:100 format:@"Cannot use %@ on profile without SCD manager: %@", v21, v22];
    v19 = 0;
    v15 = v21;
  }

  return v19;
}

- (void)remote_fetchSignedClinicalDataGroupBackingMedicalRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  signedClinicalDataManager = self->_signedClinicalDataManager;
  v13 = 0;
  v8 = a5;
  v9 = [(HDSignedClinicalDataManager *)signedClinicalDataManager signedClinicalDataGroupBackingMedicalRecord:a3 options:a4 error:&v13];
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

  (v8)[2](v8, v9, v12);
}

- (void)remote_deleteSignedClinicalDataRecord:(id)a3 completion:(id)a4
{
  signedClinicalDataManager = self->_signedClinicalDataManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDSignedClinicalDataManager *)signedClinicalDataManager deleteSignedClinicalDataRecord:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = [WeakRetained createSignedClinicalDataRegistry];

  v11 = 0;
  v7 = [v6 issuerContentVersionWithError:&v11];
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
    v4[2](v4, v7, v9);
  }

  else
  {
    v4[2](v4, &off_110030, 0);
  }
}

- (void)remote_setRegistryIssuerContentVersion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained createSignedClinicalDataRegistry];

  v12 = 0;
  v10 = [v9 setIssuerContentVersion:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_insertOrReplaceIssuerRegistryEntries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained createSignedClinicalDataRegistry];

  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14390;
  v14[3] = &unk_106148;
  v10 = v6;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = [v11 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  if (v12)
  {
    [(HDSignedClinicalDataManager *)self->_signedClinicalDataManager updateIssuerTitlesUsingRegistry:v11];
  }

  v7[2](v7, v12, v13);
}

- (void)remote_fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = [WeakRetained createSignedClinicalDataRegistry];

  v11 = 0;
  v7 = [v6 publicKeyContentVersionWithError:&v11];
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
    v4[2](v4, v7, v9);
  }

  else
  {
    v4[2](v4, &off_110030, 0);
  }
}

- (void)remote_setRegistryPublicKeyContentVersion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained createSignedClinicalDataRegistry];

  v12 = 0;
  v10 = [v9 setPublicKeyContentVersion:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_insertOrReplacePublicKeyEntries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained createSignedClinicalDataRegistry];

  v16 = v9;
  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14770;
  v14[3] = &unk_106148;
  v15 = v6;
  v10 = v9;
  v11 = v6;
  v12 = [v10 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  v7[2](v7, v12, v13);
}

- (void)remote_fetchPublicKeyWithKeyID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v10 = [WeakRetained createSignedClinicalDataRegistry];

  v9 = [v10 publicKeyWithID:v7];

  v6[2](v6, v9, 0);
}

- (void)remote_fetchPublicKeyEntriesWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = [WeakRetained createSignedClinicalDataRegistry];

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
  v7 = v6;
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

  v4[2](v4, v10, v9);

  _Block_object_dispose(&v15, 8);
}

- (void)remote_removePublicKeyEntriesWithKeyIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained createSignedClinicalDataRegistry];

  v16 = v9;
  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_14CE4;
  v14[3] = &unk_106148;
  v15 = v6;
  v10 = v9;
  v11 = v6;
  v12 = [v10 performTransactionWithError:&v17 block:v14];
  v13 = v17;
  v7[2](v7, v12, v13);
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end