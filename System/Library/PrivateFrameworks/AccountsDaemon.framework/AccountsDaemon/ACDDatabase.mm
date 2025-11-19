@interface ACDDatabase
- (ACDDatabase)init;
- (ACDDatabase)initWithDatabaseURL:(id)a3;
- (ACDDatabase)initWithDatabaseURL:(id)a3 storeOptions:(id)a4;
- (BOOL)_performBackupToURL:(id)a3 unverifiedBackupURL:(id)a4 error:(id *)a5;
- (BOOL)_persistentStoreCoodinator_resetPersistentStoreCoordinatorWithError:(id *)a3;
- (BOOL)_shouldResetPersistentStoreAfterError:(id)a3;
- (BOOL)performBackupReturningError:(id *)a3;
- (BOOL)resetReturningError:(id *)a3;
- (BOOL)restoreFromBackupReturningError:(id *)a3;
- (NSString)description;
- (id)_addPersistentStoreWithType:(id)a3 configuration:(id)a4 URL:(id)a5 options:(id)a6 error:(id *)a7;
- (id)_backupURL;
- (id)_unverifiedBackupURL;
- (id)createConnection;
- (void)databaseConnection:(id)a3 encounteredUnrecoverableError:(id)a4;
@end

@implementation ACDDatabase

- (id)createConnection
{
  v3 = [[ACDDatabaseConnection alloc] initWithPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  [(ACDDatabaseConnection *)v3 setDelegate:self];

  return v3;
}

- (ACDDatabase)init
{
  [(ACDDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDDatabase)initWithDatabaseURL:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBE1D8];
  v11[0] = *MEMORY[0x277CBE178];
  v11[1] = v4;
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = MEMORY[0x277CBEC28];
  v11[2] = *MEMORY[0x277CBE240];
  v12[2] = *MEMORY[0x277CCA1B8];
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [(ACDDatabase *)self initWithDatabaseURL:v6 storeOptions:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (ACDDatabase)initWithDatabaseURL:(id)a3 storeOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [ACDDatabase initWithDatabaseURL:storeOptions:];
  }

  if (([v7 isFileURL] & 1) == 0)
  {
    [ACDDatabase initWithDatabaseURL:storeOptions:];
  }

  v36.receiver = self;
  v36.super_class = ACDDatabase;
  v9 = [(ACDDatabase *)&v36 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseURL, a3);
    v11 = [v8 copy];
    storeOptions = v10->_storeOptions;
    v10->_storeOptions = v11;

    v13 = _ACDManagedObjectModel();
    v14 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v13];
    persistentStoreCoordinator = v10->_persistentStoreCoordinator;
    v10->_persistentStoreCoordinator = v14;

    v16 = *MEMORY[0x277CBE2E8];
    v17 = v10->_storeOptions;
    v35 = 0;
    v18 = [(ACDDatabase *)v10 _addPersistentStoreWithType:v16 configuration:0 URL:v7 options:v17 error:&v35];
    v19 = v35;
    v20 = _ACDLogSystem();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [ACDDatabase initWithDatabaseURL:v21 storeOptions:?];
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(ACDDatabase *)&v10->_storeOptions initWithDatabaseURL:v19 storeOptions:v21];
      }

      v22 = [(ACDDatabase *)v10 _shouldResetPersistentStoreAfterError:v19];
      if (v19)
      {
        v23 = +[ACDEventLedger sharedLedger];
        v24 = [v19 description];
        [v23 recordEvent:v24];
      }

      if (!v22)
      {
LABEL_16:
        if ([v19 ac_isDiskFullSQLError])
        {
          v31 = _ACDLogSystem();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [ACDDatabase initWithDatabaseURL:storeOptions:];
          }
        }

        else
        {
          v32 = 0;
          v26 = [(ACDDatabase *)v10 createConnection];
          v27 = [[ACDDatabaseInitializer alloc] initWithDatabaseConnection:v26];
          v28 = [(ACDDatabaseInitializer *)v27 updateDefaultContentIfNecessary:&v32];

          v29 = v32;
          if (v28)
          {

            goto LABEL_19;
          }

          v31 = _ACDLogSystem();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [ACDDatabase initWithDatabaseURL:storeOptions:];
          }
        }

        exit(0);
      }

      v25 = v10->_persistentStoreCoordinator;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__ACDDatabase_initWithDatabaseURL_storeOptions___block_invoke;
      v33[3] = &unk_27848BF78;
      v34 = v10;
      [(NSPersistentStoreCoordinator *)v25 performBlockAndWait:v33];
      v21 = v34;
    }

    goto LABEL_16;
  }

