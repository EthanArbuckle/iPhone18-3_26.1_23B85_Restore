@interface AVConferenceXPCClient
+ (id)AVConferenceXPCClientSingleton;
- (AVConferenceXPCClient)init;
- (id)copyConnection;
- (id)createConnectionToServer;
- (id)newNSDictionaryFromNSDictionary:(id)a3;
- (id)newNSDictionaryFromNSError:(id)a3;
- (id)newNSDictionaryFromXPCDictionary:(id)a3;
- (id)newNSErrorFromNSDictionary:(id)a3;
- (id)newXPCDictionaryFromNSDictionary:(id)a3 error:(id *)a4;
- (id)sendMessageSync:(char *)a3 arguments:(id)a4 xpcArguments:(id)a5;
- (void)closeConnectionToServer;
- (void)dealloc;
- (void)deregisterFromService:(char *)a3;
- (void)registerBlockForService:(char *)a3 block:(id)a4 queue:(id)global_queue eventLogLevel:(int)a6;
- (void)sendMessageAsync:(char *)a3 arguments:(id)a4 xpcArguments:(id)a5 reply:(id)a6 queue:(id)a7 replyLogLevel:(int)a8;
@end

@implementation AVConferenceXPCClient

+ (id)AVConferenceXPCClientSingleton
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = _xpcClientSingleton;
  if (!_xpcClientSingleton)
  {
    v4 = objc_alloc_init(a1);
    _xpcClientSingleton = v4;
  }

  v4[40] = 1;
  objc_sync_exit(v3);
  return _xpcClientSingleton;
}

- (AVConferenceXPCClient)init
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVConferenceXPCClient;
  v2 = [(AVConferenceXPCClient *)&v14 init];
  if (v2)
  {
    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315650;
      v16 = v4;
      v17 = 2080;
      v18 = "[AVConferenceXPCClient init]";
      v19 = 1024;
      v20 = 85;
      v6 = "AVConferenceXPCClient [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(AVConferenceXPCClient *)v2 performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316162;
      v16 = v9;
      v17 = 2080;
      v18 = "[AVConferenceXPCClient init]";
      v19 = 1024;
      v20 = 85;
      v21 = 2112;
      v22 = v3;
      v23 = 2048;
      v24 = v2;
      v6 = "AVConferenceXPCClient [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_13:
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->replyQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVConferenceXPCClient.ReplyQueue", 0, CustomRootQueue);
    v12 = VCDispatchQueue_GetCustomRootQueue(37);
    v2->connectionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVConferenceXPCClient.ConnectionQueue", MEMORY[0x1E69E96A8], v12);
    v2->registeredBlocks = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVConferenceXPCClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v14 = v9;
    v15 = 2080;
    v16 = "[AVConferenceXPCClient dealloc]";
    v17 = 1024;
    v18 = 97;
    v19 = 2112;
    v20 = v3;
    v21 = 2048;
    v22 = self;
    v6 = "AVConferenceXPCClient [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "[AVConferenceXPCClient dealloc]";
      v17 = 1024;
      v18 = 97;
      v6 = "AVConferenceXPCClient [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  dispatch_release(self->replyQueue);
  dispatch_release(self->connectionQueue);

  connection = self->connection;
  if (connection)
  {
    xpc_release(connection);
    self->connection = 0;
  }

  v12.receiver = self;
  v12.super_class = AVConferenceXPCClient;
  [(AVConferenceXPCClient *)&v12 dealloc];
}

- (id)newNSDictionaryFromXPCDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  xpc_dictionary_get_value(a3, "RESULTS");

  return _CFXPCCreateCFObjectFromXPCObject();
}

- (id)newXPCDictionaryFromNSDictionary:(id)a3 error:(id *)a4
{
  if (a3)
  {
    result = _CFXPCCreateXPCObjectFromCFObject();
    if (a4)
    {
      if (!result)
      {
        v7 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32031 detailCode:2 description:@"Failed to create XPC dictionary"];
        result = 0;
        *a4 = v7;
      }
    }
  }

  else
  {

    return xpc_dictionary_create(0, 0, 0);
  }

  return result;
}

- (id)newNSErrorFromNSDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [a3 objectForKeyedSubscript:@"ERROR_DOMAIN"];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"ERROR_CODE", "intValue"}];
  v7 = [a3 objectForKeyedSubscript:@"ERROR_USERINFO"];

  return [v4 initWithDomain:v5 code:v6 userInfo:v7];
}

