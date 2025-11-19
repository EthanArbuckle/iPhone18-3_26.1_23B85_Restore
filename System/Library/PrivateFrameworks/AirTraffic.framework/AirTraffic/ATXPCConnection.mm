@interface ATXPCConnection
- (ATXPCConnection)initWithServiceName:(id)a3 onQueue:(id)a4;
- (ATXPCConnection)initWithXPCConnection:(id)a3;
- (NSString)serviceName;
- (id)eventQueue;
- (unint64_t)_outstandingMessages;
- (void)_handleLockdownMessage:(void *)a3;
- (void)_handleXPCError:(id)a3;
- (void)_handleXPCMessage:(id)a3;
- (void)_registerMessage:(id)a3;
- (void)_removeMessage:(id)a3;
- (void)_sendMessage:(id)a3 handler:(id)a4;
- (void)_setEventHandlerOnConnection:(id)a3;
- (void)dealloc;
- (void)sendMessage:(id)a3 withReply:(id)a4;
- (void)shutdown;
@end

@implementation ATXPCConnection

- (unint64_t)_outstandingMessages
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ATXPCConnection *)self eventQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ATXPCConnection__outstandingMessages__block_invoke;
  v6[3] = &unk_278C6DC58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__ATXPCConnection__outstandingMessages__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_removeMessage:(id)a3
{
  v4 = a3;
  v5 = [(ATXPCConnection *)self eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ATXPCConnection__removeMessage___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_registerMessage:(id)a3
{
  v4 = a3;
  v5 = [(ATXPCConnection *)self eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ATXPCConnection__registerMessage___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __36__ATXPCConnection__registerMessage___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)_setEventHandlerOnConnection:(id)a3
{
  v4 = a3;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__1679;
  v6[4] = __Block_byref_object_dispose__1680;
  v7 = self;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__ATXPCConnection__setEventHandlerOnConnection___block_invoke;
  handler[3] = &unk_278C6DC08;
  handler[4] = v6;
  xpc_connection_set_event_handler(v4, handler);
  _Block_object_dispose(v6, 8);
}

void __48__ATXPCConnection__setEventHandlerOnConnection___block_invoke(uint64_t a1, void *a2)
{
  cf[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x23EF202B0]();
  if (v4 == MEMORY[0x277D86480])
  {
    [*(*(*(a1 + 32) + 8) + 40) _handleXPCError:v3];
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x277D86468])
    {
      cf[0] = 0;
      v7 = lockdown_copy_checkin_info();
      v8 = *(*(*(a1 + 32) + 8) + 40);
      if (v7)
      {
        [v8 _handleXPCMessage:v3];
      }

      else
      {
        [v8 _handleLockdownMessage:cf[0]];
        CFRelease(cf[0]);
      }
    }

    else
    {
      v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(cf[0]) = 136315138;
        *(cf + 4) = _StringForXPCType(v5);
        _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring unexpected event of type %s", cf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleLockdownMessage:(void *)a3
{
  lockdownHandler = self->_lockdownHandler;
  if (lockdownHandler)
  {
    lockdownHandler[2](lockdownHandler, a3);
  }
}

- (void)_handleXPCMessage:(id)a3
{
  if (self->_messageHandler)
  {
    v4 = a3;
    v5 = [[ATXPCMessage alloc] _initWithXPCMessage:v4 onConnection:self];

    (*(self->_messageHandler + 2))();
  }
}

- (void)shutdown
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "Shutdown called on XPC connection %{public}@", buf, 0xCu);
  }

  conn = self->_conn;
  if (conn)
  {
    barrier[0] = MEMORY[0x277D85DD0];
    barrier[1] = 3221225472;
    barrier[2] = __27__ATXPCConnection_shutdown__block_invoke;
    barrier[3] = &unk_278C6DBE0;
    barrier[4] = self;
    xpc_connection_send_barrier(conn, barrier);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 == MEMORY[0x277D863F0])
  {
    v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 138543362;
    v15 = self;
    v10 = "XPC Connection interrupted %{public}@";
    goto LABEL_11;
  }

  v5 = MEMORY[0x277D863F8];
  v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v4 != v5)
  {
    if (v7)
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
      v9 = "Unknown error";
      if (string)
      {
        v9 = string;
      }

      v14 = 136315138;
      v15 = v9;
      _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_ERROR, "Error: %s", &v14, 0xCu);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v14 = 138543362;
    v15 = self;
    v10 = "XPC Connection invalid %{public}@";
LABEL_11:
    _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_ERROR, v10, &v14, 0xCu);
  }

