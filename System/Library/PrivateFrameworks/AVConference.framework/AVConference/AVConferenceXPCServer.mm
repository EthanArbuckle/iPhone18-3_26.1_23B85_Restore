@interface AVConferenceXPCServer
+ (BOOL)clientWithToken:(id *)token hasEntitlement:(id)entitlement;
+ (id)AVConferenceXPCServerSingleton;
+ (int64_t)entitlementStatusForToken:(id *)token;
- (AVConferenceXPCServer)init;
- (id)_xpc_get_connection_from_list_for_connection:(id)_xpc_get_connection_from_list_for_connection;
- (id)_xpc_get_connection_from_list_for_context:(id)_xpc_get_connection_from_list_for_context;
- (id)_xpc_get_connections_from_list_for_context:(id)_xpc_get_connections_from_list_for_context;
- (id)authorizedTokenData;
- (id)newNSDictionaryFromNSError:(id)error;
- (id)newNSDictionaryFromXPCDictionary:(id)dictionary;
- (id)newNSDictionaryWidthNSDictionary:(id)dictionary;
- (id)newNSErrorFromNSDictionary:(id)dictionary;
- (id)newXPCDictionaryFromNSDictionary:(id)dictionary forEvent:(id)event;
- (void)_xpc_add_connection_to_list:(id)_xpc_add_connection_to_list;
- (void)_xpc_handle_incoming_request:(id)_xpc_handle_incoming_request;
- (void)_xpc_remove_connection_from_list:(id)_xpc_remove_connection_from_list;
- (void)_xpc_remove_connections_from_list;
- (void)_xpc_start_listening_for_connections;
- (void)appendClientAuditTokenToDictionary:(id)dictionary clientAuditToken:(id *)token;
- (void)appendContextToDictionary:(id)dictionary forConnection:(id)connection;
- (void)appendPIDToDictionary:(id)dictionary pid:(int)pid;
- (void)dealloc;
- (void)deregisterFromService:(const char *)service;
- (void)registerBlockForService:(const char *)service block:(id)block queue:(id)global_queue eventLogLevel:(int)level authorizationBlock:(id)authorizationBlock allowablePublicAPIs:(id)is;
- (void)sendMessageAsync:(char *)async arguments:(id)arguments;
- (void)sendMessageAsync:(char *)async arguments:(id)arguments toAllClientsWithContext:(id)context;
- (void)sendMessageAsync:(char *)async arguments:(id)arguments xpcArguments:(id)xpcArguments context:(id)context;
- (void)sendMessageAsync:(const char *)async arguments:(id)arguments context:(id)context;
@end

@implementation AVConferenceXPCServer

+ (id)AVConferenceXPCServerSingleton
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (!_xpcServerSingleton)
  {
    _xpcServerSingleton = objc_alloc_init(self);
  }

  objc_sync_exit(v3);
  return _xpcServerSingleton;
}

- (AVConferenceXPCServer)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVConferenceXPCServer;
  v2 = [(AVConferenceXPCServer *)&v5 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->incomingMessageQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVConferenceXPCServer.incomingQueue", 0, CustomRootQueue);
    v2->outgoingMessageQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVConferenceXPCServer.outgoingQueue", 0, CustomRootQueue);
    v2->clientConnectionsQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVConferenceXPCServer.clientConnectionsQueue", MEMORY[0x1E69E96A8], CustomRootQueue);
    v2->clientConnections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->registeredBlocks = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(AVConferenceXPCServer *)v2 registerBlockForService:"pingServer" block:&__block_literal_global_75];
  }

  return v2;
}

uint64_t __29__AVConferenceXPCServer_init__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectForKeyedSubscript:@"CLIENTDIED"];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = v4;
          v12 = 2080;
          v13 = "[AVConferenceXPCServer init]_block_invoke";
          v14 = 1024;
          v15 = 308;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: Ping saw client death, ignored by ping", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __29__AVConferenceXPCServer_init__block_invoke_cold_1();
      }
    }

    return 0;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = "[AVConferenceXPCServer init]_block_invoke";
        v14 = 1024;
        v15 = 310;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: Server was pinged successfully", buf, 0x1Cu);
      }
    }

    return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"SUCCESS", @"Ping", 0}];
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  dispatch_release(self->incomingMessageQueue);
  dispatch_release(self->outgoingMessageQueue);
  dispatch_release(self->clientConnectionsQueue);
  [(AVConferenceXPCServer *)self _xpc_remove_connections_from_list];

  listener = self->listener;
  if (listener)
  {
    xpc_release(listener);
    self->listener = 0;
  }

  v4.receiver = self;
  v4.super_class = AVConferenceXPCServer;
  [(AVConferenceXPCServer *)&v4 dealloc];
}

