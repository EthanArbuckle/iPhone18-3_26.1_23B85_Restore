@interface ATXPCServer
- (BOOL)_doingWork;
- (id)_connections;
- (id)_handlerForMessageName:(id)name;
- (id)initListenerWithServiceName:(id)name;
- (void)_handleNewConnection:(id)connection;
- (void)_rescheduleIdleTimerSourceWithInterval:(double)interval;
- (void)_resetMessageFlag;
- (void)_runShutdownHandler;
- (void)dealloc;
- (void)setHandlerForMessageName:(id)name handler:(id)handler;
- (void)setIdleTimerInterval:(double)interval;
@end

@implementation ATXPCServer

- (void)setIdleTimerInterval:(double)interval
{
  timerQueue = self->_timerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__ATXPCServer_setIdleTimerInterval___block_invoke;
  v4[3] = &unk_278C6DCF8;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_async(timerQueue, v4);
}

- (void)_rescheduleIdleTimerSourceWithInterval:(double)interval
{
  idleTimerSource = self->_idleTimerSource;
  if (idleTimerSource)
  {
    dispatch_source_cancel(idleTimerSource);
    v6 = self->_idleTimerSource;
    self->_idleTimerSource = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timerQueue);
  v8 = self->_idleTimerSource;
  self->_idleTimerSource = v7;

  dispatch_source_set_timer(self->_idleTimerSource, 0, 1000000000 * interval, 0);
  v9 = self->_idleTimerSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__ATXPCServer__rescheduleIdleTimerSourceWithInterval___block_invoke;
  handler[3] = &unk_278C6DBE0;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_idleTimerSource);
}

void __54__ATXPCServer__rescheduleIdleTimerSourceWithInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _doingWork];
  v3 = v2;
  v4 = *(a1 + 32);
  if (*(v4 + 80) == 1 && (v2 & 1) == 0)
  {
    dispatch_source_cancel(*(v4 + 72));
    v4 = *(a1 + 32);
  }

  *(v4 + 80) = v3 ^ 1;
}

- (BOOL)_doingWork
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_connections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) _outstandingMessages])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_resetMessageFlag
{
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ATXPCServer__resetMessageFlag__block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(timerQueue, block);
}

- (void)_runShutdownHandler
{
  shutdownHandler = self->_shutdownHandler;
  if (shutdownHandler)
  {
    shutdownHandler[2]();
  }
}

- (void)setHandlerForMessageName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (nameCopy)
  {
    handlerMap = self->_handlerMap;
    if (!handlerMap)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_handlerMap;
      self->_handlerMap = v8;

      handlerMap = self->_handlerMap;
    }

    v10 = [handlerCopy copy];
    [(NSMutableDictionary *)handlerMap setObject:v10 forKey:nameCopy];
  }

  else
  {
    [(ATXPCServer *)self setDefaultMessageHandler:handlerCopy];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATXPCServer;
  [(ATXPCServer *)&v2 dealloc];
}

- (id)initListenerWithServiceName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = ATXPCServer;
  v5 = [(ATXPCServer *)&v18 init];
  if (v5)
  {
    uTF8String = [nameCopy UTF8String];
    _highAvailabilityQueue = [(ATXPCServer *)v5 _highAvailabilityQueue];
    mach_service = xpc_connection_create_mach_service(uTF8String, _highAvailabilityQueue, 1uLL);
    conn = v5->_conn;
    v5->_conn = mach_service;

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__1679;
    v16[4] = __Block_byref_object_dispose__1680;
    v10 = v5;
    v17 = v10;
    v11 = v5->_conn;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__ATXPCServer_initListenerWithServiceName___block_invoke;
    handler[3] = &unk_278C6DC08;
    handler[4] = v16;
    xpc_connection_set_event_handler(v11, handler);
    xpc_connection_resume(v5->_conn);
    v12 = dispatch_queue_create("idle_timer", 0);
    timerQueue = v10->_timerQueue;
    v10->_timerQueue = v12;

    _Block_object_dispose(v16, 8);
  }

  return v5;
}

void __43__ATXPCServer_initListenerWithServiceName___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x23EF202B0]();
  if (v4 == MEMORY[0x277D86450])
  {
    [*(*(*(a1 + 32) + 8) + 40) _handleNewConnection:v3];
  }

  else
  {
    v5 = v4;
    v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2080;
      v12 = _StringForXPCType(v5);
      _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleNewConnection:(id)connection
{
  connectionCopy = connection;
  [(ATXPCServer *)self _resetMessageFlag];
  objc_initWeak(&location, self);
  v5 = [[ATXPCConnection alloc] initWithXPCConnection:connectionCopy];
  objc_initWeak(&from, v5);
  _connections = [(ATXPCServer *)self _connections];
  [_connections addObject:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__ATXPCServer__handleNewConnection___block_invoke;
  v13[3] = &unk_278C6DC80;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [(ATXPCConnection *)v5 setMessageHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__ATXPCServer__handleNewConnection___block_invoke_2;
  v10[3] = &unk_278C6DCA8;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  [(ATXPCConnection *)v5 setDisconnectHandler:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ATXPCServer__handleNewConnection___block_invoke_3;
  v7[3] = &unk_278C6DCD0;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  [(ATXPCConnection *)v5 setLockdownHandler:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

void __36__ATXPCServer__handleNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetMessageFlag];
  v4 = [v7 name];
  v5 = [WeakRetained _handlerForMessageName:v4];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    (v5)[2](v5, v6, v7);
  }
}

void __36__ATXPCServer__handleNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained disconnectHandler];
  if (v2)
  {
    v4 = [WeakRetained _connections];
    [v4 removeObject:v2];
  }

  if (v3)
  {
    (v3)[2](v3, v2);
  }
}

void __36__ATXPCServer__handleNewConnection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained lockdownHandler];

  if (v6)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6[2](v6, v5, a2);
  }
}

- (id)_handlerForMessageName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_handlerMap objectForKey:name];
  if (!v4)
  {
    v4 = MEMORY[0x23EF20000](self->_defaultMessageHandler);
  }

  v5 = MEMORY[0x23EF20000](v4);

  return v5;
}

- (id)_connections
{
  connections = self->_connections;
  if (!connections)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = self->_connections;
    self->_connections = v4;

    connections = self->_connections;
  }

  return connections;
}

@end