@interface _LSServerSettingsStore
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)resetUserElectionsWithError:(id *)error;
- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error;
- (_LSServerSettingsStore)init;
- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token;
- (void)_internalQueue_initializeDatabase;
- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election timestamp:(double)timestamp;
- (void)_internalQueue_loadDatabase;
- (void)_internalQueue_loadPluginKitDatabase;
- (void)_internalQueue_resetUserElection;
- (void)postSettingsChangeNotification;
- (void)resetUserElectionsWithReply:(id)reply;
- (void)userElectionForExtensionKey:(id)key reply:(id)reply;
@end

@implementation _LSServerSettingsStore

- (void)_internalQueue_loadDatabase
{
  v15 = *MEMORY[0x1E69E9840];
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  settingsStoreFileURL = [__LSDefaultsGetSharedInstance() settingsStoreFileURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [settingsStoreFileURL path];
  v7 = [defaultManager fileExistsAtPath:path];

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
    *&v12[4] = settingsStoreFileURL;
    v13 = 1024;
    v14 = v7 ^ 1;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_INFO, "Loading readwrite settings database from: '%@', will initialize: %d", v12, 0x12u);
  }

  *v12 = 0;
  v10 = settingsStoreFileURL;
  sqlite3_open_v2([settingsStoreFileURL fileSystemRepresentation], v12, 6, 0);
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
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token
{
  v4 = [LSSettingsStoreConfiguration alloc];
  listener = [(_LSServerSettingsStore *)self listener];
  endpoint = [listener endpoint];
  v7 = [(LSSettingsStoreConfiguration *)v4 initWithEndpoint:endpoint];

  return v7;
}

- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error
{
  keyCopy = key;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___LSServerSettingsStore_setUserElection_forExtensionKey_error___block_invoke;
  block[3] = &unk_1E6A1CF98;
  block[4] = self;
  v12 = keyCopy;
  electionCopy = election;
  v9 = keyCopy;
  dispatch_sync(internalQueue, block);

  return 1;
}

- (BOOL)resetUserElectionsWithError:(id *)error
{
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSServerSettingsStore_resetUserElectionsWithError___block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_sync(internalQueue, block);

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
  v7 = *self;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election timestamp:(double)timestamp
{
  electionCopy = election;
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
    v14 = identifierCopy;
    sqlite3_bind_text(v13, 1, [identifierCopy UTF8String], -1, 0);
    sqlite3_bind_int64(ppStmt, 2, electionCopy);
    sqlite3_bind_double(ppStmt, 3, timestamp);
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:525 description:{@"failed to import user elcection '%ld' for extension record: %@", electionCopy, identifierCopy}];
  }

  sqlite3_finalize(ppStmt);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_resetUserElection
{
  v12 = *MEMORY[0x1E69E9840];
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:545 description:@"failed to reset user election"];
  }

  sqlite3_finalize(ppStmt);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  listener = self->_listener;
  if (listener == listener)
  {
    [connectionCopy setExportedObject:self];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB22B0];
    [v7 setExportedInterface:v9];

    [v7 resume];
  }

  return listener == listener;
}

- (void)userElectionForExtensionKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  (*(replyCopy + 2))(replyCopy, [(_LSInProcessSettingsStore *)self userElectionForExtensionKey:keyCopy], 0);
}

- (void)resetUserElectionsWithReply:(id)reply
{
  replyCopy = reply;
  v10 = 0u;
  v11 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
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

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSServerSettingsStore resetUserElectionsWithReply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 599);
    replyCopy[2](replyCopy, v8);
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