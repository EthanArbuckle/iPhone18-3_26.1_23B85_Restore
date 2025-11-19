@interface NETunnelProviderSession
- (BOOL)sendProviderMessage:(NSData *)messageData returnError:(NSError *)error responseHandler:(void *)responseHandler;
- (BOOL)startTunnelWithOptions:(NSDictionary *)options andReturnError:(NSError *)error;
- (void)stopTunnel;
@end

@implementation NETunnelProviderSession

- (BOOL)sendProviderMessage:(NSData *)messageData returnError:(NSError *)error responseHandler:(void *)responseHandler
{
  v45[2] = *MEMORY[0x1E69E9840];
  v8 = messageData;
  v9 = responseHandler;
  if (error)
  {
    *error = 0;
  }

  if (+[NEProvider isRunningInProvider])
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "App messages cannot be sent from Network Extension providers", buf, 2u);
    }

    if (error)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:3 userInfo:0];
LABEL_22:
      v31 = 0;
      *error = v11;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ([(NEVPNConnection *)self status]== NEVPNStatusInvalid || !self || !self->super._session)
  {
    if (error)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:0];
      goto LABEL_22;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  objc_opt_self();
  if (sharedWrapperForSession__globals_init != -1)
  {
    dispatch_once(&sharedWrapperForSession__globals_init, &__block_literal_global_24151);
  }

  v45[0] = 0;
  v45[1] = 0;
  ne_session_get_configuration_id();
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v45];
  v13 = wrapperMap;
  objc_sync_enter(v13);
  v15 = [wrapperMap objectForKeyedSubscript:v12];
  if (v15)
  {
    goto LABEL_17;
  }

  v16 = [NEIPCWrapper alloc];
  v34 = v12;
  if (v16)
  {
    v44.receiver = v16;
    v44.super_class = NEIPCWrapper;
    v17 = [(NETunnelProviderSession *)&v44 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->super._configManager, v12);
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_create("NEIPCWrapper IPC queue", v19);
      status = v18->super._status;
      v18->super._status = v20;

      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_create("NEIPCWrapper send queue", v22);
      v24 = *&v18->super._installed;
      *&v18->super._installed = v23;

      dispatch_suspend(*&v18->super._installed);
      v25 = v18->super._status;
      *buf = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __43__NEIPCWrapper_initWithSession_identifier___block_invoke;
      v42 = &unk_1E7F0AF98;
      v15 = v18;
      v43 = v15;
      ne_session_establish_ipc();

LABEL_17:
      v26 = wrapperMap;
      v27 = objc_getProperty(v15, v14, 32, 1);
      [v26 setObject:v15 forKeyedSubscript:v27];

      goto LABEL_18;
    }
  }

  v15 = 0;
LABEL_18:
  objc_sync_exit(v13);

  if (!v15)
  {
    if (error)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:0];
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  Property = objc_getProperty(v15, v28, 8, 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NETunnelProviderSession_sendProviderMessage_returnError_responseHandler___block_invoke;
  block[3] = &unk_1E7F0AAA0;
  v36 = v15;
  v37 = v8;
  v38 = v9;
  v30 = v15;
  dispatch_async(Property, block);

  v31 = 1;
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void __75__NETunnelProviderSession_sendProviderMessage_returnError_responseHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 24, 1))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      Property = objc_getProperty(v5, v4, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = MEMORY[0x1E69E96A0];
    v10 = v7;
    if (!Property)
    {
      goto LABEL_19;
    }

    v11 = Property;
    objc_sync_enter(v11);
    if (objc_getProperty(v11, v12, 16, 1))
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v13, "type", 0);
      if (v8)
      {
        xpc_dictionary_set_data(v13, "data", [v8 bytes], objc_msgSend(v8, "length"));
      }

      if (v10)
      {
        xpc_dictionary_set_BOOL(v13, "needs-reply", 1);
        v16 = objc_getProperty(v11, v15, 16, 1);
        handler = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __58__NEIPC_sendMessageWithType_data_replyQueue_replyHandler___block_invoke;
        v24 = &unk_1E7F0B138;
        v25 = v10;
        xpc_connection_send_message_with_reply(v16, v13, MEMORY[0x1E69E96A0], &handler);
      }

      else
      {
        v18 = objc_getProperty(v11, v14, 16, 1);
        xpc_connection_send_message(v18, v13);
      }

      [NEIPC logMessageType:v8 data:@"Sent" actionString:?];
    }

    else
    {
      if (!v10)
      {
LABEL_18:
        objc_sync_exit(v11);

LABEL_19:
        return;
      }

      handler = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __58__NEIPC_sendMessageWithType_data_replyQueue_replyHandler___block_invoke_2;
      v24 = &unk_1E7F0B600;
      v25 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], &handler);
      v13 = v25;
    }

    goto LABEL_18;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__NETunnelProviderSession_sendProviderMessage_returnError_responseHandler___block_invoke_2;
    v19[3] = &unk_1E7F0B600;
    v20 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

- (void)stopTunnel
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(NEVPNConnection *)self status]&& self && self->super._session)
  {
    objc_opt_self();
    v11[0] = 0;
    v11[1] = 0;
    ne_session_get_configuration_id();
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v11];
    v4 = wrapperMap;
    objc_sync_enter(v4);
    v5 = [wrapperMap objectForKeyedSubscript:v3];
    v7 = v5;
    if (v5)
    {
      v8 = objc_getProperty(v5, v6, 24, 1);
      [(NEIPC *)v8 stop];

      [(NEIPCWrapper *)v7 cancel];
    }

    objc_sync_exit(v4);
  }

  v10.receiver = self;
  v10.super_class = NETunnelProviderSession;
  [(NEVPNConnection *)&v10 stopVPNTunnel];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)startTunnelWithOptions:(NSDictionary *)options andReturnError:(NSError *)error
{
  v5.receiver = self;
  v5.super_class = NETunnelProviderSession;
  return [(NEVPNConnection *)&v5 startVPNTunnelWithOptions:options andReturnError:error];
}

@end