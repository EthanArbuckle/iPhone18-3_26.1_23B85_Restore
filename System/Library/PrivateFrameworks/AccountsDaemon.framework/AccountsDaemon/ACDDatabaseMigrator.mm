@interface ACDDatabaseMigrator
- (ACDDatabaseMigrator)init;
- (BOOL)runReturningError:(id *)a3;
- (id)_compatibleModelForStoreAtURL:(id)a3;
- (id)_fetchAllAuthorizationEntitiesForModelVersion:(int64_t)a3;
- (id)_fetchAllDataclassEntitles;
- (id)_setUpContextForMigration;
- (id)initForDatabaseAtURL:(id)a3 persistentStoreCoordinator:(id)a4 storeOptions:(id)a5;
- (int64_t)_versionForModel:(id)a3;
- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(int64_t)a3;
- (void)_migrateNameAttributeOfDataclassEntities;
- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(int64_t)a3;
- (void)_postProcessMigrationFromVersion:(int64_t)a3 migrationData:(id)a4;
- (void)_setUpContextForMigration;
@end

@implementation ACDDatabaseMigrator

- (ACDDatabaseMigrator)init
{
  [(ACDDatabaseMigrator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initForDatabaseAtURL:(id)a3 persistentStoreCoordinator:(id)a4 storeOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ACDDatabaseMigrator;
  v12 = [(ACDDatabaseMigrator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseURL, a3);
    objc_storeStrong(&v13->_persistentStoreCoordinator, a4);
    v14 = [v11 copy];
    storeOptions = v13->_storeOptions;
    v13->_storeOptions = v14;
  }

  return v13;
}

- (BOOL)runReturningError:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:];
  }

  v6 = [(ACDDatabaseMigrator *)self _setUpContextForMigration];
  migrationContext = self->_migrationContext;
  self->_migrationContext = v6;

  v8 = self->_migrationContext;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__ACDDatabaseMigrator_runReturningError___block_invoke;
  v23[3] = &unk_27848C158;
  v23[4] = self;
  v23[5] = &v30;
  v23[6] = &v24;
  [(NSManagedObjectContext *)v8 performBlockAndWait:v23];
  v9 = [(NSDictionary *)self->_storeOptions mutableCopy];
  [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE1D8]];
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:];
  }

  v11 = *MEMORY[0x277CBE2E8];
  databaseURL = self->_databaseURL;
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v22 = 0;
  v14 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:v11 configuration:0 URL:databaseURL options:v9 error:&v22];
  v15 = v22;
  if (v14)
  {

    [(ACDDatabaseMigrator *)self _postProcessMigrationFromVersion:v31[3] migrationData:v25[5]];
    v16 = 1;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator runReturningError:];
    }

    v16 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  v18 = v15;
  *a3 = v15;
