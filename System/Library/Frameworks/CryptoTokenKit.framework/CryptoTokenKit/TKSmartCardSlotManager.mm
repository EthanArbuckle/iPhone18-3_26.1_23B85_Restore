@interface TKSmartCardSlotManager
+ (TKSmartCardSlotManager)defaultManager;
- (BOOL)endNFCSlotWithError:(id *)error;
- (BOOL)isNFCSupported;
- (BOOL)setupConnection;
- (BOOL)updateNFCSlotMessageWithMessage:(id)message error:(id *)error;
- (NSArray)slotNames;
- (TKSmartCardSlot)slotNamed:(NSString *)name;
- (TKSmartCardSlotManager)initWithServer:(id)server;
- (id)_createAIDsValidationError;
- (id)getValidAIDsFromCallingBundle;
- (id)synchronous:(BOOL)synchronous remoteSlotClientWithErrorHandler:(id)handler;
- (void)createNFCSlotWithMessage:(id)message completion:(id)completion;
- (void)dealloc;
- (void)getSlotWithName:(NSString *)name reply:(void *)reply;
- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply;
@end

@implementation TKSmartCardSlotManager

+ (TKSmartCardSlotManager)defaultManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!defaultManager_manager)
  {
    v3 = objc_alloc_init(TKSmartCardSlotManager);
    v4 = defaultManager_manager;
    defaultManager_manager = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = defaultManager_manager;

  return v5;
}

id __30__TKSmartCardSlotManager_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ctkd.slot-client" options:4096];

  return v0;
}

- (TKSmartCardSlotManager)initWithServer:(id)server
{
  serverCopy = server;
  v13.receiver = self;
  v13.super_class = TKSmartCardSlotManager;
  v5 = [(TKSmartCardSlotManager *)&v13 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    endpoints = v5->_endpoints;
    v5->_endpoints = dictionary;

    v8 = dispatch_queue_create(0, 0);
    slotNamesQueue = v5->_slotNamesQueue;
    v5->_slotNamesQueue = v8;

    v10 = MEMORY[0x1E12D5690](serverCopy);
    connectionToServer = v5->_connectionToServer;
    v5->_connectionToServer = v10;

    if (![(TKSmartCardSlotManager *)v5 setupConnection])
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = TKSmartCardSlotManager;
  [(TKSmartCardSlotManager *)&v4 dealloc];
}

- (BOOL)setupConnection
{
  v3 = (*(self->_connectionToServer + 2))();
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A90050];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A878B8];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [v3 resume];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__TKSmartCardSlotManager_setupConnection__block_invoke;
  v14[3] = &unk_1E86B6F98;
  v6 = v3;
  v15 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__TKSmartCardSlotManager_setupConnection__block_invoke_33;
  v13[3] = &unk_1E86B6FC0;
  v13[4] = &v16;
  [v7 reportChangesForSlotType:@"smartcard" reply:v13];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__TKSmartCardSlotManager_setupConnection__block_invoke_2;
  v10[3] = &unk_1E86B7038;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [v6 setInterruptionHandler:v10];
  if (*(v17 + 24) == 1)
  {
    objc_storeWeak(&self->_connection, v6);
    v8 = *(v17 + 24);
  }

  else
  {
    v8 = 0;
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v16, 8);
  return v8 & 1;
}

void __41__TKSmartCardSlotManager_setupConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __41__TKSmartCardSlotManager_setupConnection__block_invoke_cold_1(a1);
  }

  [*(a1 + 32) invalidate];
}

void __41__TKSmartCardSlotManager_setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = NSStringFromSelector(sel_slotNames);
    [v4 willChangeValueForKey:v5];

    [*(*(a1 + 32) + 16) removeAllObjects];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__TKSmartCardSlotManager_setupConnection__block_invoke_3;
    block[3] = &unk_1E86B6FE8;
    block[4] = v6;
    dispatch_sync(v7, block);
    v8 = NSStringFromSelector(sel_slotNames);
    [v4 didChangeValueForKey:v8];

    v9 = objc_loadWeakRetained(v4 + 1);
    [v9 invalidate];

    objc_storeWeak(v4 + 1, 0);
    v10 = [@"com.apple.ctkd.slot-server-started" UTF8String];
    v11 = *(a1 + 32);
    v12 = dispatch_queue_create("server-start-notify-q", 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__TKSmartCardSlotManager_setupConnection__block_invoke_4;
    handler[3] = &unk_1E86B7010;
    v13 = v4;
    v14 = *(a1 + 32);
    v19 = v13;
    v20 = v14;
    v15 = notify_register_dispatch(v10, (v11 + 56), v12, handler);

    if (v15)
    {
      v16 = TK_LOG_smartcard();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __41__TKSmartCardSlotManager_setupConnection__block_invoke_2_cold_1();
      }
    }

    objc_sync_exit(v13);
  }

  v17 = TK_LOG_smartcard();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __41__TKSmartCardSlotManager_setupConnection__block_invoke_2_cold_2();
  }
}

