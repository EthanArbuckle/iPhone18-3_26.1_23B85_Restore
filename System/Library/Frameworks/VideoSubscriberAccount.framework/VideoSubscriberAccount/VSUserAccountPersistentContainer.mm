@interface VSUserAccountPersistentContainer
+ (id)loadStoreURL;
- (id)initInMemory:(BOOL)memory;
- (void)configureDescriptonInMemory:(BOOL)memory;
@end

@implementation VSUserAccountPersistentContainer

- (id)initInMemory:(BOOL)memory
{
  memoryCopy = memory;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBE450];
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v13[0] = vs_frameworkBundle;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [v5 mergedModelFromBundles:v7];

  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The model parameter must not be nil."];
  }

  v12.receiver = self;
  v12.super_class = VSUserAccountPersistentContainer;
  v9 = [(NSPersistentCloudKitContainer *)&v12 initWithName:@"VSPersistentUserAccount" managedObjectModel:v8];
  v10 = v9;
  if (v9)
  {
    [(VSUserAccountPersistentContainer *)v9 configureDescriptonInMemory:memoryCopy];
  }

  return v10;
}

- (void)configureDescriptonInMemory:(BOOL)memory
{
  memoryCopy = memory;
  v14[1] = *MEMORY[0x277D85DE8];
  persistentStoreDescriptions = [(NSPersistentContainer *)self persistentStoreDescriptions];
  firstObject = [persistentStoreDescriptions firstObject];

  if (!firstObject)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self persistentStoreDescriptions] firstObject] parameter must not be nil."];
  }

  persistentStoreDescriptions2 = [(NSPersistentContainer *)self persistentStoreDescriptions];
  firstObject2 = [persistentStoreDescriptions2 firstObject];

  if (memoryCopy)
  {
    [firstObject2 setShouldAddStoreAsynchronously:0];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"/dev/null"];
    [firstObject2 setURL:v9];

    [firstObject2 setType:*MEMORY[0x277CBE170]];
  }

  else
  {
    [firstObject2 setShouldAddStoreAsynchronously:1];
    v10 = +[VSUserAccountPersistentContainer loadStoreURL];
    [firstObject2 setURL:v10];

    [firstObject2 setShouldMigrateStoreAutomatically:1];
    [firstObject2 setShouldInferMappingModelAutomatically:1];
    [firstObject2 setType:*MEMORY[0x277CBE2E8]];
    v11 = [objc_alloc(MEMORY[0x277CBE498]) initWithContainerIdentifier:@"com.apple.tv.federated"];
    [v11 setApsConnectionMachServiceName:@"com.apple.videosubscriptionsd"];
    [v11 setOperationMemoryThresholdBytes:&unk_284DF3310];
    [firstObject2 setCloudKitContainerOptions:v11];
    v12 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:@"com.apple.tv.federated"];
    [v12 setApsConnectionMachServiceName:@"com.apple.videosubscriptionsd"];
    [firstObject2 setOption:v12 forMirroringKey:*MEMORY[0x277CBE250]];
  }

  v14[0] = firstObject2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(NSPersistentCloudKitContainer *)self setPersistentStoreDescriptions:v13];
}

+ (id)loadStoreURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLsForDirectory:14 inDomains:1];
  firstObject = [v3 firstObject];

  v5 = [firstObject URLByAppendingPathComponent:@"videosubscriptionsd" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"VSUserAccounts.sqlite" isDirectory:0];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [serviceSupportDirectory URLByAppendingPathComponent:@VSUserAccounts.sqlite isDirectory:__objc_no] parameter must not be nil."];
  }

  v7 = [v5 URLByAppendingPathComponent:@"VSUserAccounts.sqlite" isDirectory:0];

  return v7;
}

@end