- (void)sendMessageAsync:(char *)async arguments:(id)arguments
{
  v21 = *MEMORY[0x1E69E9840];
  if (async)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v14 = v7;
          v15 = 2080;
          v16 = "[AVConferenceXPCServer sendMessageAsync:arguments:]";
          v17 = 1024;
          v18 = 372;
          v19 = 2080;
          asyncCopy = async;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: preparing to send message to clients for service %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCServer sendMessageAsync:arguments:];
      }
    }

    v10 = [(AVConferenceXPCServer *)self newXPCDictionaryFromNSDictionary:arguments forEvent:0];
    xpc_dictionary_set_string(v10, "API", async);
    clientConnectionsQueue = self->clientConnectionsQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__AVConferenceXPCServer_sendMessageAsync_arguments___block_invoke;
    v12[3] = &unk_1E85F37F0;
    v12[4] = self;
    v12[5] = v10;
    dispatch_sync(clientConnectionsQueue, v12);
  }
}

void __52__AVConferenceXPCServer_sendMessageAsync_arguments___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        xpc_connection_send_message([*(*(&v8 + 1) + 8 * i) connection], *(a1 + 40));
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }

  xpc_release(*(a1 + 40));
}

- (void)sendMessageAsync:(char *)async arguments:(id)arguments xpcArguments:(id)xpcArguments context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  if (async)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v18 = v11;
          v19 = 2080;
          v20 = "[AVConferenceXPCServer sendMessageAsync:arguments:xpcArguments:context:]";
          v21 = 1024;
          v22 = 397;
          v23 = 2080;
          asyncCopy = async;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: preparing to send message to clients for service %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCServer sendMessageAsync:arguments:xpcArguments:context:];
      }
    }

    v14 = [(AVConferenceXPCServer *)self newXPCDictionaryFromNSDictionary:arguments forEvent:0];
    xpc_dictionary_set_string(v14, "API", async);
    if (xpcArguments)
    {
      xpc_dictionary_set_value(v14, "XPCARGUMENTS", xpcArguments);
    }

    clientConnectionsQueue = self->clientConnectionsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AVConferenceXPCServer_sendMessageAsync_arguments_xpcArguments_context___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = context;
    block[6] = v14;
    dispatch_sync(clientConnectionsQueue, block);
  }
}

void __73__AVConferenceXPCServer_sendMessageAsync_arguments_xpcArguments_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _xpc_get_connection_from_list_for_context:*(a1 + 40)];
  if (v2)
  {
    xpc_connection_send_message([v2 connection], *(a1 + 48));
  }

  v3 = *(a1 + 48);

  xpc_release(v3);
}

- (void)sendMessageAsync:(const char *)async arguments:(id)arguments context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  if (async && context)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v9;
          v17 = 2080;
          v18 = "[AVConferenceXPCServer sendMessageAsync:arguments:context:]";
          v19 = 1024;
          v20 = 424;
          v21 = 2080;
          asyncCopy = async;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: sending notification to client for service %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCServer sendMessageAsync:arguments:context:];
      }
    }

    v12 = [(AVConferenceXPCServer *)self newXPCDictionaryFromNSDictionary:arguments forEvent:0];
    xpc_dictionary_set_string(v12, "API", async);
    clientConnectionsQueue = self->clientConnectionsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AVConferenceXPCServer_sendMessageAsync_arguments_context___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = context;
    block[6] = v12;
    dispatch_sync(clientConnectionsQueue, block);
  }
}

void __60__AVConferenceXPCServer_sendMessageAsync_arguments_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _xpc_get_connection_from_list_for_context:*(a1 + 40)];
  if (v2)
  {
    xpc_connection_send_message([v2 connection], *(a1 + 48));
  }

  v3 = *(a1 + 48);

  xpc_release(v3);
}

- (void)sendMessageAsync:(char *)async arguments:(id)arguments toAllClientsWithContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  if (async && context)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v9;
          v17 = 2080;
          v18 = "[AVConferenceXPCServer sendMessageAsync:arguments:toAllClientsWithContext:]";
          v19 = 1024;
          v20 = 449;
          v21 = 2080;
          asyncCopy = async;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: sending notification to all clients for service %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCServer sendMessageAsync:arguments:toAllClientsWithContext:];
      }
    }

    v12 = [(AVConferenceXPCServer *)self newXPCDictionaryFromNSDictionary:arguments forEvent:0];
    xpc_dictionary_set_string(v12, "API", async);
    clientConnectionsQueue = self->clientConnectionsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AVConferenceXPCServer_sendMessageAsync_arguments_toAllClientsWithContext___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = context;
    block[6] = v12;
    dispatch_sync(clientConnectionsQueue, block);
  }
}

void __76__AVConferenceXPCServer_sendMessageAsync_arguments_toAllClientsWithContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _xpc_get_connections_from_list_for_context:*(a1 + 40)];
  if ([v2 count] >= 2 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v3;
      v16 = 2080;
      v17 = "[AVConferenceXPCServer sendMessageAsync:arguments:toAllClientsWithContext:]_block_invoke";
      v18 = 1024;
      v19 = 462;
      v20 = 2048;
      v21 = [v2 count];
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: XPC connectionsToUse count =%lu", buf, 0x26u);
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v2);
        }

        xpc_connection_send_message([*(*(&v10 + 1) + 8 * v8++) connection], *(a1 + 48));
      }

      while (v6 != v8);
      v6 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }

  xpc_release(*(a1 + 48));
}

