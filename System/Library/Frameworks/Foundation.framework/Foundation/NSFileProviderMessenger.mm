@interface NSFileProviderMessenger
- (NSFileProviderMessenger)initWithInterface:(id)interface protocol:(id)protocol;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation NSFileProviderMessenger

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderMessenger;
  [(NSFileProviderMessenger *)&v3 dealloc];
}

- (NSFileProviderMessenger)initWithInterface:(id)interface protocol:(id)protocol
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileProviderMessenger;
  v6 = [(NSFileProviderMessenger *)&v8 init];
  if (v6)
  {
    v6->_interface = interface;
    v6->_protocol = protocol;
    v6->_lock = objc_opt_new();
  }

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F3B8)
  {
    [(NSLock *)self->_lock lock];
    if (!self->_triedConnection)
    {
      self->_triedConnection = 1;
      v21 = 0;
      v22 = &v21;
      v23 = 0x3052000000;
      v24 = __Block_byref_object_copy__4;
      v25 = __Block_byref_object_dispose__4;
      v26 = 0;
      v5 = dispatch_semaphore_create(0);
      interface = self->_interface;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke;
      v20[3] = &unk_1E69F3A00;
      v20[4] = v5;
      v20[5] = &v21;
      off_1ED43F3B8(interface, v20);
      v7 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v5, v7);
      dispatch_release(v5);
      if (v22[5])
      {
        v8 = [NSXPCConnection alloc];
        self->_conn = [(NSXPCConnection *)v8 initWithListenerEndpoint:v22[5]];
        v9 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF9CE38];
        [(NSXPCInterface *)v9 setInterface:[NSXPCInterface interfaceWithProtocol:?]ofReply:sel_fetchProxyForItemIdentifier_completionHandler_, 0, 1];
        [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v9];
        [(NSXPCConnection *)self->_conn resume];
      }

      _Block_object_dispose(&v21, 8);
    }

    [(NSLock *)self->_lock unlock];
  }

  if (!self->_conn || (v21 = 0, v22 = &v21, v23 = 0x3052000000, v24 = __Block_byref_object_copy__4, v25 = __Block_byref_object_dispose__4, v26 = 0, v10 = dispatch_semaphore_create(0), conn = self->_conn, v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke_623, v19[3] = &unk_1E69F3A28, v19[4] = v10, v12 = -[NSXPCConnection remoteObjectProxyWithErrorHandler:](conn, "remoteObjectProxyWithErrorHandler:", v19), v13 = -[NSFileProviderMessageInterface itemIdentifier](self->_interface, "itemIdentifier"), v18[0] = MEMORY[0x1E69E9820], v18[1] = 3221225472, v18[2] = __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke_624, v18[3] = &unk_1E69F3A50, v18[4] = v10, v18[5] = &v21, [v12 fetchProxyForItemIdentifier:v13 completionHandler:v18], dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL), dispatch_release(v10), v14 = objc_msgSend(v22[5], "remoteObjectProxyWithErrorHandler:", handler), _Block_object_dispose(&v21, 8), !v14))
  {
    v15 = +[NSXPCListener anonymousListener];
    [(NSXPCListener *)v15 resume];
    v16 = [[NSXPCConnection alloc] initWithListenerEndpoint:[(NSXPCListener *)v15 endpoint]];
    [(NSXPCConnection *)v16 setRemoteObjectInterface:[NSXPCInterface interfaceWithProtocol:self->_protocol]];
    [(NSXPCConnection *)v16 resume];
    v14 = [(NSXPCConnection *)v16 remoteObjectProxyWithErrorHandler:handler];
    [(NSXPCListener *)v15 invalidate];
  }

  return v14;
}

intptr_t __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = a4;
    _os_log_error_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NSFileProviderMessenger failed to get proxy factory: %{public}@", &v8, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 40) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke_623(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = a2;
    _os_log_error_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NSFileProviderMessenger's proxy factory encountered a connection failure: %{public}@", &v5, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __61__NSFileProviderMessenger_remoteObjectProxyWithErrorHandler___block_invoke_624(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_error_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NSFileProviderMessenger's proxy factory returned an error: %{public}@", &v7, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 40) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

@end