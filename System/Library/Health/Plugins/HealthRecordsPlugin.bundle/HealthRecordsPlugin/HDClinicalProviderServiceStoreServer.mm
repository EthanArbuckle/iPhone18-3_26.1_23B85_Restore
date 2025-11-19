@interface HDClinicalProviderServiceStoreServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDClinicalProviderServiceStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 providerServiceManager:(id)a7;
- (void)remote_setHealthRecordsEnvironment:(int64_t)a3 completion:(id)a4;
@end

@implementation HDClinicalProviderServiceStoreServer

- (HDClinicalProviderServiceStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 providerServiceManager:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = HDClinicalProviderServiceStoreServer;
  v14 = [(HDClinicalProviderServiceStoreServer *)&v17 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerServiceManager, a7);
  }

  return v15;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 profile];
  v17 = [v16 profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  v18 = [v17 providerServiceManager];
  if (v18)
  {
    v19 = [[a1 alloc] initWithUUID:v12 configuration:v13 client:v14 delegate:v15 providerServiceManager:v18];
  }

  else
  {
    v20 = +[NSError hk_featureUnavailableForProfileError];
    if (v20)
    {
      if (a7)
      {
        v21 = v20;
        *a7 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  return v19;
}

- (void)remote_setHealthRecordsEnvironment:(int64_t)a3 completion:(id)a4
{
  v8 = 0;
  v5 = a4;
  v6 = [HDProviderServiceSpecification setServiceEnvironment:a3 error:&v8];
  v7 = v8;
  v5[2](v5, v6, v7);
}

@end