void __41__TKSmartCardSlotManager_setupConnection__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t __41__TKSmartCardSlotManager_setupConnection__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setupConnection];
  v2 = *(*(a1 + 40) + 56);

  return notify_cancel(v2);
}

- (NSArray)slotNames
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);

  if (!WeakRetained)
  {
    [(TKSmartCardSlotManager *)selfCopy setupConnection];
  }

  objc_sync_exit(selfCopy);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  slotNamesQueue = selfCopy->_slotNamesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__TKSmartCardSlotManager_slotNames__block_invoke;
  v7[3] = &unk_1E86B7060;
  v7[4] = selfCopy;
  v7[5] = &v8;
  dispatch_sync(slotNamesQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__TKSmartCardSlotManager_slotNames__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(v2 + 16), "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(*(a1 + 32) + 16);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObject:{*(*(&v14 + 1) + 8 * v9++), v14}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v3 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply
{
  nameCopy = name;
  endpointCopy = endpoint;
  typeCopy = type;
  replyCopy = reply;
  v14 = TK_LOG_smartcard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotManager setSlotWithName:endpoint:type:reply:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = NSStringFromSelector(sel_slotNames);
  [(TKSmartCardSlotManager *)selfCopy willChangeValueForKey:v16];

  endpoints = selfCopy->_endpoints;
  if (endpointCopy)
  {
    [(NSMutableDictionary *)endpoints setObject:endpointCopy forKey:nameCopy];
  }

  else
  {
    [(NSMutableDictionary *)endpoints removeObjectForKey:nameCopy];
  }

  slotNamesQueue = selfCopy->_slotNamesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TKSmartCardSlotManager_setSlotWithName_endpoint_type_reply___block_invoke;
  block[3] = &unk_1E86B6FE8;
  block[4] = selfCopy;
  dispatch_sync(slotNamesQueue, block);
  v19 = NSStringFromSelector(sel_slotNames);
  [(TKSmartCardSlotManager *)selfCopy didChangeValueForKey:v19];

  objc_sync_exit(selfCopy);
  replyCopy[2](replyCopy);
}

void __62__TKSmartCardSlotManager_setSlotWithName_endpoint_type_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)getSlotWithName:(NSString *)name reply:(void *)reply
{
  v6 = name;
  v7 = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);

  if (!WeakRetained)
  {
    [(TKSmartCardSlotManager *)selfCopy setupConnection];
  }

  objc_sync_exit(selfCopy);

  v10 = objc_loadWeakRetained(&selfCopy->_connection);
  _queue = [v10 _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__TKSmartCardSlotManager_getSlotWithName_reply___block_invoke;
  block[3] = &unk_1E86B70B0;
  block[4] = selfCopy;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(_queue, block);
}

void __48__TKSmartCardSlotManager_getSlotWithName_reply___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_alloc_init(TKSmartCardSlot);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__TKSmartCardSlotManager_getSlotWithName_reply___block_invoke_2;
    v6[3] = &unk_1E86B7088;
    v4 = *(a1 + 48);
    v7 = v3;
    v8 = v4;
    v5 = v3;
    [(TKSmartCardSlot *)v5 connectToEndpoint:v2 synchronous:0 reply:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __48__TKSmartCardSlotManager_getSlotWithName_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

- (TKSmartCardSlot)slotNamed:(NSString *)name
{
  v4 = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);

  if (!WeakRetained)
  {
    [(TKSmartCardSlotManager *)selfCopy setupConnection];
  }

  objc_sync_exit(selfCopy);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v7 = objc_loadWeakRetained(&selfCopy->_connection);
  _queue = [v7 _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TKSmartCardSlotManager_slotNamed___block_invoke;
  block[3] = &unk_1E86B70D8;
  v15 = &v16;
  block[4] = selfCopy;
  v9 = v4;
  v14 = v9;
  dispatch_sync(_queue, block);

  if (v17[5])
  {
    v10 = [TKSmartCardSlot alloc];
    v11 = [(TKSmartCardSlot *)v10 initWithEndpoint:v17[5] error:0];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __36__TKSmartCardSlotManager_slotNamed___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)createNFCSlotWithMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  getValidAIDsFromCallingBundle = [(TKSmartCardSlotManager *)self getValidAIDsFromCallingBundle];
  if (getValidAIDsFromCallingBundle)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke;
    v14[3] = &unk_1E86B7100;
    v14[4] = self;
    v9 = completionCopy;
    v15 = v9;
    v10 = [(TKSmartCardSlotManager *)self synchronous:0 remoteSlotClientWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43;
    v12[3] = &unk_1E86B7128;
    v12[4] = self;
    v13 = v9;
    [v10 startNFCSlotWithName:@"Built-in NFC Slot" uiSheetMessage:messageCopy supportedAppIdentifiers:getValidAIDsFromCallingBundle reply:v12];
  }

  else
  {
    _createAIDsValidationError = [(TKSmartCardSlotManager *)self _createAIDsValidationError];
    (*(completionCopy + 2))(completionCopy, 0, _createAIDsValidationError);
  }
}

void __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
  (*(v5 + 16))(v5, 0, v6);

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained invalidate];
}

