@interface CBXpcConnection
- (CBXpcConnection)initWithDelegate:(id)delegate queue:(id)queue options:(id)options sessionType:(int)type;
- (CBXpcConnectionDelegate)delegate;
- (id)_allocXpcMsg:(unsigned __int16)msg args:(id)args;
- (void)_checkIn;
- (void)_handleConnectionEvent:(id)event;
- (void)_handleFinalized;
- (void)_handleInvalid;
- (void)_handleMsg:(id)msg;
- (void)_handleReset;
- (void)_sendBarrier;
- (void)connect;
- (void)didReceiveForwardedDelegateCallbackMessage:(id)message;
- (void)didReceiveForwardedMessage:(id)message;
- (void)disconnect;
- (void)removeWhbRemoteId:(id)id;
- (void)setTargetQueue:(id)queue;
- (void)setWhbLocalId:(id)id forRemoteId:(id)remoteId;
- (void)setWhbReplyHandler:(id)handler;
@end

@implementation CBXpcConnection

- (CBXpcConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)disconnect
{
  objc_storeWeak(&self->_delegate, 0);
  [(CBXpcConnection *)self _checkOut];
  whbReplyHandler = self->_whbReplyHandler;
  self->_whbReplyHandler = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_handleFinalized
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBXpcConnection _handleFinalized];
  }

  xpc_connection_cancel(self->_xpcConnection);
}

- (void)_handleInvalid
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__CBXpcConnection__handleInvalid__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 xpcConnectionIsInvalid];
}

- (void)connect
{
  if (!self->_xpcConnectionConnected)
  {
    self->_xpcConnectionConnected = 1;
    [(CBXpcConnection *)self _checkIn];
    options = self->_options;

    [(NSMutableDictionary *)options removeObjectForKey:@"kCBInitOptionShowPowerAlert"];
  }
}

- (void)_checkIn
{
  v13[4] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getprogname()];
  }

  v7 = v6;

  options = self->_options;
  v12[0] = @"kCBMsgArgOptions";
  v12[1] = @"kCBMsgArgName";
  v13[0] = options;
  v13[1] = v7;
  v12[2] = @"kCBMsgArgType";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionType];
  v12[3] = @"kCBMsgArgVersion";
  v13[2] = v9;
  v13[3] = &unk_1F40209D8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [(CBXpcConnection *)self sendMsg:1 args:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (CBXpcConnection)initWithDelegate:(id)delegate queue:(id)queue options:(id)options sessionType:(int)type
{
  delegateCopy = delegate;
  queueCopy = queue;
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = CBXpcConnection;
  v13 = [(CBXpcConnection *)&v46 init];
  if (v13)
  {
    v14 = v13;
    if (queueCopy)
    {
      v15 = queueCopy;
    }

    else
    {
      v15 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    objc_storeWeak(&v14->_delegate, delegateCopy);
    if (MGGetBoolAnswer())
    {
      v18 = "com.apple.server.bluetooth.le.att.xpc";
      if (type == 3)
      {
        v18 = "com.apple.server.bluetooth.classic.xpc";
      }

      if (type == 2)
      {
        v19 = "com.apple.server.bluetooth.le.pipe.xpc";
      }

      else
      {
        v19 = v18;
      }

      label = dispatch_queue_get_label(v15);
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create_with_target_V2(label, v21, v15);
      eventQueue = v14->_eventQueue;
      v14->_eventQueue = v22;

      if (optionsCopy)
      {
        v24 = [optionsCopy mutableCopy];
      }

      else
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      options = v14->_options;
      v14->_options = v24;

      v14->_sessionType = type;
      relative_priority_ptr = 0;
      qos_class = dispatch_queue_get_qos_class(v15, &relative_priority_ptr);
      v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v28 = dispatch_queue_attr_make_with_qos_class(v27, qos_class, relative_priority_ptr);

      v29 = dispatch_workloop_copy_current();
      v30 = v29;
      if (v29)
      {
        v31 = v29;
        xpcQueue = v14->_xpcQueue;
        v14->_xpcQueue = v31;
      }

      else
      {
        xpcQueue = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CoreBluetooth.%@", objc_opt_class()];
        v33 = dispatch_queue_create([xpcQueue UTF8String], v28);
        v34 = v14->_xpcQueue;
        v14->_xpcQueue = v33;
      }

      mach_service = xpc_connection_create_mach_service(v19, v14->_xpcQueue, 0);
      xpcConnection = v14->_xpcConnection;
      v14->_xpcConnection = mach_service;

      v14->_uiAppIsBackgrounded = 0;
      if (NSClassFromString(&cfstr_Uiapplication.isa))
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v14 selector:sel__applicationDidEnterBackgroundNotification name:@"UIApplicationDidEnterBackgroundNotification" object:0];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:v14 selector:sel__applicationWillEnterForegroundNotification name:@"UIApplicationWillEnterForegroundNotification" object:0];
      }

      v39 = v14->_xpcConnection;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __62__CBXpcConnection_initWithDelegate_queue_options_sessionType___block_invoke;
      handler[3] = &unk_1E811D158;
      v16 = v14;
      v44 = v16;
      xpc_connection_set_event_handler(v39, handler);
      xpc_connection_resume(v14->_xpcConnection);
      v16->_xpcConnectionConnected = 0;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__CBXpcConnection_initWithDelegate_queue_options_sessionType___block_invoke_2;
      block[3] = &unk_1E811D130;
      v42 = v14;
      dispatch_async(v15, block);

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __62__CBXpcConnection_initWithDelegate_queue_options_sessionType___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 xpcConnectionIsInvalid];
}

