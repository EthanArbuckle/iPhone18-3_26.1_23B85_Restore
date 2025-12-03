@interface ATSessionProxyConnection
- (ATSessionProxyConnection)initWithSession:(id)session connection:(id)connection;
- (void)session:(id)session didFinishSessionTask:(id)task;
- (void)session:(id)session didUpdateSessionTask:(id)task;
- (void)session:(id)session willBeginSessionTask:(id)task;
- (void)start;
@end

@implementation ATSessionProxyConnection

- (void)session:(id)session didFinishSessionTask:(id)task
{
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ATSessionProxyConnection_session_didFinishSessionTask___block_invoke;
  v8[3] = &unk_2784E9430;
  v8[4] = self;
  taskCopy = task;
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  baseClassRepresentation = [taskCopy baseClassRepresentation];

  [v6 updateSessionTask:baseClassRepresentation];
}

void __57__ATSessionProxyConnection_session_didFinishSessionTask___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error %{public}@ notifying didFinishSessionTask", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didUpdateSessionTask:(id)task
{
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ATSessionProxyConnection_session_didUpdateSessionTask___block_invoke;
  v8[3] = &unk_2784E9430;
  v8[4] = self;
  taskCopy = task;
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  baseClassRepresentation = [taskCopy baseClassRepresentation];

  [v6 updateSessionTask:baseClassRepresentation];
}

void __57__ATSessionProxyConnection_session_didUpdateSessionTask___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error %{public}@ notifying didUpdateSessionTask", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session willBeginSessionTask:(id)task
{
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ATSessionProxyConnection_session_willBeginSessionTask___block_invoke;
  v8[3] = &unk_2784E9430;
  v8[4] = self;
  taskCopy = task;
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  baseClassRepresentation = [taskCopy baseClassRepresentation];

  [v6 beginSessionTask:baseClassRepresentation];
}

void __57__ATSessionProxyConnection_session_willBeginSessionTask___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error %{public}@ notifying willBeginSessionTask", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  [(ATSession *)self->_session addObserver:self];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FB698];
  [(NSXPCConnection *)self->_connection setExportedInterface:v3];

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702BF0];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

  [(NSXPCConnection *)self->_connection resume];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sessionTasks = [(ATSession *)self->_session sessionTasks];
  v6 = [sessionTasks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sessionTasks);
        }

        [(ATSessionProxyConnection *)self session:self->_session didUpdateSessionTask:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [sessionTasks countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (ATSessionProxyConnection)initWithSession:(id)session connection:(id)connection
{
  sessionCopy = session;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = ATSessionProxyConnection;
  v9 = [(ATSessionProxyConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_connection, connection);
  }

  return v10;
}

@end