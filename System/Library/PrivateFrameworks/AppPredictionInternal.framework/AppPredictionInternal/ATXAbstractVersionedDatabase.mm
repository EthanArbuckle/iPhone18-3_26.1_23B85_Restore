@interface ATXAbstractVersionedDatabase
- (ATXAbstractVersionedDatabase)initWithDbPath:(id)path;
- (ATXAbstractVersionedDatabase)initWithDefaultPath:(id)path;
- (BOOL)_configureDatabase;
- (BOOL)_initializeTables;
- (_PASSqliteDatabase)db;
- (id)createSchema;
- (int64_t)countRowsOfTable:(id)table;
- (int64_t)currentSchemaVersion;
- (void)_disconnectFromDb;
- (void)_initializeSchemaVersion:(int64_t)version;
- (void)_runMigration;
- (void)_startDatabase;
@end

@implementation ATXAbstractVersionedDatabase

- (_PASSqliteDatabase)db
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_dbInitialized)
  {
    self->_dbInitialized = 1;
    [(ATXAbstractVersionedDatabase *)self _startDatabase];
  }

  db = self->_db;

  return db;
}

- (ATXAbstractVersionedDatabase)initWithDefaultPath:(id)path
{
  v4 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:path];
  v5 = [(ATXAbstractVersionedDatabase *)self initWithDbPath:v4];

  return v5;
}

- (ATXAbstractVersionedDatabase)initWithDbPath:(id)path
{
  pathCopy = path;
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXAbstractVersionedDatabase initWithDbPath:v6];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Cannot call _ATXNotificationDatabase init until class c unlocked"];
    [MEMORY[0x277D42578] simulateCrashWithDescription:@"Cannot call _ATXNotificationDatabase init until class c unlocked"];
  }

  v15.receiver = self;
  v15.super_class = ATXAbstractVersionedDatabase;
  v7 = [(ATXAbstractVersionedDatabase *)&v15 init];
  v8 = v7;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ATXAbstractVersionedDatabase_initWithDbPath___block_invoke;
    block[3] = &unk_278596BB8;
    v9 = v7;
    v14 = v9;
    if (initWithDbPath___pasOnceToken3 != -1)
    {
      dispatch_once(&initWithDbPath___pasOnceToken3, block);
    }

    v10 = initWithDbPath___pasExprOnceResult;

    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_path, path);
  }

  return v8;
}

void __47__ATXAbstractVersionedDatabase_initWithDbPath___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = dispatch_queue_create([v7 UTF8String], v4);

  v9 = initWithDbPath___pasExprOnceResult;
  initWithDbPath___pasExprOnceResult = v8;

  objc_autoreleasePoolPop(v2);
}

- (void)_startDatabase
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *self;
  OUTLINED_FUNCTION_0_21();
  _os_log_error_impl(&dword_2263AA000, v2, OS_LOG_TYPE_ERROR, "Could not open sqlite database at %@: %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectFromDb
{
  db = self->_db;
  if (db)
  {
    [(_PASSqliteDatabase *)db closePermanently];
    v4 = self->_db;
    self->_db = 0;
  }
}

- (BOOL)_configureDatabase
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [&unk_283A57E48 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(&unk_283A57E48);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        db = self->_db;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __50__ATXAbstractVersionedDatabase__configureDatabase__block_invoke;
        v11[3] = &unk_27859A1A0;
        v11[4] = &v12;
        [(_PASSqliteDatabase *)db prepAndRunQuery:v6 onPrep:0 onRow:0 onError:v11];
        v8 = *(v13 + 24);
        _Block_object_dispose(&v12, 8);
        if (v8)
        {
          result = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [&unk_283A57E48 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createSchema
{
  createCustomSchema = [(ATXAbstractVersionedDatabase *)self createCustomSchema];
  v3 = [createCustomSchema arrayByAddingObject:{@"CREATE TABLE IF NOT EXISTS meta (id INTEGER PRIMARY KEY, version INT)"}];

  return v3;
}

- (int64_t)currentSchemaVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ATXAbstractVersionedDatabase *)self db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ATXAbstractVersionedDatabase_currentSchemaVersion__block_invoke;
  v5[3] = &unk_278598790;
  v5[4] = &v6;
  [v2 prepAndRunQuery:@"SELECT version FROM meta" onPrep:0 onRow:v5 onError:&__block_literal_global_86];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_initializeSchemaVersion:(int64_t)version
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ATXAbstractVersionedDatabase__initializeSchemaVersion___block_invoke;
  v4[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4[4] = version;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"INSERT OR REPLACE INTO meta (id onPrep:version) VALUES (1 onRow:?)" onError:v4, 0, &__block_literal_global_41_0];
}

uint64_t __57__ATXAbstractVersionedDatabase__initializeSchemaVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__ATXAbstractVersionedDatabase__initializeSchemaVersion___block_invoke_2_cold_1(v2, v3);
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)_runMigration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ATXAbstractVersionedDatabase__runMigration__block_invoke;
  v4[3] = &unk_27859B3E0;
  v4[4] = self;
  v4[5] = &v5;
  [(_PASSqliteDatabase *)db frailWriteTransaction:v4];
  if ((v6[3] & 1) == 0)
  {
    [(_PASSqliteDatabase *)self->_db placeCorruptionMarker];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277D42688] format:@"_ATXNotificationsDatabase migration failed. Marking as corrupt."];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __45__ATXAbstractVersionedDatabase__runMigration__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) migrate];
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _initializeTables], *(*(*(a1 + 40) + 8) + 24) == 1))
  {
    [*(a1 + 32) _initializeSchemaVersion:{objc_msgSend(*(a1 + 32), "latestVersion")}];
    v2 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)_initializeTables
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  createSchema = [(ATXAbstractVersionedDatabase *)self createSchema];
  v4 = [createSchema countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(createSchema);
        }

        [(_PASSqliteDatabase *)self->_db prepAndRunQuery:MEMORY[0x277D85DD0] onPrep:3221225472 onRow:__49__ATXAbstractVersionedDatabase__initializeTables__block_invoke onError:&unk_2785986F0, *(*(&v10 + 1) + 8 * i), &v14];
      }

      v4 = [createSchema countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v4);
  }

  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __49__ATXAbstractVersionedDatabase__initializeTables__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __49__ATXAbstractVersionedDatabase__initializeTables__block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

- (int64_t)countRowsOfTable:(id)table
{
  tableCopy = table;
  v5 = [(ATXAbstractVersionedDatabase *)self db];
  v6 = [v5 atx_countRowsOfTable:tableCopy];

  return v6;
}

void __57__ATXAbstractVersionedDatabase__initializeSchemaVersion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error initializing meta table: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__ATXAbstractVersionedDatabase__initializeTables__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_21();
  _os_log_fault_impl(&dword_2263AA000, v2, OS_LOG_TYPE_FAULT, "Error initializing schema: %@ %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end