- (id)newNSDictionaryFromNSError:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(a3, "code")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(a3, "domain"), @"ERROR_DOMAIN", v4, @"ERROR_CODE", objc_msgSend(a3, "userInfo"), @"ERROR_USERINFO", 0}];

  return v5;
}

- (id)newNSDictionaryFromNSDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = 0;
  while (1)
  {
    v6 = [a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"k_%d", v5)}];
    v7 = [a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"v_%d", v5)}];
    if (!v6 || v7 == 0)
    {
      break;
    }

    v5 = (v5 + 1);
    [v4 setObject:v7 forKeyedSubscript:v6];
  }

  return v4;
}

- (id)copyConnection
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__26;
  v11 = __Block_byref_object_dispose__26;
  v12 = 0;
  connectionQueue = self->connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AVConferenceXPCClient_copyConnection__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(connectionQueue, block);
  v4 = v8[5];
  if (!v4)
  {
    v4 = [(AVConferenceXPCClient *)self createConnectionToServer];
    v8[5] = v4;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

xpc_object_t __39__AVConferenceXPCClient_copyConnection__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = xpc_retain(result);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)closeConnectionToServer
{
  v3[5] = *MEMORY[0x1E69E9840];
  connectionQueue = self->connectionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__AVConferenceXPCClient_closeConnectionToServer__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_barrier_async(connectionQueue, v3);
}

void __48__AVConferenceXPCClient_closeConnectionToServer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v2;
        v6 = 2080;
        v7 = "[AVConferenceXPCClient closeConnectionToServer]_block_invoke";
        v8 = 1024;
        v9 = 239;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: disposing off connection to server", &v4, 0x1Cu);
      }
    }

    xpc_release(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
  }
}

- (id)createConnectionToServer
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  connectionQueue = self->connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVConferenceXPCClient_createConnectionToServer__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_barrier_sync(connectionQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

xpc_object_t __49__AVConferenceXPCClient_createConnectionToServer__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    if (AVConferenceServer_ProcessIsAVConferenceServer())
    {
      v3 = "com.apple.avconference.xpc";
    }

    else
    {
      v3 = "com.apple.videoconference.camera";
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v6;
        v17 = 2080;
        v18 = "[AVConferenceXPCClient createConnectionToServer]_block_invoke";
        v19 = 1024;
        v20 = 254;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: creating new connection to server", buf, 0x1Cu);
      }
    }

    *(*(a1 + 32) + 8) = xpc_connection_create_mach_service(v3, *(*(a1 + 32) + 24), 0);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 8);
        *buf = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[AVConferenceXPCClient createConnectionToServer]_block_invoke";
        v19 = 1024;
        v20 = 257;
        v21 = 2080;
        v22 = v3;
        v23 = 2048;
        v24 = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d name=%s, connection=%p", buf, 0x30u);
      }
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65;
    handler[3] = &unk_1E85F77C8;
    handler[4] = v11;
    xpc_connection_set_event_handler(v12, handler);
    xpc_connection_resume(*(*(a1 + 32) + 8));
    v2 = *(*(a1 + 32) + 8);
  }

  result = xpc_retain(v2);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E128D960](a2);
  if (v3 == MEMORY[0x1E69E9E98])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
        *buf = 136315906;
        v42 = v15;
        v43 = 2080;
        v44 = "[AVConferenceXPCClient createConnectionToServer]_block_invoke";
        v45 = 1024;
        v46 = 272;
        v47 = 2080;
        v48 = string;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: Cannot talk to server because server died or parent deallocated, %s", buf, 0x26u);
      }
    }

    v18 = [*(a1 + 32) newServerDiedDictionary];
    obja = *(*(a1 + 32) + 16);
    objc_sync_enter(obja);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = *(*(a1 + 32) + 16);
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v36 count:16];
    if (v20)
    {
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
          v24 = [v23 block];
          v25 = [v23 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_66;
          block[3] = &unk_1E85F4D18;
          block[4] = v18;
          block[5] = v24;
          dispatch_async(v25, block);
        }

        v20 = [v19 countByEnumeratingWithState:&v37 objects:v36 count:16];
      }

      while (v20);
    }

    objc_sync_exit(obja);

    [*(a1 + 32) closeConnectionToServer];
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E80])
    {
      return;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(a2, "API")}];
    obj = *(*(a1 + 32) + 16);
    objc_sync_enter(obj);
    v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v4];
    if (v5)
    {
      value = xpc_dictionary_get_value(a2, "XPCARGUMENTS");
      v7 = value;
      if (value)
      {
        xpc_retain(value);
        xpc_dictionary_set_value(a2, "XPCARGUMENTS", 0);
      }

      v8 = [*(a1 + 32) newNSDictionaryFromXPCDictionary:a2];
      v9 = [v8 mutableCopy];
      v10 = [*(a1 + 32) newNSErrorFromNSDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR"}];
      if (v7)
      {
        [v9 setObject:v7 forKeyedSubscript:@"USERXPCARGUMENTS"];
        xpc_release(v7);
      }

      v11 = [v5 block];
      v12 = [v5 queue];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ([v5 eventLogLevel] > ErrorLogLevelForModule || objc_msgSend(v5, "eventLogLevel") < 1)
      {
        goto LABEL_45;
      }

      [v5 eventLogLevel];
      v14 = VRTraceErrorLogLevelToCSTR();
      if ([v5 eventLogLevel] <= 2)
      {
        if ((VRTraceIsOSFaultDisabled() & 1) == 0)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_3();
          }

          goto LABEL_45;
        }

        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
LABEL_13:
          __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_2();
        }