- (void)registerBlockForService:(const char *)service block:(id)block queue:(id)global_queue eventLogLevel:(int)level authorizationBlock:(id)authorizationBlock allowablePublicAPIs:(id)is
{
  v32 = *MEMORY[0x1E69E9840];
  if (service && block)
  {
    v11 = *&level;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v25 = v15;
        v26 = 2080;
        v27 = "[AVConferenceXPCServer registerBlockForService:block:queue:eventLogLevel:authorizationBlock:allowablePublicAPIs:]";
        v28 = 1024;
        v29 = 489;
        v30 = 2080;
        serviceCopy = service;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: Adding registered block for service %s", buf, 0x26u);
      }
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:service encoding:4];
    if (is)
    {
      v18 = [is containsObject:v17];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __114__AVConferenceXPCServer_registerBlockForService_block_queue_eventLogLevel_authorizationBlock_allowablePublicAPIs___block_invoke;
      v22[3] = &unk_1E85F87F0;
      v23 = v18;
      v22[4] = authorizationBlock;
      authorizationBlock = [v22 copy];
    }

    v19 = [block copy];
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(2, 0);
    }

    registeredBlocks = self->registeredBlocks;
    objc_sync_enter(registeredBlocks);
    v21 = [(NSMutableDictionary *)self->registeredBlocks objectForKeyedSubscript:v17];
    if (!v21)
    {
      v21 = objc_alloc_init(VCXPCServerUser);
      [(NSMutableDictionary *)self->registeredBlocks setObject:v21 forKeyedSubscript:v17];
    }

    [(VCXPCServerUser *)v21 setBlock:v19];
    [(VCXPCServerUser *)v21 setQueue:global_queue];
    [(VCXPCServerUser *)v21 setAuthorizationBlock:authorizationBlock];
    [(VCXPCServerUser *)v21 setEventLogLevel:v11];
    objc_sync_exit(registeredBlocks);
  }
}

uint64_t __114__AVConferenceXPCServer_registerBlockForService_block_queue_eventLogLevel_authorizationBlock_allowablePublicAPIs___block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v5 = 1;
  }

  else
  {
    if (a4 != 2)
    {
      v5 = 0;
      return v5 & 1;
    }

    v5 = *(a1 + 40);
  }

  v6 = *(a1 + 32);
  if (v6 && (v5 & 1) != 0)
  {
    v7 = *(v6 + 16);
    v8 = a3[1];
    v10[0] = *a3;
    v10[1] = v8;
    v5 = v7(v6, a2, v10);
  }

  return v5 & 1;
}

- (void)deregisterFromService:(const char *)service
{
  v17 = *MEMORY[0x1E69E9840];
  if (service)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[AVConferenceXPCServer deregisterFromService:]";
        v13 = 1024;
        v14 = 540;
        v15 = 2080;
        serviceCopy = service;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: Removing registered block for service %s", &v9, 0x26u);
      }
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:service encoding:4];
    registeredBlocks = self->registeredBlocks;
    objc_sync_enter(registeredBlocks);
    [(NSMutableDictionary *)self->registeredBlocks removeObjectForKey:v7];
    objc_sync_exit(registeredBlocks);
  }
}

- (id)newNSDictionaryFromXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    return _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    return 0;
  }
}

- (id)newXPCDictionaryFromNSDictionary:(id)dictionary forEvent:(id)event
{
  if (event)
  {
    reply = xpc_dictionary_create_reply(event);
  }

  else
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = reply;
  if (dictionary)
  {
    v7 = _CFXPCCreateXPCObjectFromCFObject();
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_value(v6, "RESULTS", v7);
      xpc_release(v8);
    }
  }

  return v6;
}

- (id)newNSErrorFromNSDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [dictionary objectForKeyedSubscript:@"ERROR_DOMAIN"];
  v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"ERROR_CODE", "intValue"}];
  v7 = [dictionary objectForKeyedSubscript:@"ERROR_USERINFO"];

  return [v4 initWithDomain:v5 code:v6 userInfo:v7];
}

- (id)newNSDictionaryFromNSError:(id)error
{
  if (!error)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(error, "code")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(error, "domain"), @"ERROR_DOMAIN", v4, @"ERROR_CODE", objc_msgSend(error, "userInfo"), @"ERROR_USERINFO", 0}];

  return v5;
}

- (id)newNSDictionaryWidthNSDictionary:(id)dictionary
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AVConferenceXPCServer_newNSDictionaryWidthNSDictionary___block_invoke;
  v6[3] = &unk_1E85F8818;
  v6[4] = v4;
  v6[5] = v7;
  [dictionary enumerateKeysAndObjectsUsingBlock:v6];
  _Block_object_dispose(v7, 8);
  return v4;
}