void __52__CBXpcConnection_sendMsgWithReply_args_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v4 = *(a1 + 32);
  v5 = CBXpcCreateNSDictionaryWithXpcDictionary(v3);

  (*(v4 + 16))(v4, v5, v6);
}

- (void)didReceiveForwardedMessage:(id)message
{
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "kCBMsgId");
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (_MergedGlobals_2 != -1)
  {
    [CBXpcConnection didReceiveForwardedMessage:];
  }

  v6 = qword_1ED7C1FD0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __convertToCBMsgId_block_invoke;
  v26 = &unk_1E8120770;
  v28 = int64;
  v27 = &v21;
  [v6 enumerateKeysAndObjectsUsingBlock:{buf, v21}];
  v7 = *(v22 + 12);

  _Block_object_dispose(&v21, 8);
  if (v7)
  {
    v8 = xpc_dictionary_get_value(messageCopy, "kCBMsgArgs");
    v9 = v8;
    if (v8)
    {
      v10 = CBXpcCreateNSDictionaryWithXpcDictionary(v8);
      v11 = [v10 mutableCopy];
      v12 = [v10 valueForKey:@"kCBMsgArgDeviceUUID"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [v10 valueForKey:@"kCBMsgArgDeviceUUID"];
        if (v14)
        {
          [v11 removeObjectForKey:@"kCBMsgArgDeviceUUID"];
          v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
          [v11 setValue:v15 forKey:@"kCBMsgArgDeviceUUID"];
        }

        v16 = v11;
      }

      else
      {
        v16 = v10;
      }
    }

    else
    {
      v16 = 0;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    v17 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      v19 = v17;
      v20 = [(CBXpcConnection *)self _nameForMessage:v7];
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_debug_impl(&dword_1C0AC1000, v19, OS_LOG_TYPE_DEBUG, "WHB forwarded (Initiator->Receiver bluetoothd) msg %@, args %@", buf, 0x16u);
    }

    [(CBXpcConnection *)self sendMsg:v7 args:v16];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBXpcConnection didReceiveForwardedMessage:];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveForwardedDelegateCallbackMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = xpc_dictionary_create(0, 0, 0);
  int64 = xpc_dictionary_get_int64(messageCopy, "kCBMsgId");
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (_MergedGlobals_2 != -1)
  {
    [CBXpcConnection didReceiveForwardedMessage:];
  }

  v7 = qword_1ED7C1FD0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __convertToCBMsgId_block_invoke;
  v25 = &unk_1E8120770;
  v27 = int64;
  v26 = &v20;
  [v7 enumerateKeysAndObjectsUsingBlock:buf];
  v8 = *(v21 + 12);

  _Block_object_dispose(&v20, 8);
  if (v8)
  {
    xpc_dictionary_set_int64(v5, "kCBMsgId", v8);
    v9 = xpc_dictionary_get_value(messageCopy, "kCBMsgArgs");
    v10 = v9;
    if (v9)
    {
      v11 = CBXpcCreateNSDictionaryWithXpcDictionary(v9);
      v19 = [v11 valueForKey:@"kCBMsgArgDeviceUUID"];
      v12 = [(CBXpcConnection *)self getWhbLocalIdForRemoteId:v19];
      v13 = [v11 mutableCopy];
      [v13 removeObjectForKey:@"kCBMsgArgDeviceUUID"];
      [v13 setValue:v12 forKey:@"kCBMsgArgDeviceUUID"];
      v14 = CBXpcCreateXPCDictionaryWithNSDictionary(v13);
      xpc_dictionary_set_value(v5, "kCBMsgArgs", v14);
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer handlePeerUpdated:];
      }

      v15 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        v17 = v15;
        v18 = [(CBXpcConnection *)self _nameForMessage:v8];
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_debug_impl(&dword_1C0AC1000, v17, OS_LOG_TYPE_DEBUG, "WHB reply (Receiver->Initiator) msg %@ %@", buf, 0x16u);
      }
    }

    [(CBXpcConnection *)self _handleMsg:v5];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBXpcConnection didReceiveForwardedDelegateCallbackMessage:];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setWhbReplyHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CBXpcConnection_setWhbReplyHandler___block_invoke;
  v8[3] = &unk_1E8120710;
  objc_copyWeak(&v10, &location);
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = MEMORY[0x1C68DF720](v8);
  whbReplyHandler = self->_whbReplyHandler;
  self->_whbReplyHandler = v6;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__CBXpcConnection_setWhbReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  int64 = xpc_dictionary_get_int64(v3, "kCBMsgId");
  if (_MergedGlobals_2 != -1)
  {
    [CBXpcConnection forwardWhbMsg:args:cnx:];
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = qword_1ED7C1FD0;
  v8 = [v6 numberWithUnsignedShort:int64];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 && (v10 = [v9 unsignedShortValue], v9, v10))
  {
    xpc_dictionary_set_int64(v4, "kCBMsgId", v10);
    v11 = xpc_dictionary_get_value(v3, "kCBMsgArgs");
    v12 = v11;
    if (v11)
    {
      v13 = CBXpcCreateNSDictionaryWithXpcDictionary(v11);
      v14 = [v13 mutableCopy];
      v15 = [v13 valueForKey:@"kCBMsgArgDeviceUUID"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = [v13 valueForKey:@"kCBMsgArgDeviceUUID"];
        if (v17)
        {
          [v14 removeObjectForKey:@"kCBMsgArgDeviceUUID"];
          v18 = [v17 UUIDString];
          [v14 setValue:v18 forKey:@"kCBMsgArgDeviceUUID"];
        }

        v19 = v14;
      }

      else
      {
        v19 = v13;
      }

      v20 = CBXpcCreateXPCDictionaryWithNSDictionary(v19);
      xpc_dictionary_set_value(v4, "kCBMsgArgs", v20);
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      v21 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        v23 = v21;
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v25 = [WeakRetained _nameForMessage:v10];
        v26 = 138412546;
        v27 = v25;
        v28 = 2112;
        v29 = v13;
        _os_log_debug_impl(&dword_1C0AC1000, v23, OS_LOG_TYPE_DEBUG, "WhbReplyHandler w/ msgId %@ args %@", &v26, 0x16u);
      }
    }

    else
    {
      v19 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      __38__CBXpcConnection_setWhbReplyHandler___block_invoke_cold_4();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setWhbLocalId:(id)id forRemoteId:(id)remoteId
{
  v16 = *MEMORY[0x1E69E9840];
  idCopy = id;
  remoteIdCopy = remoteId;
  if (!self->_whbRemoteToLocalUuidMap)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    whbRemoteToLocalUuidMap = self->_whbRemoteToLocalUuidMap;
    self->_whbRemoteToLocalUuidMap = v8;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = idCopy;
    v14 = 2112;
    v15 = remoteIdCopy;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "Started tracking Whb localId %@ with remoteId %@", &v12, 0x16u);
  }

  [(NSMutableDictionary *)self->_whbRemoteToLocalUuidMap setValue:idCopy forKey:remoteIdCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeWhbRemoteId:(id)id
{
  v9 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = idCopy;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "Removing tracking of remoteId %@", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_whbRemoteToLocalUuidMap removeObjectForKey:idCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setTargetQueue:(id)queue
{
  xpcQueue = queue;
  if (!queue)
  {
    xpcQueue = self->_xpcQueue;
  }

  xpcConnection = self->_xpcConnection;
  queueCopy = queue;
  xpc_connection_set_target_queue(xpcConnection, xpcQueue);
}

- (void)_sendBarrier
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBXpcConnection _sendBarrier];
  }

  v3 = dispatch_semaphore_create(0);
  xpcConnection = self->_xpcConnection;
  barrier[0] = MEMORY[0x1E69E9820];
  barrier[1] = 3221225472;
  barrier[2] = __31__CBXpcConnection__sendBarrier__block_invoke;
  barrier[3] = &unk_1E811D130;
  v7 = v3;
  v5 = v3;
  xpc_connection_send_barrier(xpcConnection, barrier);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_allocXpcMsg:(unsigned __int16)msg args:(id)args
{
  msgCopy = msg;
  v13 = *MEMORY[0x1E69E9840];
  argsCopy = args;
  *keys = xmmword_1E8120730;
  v11 = 0;
  v10 = xpc_int64_create(msgCopy);
  if (argsCopy)
  {
    v11 = CBXpcCreateXPCDictionaryWithNSDictionary(argsCopy);
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = xpc_dictionary_create(keys, &v10, v6);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_handleMsg:(id)msg
{
  v22 = *MEMORY[0x1E69E9840];
  msgCopy = msg;
  int64 = xpc_dictionary_get_int64(msgCopy, "kCBMsgId");
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgs");
  v7 = v6;
  if (v6)
  {
    v8 = CBXpcCreateNSDictionaryWithXpcDictionary(v6);
    if (!IsAppleInternalBuild())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!IsAppleInternalBuild())
    {
      goto LABEL_8;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = [(CBXpcConnection *)self _nameForMessage:int64];
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEBUG, "Received XPC message %@: %@", buf, 0x16u);

    if (int64 == 5)
    {
      goto LABEL_9;
    }

LABEL_11:
    eventQueue = self->_eventQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__CBXpcConnection__handleMsg___block_invoke;
    v14[3] = &unk_1E8120748;
    v14[4] = self;
    v17 = int64;
    v15 = v8;
    v16 = msgCopy;
    dispatch_async(eventQueue, v14);

    goto LABEL_12;
  }

LABEL_8:
  if (int64 != 5)
  {
    goto LABEL_11;
  }

LABEL_9:
  [(CBXpcConnection *)self _handleFinalized];
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __30__CBXpcConnection__handleMsg___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 xpcConnectionDidReceiveMsg:*(a1 + 56) args:*(a1 + 40)];

  result = *(*(a1 + 32) + 56);
  if (result)
  {
    v4 = *(a1 + 48);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_handleReset
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__CBXpcConnection__handleReset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkIn];
  v2 = [*(a1 + 32) delegate];
  [v2 xpcConnectionDidReset];
}

- (void)_handleConnectionEvent:(id)event
{
  eventCopy = event;
  v5 = MEMORY[0x1C68DFDD0]();
  if (v5 == MEMORY[0x1E69E9E80])
  {
    [(CBXpcConnection *)self _handleMsg:eventCopy];
  }

  else if (v5 == MEMORY[0x1E69E9E98])
  {
    if (eventCopy == MEMORY[0x1E69E9E18])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        [(CBXpcConnection *)self _handleReset];
      }

      else
      {
        [(CBXpcConnection *)self _handleFinalized];
      }

LABEL_6:

      return;
    }

    if (eventCopy == MEMORY[0x1E69E9E20])
    {
      [(CBXpcConnection *)self _handleInvalid];
    }

    else
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      [CBXpcConnection _handleConnectionEvent:];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    [CBXpcConnection _handleConnectionEvent:];
  }
}

- (void)forwardWhbMsg:args:cnx:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveForwardedMessage:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveForwardedDelegateCallbackMessage:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__CBXpcConnection_setWhbReplyHandler___block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnectionEvent:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnectionEvent:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end