LABEL_19:

  return v10;
}

void __48__ACDDatabase_initWithDatabaseURL_storeOptions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v7 = 0;
  v2 = [v1 _persistentStoreCoodinator_resetPersistentStoreCoordinatorWithError:&v7];
  v3 = v7;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v2];
    *buf = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_221D2F000, v4, OS_LOG_TYPE_DEFAULT, "Reset persistentStoreCoordinator, success: %@, error: %@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_backupURL
{
  v3 = [(ACDDatabase *)self databaseURL];
  v4 = [v3 lastPathComponent];

  v5 = [(ACDDatabase *)self databaseURL];
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = [v6 URLByAppendingPathComponent:@"VerifiedBackup" isDirectory:1];

  v8 = [v7 URLByAppendingPathComponent:v4 isDirectory:0];

  return v8;
}

- (id)_unverifiedBackupURL
{
  v3 = [(ACDDatabase *)self databaseURL];
  v4 = [v3 lastPathComponent];

  v5 = [(ACDDatabase *)self databaseURL];
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = [v6 URLByAppendingPathComponent:@"UnverifiedBackup" isDirectory:1];

  v8 = [v7 URLByAppendingPathComponent:v4 isDirectory:0];

  return v8;
}

- (BOOL)performBackupReturningError:(id *)a3
{
  v5 = [(ACDDatabase *)self _backupURL];
  v6 = [(ACDDatabase *)self _unverifiedBackupURL];
  v7 = [v5 URLByDeletingLastPathComponent];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v21];
  v10 = v21;

  if (v9)
  {
    v11 = [v6 URLByDeletingLastPathComponent];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = v10;
    v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v20];
    v14 = v20;

    if (v13)
    {
      v15 = [(ACDDatabase *)self _performBackupToURL:v5 unverifiedBackupURL:v6 error:a3];
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      [v16 removeItemAtURL:v11 error:0];
    }

    else if (a3)
    {
      v18 = v14;
      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v17 = v10;
      v15 = 0;
      *a3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v14 = v10;
  }

  return v15;
}

- (BOOL)restoreFromBackupReturningError:(id *)a3
{
  v5 = [(ACDDatabase *)self _backupURL];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2;
    v21 = __Block_byref_object_dispose__2;
    v22 = 0;
    persistentStoreCoordinator = self->_persistentStoreCoordinator;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__ACDDatabase_restoreFromBackupReturningError___block_invoke;
    v13[3] = &unk_27848C130;
    v15 = &v23;
    v13[4] = self;
    v14 = v5;
    v16 = &v17;
    [(NSPersistentStoreCoordinator *)persistentStoreCoordinator performBlockAndWait:v13];
    if (a3)
    {
      *a3 = v18[5];
    }

    v10 = *(v24 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = _ACDLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabase restoreFromBackupReturningError:];
    }

    v10 = 0;
  }

  return v10 & 1;
}

void __47__ACDDatabase_restoreFromBackupReturningError___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[1];
  v7 = *MEMORY[0x277CBE2E8];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = [v6 replacePersistentStoreAtURL:v4 destinationOptions:v5 withPersistentStoreFromURL:v2 sourceOptions:v5 storeType:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[6] + 8) + 24) = v9;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v11 = a1[4];
    v10 = a1[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(a1[7] + 8);
    v16 = *(v14 + 40);
    v15 = [v12 addPersistentStoreWithType:v7 configuration:0 URL:v10 options:v13 error:&v16];
    objc_storeStrong((v14 + 40), v16);
    *(*(a1[6] + 8) + 24) = v15 != 0;
  }
}