uint64_t __58__AVConferenceXPCServer_newNSDictionaryWidthNSDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"k_%d", *(*(*(a1 + 40) + 8) + 24))}];
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v8 + 1;
  v9 = [v5 stringWithFormat:@"v_%d", v8];

  return [v6 setObject:a3 forKeyedSubscript:v9];
}

- (void)appendPIDToDictionary:(id)dictionary pid:(int)pid
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&pid];
  [dictionary setObject:v5 forKeyedSubscript:@"CLIENTPID"];
}

- (void)appendClientAuditTokenToDictionary:(id)dictionary clientAuditToken:(id *)token
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = [AVCAuditToken alloc];
  v7 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v7;
  v8 = [(AVCAuditToken *)v6 initWithAuditToken:v9];
  [dictionary setObject:v8 forKeyedSubscript:@"CLIENTAUDITTOKEN"];
}

- (void)appendContextToDictionary:(id)dictionary forConnection:(id)connection
{
  v8[7] = *MEMORY[0x1E69E9840];
  [dictionary setObject:0 forKeyedSubscript:@"CONTEXT"];
  if (connection)
  {
    clientConnectionsQueue = self->clientConnectionsQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__AVConferenceXPCServer_appendContextToDictionary_forConnection___block_invoke;
    v8[3] = &unk_1E85F3E30;
    v8[4] = self;
    v8[5] = connection;
    v8[6] = dictionary;
    dispatch_sync(clientConnectionsQueue, v8);
  }
}

void *__65__AVConferenceXPCServer_appendContextToDictionary_forConnection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _xpc_get_connection_from_list_for_connection:*(a1 + 40)];
  if (result)
  {
    v3 = result;
    result = [result context];
    if (result)
    {
      v4 = [v3 context];
      v5 = *(a1 + 48);

      return [v5 setObject:v4 forKeyedSubscript:@"CONTEXT"];
    }
  }

  return result;
}

- (void)_xpc_start_listening_for_connections
{
  v19 = *MEMORY[0x1E69E9840];
  if (AVConferenceServer_ProcessIsAVConferenceServer())
  {
    v3 = "com.apple.videoconference.camera";
  }

  else
  {
    v3 = "com.apple.avconference.xpc";
  }

  self->listener = xpc_connection_create_mach_service(v3, self->incomingMessageQueue, 1uLL);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      listener = self->listener;
      *buf = 136316162;
      v10 = v4;
      v11 = 2080;
      v12 = "[AVConferenceXPCServer _xpc_start_listening_for_connections]";
      v13 = 1024;
      v14 = 677;
      v15 = 2080;
      v16 = v3;
      v17 = 2048;
      v18 = listener;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d name=%s, listener=%p", buf, 0x30u);
    }
  }

  v7 = self->listener;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __61__AVConferenceXPCServer__xpc_start_listening_for_connections__block_invoke;
  handler[3] = &unk_1E85F77C8;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(self->listener);
}

