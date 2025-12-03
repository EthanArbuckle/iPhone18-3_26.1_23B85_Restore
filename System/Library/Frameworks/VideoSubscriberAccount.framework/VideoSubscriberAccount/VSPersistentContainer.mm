@interface VSPersistentContainer
+ (id)directoryURL;
+ (id)legacyDirectoryURL;
+ (void)directoryURL;
- (VSPersistentContainer)initWithModelVersion:(int64_t)version;
- (id)insertDeveloperIdentityProviderInContext:(id)context;
- (void)migrateContainerIfNecessary;
- (void)performBlock:(id)block;
@end

@implementation VSPersistentContainer

+ (id)legacyDirectoryURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  firstObject = [v3 firstObject];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = [firstObject URLByAppendingPathComponent:bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)directoryURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  firstObject = [v3 firstObject];

  if (!firstObject)
  {
    v8 = 0;
    goto LABEL_22;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    path2 = VSErrorLogObject();
    if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
    {
      +[VSPersistentContainer directoryURL];
    }

    v8 = 0;
    goto LABEL_21;
  }

  v7 = [firstObject URLByAppendingPathComponent:bundleIdentifier];
  v8 = v7;
  if (!v7)
  {
    path2 = VSErrorLogObject();
    if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
    {
      +[VSPersistentContainer directoryURL];
    }

    goto LABEL_21;
  }

  path = [v7 path];

  if (!path)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [directoryURL path] parameter must not be nil."];
  }

  path2 = [v8 path];
  v18 = 0;
  v11 = [v2 createDirectoryAtPath:path2 withIntermediateDirectories:0 attributes:0 error:&v18];
  v12 = v18;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    domain = [v12 domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      code = [v13 code];

      if (code == 516)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v16 = VSErrorLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[VSPersistentContainer directoryURL];
    }
  }

LABEL_20:

LABEL_21:
LABEL_22:

  return v8;
}

- (void)migrateContainerIfNecessary
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (VSPersistentContainer)initWithModelVersion:(int64_t)version
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = VSPersistentContainer;
  v4 = [(VSPersistentContainer *)&v21 init];
  v5 = v4;
  if (v4)
  {
    [(VSPersistentContainer *)v4 migrateContainerIfNecessary];
    v5->_modelVersion = version;
    v6 = [MEMORY[0x277CBE450] vs_developerModeModelForVersion:version];
    directoryURL = [objc_opt_class() directoryURL];
    v8 = [directoryURL URLByAppendingPathComponent:@"DeveloperIdentityProviders.sqlite"];
    v9 = *MEMORY[0x277CBE2E8];
    v10 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"Developer Identity Providers" managedObjectModel:v6];
    persistentContainer = v5->_persistentContainer;
    v5->_persistentContainer = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBE4E0]);
    [v12 setURL:v8];
    [v12 setType:v9];
    [v12 setConfiguration:0];
    [v12 setShouldAddStoreAsynchronously:0];
    [v12 setShouldMigrateStoreAutomatically:1];
    [v12 setShouldInferMappingModelAutomatically:1];
    v13 = v5->_persistentContainer;
    v22[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [(NSPersistentContainer *)v13 setPersistentStoreDescriptions:v14];

    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "Will load persistent stores for developer identity providers.", v20, 2u);
    }

    [(NSPersistentContainer *)v5->_persistentContainer loadPersistentStoresWithCompletionHandler:&__block_literal_global_7];
    viewContext = [(NSPersistentContainer *)v5->_persistentContainer viewContext];
    viewContext = v5->_viewContext;
    v5->_viewContext = viewContext;

    viewContext2 = [(VSPersistentContainer *)v5 viewContext];
    [viewContext2 setMergePolicy:*MEMORY[0x277CBE1E0]];
  }

  return v5;
}

void __46__VSPersistentContainer_initWithModelVersion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Did load persistent stores for developer identity providers.", v6, 2u);
  }

  if (v3)
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__VSPersistentContainer_initWithModelVersion___block_invoke_cold_1();
    }
  }
}

- (id)insertDeveloperIdentityProviderInContext:(id)context
{
  contextCopy = context;
  v4 = [[VSDeveloperIdentityProvider alloc] initWithContext:contextCopy];

  return v4;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  viewContext = [(VSPersistentContainer *)self viewContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__VSPersistentContainer_performBlock___block_invoke;
  v8[3] = &unk_278B737F8;
  v9 = viewContext;
  v10 = blockCopy;
  v6 = viewContext;
  v7 = blockCopy;
  [v6 performBlock:v8];
}

+ (void)directoryURL
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__VSPersistentContainer_initWithModelVersion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end