- (BOOL)resetReturningError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ACDDatabase_resetReturningError___block_invoke;
  v7[3] = &unk_27848C158;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  [(NSPersistentStoreCoordinator *)persistentStoreCoordinator performBlockAndWait:v7];
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

void __35__ACDDatabase_resetReturningError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _persistentStoreCoodinator_resetPersistentStoreCoordinatorWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (id)_addPersistentStoreWithType:(id)a3 configuration:(id)a4 URL:(id)a5 options:(id)a6 error:(id *)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator addPersistentStoreWithType:v12 configuration:v13 URL:v14 options:v15 error:a7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_shouldResetPersistentStoreAfterError:(id)a3
{
  v4 = a3;
  if ([v4 code] == 134100)
  {
    v5 = _ACDLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to migrate persistentStore...", buf, 2u);
    }

    v6 = [[ACDDatabaseMigrator alloc] initForDatabaseAtURL:self->_databaseURL persistentStoreCoordinator:self->_persistentStoreCoordinator storeOptions:self->_storeOptions];
    v18 = 0;
    v7 = [v6 runReturningError:&v18];
    v8 = _ACDLogSystem();
    v9 = v8;
    if (!v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ACDDatabase _shouldResetPersistentStoreAfterError:];
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "Successfully migrated existing persistentStore!", buf, 2u);
    }
  }

  if (![v4 ac_isUnrecoverableDatabaseError])
  {
    v10 = 0;
    goto LABEL_21;
  }

LABEL_13:
  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to restore persistentStore...", buf, 2u);
  }

  v17 = 0;
  v12 = [(ACDDatabase *)self restoreFromBackupReturningError:&v17];
  v13 = v17;
  v14 = _ACDLogSystem();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEFAULT, "Successfully restored persistentStore!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ACDDatabase _shouldResetPersistentStoreAfterError:];
  }

  v10 = !v12;
LABEL_21:

  return v10;
}

- (BOOL)_performBackupToURL:(id)a3 unverifiedBackupURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ACDDatabase _performBackupToURL:unverifiedBackupURL:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [ACDDatabase _performBackupToURL:unverifiedBackupURL:error:];
LABEL_3:
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__ACDDatabase__performBackupToURL_unverifiedBackupURL_error___block_invoke;
  v23[3] = &unk_27848C130;
  v25 = &v33;
  v23[4] = self;
  v12 = v10;
  v24 = v12;
  v26 = &v27;
  [(NSPersistentStoreCoordinator *)persistentStoreCoordinator performBlockAndWait:v23];
  if ((v34[3] & 1) == 0)
  {
    if (a5)
    {
      v14 = v28[5];
      goto LABEL_9;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_15;
  }

  [v12 fileSystemRepresentation];
  v13 = _sqlite3_integrity_check();
  if (v13)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:v13 userInfo:0];
LABEL_9:
      v15 = 0;
      *a5 = v14;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v16 = self->_persistentStoreCoordinator;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__ACDDatabase__performBackupToURL_unverifiedBackupURL_error___block_invoke_2;
  v18[3] = &unk_27848C180;
  v21 = &v33;
  v18[4] = self;
  v19 = v8;
  v20 = v12;
  v22 = &v27;
  [(NSPersistentStoreCoordinator *)v16 performBlockAndWait:v18];
  v15 = *(v34 + 24);
  if (a5 && (v34[3] & 1) == 0)
  {
    *a5 = v28[5];
  }

LABEL_15:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v15;
}

void __61__ACDDatabase__performBackupToURL_unverifiedBackupURL_error___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = *MEMORY[0x277CBE2E8];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = [v4 replacePersistentStoreAtURL:v2 destinationOptions:v5 withPersistentStoreFromURL:v6 sourceOptions:v5 storeType:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[6] + 8) + 24) = v9;
}