- (id)authorizedTokenData
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  clientConnectionsQueue = self->clientConnectionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVConferenceXPCServer_authorizedTokenData__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(clientConnectionsQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__AVConferenceXPCServer_authorizedTokenData__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 tokenData])
        {
          result = [v7 tokenData];
          *(*(*(a1 + 40) + 8) + 40) = result;
          return result;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

+ (BOOL)clientWithToken:(id *)token hasEntitlement:(id)entitlement
{
  v15 = *MEMORY[0x1E69E9840];
  if (![entitlement length])
  {
    return 0;
  }

  error = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  v9 = SecTaskCopyValueForEntitlement(v8, entitlement, &error);
  if (v9)
  {
    v10 = error == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

+ (int64_t)entitlementStatusForToken:(id *)token
{
  v14 = *MEMORY[0x1E69E9840];
  error = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(v3, &token);
  v6 = v5;
  if (v5)
  {
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.videoconference.allow-conferencing", &error);
    v8 = v7;
    if (!error)
    {
      if (!v7)
      {
        v10 = 2;
LABEL_14:
        CFRelease(v6);
        return v10;
      }

      v9 = CFGetTypeID(v7);
      if (v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_8;
    }

    v10 = 0;
    if (![(AVConferenceXPCServer(XPCManagement) *)&error entitlementStatusForToken:v7])
    {
LABEL_8:
      CFRelease(v8);
    }
  }

  else
  {
    [AVConferenceXPCServer(XPCManagement) entitlementStatusForToken:?];
    v10 = *token.val;
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  return v10;
}

- (void)_xpc_handle_incoming_request:(id)_xpc_handle_incoming_request
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]";
      *&buf[22] = 1024;
      *&buf[24] = 756;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: AVConferenceXPCServer _xpc_handle_connection incoming request", buf, 0x1Cu);
    }
  }

  if (MEMORY[0x1E128D960](_xpc_handle_incoming_request) == MEMORY[0x1E69E9E68])
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v7;
    v31 = v7;
    xpc_connection_get_audit_token();
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    *buf = v31;
    *&buf[16] = v32;
    v14 = [AVConferenceXPCServer entitlementStatusForToken:buf];
    if (v12[3])
    {
      xpc_connection_set_target_queue(_xpc_handle_incoming_request, self->incomingMessageQueue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke;
      handler[3] = &unk_1E85F8890;
      handler[4] = self;
      handler[5] = _xpc_handle_incoming_request;
      v16 = v31;
      v17 = v32;
      handler[6] = &v11;
      xpc_connection_set_event_handler(_xpc_handle_incoming_request, handler);
      xpc_connection_resume(_xpc_handle_incoming_request);
    }

    else
    {
      pid = xpc_connection_get_pid(_xpc_handle_incoming_request);
      bzero(&buf[3], 0x3FDuLL);
      memset(buf, 63, 3);
      proc_name(pid, buf, 0x400u);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v18 = 136316418;
          v19 = v9;
          v20 = 2080;
          v21 = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]";
          v22 = 1024;
          v23 = 773;
          v24 = 2080;
          v25 = buf;
          v26 = 1024;
          v27 = pid;
          v28 = 2080;
          v29 = "com.apple.videoconference.allow-conferencing";
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d Process %s (PID=%d) encountered error while checking entitlement=%s, ignoring connection", v18, 0x36u);
        }
      }

      xpc_connection_cancel(_xpc_handle_incoming_request);
    }

    _Block_object_dispose(&v11, 8);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:];
    }
  }
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E128D960](a2) == MEMORY[0x1E69E9E80])
  {
    [*(a1 + 32) _xpc_add_connection_to_list:*(a1 + 40)];
    *v89 = 0;
    *&v89[8] = v89;
    *&v89[16] = 0x3052000000;
    v90 = __Block_byref_object_copy__30;
    v91 = __Block_byref_object_dispose__30;
    v92 = 0;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_2;
    v77[3] = &unk_1E85F3E08;
    v78 = *(a1 + 32);
    v16 = *(v78 + 48);
    v79 = v89;
    dispatch_barrier_sync(v16, v77);
    v71 = 0;
    v72 = &v71;
    v73 = 0x3052000000;
    v74 = __Block_byref_object_copy__30;
    v75 = __Block_byref_object_dispose__30;
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(a2, "API")}];
    value = xpc_dictionary_get_value(a2, "XPCARGUMENTS");
    v18 = value;
    if (value)
    {
      xpc_retain(value);
      xpc_dictionary_set_value(a2, "XPCARGUMENTS", 0);
    }

    v19 = [*(a1 + 32) newNSDictionaryFromXPCDictionary:a2];
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v19];

    if ([objc_msgSend(v20 objectForKeyedSubscript:{@"CACHEAUTHTOKEN", "BOOLValue"}])
    {
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a1 + 56 length:32];
      v22 = *(*&v89[8] + 40);
      if (v22 && ![v22 tokenData])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            pid = xpc_connection_get_pid(*(a1 + 40));
            *buf = 136315906;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
            *&buf[22] = 1024;
            *&buf[24] = 807;
            *&buf[28] = 1024;
            *&buf[30] = pid;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: caching audit token from PID %d", buf, 0x22u);
          }
        }

        [*(*&v89[8] + 40) setTokenData:v21];
      }
    }

    if (xpc_dictionary_get_BOOL(a2, "USERPERSISTENT"))
    {
      [*(*&v89[8] + 40) setPersistent:1];
    }

    if (v18)
    {
      [v20 setObject:v18 forKeyedSubscript:@"USERXPCARGUMENTS"];
      xpc_release(v18);
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v27;
    [v26 appendClientAuditTokenToDictionary:v20 clientAuditToken:buf];
    [*(a1 + 32) appendPIDToDictionary:v20 pid:xpc_connection_get_pid(*(a1 + 40))];
    [*(a1 + 32) appendContextToDictionary:v20 forConnection:*(a1 + 40)];
    v28 = *(*(a1 + 32) + 24);
    objc_sync_enter(v28);
    v29 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v72[5]];
    v30 = v29;
    if (!v29)
    {
      objc_sync_exit(v28);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v45 = v72[5];
          *buf = 136315906;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke_3";
          *&buf[22] = 1024;
          *&buf[24] = 943;
          *&buf[28] = 2112;
          *&buf[30] = v45;
          _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: invalid service requested or no block registered for service %@, ignoring", buf, 0x26u);
        }
      }

      goto LABEL_70;
    }

    v31 = [v29 block];
    v32 = [v30 queue];
    v33 = [v30 authorizationBlock];
    v70 = 0;
    v34 = *(*(*(a1 + 48) + 8) + 24);
    if (v33)
    {
      v35 = *(v33 + 16);
      v36 = *(a1 + 72);
      *buf = *(a1 + 56);
      *&buf[16] = v36;
      v37 = v35(v33, v20, buf, v34, &v70);
      if (v70)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
LABEL_37:
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if ([v30 eventLogLevel] > ErrorLogLevelForModule || objc_msgSend(v30, "eventLogLevel") < 1)
        {
          goto LABEL_69;
        }

        [v30 eventLogLevel];
        v40 = VRTraceErrorLogLevelToCSTR();
        if ([v30 eventLogLevel] > 2)
        {
          if ([v30 eventLogLevel] > 4)
          {
            if ([v30 eventLogLevel] > 7)
            {
              if ([v30 eventLogLevel] > 8)
              {
                goto LABEL_69;
              }

              v53 = *MEMORY[0x1E6986650];
              v55 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] != 1)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v62 = v72[5];
                  *buf = 136316418;
                  *&buf[4] = v40;
                  *&buf[12] = 2080;
                  *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
                  *&buf[22] = 1024;
                  *&buf[24] = 851;
                  *&buf[28] = 2112;
                  *&buf[30] = v62;
                  *&buf[38] = 2048;
                  v86 = v31;
                  v87 = 2048;
                  v88 = v32;
                  _os_log_debug_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEBUG, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: dispatching registered block for service %@, block %p, queue %p", buf, 0x3Au);
                }

                goto LABEL_69;
              }

              if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_69;
              }
            }

            else
            {
              v53 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_69;
              }
            }

            v54 = v72[5];
            *buf = 136316418;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
            *&buf[22] = 1024;
            *&buf[24] = 851;
            *&buf[28] = 2112;
            *&buf[30] = v54;
            *&buf[38] = 2048;
            v86 = v31;
            v87 = 2048;
            v88 = v32;
            _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: dispatching registered block for service %@, block %p, queue %p", buf, 0x3Au);
            goto LABEL_69;
          }

          v42 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