LABEL_45:
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_75;
        v34[3] = &unk_1E85F4C78;
        v34[5] = v10;
        v34[6] = v11;
        v34[4] = v9;
        dispatch_async(v12, v34);

        objc_sync_exit(obj);
        return;
      }

      if ([v5 eventLogLevel] <= 4)
      {
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        goto LABEL_13;
      }

      if ([v5 eventLogLevel] > 7)
      {
        if ([v5 eventLogLevel] > 8)
        {
          goto LABEL_45;
        }

        v29 = *MEMORY[0x1E6986650];
        v30 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_1();
          }

          goto LABEL_45;
        }

        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v29 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }
      }

      *buf = 136315906;
      v42 = v14;
      v43 = 2080;
      v44 = "[AVConferenceXPCClient createConnectionToServer]_block_invoke";
      v45 = 1024;
      v46 = 313;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: processing registered reply for service %@", buf, 0x26u);
      goto LABEL_45;
    }

    objc_sync_exit(obj);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v42 = v26;
          v43 = 2080;
          v44 = "[AVConferenceXPCClient createConnectionToServer]_block_invoke_2";
          v45 = 1024;
          v46 = 328;
          v47 = 2112;
          v48 = v4;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: no registered block found for service %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_5();
      }
    }
  }
}

- (void)sendMessageAsync:(char *)a3 arguments:(id)a4 xpcArguments:(id)a5 reply:(id)a6 queue:(id)a7 replyLogLevel:(int)a8
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (a3)
  {
    global_queue = a7;
    v15 = a4;
    v16 = [(AVConferenceXPCClient *)self newXPCDictionaryFromNSDictionary:a4 error:&v26];
    v17 = v16;
    if (v26)
    {
      if (v16)
      {
        xpc_release(v16);
      }

      if (a6)
      {
        (*(a6 + 2))(a6, 0, v26);
      }
    }

    else
    {
      if (a5)
      {
        xpc_dictionary_set_value(v16, "XPCARGUMENTS", a5);
      }

      if ([(AVConferenceXPCClient *)self connectionPersists])
      {
        xpc_dictionary_set_BOOL(v17, "USERPERSISTENT", 1);
      }

      xpc_dictionary_set_string(v17, "API", a3);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v22 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v28 = v20;
            v29 = 2080;
            v30 = "[AVConferenceXPCClient sendMessageAsync:arguments:xpcArguments:reply:queue:replyLogLevel:]";
            v31 = 1024;
            v32 = 403;
            v33 = 2080;
            v34 = a3;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: Sending message to server for service: %s", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [AVConferenceXPCClient sendMessageAsync:arguments:xpcArguments:reply:queue:replyLogLevel:];
        }
      }

      v23 = [(AVConferenceXPCClient *)self copyConnection];
      if (a6)
      {
        if (!global_queue)
        {
          global_queue = dispatch_get_global_queue(2, 0);
        }

        dispatch_retain(global_queue);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke;
        v24[3] = &unk_1E85F8528;
        v25 = a8;
        v24[4] = self;
        v24[5] = global_queue;
        v24[6] = a6;
        v24[7] = a3;
        xpc_dictionary_set_BOOL(v17, "EXPECTSREPLY", 1);
        xpc_retain(v17);
        xpc_connection_send_message_with_reply(v23, v17, self->replyQueue, v24);
      }

      else
      {
        xpc_dictionary_set_BOOL(v17, "EXPECTSREPLY", 0);
        xpc_retain(v17);
        xpc_connection_send_message(v23, v17);
      }

      xpc_release(v17);
      xpc_release(v17);
      xpc_release(v23);
    }
  }

  else if (a6)
  {
    v18 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32031 detailCode:1 description:{@"service is nil", a6, a7, *&a8}];
    v19 = *(a6 + 2);

    v19(a6, 0, v18);
  }
}