void __61__ACDDatabase__performBackupToURL_unverifiedBackupURL_error___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = a1[6];
  v7 = *MEMORY[0x277CBE2E8];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [v4 replacePersistentStoreAtURL:v2 destinationOptions:v5 withPersistentStoreFromURL:v6 sourceOptions:v5 storeType:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[7] + 8) + 24) = v9;
}

- (BOOL)_persistentStoreCoodinator_resetPersistentStoreCoordinatorWithError:(id *)a3
{
  databaseURL = self->_databaseURL;
  v6 = *MEMORY[0x277CBE2E8];
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  storeOptions = self->_storeOptions;
  v20 = 0;
  v9 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator destroyPersistentStoreAtURL:databaseURL withType:v6 options:storeOptions error:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    v13 = self->_storeOptions;
    v12 = self->_databaseURL;
    v19 = v10;
    v14 = [(ACDDatabase *)self _addPersistentStoreWithType:v6 configuration:0 URL:v12 options:v13 error:&v19];
    v15 = v19;

    v16 = v14 != 0;
    v11 = v15;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = 0;
  if (a3)
  {
LABEL_5:
    v17 = v11;
    *a3 = v11;
  }

LABEL_6:

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACDDatabase *)self databaseURL];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@ }>", v5, self, v6];

  return v7;
}

- (void)databaseConnection:(id)a3 encounteredUnrecoverableError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ACDDatabase.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"databaseConnection"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"ACDDatabase.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke;
  v14[3] = &unk_27848BF78;
  v14[4] = self;
  [(NSPersistentStoreCoordinator *)persistentStoreCoordinator performBlockAndWait:v14];
  [MEMORY[0x277CCACA8] stringWithFormat:@"Fatal database error encountered: %@", v9];
  v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v11);
}

void __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v18 = 0;
  v3 = [v1 restoreFromBackupReturningError:&v18];
  v4 = v18;
  v5 = _ACDLogSystem();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*v2 _backupURL];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully restored with backup at URL: %@", buf, 0xCu);
    }

    v8 = +[ACDEventLedger sharedLedger];
    [v8 recordEvent:@"Restored database from backup"];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke_cold_1(v2);
    }

    v9 = *v2;
    v17 = 0;
    v10 = [v9 _persistentStoreCoodinator_resetPersistentStoreCoordinatorWithError:&v17];
    v8 = v17;
    v11 = _ACDLogSystem();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*v2 databaseURL];
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEFAULT, "Successfully reset the database at URL: %@", buf, 0xCu);
      }

      v14 = @"Reset database";
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke_cold_2(v2);
      }

      v14 = @"Failed to reset database";
    }

    v15 = +[ACDEventLedger sharedLedger];
    [v15 recordEvent:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseURL:storeOptions:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"databaseURL" object:? file:? lineNumber:? description:?];
}

- (void)initWithDatabaseURL:storeOptions:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithDatabaseURL:(uint64_t *)a1 storeOptions:(NSObject *)a2 .cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138477827;
  v5 = v2;
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "Successfully added persistentStore with options: %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseURL:(os_log_t)log storeOptions:.cold.4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138478083;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_221D2F000, log, OS_LOG_TYPE_ERROR, "Failed to add persistentStore with options: %{private}@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseURL:storeOptions:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldResetPersistentStoreAfterError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performBackupToURL:unverifiedBackupURL:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"backupURL" object:? file:? lineNumber:? description:?];
}

- (void)_performBackupToURL:unverifiedBackupURL:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"unverifiedBackupURL" object:? file:? lineNumber:? description:?];
}

void __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 _backupURL];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v2, v3, "Failed to restore with backup at URL: %@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __64__ACDDatabase_databaseConnection_encounteredUnrecoverableError___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 databaseURL];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v2, v3, "Failed to reset the database at URL: %@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end