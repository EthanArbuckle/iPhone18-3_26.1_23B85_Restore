@interface AMDCoreDataPersistentContainer
+ (id)sharedContainer;
- (void)save:(id *)a3;
@end

@implementation AMDCoreDataPersistentContainer

+ (id)sharedContainer
{
  v5 = &sharedContainer_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_3);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedContainer_sharedContainer;

  return v2;
}

void __49__AMDCoreDataPersistentContainer_sharedContainer__block_invoke(void *a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v1 = objc_alloc_init(AMDCoreDataPersistentContainer);
  v2 = sharedContainer_sharedContainer;
  sharedContainer_sharedContainer = v1;
  MEMORY[0x277D82BD8](v2);
  v13[0] = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleMediaDiscovery"];
  v12 = [v13[0] URLForResource:@"AppleMediaDiscovery" withExtension:@"momd"];
  v3 = objc_alloc(MEMORY[0x277CBE450]);
  v11 = [v3 initWithContentsOfURL:v12];
  v4 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"recommendation_v9" managedObjectModel:v11];
  [sharedContainer_sharedContainer set_container:?];
  MEMORY[0x277D82BD8](v4);
  [AMDPerf startMonitoringEvent:?];
  v5 = [sharedContainer_sharedContainer _container];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __49__AMDCoreDataPersistentContainer_sharedContainer__block_invoke_2;
  v9 = &unk_278CB6040;
  v10 = MEMORY[0x277D82BE0](v11);
  [v5 loadPersistentStoresWithCompletionHandler:?];
  MEMORY[0x277D82BD8](v5);
  [AMDPerf endMonitoringEvent:@"LoadCoreData"];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
}

void __49__AMDCoreDataPersistentContainer_sharedContainer__block_invoke_2(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37[1] = a1;
  if (v38)
  {
    v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v13 = [v38 localizedDescription];
      __os_log_helper_16_2_1_8_64(v43, v13);
      _os_log_error_impl(&dword_240CB9000, v35, v34, "Error loading CoreData: %@", v43, 0xCu);
      MEMORY[0x277D82BD8](v13);
    }

    objc_storeStrong(&v35, 0);
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v32 = 1;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v11 = v33;
      v12 = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_impl(&dword_240CB9000, v11, v12, "Attempting a lightweight coredata migration", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v30 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:a1[4]];
    v41[0] = *MEMORY[0x277CBE1D8];
    v42[0] = MEMORY[0x277CBEC38];
    v41[1] = *MEMORY[0x277CBE178];
    v42[1] = MEMORY[0x277CBEC38];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v28 = 0;
    v8 = v30;
    v7 = *MEMORY[0x277CBE2E8];
    v9 = [location[0] URL];
    v27 = v28;
    v10 = [v8 addPersistentStoreWithType:v7 configuration:0 URL:? options:? error:?];
    objc_storeStrong(&v28, v27);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v9);
    if (v10)
    {
      v23 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v3 = v23;
        v4 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_impl(&dword_240CB9000, v3, v4, "Lightweight CoreData migration was successful", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      [AMDFrameworkMetrics log:@"Success" withKey:@"CoreDataMigration" atVerbosity:0];
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [v28 localizedDescription];
      v26 = [v5 stringWithFormat:@"Migration failed with error: %@", v6];
      MEMORY[0x277D82BD8](v6);
      v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v40, v26);
        _os_log_error_impl(&dword_240CB9000, v25, v24, "%@", v40, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      [AMDFrameworkMetrics log:v26 withKey:@"CoreDataMigrationError" atVerbosity:0];
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v37[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37[0], OS_LOG_TYPE_DEBUG))
    {
      v18 = [location[0] URL];
      __os_log_helper_16_2_1_8_64(v44, v18);
      _os_log_debug_impl(&dword_240CB9000, v37[0], v36, "Loaded CoreData from URL: %@", v44, 0xCu);
      MEMORY[0x277D82BD8](v18);
    }

    objc_storeStrong(v37, 0);
    v15 = [sharedContainer_sharedContainer _container];
    v14 = [v15 newBackgroundContext];
    [sharedContainer_sharedContainer set_moc:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v16 = *MEMORY[0x277CBE1C8];
    v17 = [sharedContainer_sharedContainer _moc];
    [v17 setMergePolicy:v16];
    MEMORY[0x277D82BD8](v17);
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)save:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  v8 = a3;
  v5 = [(AMDCoreDataPersistentContainer *)self _moc];
  [(NSManagedObjectContext *)v5 save:v8];
  MEMORY[0x277D82BD8](v5);
  if (*v8)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [*v8 localizedDescription];
    v7 = [v3 stringWithFormat:@"Error saving local MOC: %@", v4];
    MEMORY[0x277D82BD8](v4);
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, v7);
      _os_log_error_impl(&dword_240CB9000, location, OS_LOG_TYPE_ERROR, "%@", v11, 0xCu);
    }

    objc_storeStrong(&location, 0);
    [AMDFrameworkMetrics log:v7 withKey:@"MOCError" atVerbosity:0];
    objc_storeStrong(&v7, 0);
  }

  *MEMORY[0x277D85DE8];
}

@end