void __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E128D960](a2);
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_1(v7, a2, v8);
      }
    }

    v6 = [*(a1 + 32) newServerDiedDictionary];
    [*(a1 + 32) closeConnectionToServer];
    v5 = 0;
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    v6 = [*(a1 + 32) newNSDictionaryFromXPCDictionary:a2];
    v5 = [*(a1 + 32) newNSErrorFromNSDictionary:{objc_msgSend(v6, "objectForKeyedSubscript:", @"ERROR"}];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = *(a1 + 64);
  if (v10 <= ErrorLogLevelForModule && v10 >= 1)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *(a1 + 64);
    if (v15 > 2)
    {
      if (v15 <= 4)
      {
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }

      if (v15 > 7)
      {
        if (v15 != 8)
        {
          goto LABEL_14;
        }

        v16 = *MEMORY[0x1E6986650];
        v18 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_2();
          }

          goto LABEL_14;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }
      }

      v17 = *(a1 + 56);
      *buf = 136315906;
      v21 = v14;
      v22 = 2080;
      v23 = "[AVConferenceXPCClient sendMessageAsync:arguments:xpcArguments:reply:queue:replyLogLevel:]_block_invoke";
      v24 = 1024;
      v25 = 429;
      v26 = 2080;
      v27 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: executing reply block for service %s", buf, 0x26u);
      goto LABEL_14;
    }

    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_4();
    }
  }

LABEL_14:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_81;
  block[3] = &unk_1E85F4C78;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  block[5] = v5;
  block[6] = v13;
  block[4] = v6;
  dispatch_async(v12, block);

  dispatch_release(*(a1 + 40));
}

- (id)sendMessageSync:(char *)a3 arguments:(id)a4 xpcArguments:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v8 = [(AVConferenceXPCClient *)self newXPCDictionaryFromNSDictionary:a4 error:0];
  xpc_dictionary_set_string(v8, "API", a3);
  if (a5)
  {
    xpc_dictionary_set_value(v8, "XPCARGUMENTS", a5);
  }

  if ([(AVConferenceXPCClient *)self connectionPersists])
  {
    xpc_dictionary_set_BOOL(v8, "USERPERSISTENT", 1);
  }

  xpc_dictionary_set_BOOL(v8, "EXPECTSREPLY", 1);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = v9;
        v23 = 2080;
        v24 = "[AVConferenceXPCClient sendMessageSync:arguments:xpcArguments:]";
        v25 = 1024;
        v26 = 485;
        v27 = 2080;
        v28 = a3;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: Sending sync message to server for service: %s", &v21, 0x26u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AVConferenceXPCClient sendMessageSync:arguments:xpcArguments:];
    }
  }

  v13 = [(AVConferenceXPCClient *)self copyConnection];
  v14 = xpc_connection_send_message_with_reply_sync(v13, v8);
  v15 = MEMORY[0x1E128D960]();
  if (v15 == MEMORY[0x1E69E9E98])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVConferenceXPCClient sendMessageSync:v18 arguments:v14 xpcArguments:v19];
      }
    }

    v17 = [(AVConferenceXPCClient *)self newServerDiedDictionary];
    [(AVConferenceXPCClient *)self closeConnectionToServer];
    v16 = 0;
  }

  else if (v15 == MEMORY[0x1E69E9E80])
  {
    v17 = [(AVConferenceXPCClient *)self newNSDictionaryFromXPCDictionary:v14];
    v16 = -[AVConferenceXPCClient newNSErrorFromNSDictionary:](self, "newNSErrorFromNSDictionary:", [v17 objectForKeyedSubscript:@"ERROR"]);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 addEntriesFromDictionary:v17];
  [v20 setObject:xpc_dictionary_get_value(v14 forKeyedSubscript:{"XPCARGUMENTS"), @"USERXPCARGUMENTS"}];
  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:@"ERROR"];
  }

  xpc_release(v14);
  xpc_release(v8);
  xpc_release(v13);
  return v20;
}

