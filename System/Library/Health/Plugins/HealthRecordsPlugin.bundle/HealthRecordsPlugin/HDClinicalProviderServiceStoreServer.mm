@interface HDClinicalProviderServiceStoreServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDClinicalProviderServiceStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate providerServiceManager:(id)manager;
- (void)remote_setHealthRecordsEnvironment:(int64_t)environment completion:(id)completion;
@end

@implementation HDClinicalProviderServiceStoreServer

- (HDClinicalProviderServiceStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate providerServiceManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HDClinicalProviderServiceStoreServer;
  v14 = [(HDClinicalProviderServiceStoreServer *)&v17 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerServiceManager, manager);
  }

  return v15;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v17 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  providerServiceManager = [v17 providerServiceManager];
  if (providerServiceManager)
  {
    v19 = [[self alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy providerServiceManager:providerServiceManager];
  }

  else
  {
    v20 = +[NSError hk_featureUnavailableForProfileError];
    if (v20)
    {
      if (error)
      {
        v21 = v20;
        *error = v20;
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

- (void)remote_setHealthRecordsEnvironment:(int64_t)environment completion:(id)completion
{
  v8 = 0;
  completionCopy = completion;
  v6 = [HDProviderServiceSpecification setServiceEnvironment:environment error:&v8];
  v7 = v8;
  completionCopy[2](completionCopy, v6, v7);
}

@end