@interface _LSInProcessSettingsStore
- (_LSInProcessSettingsStore)init;
- (sqlite3)database;
- (unsigned)_internalQueue_selectUserElectionForIdentifier:(id)identifier;
- (unsigned)userElectionForExtensionKey:(id)key;
- (void)_internalQueue_loadDatabase;
- (void)_internalQueue_purgeDatabase;
- (void)dealloc;
@end

@implementation _LSInProcessSettingsStore

- (sqlite3)database
{
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (!self->_database)
  {
    [(_LSInProcessSettingsStore *)self _internalQueue_loadDatabase];
  }

  dbCloseTimer = self->_dbCloseTimer;
  v5 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(dbCloseTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  return self->_database;
}

- (_LSInProcessSettingsStore)init
{
  v13.receiver = self;
  v13.super_class = _LSInProcessSettingsStore;
  _init = [(LSSettingsStore *)&v13 _init];
  if (_init)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices._LSSettingsInProcessStore", v3);
    v5 = *(_init + 5);
    *(_init + 5) = v4;

    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(_init + 5));
    v7 = *(_init + 3);
    *(_init + 3) = v6;

    objc_initWeak(&location, _init);
    v8 = *(_init + 3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33___LSInProcessSettingsStore_init__block_invoke;
    v10[3] = &unk_1E6A1CF70;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v8, v10);
    dispatch_source_set_timer(*(_init + 3), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(_init + 3));
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return _init;
}

- (void)_internalQueue_purgeDatabase
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_database)
  {
    v3 = _LSExtensionsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_INFO, "Jettisoning elections database", v4, 2u);
    }

    sqlite3_close(self->_database);
    self->_database = 0;
  }
}

- (void)dealloc
{
  database = self->_database;
  if (database)
  {
    sqlite3_close(database);
    self->_database = 0;
  }

  v4.receiver = self;
  v4.super_class = _LSInProcessSettingsStore;
  [(_LSInProcessSettingsStore *)&v4 dealloc];
}

- (unsigned)userElectionForExtensionKey:(id)key
{
  keyCopy = key;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x2020000000;
  v15 = 0;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___LSInProcessSettingsStore_userElectionForExtensionKey___block_invoke;
  block[3] = &unk_1E6A1B118;
  v12 = &v13;
  block[4] = self;
  v6 = keyCopy;
  v11 = v6;
  dispatch_sync(internalQueue, block);

  v7 = _LSExtensionsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_LSInProcessSettingsStore *)v6 userElectionForExtensionKey:v14];
  }

  v8 = *(v14[0] + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_internalQueue_loadDatabase
{
  v8 = *MEMORY[0x1E69E9840];
  settingsStoreFileURL = [__LSDefaultsGetSharedInstance() settingsStoreFileURL];
  v4 = _LSExtensionsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 138412290;
    *&v7[4] = settingsStoreFileURL;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_INFO, "Loading readonly user election database from: '%@'", v7, 0xCu);
  }

  *v7 = 0;
  v5 = settingsStoreFileURL;
  sqlite3_open_v2([settingsStoreFileURL fileSystemRepresentation], v7, 1, 0);
  self->_database = *v7;

  v6 = *MEMORY[0x1E69E9840];
}

- (unsigned)_internalQueue_selectUserElectionForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalQueue);
  ppStmt = 0;
  if (sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "select userElection from(select identifier, userElection , 0 as legacy from Election UNION SELECT identifier, userElection, 1 as legacy from LegacyElection) where identifier = ? ORDER BY identifier, legacy limit 1", -1, &ppStmt, 0))
  {
    v5 = _LSExtensionsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v6 _internalQueue_selectUserElectionForIdentifier:v14];
    }
  }

  else
  {
    v7 = ppStmt;
    v8 = identifierCopy;
    sqlite3_bind_text(v7, 1, [identifierCopy UTF8String], -1, 0);
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    v9 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v9 = 0;
  }

  sqlite3_finalize(ppStmt);
  v10 = _LSExtensionsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_LSInProcessSettingsStore _internalQueue_selectUserElectionForIdentifier:];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)userElectionForExtensionKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 24);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_1(&dword_18162D000, v3, v4, "Extension key '%@' user election: %d ");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_selectUserElectionForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_2(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_internalQueue_selectUserElectionForIdentifier:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_1(&dword_18162D000, v0, v1, "Identifier: '%@' user election: %d");
  v2 = *MEMORY[0x1E69E9840];
}

@end