@interface NEIPC
- (void)logMessageType:(int)a1 data:(void *)a2 actionString:(void *)a3;
- (void)setupMessageHandlingWithQueue:(void *)a1;
- (void)stop;
@end

@implementation NEIPC

- (void)logMessageType:(int)a1 data:(void *)a2 actionString:(void *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (nelog_is_debug_logging_enabled())
  {
    if ([v5 length])
    {
      CC_SHA1([v5 bytes], objc_msgSend(v5, "length"), md);
      v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:md length:20 freeWhenDone:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v5 length];
      v11 = [v7 description];
      v12 = 138413058;
      v13 = v6;
      v14 = 1024;
      v15 = a1;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%@ an IPC message with type %u and length %lu, hash %@", &v12, 0x26u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __35__NEIPC_handleMessage_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (isa_nsdata(v6))
  {
    v4 = v6;
    xpc_dictionary_set_data(reply, "data", [v6 bytes], objc_msgSend(v6, "length"));
  }

  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  xpc_connection_send_message(v5, reply);
}

- (void)stop
{
  if (a1)
  {
    self = a1;
    objc_sync_enter(self);
    if (objc_getProperty(self, v1, 16, 1))
    {
      v3 = objc_getProperty(self, v2, 16, 1);
      xpc_connection_cancel(v3);

      objc_setProperty_atomic(self, v4, 0, 16);
    }

    if (objc_getProperty(self, v2, 24, 1))
    {
      v6 = objc_getProperty(self, v5, 24, 1);
      xpc_connection_cancel(v6);

      objc_setProperty_atomic(self, v7, 0, 24);
    }

    objc_setProperty_atomic_copy(self, v5, 0, 8);
    objc_sync_exit(self);
  }
}

- (void)setupMessageHandlingWithQueue:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    Property = objc_getProperty(a1, v4, 16, 1);
    xpc_connection_set_target_queue(Property, v3);

    v7 = objc_getProperty(a1, v6, 16, 1);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __39__NEIPC_setupMessageHandlingWithQueue___block_invoke;
    handler[3] = &unk_1E7F0AF98;
    handler[4] = a1;
    xpc_connection_set_event_handler(v7, handler);
    v9 = objc_getProperty(a1, v8, 16, 1);
    xpc_connection_resume(v9);
  }
}

void __39__NEIPC_setupMessageHandlingWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v5 = *(a1 + 32);
  if (v5 && objc_getProperty(v5, v4, 8, 1))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(*(a1 + 32), v6, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    v10 = v16;
    v11 = v9;
    if (v7)
    {
      if (v10 && MEMORY[0x1BFAFC5E0](v10) == MEMORY[0x1E69E9E80])
      {
        uint64 = xpc_dictionary_get_uint64(v10, "type");
        length = 0;
        data = xpc_dictionary_get_data(v10, "data", &length);
        v15 = xpc_dictionary_get_BOOL(v10, "needs-reply");
        if (data)
        {
          data = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
        }

        [NEIPC logMessageType:data data:@"Received" actionString:?];
        if (v15)
        {
          *buf = MEMORY[0x1E69E9820];
          v18 = 3221225472;
          v19 = __35__NEIPC_handleMessage_withHandler___block_invoke;
          v20 = &unk_1E7F08DF8;
          v21 = v10;
          v11[2](v11, 0, uint64, data, buf);
        }

        else
        {
          v11[2](v11, 0, uint64, data, 0);
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "The IPC connection was closed by the remote end", buf, 2u);
        }

        [(NEIPC *)v7 stop];
        v11[2](v11, 1, 0, 0, 0);
      }
    }
  }

  objc_sync_exit(v3);
}

void __51__NEIPC_startInListenModeWithQueue_messageHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E68])
  {
    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_setProperty_atomic(v7, v6, v4, 16);
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v9, 16, 1);
      }

      v12 = Property;
      v13[0] = 67109120;
      v13[1] = xpc_connection_get_pid(v12);
      _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "Received a new connection from %d", v13, 8u);
    }

    [(NEIPC *)*(a1 + 32) setupMessageHandlingWithQueue:?];
    objc_sync_exit(v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58__NEIPC_sendMessageWithType_data_replyQueue_replyHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  if (data)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end