void __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43(uint64_t a1, int a2, int a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2)
  {
    if (a3)
    {
      v8 = TK_LOG_smartcard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43_cold_3();
      }

      v9 = [[TKSmartCardSlotNFCSession alloc] initWithSlotName:@"Built-in NFC Slot" nfcSlotManager:*(a1 + 32)];
      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"Slot already exists and you are not authorized to receive the TKSmartCardSlotNFCSession";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v9 = [v12 errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:v13];

      v14 = TK_LOG_smartcard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43_cold_1();
      }

      v10 = *(*(a1 + 40) + 16);
    }

    v10();
  }

  else
  {
    v11 = TK_LOG_smartcard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)endNFCSlotWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke;
  v8[3] = &unk_1E86B7150;
  v8[4] = self;
  v8[5] = &v9;
  v4 = [(TKSmartCardSlotManager *)self synchronous:1 remoteSlotClientWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_50;
  v7[3] = &unk_1E86B7178;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 endNFCSlotWithName:@"Built-in NFC Slot" reply:v7];

  if (error)
  {
    *error = v10[5];
  }

  v5 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v5;
}

void __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained invalidate];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_50(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TK_LOG_smartcard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_50_cold_1();
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)updateNFCSlotMessageWithMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke;
  v11[3] = &unk_1E86B71A0;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  v7 = [(TKSmartCardSlotManager *)self synchronous:1 remoteSlotClientWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke_52;
  v10[3] = &unk_1E86B7178;
  v10[4] = &v18;
  v10[5] = &v12;
  [v7 updateNFCSlotUIMessageWithMessage:messageCopy slotName:@"Built-in NFC Slot" reply:v10];

  if (error)
  {
    *error = v13[5];
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained invalidate];

  *(*(a1[5] + 8) + 24) = 0;
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke_52(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TK_LOG_smartcard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke_52_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (BOOL)isNFCSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TKSmartCardSlotManager_isNFCSupported__block_invoke;
  v5[3] = &unk_1E86B7150;
  v5[4] = self;
  v5[5] = &v6;
  v2 = [(TKSmartCardSlotManager *)self synchronous:1 remoteSlotClientWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__TKSmartCardSlotManager_isNFCSupported__block_invoke_53;
  v4[3] = &unk_1E86B71C8;
  v4[4] = &v6;
  [v2 isNFCSupportedWithReply:v4];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __40__TKSmartCardSlotManager_isNFCSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained invalidate];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __40__TKSmartCardSlotManager_isNFCSupported__block_invoke_53(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TK_LOG_smartcard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__TKSmartCardSlotManager_isNFCSupported__block_invoke_53_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (id)synchronous:(BOOL)synchronous remoteSlotClientWithErrorHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);

  if (!WeakRetained)
  {
    [(TKSmartCardSlotManager *)selfCopy setupConnection];
  }

  objc_sync_exit(selfCopy);

  v9 = objc_loadWeakRetained(&selfCopy->_connection);
  v10 = v9;
  if (synchronousCopy)
  {
    [v9 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [v9 remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v11 = ;

  return v11;
}

- (id)getValidAIDsFromCallingBundle
{
  nfcAppIdentifiers = self->_nfcAppIdentifiers;
  if (nfcAppIdentifiers)
  {
    v3 = nfcAppIdentifiers;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];

    v3 = [infoDictionary objectForKey:@"com.apple.developer.nfc.readersession.iso7816.select-identifiers"];

    if (!v3)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  if ([(NSArray *)v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:
  v7 = v6;

  return v6;
}

- (id)_createAIDsValidationError
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A588];
  v8[0] = *MEMORY[0x1E696A278];
  v8[1] = v3;
  v9[0] = @"Couldn't read com.apple.developer.nfc.readersession.iso7816 .select-identifiers record in Info.plist";
  v9[1] = @"AIDs must be provided in Info.plist";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = [v2 errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __41__TKSmartCardSlotManager_setupConnection__block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 138543618;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11(&dword_1DF413000, v2, v3, "ctk: connecting to slot registration server (%{public}@) failed, error %{public}@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __41__TKSmartCardSlotManager_setupConnection__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSlotWithName:endpoint:type:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__TKSmartCardSlotManager_createNFCSlotWithMessage_completion___block_invoke_43_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __46__TKSmartCardSlotManager_endNFCSlotWithError___block_invoke_50_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__TKSmartCardSlotManager_updateNFCSlotMessageWithMessage_error___block_invoke_52_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __40__TKSmartCardSlotManager_isNFCSupported__block_invoke_53_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end