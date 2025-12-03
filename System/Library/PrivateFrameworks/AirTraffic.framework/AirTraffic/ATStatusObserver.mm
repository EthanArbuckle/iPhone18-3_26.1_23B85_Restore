@interface ATStatusObserver
- (ATStatusObserver)init;
- (ATStatusObserverDelegate)delegate;
- (NSXPCConnection)connection;
- (void)fetchAllStatusWithCompletion:(id)completion;
- (void)resume;
- (void)suspend;
- (void)updateWithStatus:(id)status;
@end

@implementation ATStatusObserver

- (ATStatusObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateWithStatus:(id)status
{
  statusCopy = status;
  delegate = [(ATStatusObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate observer:self didUpdateWithStatus:statusCopy];
  }
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc.observer" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162B90];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_fetchAllStatusWithCompletion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28515E0D0];
    [(NSXPCConnection *)self->_connection setExportedInterface:v10];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection resume];

    connection = self->_connection;
  }

  return connection;
}

- (void)fetchAllStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_ATCRunning)
  {
    connection = [(ATStatusObserver *)self connection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__ATStatusObserver_fetchAllStatusWithCompletion___block_invoke;
    v12[3] = &unk_278C6DA58;
    v7 = v5;
    v13 = v7;
    v8 = [connection remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ATStatusObserver_fetchAllStatusWithCompletion___block_invoke_2;
    v10[3] = &unk_278C6D6C8;
    v11 = v7;
    [v8 fetchAllStatusWithCompletion:v10];
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    (v5)[2](v5, v9, 0);
  }
}

uint64_t __49__ATStatusObserver_fetchAllStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __49__ATStatusObserver_fetchAllStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)suspend
{
  self->_resumed = 0;
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)resume
{
  self->_resumed = 1;
  if (self->_ATCRunning)
  {
    connection = [(ATStatusObserver *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy resume];
  }
}

- (ATStatusObserver)init
{
  v15.receiver = self;
  v15.super_class = ATStatusObserver;
  v2 = [(ATStatusObserver *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__199;
    v13[4] = __Block_byref_object_dispose__200;
    v4 = v2;
    v14 = v4;
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__ATStatusObserver_init__block_invoke;
    handler[3] = &unk_278C6D6A0;
    v7 = v4;
    v11 = v7;
    v12 = v13;
    notify_register_dispatch("com.apple.atc.started", v4 + 3, v5, handler);

    state64 = 0;
    notify_get_state(v4[3], &state64);
    if (state64)
    {
      *(v7 + 8) = 1;
    }

    _Block_object_dispose(v13, 8);
  }

  return v3;
}

void __24__ATStatusObserver_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (state || !state64)
  {
    *(v4 + 8) = 0;
  }

  else
  {
    if ((*(v4 + 8) & 1) == 0 && *(v4 + 9) == 1)
    {
      v5 = [*(*(*(a1 + 40) + 8) + 40) connection];
      v6 = [v5 remoteObjectProxy];
      [v6 start];

      v4 = *(a1 + 32);
    }

    *(v4 + 8) = 1;
  }
}

@end