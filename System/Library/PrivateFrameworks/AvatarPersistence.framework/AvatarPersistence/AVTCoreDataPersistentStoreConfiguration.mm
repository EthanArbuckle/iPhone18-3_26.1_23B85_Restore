@interface AVTCoreDataPersistentStoreConfiguration
+ (id)currentManagedObjectModel;
+ (id)localConfigurationWithStoreLocation:(id)location environment:(id)environment;
+ (id)modelV1;
+ (id)remoteConfigurationWithDaemonClient:(id)client environment:(id)environment;
+ (id)remoteConfigurationWithEnvironment:(id)environment;
@end

@implementation AVTCoreDataPersistentStoreConfiguration

+ (id)remoteConfigurationWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [AVTAvatarsDaemonClient alloc];
  logger = [environmentCopy logger];
  v7 = [(AVTAvatarsDaemonClient *)v5 initWithLogger:logger];

  v8 = [self remoteConfigurationWithDaemonClient:v7 environment:environmentCopy];

  return v8;
}

+ (id)remoteConfigurationWithDaemonClient:(id)client environment:(id)environment
{
  environmentCopy = environment;
  clientCopy = client;
  v7 = [[_AVTCoreDataPersistentStoreRemoteConfiguration alloc] initWithDaemonClient:clientCopy environment:environmentCopy];

  return v7;
}

+ (id)localConfigurationWithStoreLocation:(id)location environment:(id)environment
{
  environmentCopy = environment;
  locationCopy = location;
  v7 = [[_AVTCoreDataPersistentStoreLocalConfiguration alloc] initWithStoreLocation:locationCopy copiedAside:0 environment:environmentCopy];

  return v7;
}

+ (id)currentManagedObjectModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__AVTCoreDataPersistentStoreConfiguration_currentManagedObjectModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentManagedObjectModel_onceToken != -1)
  {
    dispatch_once(&currentManagedObjectModel_onceToken, block);
  }

  v2 = currentManagedObjectModel__model;

  return v2;
}

uint64_t __68__AVTCoreDataPersistentStoreConfiguration_currentManagedObjectModel__block_invoke(uint64_t a1)
{
  currentManagedObjectModel__model = [*(a1 + 32) createModel];

  return MEMORY[0x2821F96F8]();
}

+ (id)modelV1
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE450]);
  v3 = objc_alloc_init(MEMORY[0x277CBE408]);
  [v3 setName:@"Avatar"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setManagedObjectClassName:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v6 setAttributeType:1100];
  [v6 setName:@"identifier"];
  [v6 setPreservesValueInHistoryOnDeletion:1];
  v7 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v7 setAttributeType:900];
  [v7 setName:@"orderDate"];
  v8 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v8 setAttributeType:1000];
  [v8 setName:@"avatarData"];
  v9 = +[AVTCoreDataCloudKitMirroringConfiguration managedModelAttributesRequiredForMirroring];
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v11 = [v10 arrayByAddingObjectsFromArray:v9];
  [v3 setProperties:v11];

  v15 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [v2 setEntities:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end