- (void)registerBlockForService:(char *)a3 block:(id)a4 queue:(id)global_queue eventLogLevel:(int)a6
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v7 = *&a6;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315906;
          v18 = v11;
          v19 = 2080;
          v20 = "[AVConferenceXPCClient registerBlockForService:block:queue:eventLogLevel:]";
          v21 = 1024;
          v22 = 533;
          v23 = 2080;
          v24 = a3;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: Adding registered block for service %s", &v17, 0x26u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCClient registerBlockForService:block:queue:eventLogLevel:];
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3 encoding:4];
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(2, 0);
    }

    registeredBlocks = self->registeredBlocks;
    objc_sync_enter(registeredBlocks);
    v16 = [(NSMutableDictionary *)self->registeredBlocks objectForKeyedSubscript:v14];
    if (!v16)
    {
      v16 = objc_alloc_init(XPCClientUser);
      [(NSMutableDictionary *)self->registeredBlocks setObject:v16 forKeyedSubscript:v14];
    }

    [(XPCClientUser *)v16 setBlock:a4];
    [(XPCClientUser *)v16 setQueue:global_queue];
    [(XPCClientUser *)v16 setEventLogLevel:v7];
    objc_sync_exit(registeredBlocks);
  }
}

- (void)deregisterFromService:(char *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v5;
          v12 = 2080;
          v13 = "[AVConferenceXPCClient deregisterFromService:]";
          v14 = 1024;
          v15 = 563;
          v16 = 2080;
          v17 = a3;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCClient [%s] %s:%d XPC Client: Removing registered block for service %s", &v10, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [AVConferenceXPCClient deregisterFromService:];
      }
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3 encoding:4];
    registeredBlocks = self->registeredBlocks;
    objc_sync_enter(registeredBlocks);
    [(NSMutableDictionary *)self->registeredBlocks removeObjectForKey:v8];
    objc_sync_exit(registeredBlocks);
  }
}

void __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: processing registered reply for service %@");
}

void __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_36_5(v0, v1, v2, v3, v4);
}

void __49__AVConferenceXPCClient_createConnectionToServer__block_invoke_65_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)sendMessageAsync:arguments:xpcArguments:reply:queue:replyLogLevel:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: Sending message to server for service: %s", v2, v3, v4, v5);
}

void __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_1(int a1, xpc_object_t xdict, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  v8 = 419;
  v9 = v4;
  v10 = v5;
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, a3, v6, "AVConferenceXPCClient [%s] %s:%d XPC Client: received error from server while processing reply, %s", v7);
}

void __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10_18(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: executing reply block for service %s", v2, v3, v4, v5);
}

void __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10_18(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_36_5(v0, v1, v2, v3, v4);
}

void __91__AVConferenceXPCClient_sendMessageAsync_arguments_xpcArguments_reply_queue_replyLogLevel___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_10_18(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_25();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)sendMessageSync:arguments:xpcArguments:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: Sending sync message to server for service: %s", v2, v3, v4, v5);
}

- (void)sendMessageSync:(int)a1 arguments:(xpc_object_t)xdict xpcArguments:(NSObject *)a3 .cold.2(int a1, xpc_object_t xdict, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  v8 = 495;
  v9 = v4;
  v10 = v5;
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, a3, v6, "AVConferenceXPCClient [%s] %s:%d XPC Client: received error from server while processing reply, %s", v7);
}

- (void)registerBlockForService:block:queue:eventLogLevel:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: Adding registered block for service %s", v2, v3, v4, v5);
}

- (void)deregisterFromService:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVConferenceXPCClient [%s] %s:%d XPC Client: Removing registered block for service %s", v2, v3, v4, v5);
}

@end