LABEL_57:
            v51 = v72[5];
            *buf = 136316418;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
            *&buf[22] = 1024;
            *&buf[24] = 851;
            *&buf[28] = 2112;
            *&buf[30] = v51;
            *&buf[38] = 2048;
            v86 = v31;
            v87 = 2048;
            v88 = v32;
            _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: dispatching registered block for service %@, block %p, queue %p", buf, 0x3Au);
          }
        }

        else
        {
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v42 = *MEMORY[0x1E6986650];
          if ((IsOSFaultDisabled & 1) == 0)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              v52 = v72[5];
              *buf = 136316418;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
              *&buf[22] = 1024;
              *&buf[24] = 851;
              *&buf[28] = 2112;
              *&buf[30] = v52;
              *&buf[38] = 2048;
              v86 = v31;
              v87 = 2048;
              v88 = v32;
              _os_log_fault_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_FAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: dispatching registered block for service %@, block %p, queue %p", buf, 0x3Au);
            }

            goto LABEL_69;
          }

          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }
        }

LABEL_69:
        v58 = *(*&v89[8] + 40);
        v59 = v72[5];
        xpc_retain(a2);
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225;
        v69[3] = &unk_1E85F8868;
        v69[10] = v31;
        v69[11] = &v71;
        v69[4] = v30;
        v69[5] = v32;
        v69[12] = v89;
        v60 = *(a1 + 32);
        v61 = *(a1 + 40);
        v69[6] = v20;
        v69[7] = v60;
        v69[8] = a2;
        v69[9] = v61;
        dispatch_async(v32, v69);
        objc_sync_exit(v28);
LABEL_70:

LABEL_71:
        _Block_object_dispose(&v71, 8);
        v48 = v89;
        goto LABEL_72;
      }
    }

    else if (v34 == 1)
    {
      goto LABEL_37;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v56 = v72[5];
        v57 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136316418;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 845;
        *&buf[28] = 2112;
        *&buf[30] = v56;
        *&buf[38] = 2112;
        v86 = v70;
        v87 = 2048;
        v88 = v57;
        _os_log_error_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d API name=%@ failed authorization check error=%@, entitlementStatus=%ld", buf, 0x3Au);
      }
    }

    xpc_connection_cancel(*(a1 + 40));

    objc_sync_exit(v28);
    goto LABEL_71;
  }

  if (MEMORY[0x1E128D960](a2) != MEMORY[0x1E69E9E98])
  {
    return;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__30;
  *&buf[32] = __Block_byref_object_dispose__30;
  v86 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_233;
  block[3] = &unk_1E85F3E08;
  v67 = *(a1 + 32);
  v4 = *(v67 + 48);
  v68 = buf;
  dispatch_barrier_sync(v4, block);
  if (*(*&buf[8] + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
        __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_cold_1(v5, string, v89, v6);
      }
    }

    if (xpc_dictionary_get_BOOL(a2, "USERPERSISTENT"))
    {
      [*(*&buf[8] + 40) setPersistent:1];
    }

    v8 = [*(a1 + 32) newClientDiedDictionary];
    [*(a1 + 32) appendPIDToDictionary:v8 pid:xpc_connection_get_pid(*(a1 + 40))];
    [*(a1 + 32) appendContextToDictionary:v8 forConnection:*(a1 + 40)];
    v63 = *(*(a1 + 32) + 24);
    objc_sync_enter(v63);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v9 = a1;
    obj = *(*(a1 + 32) + 24);
    v10 = [obj countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v10)
    {
      v11 = *v82;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v82 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(v9 + 32) + 24) objectForKeyedSubscript:{*(*(&v81 + 1) + 8 * i), v63}];
          v14 = [v13 block];
          v15 = [v13 queue];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_235;
          v65[3] = &unk_1E85F4D18;
          v65[4] = v8;
          v65[5] = v14;
          dispatch_async(v15, v65);
        }

        v10 = [obj countByEnumeratingWithState:&v81 objects:v80 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v63);

    [*(v9 + 32) _xpc_remove_connection_from_list:*(v9 + 40)];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v46 = VRTraceErrorLogLevelToCSTR();
    v47 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 136315650;
      *&v89[4] = v46;
      *&v89[12] = 2080;
      *&v89[14] = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke_2";
      *&v89[22] = 1024;
      LODWORD(v90) = 954;
      _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: client connection fully disconnected or error from unrecognized client", v89, 0x1Cu);
    }
  }

  v48 = buf;
