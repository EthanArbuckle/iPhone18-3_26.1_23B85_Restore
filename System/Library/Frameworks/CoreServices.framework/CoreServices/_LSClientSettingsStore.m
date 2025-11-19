@interface _LSClientSettingsStore
- (BOOL)resetUserElectionsWithError:(id *)a3;
- (_LSClientSettingsStore)init;
- (id)__internalQueue_xpcConnectionWithError:(id *)a3;
- (unsigned)userElectionForExtensionKey:(id)a3;
- (void)dealloc;
@end

@implementation _LSClientSettingsStore

- (_LSClientSettingsStore)init
{
  v7.receiver = self;
  v7.super_class = _LSClientSettingsStore;
  v2 = [(LSSettingsStore *)&v7 _init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices._LSSettingsInProcessStore", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = _LSClientSettingsStore;
  [(_LSClientSettingsStore *)&v3 dealloc];
}

- (id)__internalQueue_xpcConnectionWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30;
  v21 = __Block_byref_object_dispose__30;
  v22 = 0;
  v5 = [(_LSClientSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_configuration)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke;
    v16[3] = &unk_1E6A18DF0;
    v16[4] = &v17;
    v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_217;
    v15[3] = &unk_1E6A1CFC0;
    v15[4] = self;
    v15[5] = &v17;
    [v6 getSettingsStoreConfigurationWithCompletionHandler:v15];
  }

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    xpcConnection = self->_configuration;
    if (xpcConnection)
    {
      v8 = objc_alloc(MEMORY[0x1E696B0B8]);
      v9 = [(LSSettingsStoreConfiguration *)self->_configuration endpoint];
      v10 = [v8 initWithListenerEndpoint:v9];

      v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB22B0];
      [v10 setRemoteObjectInterface:v11];

      [v10 _setQueue:self->_internalQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_219;
      v14[3] = &unk_1E6A1A830;
      v14[4] = self;
      [v10 setInterruptionHandler:v14];
      objc_storeStrong(&self->_xpcConnection, v10);
      [v10 resume];

      xpcConnection = self->_xpcConnection;
    }

    if (a3 && !xpcConnection)
    {
      *a3 = v18[5];
      xpcConnection = self->_xpcConnection;
    }
  }

  v12 = xpcConnection;
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (unsigned)userElectionForExtensionKey:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__30;
  v29 = __Block_byref_object_dispose__30;
  v30 = 0;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__30;
  internalQueue = self->_internalQueue;
  v23[3] = __Block_byref_object_dispose__30;
  v24 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke;
  block[3] = &unk_1E6A19158;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v22;
  dispatch_sync(internalQueue, block);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v6 = v26[5];
  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2;
    v15[3] = &unk_1E6A192C8;
    v7 = v4;
    v16 = v7;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_220;
    v12[3] = &unk_1E6A1CFE8;
    v13 = v7;
    v14 = &v17;
    [v8 userElectionForExtensionKey:v13 reply:v12];

    v9 = v16;
  }

  else
  {
    v9 = _LSExtensionsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_LSClientSettingsStore *)v4 userElectionForExtensionKey:v23];
    }
  }

  v10 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v25, 8);
  return v10;
}

- (BOOL)resetUserElectionsWithError:(id *)a3
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__30;
  v36 = __Block_byref_object_dispose__30;
  v37 = 0;
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy__30;
  internalQueue = self->_internalQueue;
  v30[3] = __Block_byref_object_dispose__30;
  v31 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke;
  block[3] = &unk_1E6A19158;
  block[4] = self;
  block[5] = &v32;
  block[6] = &v29;
  dispatch_sync(internalQueue, block);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v5 = v33[5];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__30;
    v22 = __Block_byref_object_dispose__30;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2;
    v17[3] = &unk_1E6A1D038;
    v17[4] = &v18;
    v17[5] = &v24;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_223;
    v16[3] = &unk_1E6A1D038;
    v16[4] = &v18;
    v16[5] = &v24;
    [v6 resetUserElectionsWithReply:v16];
    if (a3 && (v25[3] & 1) == 0)
    {
      *a3 = v19[5];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v27 = 0;
    v7 = _LSExtensionsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_LSClientSettingsStore *)v30 resetUserElectionsWithError:v7, v8, v9, v10, v11, v12, v13];
    }

    if (a3)
    {
      *a3 = *(v30[0] + 40);
    }
  }

  v14 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v32, 8);
  return v14;
}

- (void)userElectionForExtensionKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUserElection:(uint64_t)a1 forExtensionKey:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetUserElectionsWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to reset user elections, failure creating connection: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end