LABEL_14:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
LABEL_15:
  v19 = _ACDLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke(uint64_t a1)
{
  v1 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2[2] managedObjectModel];
  *(*(*(v1 + 40) + 8) + 24) = [v2 _versionForModel:v3];

  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_1(v1 + 40);
  }

  v5 = *(*(*(v1 + 40) + 8) + 24);
  v6 = v5 < 9;
  if (v5 <= 8)
  {
    [*(v1 + 32) _migrateAccessAuthorizationsToTCCFromModelVersion:?];
    v5 = *(*(*(v1 + 40) + 8) + 24);
  }

  if (v5 == 2401802)
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v7, OS_LOG_TYPE_DEFAULT, "Performing bridge migration on a database that was created on 6.1 or earlier. Pray to the deity of your choosing that this will work.", buf, 2u);
    }

    [*(v1 + 32) _migrateNameAttributeOfDataclassEntities];
    [*(v1 + 32) _migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:*(*(*(v1 + 40) + 8) + 24)];
    v5 = *(*(*(v1 + 40) + 8) + 24);
    v6 = 1;
  }

  if (v5 < 18 || v5 == 2401802)
  {
    v9 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:*(*(v1 + 32) + 8)];
    v10 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v10 setEntity:v9];
    [v10 setReturnsObjectsAsFaults:0];
    v11 = [*(*(v1 + 32) + 8) executeFetchRequest:v10 error:0];
    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_2(v11);
    }

    if ([v11 count])
    {
      v28 = v10;
      v29 = v9;
      v30 = v1;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v20 = [v19 valueForKey:@"accountProperties"];
            if (v20)
            {
              v36[0] = @"objectID";
              v21 = [v19 objectID];
              v36[1] = @"properties";
              v37[0] = v21;
              v37[1] = v20;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
              [v13 addObject:v22];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v16);
      }

      v1 = v30;
      v23 = *(*(v30 + 48) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v13;

      v10 = v28;
      v9 = v29;
      v11 = v27;
    }
  }

  v25 = _ACDLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_3();
  }

  if (v6)
  {
    [*(*(v1 + 32) + 8) save:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(int64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _migrateAccessAuthorizationsToTCCFromModelVersion:];
  }

  v6 = [(ACDDatabaseMigrator *)self _fetchAllAuthorizationEntitiesForModelVersion:a3];
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _migrateAccessAuthorizationsToTCCFromModelVersion:v6];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    *&v10 = 138412290;
    v25 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 bundleID];
        v16 = _ACDLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v25;
          v31 = v15;
          _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "Found authorization for client: %@", buf, 0xCu);
        }

        if (v15)
        {
          v17 = [ACDClient clientWithBundleID:v15];
          v18 = objc_alloc(MEMORY[0x277CB8F58]);
          v19 = [v14 accountType];
          v20 = [v18 initWithManagedAccountType:v19];

          v21 = [v14 valueForKey:@"granted"];
          v22 = [v21 BOOLValue];

          v23 = [v20 identifier];
          [ACDTCCUtilities setTCCStateForClient:v17 accountTypeID:v23 toGranted:v22];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(int64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [(ACDDatabaseMigrator *)self _fetchAllAuthorizationEntitiesForModelVersion:a3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 valueForKey:@"oldOptions"];
        v19 = [v18 mutableCopy];

        if (v19)
        {
          v20 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:0];
          v21 = [v20 decodeObjectOfClasses:v11 forKey:@"options"];
          [v20 finishDecoding];
          if (v21)
          {
            [v17 setValue:v21 forKey:@"newOptions"];
          }

          else
          {
            v22 = _ACDLogSystem();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(ACDDatabaseMigrator *)&buf _migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:v25, v22];
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_migrateNameAttributeOfDataclassEntities
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(ACDDatabaseMigrator *)self _fetchAllDataclassEntitles];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 valueForKey:@"oldName"];
        if (v8)
        {
          [v7 setValue:v8 forKey:@"newName"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAllDataclassEntitles
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v3 = [MEMORY[0x277CBE408] entityForName:@"Dataclass" inManagedObjectContext:self->_migrationContext];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v4 setEntity:v3];
    [v4 setReturnsObjectsAsFaults:0];
    migrationContext = self->_migrationContext;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__ACDDatabaseMigrator__fetchAllDataclassEntitles__block_invoke;
    v9[3] = &unk_27848BCD0;
    v11 = &v12;
    v9[4] = self;
    v6 = v4;
    v10 = v6;
    [(NSManagedObjectContext *)migrationContext performBlockAndWait:v9];
  }

  else
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _fetchAllDataclassEntitles];
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __49__ACDDatabaseMigrator__fetchAllDataclassEntitles__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_fetchAllAuthorizationEntitiesForModelVersion:(int64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v4 = @"Authorization";
  if (a3 < 8)
  {
    v4 = @"Permission";
  }

  if (a3 == 8)
  {
    v5 = @"ClientAuthorization";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CBE408] entityForName:v5 inManagedObjectContext:self->_migrationContext];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v7 setEntity:v6];
    [v7 setReturnsObjectsAsFaults:0];
    migrationContext = self->_migrationContext;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ACDDatabaseMigrator__fetchAllAuthorizationEntitiesForModelVersion___block_invoke;
    v12[3] = &unk_27848BCD0;
    v14 = &v15;
    v12[4] = self;
    v9 = v7;
    v13 = v9;
    [(NSManagedObjectContext *)migrationContext performBlockAndWait:v12];
  }

  else
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _fetchAllAuthorizationEntitiesForModelVersion:];
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __69__ACDDatabaseMigrator__fetchAllAuthorizationEntitiesForModelVersion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_setUpContextForMigration
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ACDDatabaseMigrator *)self _setUpContextForMigration];
  }

  v4 = [(ACDDatabaseMigrator *)self _compatibleModelForStoreAtURL:self->_databaseURL];
  if (!v4)
  {
    v8 = _ACDLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator _setUpContextForMigration];
    }

    goto LABEL_10;
  }

  v5 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v4];
  privateCoordinator = self->_privateCoordinator;
  self->_privateCoordinator = v5;

  v7 = *MEMORY[0x277CBE178];
  v24[0] = *MEMORY[0x277CBE1D8];
  v24[1] = v7;
  v25[0] = MEMORY[0x277CBEC38];
  v25[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v9 = self->_privateCoordinator;
  v10 = *MEMORY[0x277CBE2E8];
  databaseURL = self->_databaseURL;
  v23 = 0;
  v12 = [(NSPersistentStoreCoordinator *)v9 addPersistentStoreWithType:v10 configuration:0 URL:databaseURL options:v8 error:&v23];
  v13 = v23;
  if (v13)
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator _setUpContextForMigration];
    }