LABEL_72:
  _Block_object_dispose(v48, 8);
}

uint64_t __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _xpc_get_connection_from_list_for_connection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ([*(a1 + 32) eventLogLevel] > ErrorLogLevelForModule || objc_msgSend(*(a1 + 32), "eventLogLevel") < 1)
  {
    goto LABEL_21;
  }

  [*(a1 + 32) eventLogLevel];
  v3 = VRTraceErrorLogLevelToCSTR();
  if ([*(a1 + 32) eventLogLevel] > 2)
  {
    if ([*(a1 + 32) eventLogLevel] <= 4)
    {
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    if ([*(a1 + 32) eventLogLevel] >= 8)
    {
      if ([*(a1 + 32) eventLogLevel] > 8)
      {
        goto LABEL_21;
      }

      v4 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_1();
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }
    }

    v5 = *(a1 + 80);
    v6 = *(*(*(a1 + 88) + 8) + 40);
    v7 = *(a1 + 40);
    *buf = 136316418;
    *&buf[4] = v3;
    v20 = 2080;
    v21 = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
    v22 = 1024;
    v23 = 858;
    v24 = 2112;
    v25 = v6;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: executing registered block for service %@, block %p, queue %p", buf, 0x3Au);
    goto LABEL_21;
  }

  if (VRTraceIsOSFaultDisabled())
  {
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_2();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
  {
    __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_3();
  }

LABEL_21:
  [*(*(*(a1 + 96) + 8) + 40) setLastCalledApiName:*(*(*(a1 + 88) + 8) + 40)];
  [*(*(*(a1 + 96) + 8) + 40) startTimeoutTimer];
  *buf = 0;
  v9 = (*(*(a1 + 80) + 16))();
  [*(*(*(a1 + 96) + 8) + 40) stopTimeoutTimer];
  v10 = *(*(*(a1 + 96) + 8) + 40);
  v11 = [v9 objectForKeyedSubscript:@"CONTEXT"];
  if (v11 && v11 != [MEMORY[0x1E695DFB0] null])
  {
    v12 = *(*(a1 + 56) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_226;
    block[3] = &unk_1E85F40B8;
    v13 = *(a1 + 96);
    block[4] = v11;
    block[5] = v13;
    dispatch_barrier_sync(v12, block);
  }

  xpc_retain(*(a1 + 64));
  v14 = *(a1 + 56);
  v15 = *(v14 + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_2_227;
  v17[3] = &unk_1E85F8840;
  v16 = *(a1 + 72);
  v17[4] = *(a1 + 64);
  v17[5] = v9;
  v17[6] = *buf;
  v17[7] = v11;
  v17[8] = v14;
  v17[9] = v16;
  v17[10] = *(a1 + 96);
  dispatch_async(v15, v17);
  xpc_release(*(a1 + 64));
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_2_227(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), "API");
  v3 = xpc_dictionary_get_BOOL(*(a1 + 32), "EXPECTSREPLY");
  v4 = v3;
  if (*(a1 + 40) || *(a1 + 48) != 0 || v3)
  {
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x1E695DFB0] null];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 40)];
    [v7 removeObjectForKey:@"CONTEXT"];
    if (*(a1 + 48))
    {
      v8 = [*(a1 + 64) newNSDictionaryFromNSError:?];
      [v7 setObject:v8 forKeyedSubscript:@"ERROR"];
    }

    if (v4)
    {
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 64) newXPCDictionaryFromNSDictionary:v7 forEvent:v9];
    xpc_dictionary_set_string(v10, "API", string);
    if ([v7 objectForKeyedSubscript:@"USERXPCARGUMENTS"])
    {
      xpc_dictionary_set_value(v10, "XPCARGUMENTS", [v7 objectForKeyedSubscript:@"USERXPCARGUMENTS"]);
    }

    xpc_connection_send_message(*(a1 + 72), v10);
    if (v5 == v6)
    {
      [*(a1 + 64) _xpc_remove_connection_from_list:*(a1 + 72)];
    }

    xpc_release(v10);
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = 0;
  }

  xpc_release(*(a1 + 32));
  v12 = *(*(*(a1 + 80) + 8) + 40);
}