LABEL_12:

  disconnectHandler = self->_disconnectHandler;
  if (disconnectHandler)
  {
    disconnectHandler[2](disconnectHandler, v11);
    v6 = self->_disconnectHandler;
    self->_disconnectHandler = 0;
LABEL_14:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __41__ATXPCConnection_sendMessage_withReply___block_invoke;
      v13 = &unk_278C6DBB8;
      v14 = self;
      v15 = v7;
      v9 = MEMORY[0x23EF20000](&v10);
    }

    else
    {
      v9 = 0;
    }

    [(ATXPCConnection *)self _sendMessage:v6 handler:v9, v10, v11, v12, v13];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EC61000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring request to send a nil message", buf, 2u);
    }
  }
}

void __41__ATXPCConnection_sendMessage_withReply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x23EF202B0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      v9 = "Unknown error";
      if (string)
      {
        v9 = string;
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_ERROR, "Reply Error: %s", &v12, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x277D86468])
    {
      v10 = [[ATXPCMessage alloc] _initWithXPCMessage:v3 onConnection:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = _StringForXPCType(v5);
        _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring unexpected event of type %s", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)a3 handler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 name];

  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"ATXPCConnection.m" lineNumber:99 description:@"Message must have a name"];
  }

  if (self->_conn)
  {
    v10 = [v7 _createXPCMessage];
    if (v10)
    {
      conn = self->_conn;
      if (v8)
      {
        v12 = dispatch_get_global_queue(2, 0);
        xpc_connection_send_message_with_reply(conn, v10, v12, v8);
      }

      else
      {
        xpc_connection_send_message(conn, v10);
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_23EC61000, v13, OS_LOG_TYPE_ERROR, "Sending message without a connection: %{public}@", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)eventQueue
{
  eventQueue = self->_eventQueue;
  if (!eventQueue)
  {
    v4 = dispatch_queue_create("com.apple.atc.XPCEvent", 0);
    v5 = self->_eventQueue;
    self->_eventQueue = v4;

    eventQueue = self->_eventQueue;
  }

  return eventQueue;
}

- (NSString)serviceName
{
  conn = self->_conn;
  if (conn)
  {
    conn = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_connection_get_name(conn)];
    v2 = vars8;
  }

  return conn;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "ATXPCConnection dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = ATXPCConnection;
  [(ATXPCConnection *)&v4 dealloc];
}

- (ATXPCConnection)initWithXPCConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ATXPCConnection.m" lineNumber:72 description:@"Must have xpc_connection"];
  }

  v13.receiver = self;
  v13.super_class = ATXPCConnection;
  v7 = [(ATXPCConnection *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_conn, a3);
    conn = v8->_conn;
    v10 = [(ATXPCConnection *)v8 eventQueue];
    xpc_connection_set_target_queue(conn, v10);

    [(ATXPCConnection *)v8 _setEventHandlerOnConnection:v8->_conn];
    xpc_connection_resume(v8->_conn);
  }

  return v8;
}

- (ATXPCConnection)initWithServiceName:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ATXPCConnection;
  v8 = [(ATXPCConnection *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventQueue, a4);
    v10 = [v6 UTF8String];
    v11 = [(ATXPCConnection *)v9 eventQueue];
    mach_service = xpc_connection_create_mach_service(v10, v11, 0);
    conn = v9->_conn;
    v9->_conn = mach_service;

    [(ATXPCConnection *)v9 _setEventHandlerOnConnection:v9->_conn];
    xpc_connection_resume(v9->_conn);
  }

  return v9;
}

@end