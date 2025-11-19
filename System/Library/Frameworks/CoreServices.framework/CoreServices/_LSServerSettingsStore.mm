@interface _LSServerSettingsStore
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)resetUserElectionsWithError:(id *)a3;
- (BOOL)setUserElection:(unsigned __int8)a3 forExtensionKey:(id)a4 error:(id *)a5;
- (_LSServerSettingsStore)init;
- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)a3;
- (void)_internalQueue_initializeDatabase;
- (void)_internalQueue_insertIdentifier:(id)a3 userElection:(unsigned __int8)a4 timestamp:(double)a5;
- (void)_internalQueue_loadDatabase;
- (void)_internalQueue_loadPluginKitDatabase;
- (void)_internalQueue_resetUserElection;
- (void)postSettingsChangeNotification;
- (void)resetUserElectionsWithReply:(id)a3;
- (void)userElectionForExtensionKey:(id)a3 reply:(id)a4;
@end

@implementation _LSServerSettingsStore

- (void)_internalQueue_loadDatabase
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [__LSDefaultsGetSharedInstance() settingsStoreFileURL];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v8 = _LSExtensionsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(_LSServerSettingsStore *)v8 _internalQueue_loadDatabase];
    }
  }

  v9 = _LSExtensionsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v12 = 138412546;
    *&v12[4] = v4;
    v13 = 1024;
    v14 = v7 ^ 1;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_INFO, "Loading readwrite settings database from: '%@', will initialize: %d", v12, 0x12u);
  }

  *v12 = 0;
  v10 = v4;
  sqlite3_open_v2([v4 fileSystemRepresentation], v12, 6, 0);
  [(_LSInProcessSettingsStore *)self setDatabase:*v12];
  if ((v7 & 1) == 0)
  {
    [(_LSServerSettingsStore *)self _internalQueue_initializeDatabase];
    if ([__LSDefaultsGetSharedInstance() nsExtensionUsesLSSettingsStore])
    {
      [(_LSServerSettingsStore *)self _internalQueue_loadPluginKitDatabase];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (_LSServerSettingsStore)init
{
  v6.receiver = self;
  v6.super_class = _LSServerSettingsStore;
  v2 = [(_LSInProcessSettingsStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)a3
{
  v4 = [LSSettingsStoreConfiguration alloc];
  v5 = [(_LSServerSettingsStore *)self listener];
  v6 = [v5 endpoint];
  v7 = [(LSSettingsStoreConfiguration *)v4 initWithEndpoint:v6];

  return v7;
}

- (BOOL)setUserElection:(unsigned __int8)a3 forExtensionKey:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___LSServerSettingsStore_setUserElection_forExtensionKey_error___block_invoke;
  block[3] = &unk_1E6A1CF98;
  block[4] = self;
  v12 = v7;
  v13 = a3;
  v9 = v7;
  dispatch_sync(v8, block);

  return 1;
}

- (BOOL)resetUserElectionsWithError:(id *)a3
{
  v4 = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSServerSettingsStore_resetUserElectionsWithError___block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_sync(v4, block);

  return 1;
}

- (void)_internalQueue_loadPluginKitDatabase
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Loading legacy user election database from: '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_initializeDatabase
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_insertIdentifier:(id)a3 userElection:(unsigned __int8)a4 timestamp:(double)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(v10);

  ppStmt = 0;
  if (sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "INSERT OR REPLACE INTO LegacyElection (identifier, userElection, pkTimestamp) VALUES (?, ?, ?)", -1, &ppStmt, 0))
  {
    v11 = _LSExtensionsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v12 _internalQueue_selectUserElectionForIdentifier:v18];
    }
  }

  else
  {
    v13 = ppStmt;
    v14 = v9;
    sqlite3_bind_text(v13, 1, [v9 UTF8String], -1, 0);
    sqlite3_bind_int64(ppStmt, 2, v6);
    sqlite3_bind_double(ppStmt, 3, a5);
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:525 description:{@"failed to import user elcection '%ld' for extension record: %@", v6, v9}];
  }

  sqlite3_finalize(ppStmt);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_resetUserElection
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  ppStmt = 0;
  if (sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "DELETE FROM Election", -1, &ppStmt, 0))
  {
    v5 = _LSExtensionsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v6 _internalQueue_selectUserElectionForIdentifier:v11];
    }
  }

  v7 = sqlite3_step(ppStmt);
  if (v7 != 8 && v7 != 101)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:545 description:@"failed to reset user election"];
  }

  sqlite3_finalize(ppStmt);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = v6;
  listener = self->_listener;
  if (listener == a3)
  {
    [v6 setExportedObject:self];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB22B0];
    [v7 setExportedInterface:v9];

    [v7 resume];
  }

  return listener == a3;
}

- (void)userElectionForExtensionKey:(id)a3 reply:(id)a4
{
  v7 = a3;
  v6 = a4;
  (*(v6 + 2))(v6, [(_LSInProcessSettingsStore *)self userElectionForExtensionKey:v7], 0);
}

- (void)resetUserElectionsWithReply:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (_LSCheckEntitlementForAuditToken(&v10, @"com.apple.private.extensionkit.extension-management"))
  {
    v9 = 0;
    v7 = [(_LSServerSettingsStore *)self resetUserElectionsWithError:&v9];
    v8 = v9;
    if (v7)
    {
      [(_LSServerSettingsStore *)self postSettingsChangeNotification];
    }

    v4[2](v4, v8);
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSServerSettingsStore resetUserElectionsWithReply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 599);
    v4[2](v4, v8);
  }
}

- (void)postSettingsChangeNotification
{
  SharedInstance = __LSDefaultsGetSharedInstance();
  v3 = [SharedInstance settingsUpdateNotificationNameForUserID:geteuid()];
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseCommit_cold_1();
  }

  LaunchServices::notifyd::NotifyToken::Post(v3, v5);
}

@end