uint64_t __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_233(uint64_t a1)
{
  result = [*(a1 + 32) _xpc_get_connection_from_list_for_connection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_235(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), 0);
}

- (void)_xpc_add_connection_to_list:(id)_xpc_add_connection_to_list
{
  block[6] = *MEMORY[0x1E69E9840];
  if (_xpc_add_connection_to_list)
  {
    clientConnectionsQueue = self->clientConnectionsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AVConferenceXPCServer_XPCManagement___xpc_add_connection_to_list___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = _xpc_add_connection_to_list;
    dispatch_barrier_sync(clientConnectionsQueue, block);
  }
}

void __68__AVConferenceXPCServer_XPCManagement___xpc_add_connection_to_list___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) _xpc_get_connection_from_list_for_connection:*(a1 + 40)])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        pid = xpc_connection_get_pid(*(a1 + 40));
        v6 = 136315906;
        v7 = v2;
        v8 = 2080;
        v9 = "[AVConferenceXPCServer(XPCManagement) _xpc_add_connection_to_list:]_block_invoke";
        v10 = 1024;
        v11 = 1014;
        v12 = 1024;
        v13 = pid;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: _xpc_add_connection_to_list PID %d", &v6, 0x22u);
      }
    }

    v5 = objc_alloc_init(VCXPCConnection);
    [(VCXPCConnection *)v5 setConnection:*(a1 + 40)];
    [(VCXPCConnection *)v5 setPid:xpc_connection_get_pid(*(a1 + 40))];
    [*(*(a1 + 32) + 16) addObject:v5];
    [(VCXPCConnection *)v5 createTimeoutTimer];
  }
}

- (void)_xpc_remove_connection_from_list:(id)_xpc_remove_connection_from_list
{
  block[6] = *MEMORY[0x1E69E9840];
  if (_xpc_remove_connection_from_list)
  {
    clientConnectionsQueue = self->clientConnectionsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AVConferenceXPCServer_XPCManagement___xpc_remove_connection_from_list___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = _xpc_remove_connection_from_list;
    dispatch_barrier_sync(clientConnectionsQueue, block);
  }
}

uint64_t __73__AVConferenceXPCServer_XPCManagement___xpc_remove_connection_from_list___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _xpc_get_connection_from_list_for_connection:*(a1 + 40)];
  if (result)
  {
    v3 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        pid = xpc_connection_get_pid(*(a1 + 40));
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[AVConferenceXPCServer(XPCManagement) _xpc_remove_connection_from_list:]_block_invoke";
        v11 = 1024;
        v12 = 1042;
        v13 = 1024;
        v14 = pid;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: _xpc_remove_connection_from_list PID %d", &v7, 0x22u);
      }
    }

    return [*(*(a1 + 32) + 16) removeObject:v3];
  }

  return result;
}

- (void)_xpc_remove_connections_from_list
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVConferenceXPCServer(XPCManagement) _xpc_remove_connections_from_list]";
      v11 = 1024;
      v12 = 1049;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  clientConnectionsQueue = self->clientConnectionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AVConferenceXPCServer_XPCManagement___xpc_remove_connections_from_list__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_barrier_sync(clientConnectionsQueue, block);
}

- (id)_xpc_get_connection_from_list_for_connection:(id)_xpc_get_connection_from_list_for_connection
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->clientConnectionsQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  clientConnections = self->clientConnections;
  v6 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(clientConnections);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 connection] == _xpc_get_connection_from_list_for_connection)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_xpc_get_connection_from_list_for_context:(id)_xpc_get_connection_from_list_for_context
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->clientConnectionsQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  clientConnections = self->clientConnections;
  v6 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(clientConnections);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([_xpc_get_connection_from_list_for_context isEqual:{objc_msgSend(v10, "context")}])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_xpc_get_connections_from_list_for_context:(id)_xpc_get_connections_from_list_for_context
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->clientConnectionsQueue);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  clientConnections = self->clientConnections;
  v7 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(clientConnections);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([_xpc_get_connections_from_list_for_context isEqual:{objc_msgSend(v11, "context")}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)clientConnections countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

void __29__AVConferenceXPCServer_init__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 308;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: Ping saw client death, ignored by ping", v1, 0x1Cu);
}

- (void)sendMessageAsync:arguments:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)sendMessageAsync:arguments:xpcArguments:context:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)sendMessageAsync:arguments:context:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)sendMessageAsync:arguments:toAllClientsWithContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "[AVConferenceXPCServer(XPCManagement) _xpc_handle_incoming_request:]_block_invoke";
  *(buf + 11) = 1024;
  *(buf + 6) = 959;
  *(buf + 14) = 2080;
  *(buf + 30) = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: XPC Error, %s", buf, 0x26u);
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_1()
{
  OUTLINED_FUNCTION_1_26(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_2()
{
  OUTLINED_FUNCTION_1_26(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x3Au);
}

void __69__AVConferenceXPCServer_XPCManagement___xpc_handle_incoming_request___block_invoke_225_cold_3()
{
  OUTLINED_FUNCTION_1_26(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x3Au);
}

@end