LABEL_10:
    v15 = 0;
    goto LABEL_14;
  }

  v16 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  migrationContext = self->_migrationContext;
  self->_migrationContext = v16;

  v18 = _ACDLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _setUpContextForMigration];
  }

  v19 = self->_migrationContext;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__ACDDatabaseMigrator__setUpContextForMigration__block_invoke;
  v22[3] = &unk_27848BF78;
  v22[4] = self;
  [(NSManagedObjectContext *)v19 performBlockAndWait:v22];
  v15 = self->_migrationContext;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_compatibleModelForStoreAtURL:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBE2E8];
  v36 = 0;
  v6 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v5 URL:a3 options:0 error:&v36];
  v7 = v36;
  v8 = 0;
  if (!v7)
  {
    v31 = self;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:@"accounts" ofType:@"momd"];

    v11 = [MEMORY[0x277CCA8D8] pathsForResourcesOfType:@"mom" inDirectory:v10];
    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _compatibleModelForStoreAtURL:v11];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v30 = v10;
      v16 = *v33;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = _ACDLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_debug_impl(&dword_221D2F000, v19, OS_LOG_TYPE_DEBUG, "Checking MOM at path: %@", buf, 0xCu);
          }

          v20 = objc_alloc(MEMORY[0x277CBE450]);
          v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
          v8 = [v20 initWithContentsOfURL:v21];

          if ([v8 isConfiguration:0 compatibleWithStoreMetadata:v6])
          {
            v22 = _ACDLogSystem();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              [ACDDatabaseMigrator _compatibleModelForStoreAtURL:];
            }

            goto LABEL_18;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v8 = 0;
LABEL_18:
      v10 = v30;
      v7 = 0;
    }

    else
    {
      v8 = 0;
    }

    if ([(ACDDatabaseMigrator *)v31 _versionForModel:v8]== 9)
    {
      [MEMORY[0x277CCA8D8] pathForResource:@"accounts-brighton-bridge" ofType:@"mom" inDirectory:v10];
      v24 = v23 = v10;
      v25 = objc_alloc(MEMORY[0x277CBE450]);
      v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
      v27 = [v25 initWithContentsOfURL:v26];

      v10 = v23;
      v8 = v27;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)_versionForModel:(id)a3
{
  v3 = [a3 versionIdentifiers];
  v4 = [v3 anyObject];
  v5 = [v4 integerValue];

  return v5;
}

- (void)_postProcessMigrationFromVersion:(int64_t)a3 migrationData:(id)a4
{
  v6 = a4;
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _postProcessMigrationFromVersion:migrationData:];
  }

  if (a3 < 18 || a3 == 2401802)
  {
    v8 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke;
    v10[3] = &unk_27848C0B8;
    v11 = v8;
    v12 = self;
    v13 = v6;
    v9 = v8;
    [v9 performBlockAndWait:v10];
  }
}

void __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPersistentStoreCoordinator:*(*(a1 + 40) + 32)];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CBE460]) initWithMergeType:2];
  [v2 setMergePolicy:v3];

  v4 = *(a1 + 48);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v24 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = *(a1 + 32);
        v8 = [v6 objectForKeyedSubscript:@"objectID"];
        v9 = [v7 existingObjectWithID:v8 error:0];

        if (v9)
        {
          v25 = i;
          v10 = [v6 objectForKeyedSubscript:@"properties"];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v27 + 1) + 8 * j);
                v16 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"AccountProperty" inManagedObjectContext:*(a1 + 32)];
                [v16 setKey:v15];
                v17 = [v10 objectForKeyedSubscript:v15];
                [v16 setValue:v17];

                [v16 setOwner:v9];
              }

              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v12);
          }

          i = v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v18 = *(a1 + 32);
  v26 = 0;
  [v18 save:&v26];
  v19 = v26;
  if (v19)
  {
    v20 = _ACDLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke_cold_1();
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)runReturningError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Caught an exception while opening the persistent store post-migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runReturningError:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Unable to open database post-migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runReturningError:(char)a1 .cold.5(char a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "ACDDatabaseMigrator finished running! Result: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*a1 + 8) + 24)];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "The model version compatible with the pre-migration store is: %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "There are %@ accounts.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "Found %@ authorization entities.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_221D2F000, log, OS_LOG_TYPE_ERROR, "Failed to transform old options attribute!", buf, 2u);
}

- (void)_fetchAllAuthorizationEntitiesForModelVersion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "No entity was found with name: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_setUpContextForMigration
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Could not add the store to the persistent store coordinator. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_compatibleModelForStoreAtURL:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "Found %@ MOMs. Looking for match...", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Unable to save database post-migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end