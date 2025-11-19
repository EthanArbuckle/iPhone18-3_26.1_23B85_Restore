@interface BSBaseXPCServer
- (BSBaseXPCServer)initWithServiceName:(id)a3 onQueue:(id)a4;
- (id)_clients;
- (id)_connection;
- (id)_copyEndpoint;
- (id)_getStringFromMessage:(id)a3 key:(char *)a4;
- (id)_queue_clientForConnection:(id)a3;
- (id)queue_newClientForConnection:(id)a3;
- (void)_invalidate;
- (void)_sendMessageReply:(id)a3 messagePacker:(id)a4;
- (void)_sendReplyForMessage:(id)a3 messagePacker:(id)a4;
- (void)dealloc;
- (void)registerServerSuspended;
- (void)resumeServer;
- (void)run;
@end

@implementation BSBaseXPCServer

- (BSBaseXPCServer)initWithServiceName:(id)a3 onQueue:(id)a4
{
  v10.receiver = self;
  v10.super_class = BSBaseXPCServer;
  v6 = [(BSBaseXPCServer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_notifyToken = -1;
    v8 = [a3 copy];
    v7->_serviceName = v8;
    if (a4)
    {
      v7->_queue = a4;
      dispatch_retain(a4);
    }

    else
    {
      v7->_queue = BSDispatchQueueCreateWithQualityOfService([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.serverTaskQueue", v8), "UTF8String"], 0, QOS_CLASS_USER_INITIATED, 0);
    }

    v7->_clients = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v7;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  dispatch_release(self->_queue);
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    xpc_release(listenerConnection);
  }

  if (notify_is_valid_token(self->_notifyToken))
  {
    notify_cancel(self->_notifyToken);
    self->_notifyToken = -1;
  }

  v4.receiver = self;
  v4.super_class = BSBaseXPCServer;
  [(BSBaseXPCServer *)&v4 dealloc];
}

- (void)run
{
  [(BSBaseXPCServer *)self registerServerSuspended];

  [(BSBaseXPCServer *)self resumeServer];
}

- (void)registerServerSuspended
{
  if (!self->_listenerConnection)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (self->_usesAnonymousConnection)
    {
      mach_service = xpc_connection_create(0, self->_queue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service([(NSString *)self->_serviceName UTF8String], self->_queue, 1uLL);
    }

    self->_listenerConnection = mach_service;
    xpc_connection_set_target_queue(mach_service, self->_queue);
    listenerConnection = self->_listenerConnection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__BSBaseXPCServer_registerServerSuspended__block_invoke;
    handler[3] = &unk_1E72CAE10;
    handler[4] = self;
    xpc_connection_set_event_handler(listenerConnection, handler);
    if ([objc_opt_class() _registersWithNotifyd])
    {
      if (!notify_is_valid_token(self->_notifyToken))
      {
        notify_register_check([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.serverNotifyToken", self->_serviceName), "UTF8String"], &self->_notifyToken);
      }
    }

    xpc_connection_resume(self->_listenerConnection);
  }
}

void __42__BSBaseXPCServer_registerServerSuspended__block_invoke(uint64_t a1, xpc_object_t object)
{
  xpc_retain(object);
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  Class = object_getClass(object);
  if (Class == MEMORY[0x1E69E9E98])
  {
    [MEMORY[0x1E695DF30] raise:@"BSXPCServerException" format:{@"Unexpected error occured on listener connection for service <%@>: %@", *(*(a1 + 32) + 40), object}];
  }

  else if (Class == MEMORY[0x1E69E9E68])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if ([v6 queue_shouldAcceptNewConnection:object] && (v7 = objc_msgSend(v6, "queue_newClientForConnection:", object)) != 0)
      {
        v8 = v7;
        [*(v6 + 24) addObject:v7];
        xpc_connection_set_target_queue(object, *(v6 + 8));
        handler = MEMORY[0x1E69E9820];
        v11 = 3221225472;
        v12 = __40__BSBaseXPCServer__addClientConnection___block_invoke;
        v13 = &unk_1E72CAE88;
        v14 = v6;
        v15 = object;
        v16 = v8;
        xpc_connection_set_event_handler(object, &handler);
        if (*(v6 + 32) == 1)
        {
          [v8 resume];
        }

        [v6 queue_clientAdded:v8];
      }

      else
      {
        global_queue = dispatch_get_global_queue(21, 0);
        xpc_connection_set_target_queue(object, global_queue);
        handler = MEMORY[0x1E69E9820];
        v11 = 3221225472;
        v12 = __40__BSBaseXPCServer__addClientConnection___block_invoke_2;
        v13 = &unk_1E72CAE10;
        v14 = object;
        xpc_connection_set_event_handler(object, &handler);
        xpc_connection_resume(object);
      }
    }
  }

  xpc_release(object);
}

- (void)resumeServer
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__BSBaseXPCServer_resumeServer__block_invoke;
  block[3] = &unk_1E72CAE38;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __31__BSBaseXPCServer_resumeServer__block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(v1 + 24);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * i) resume];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(*(v2 + 32) + 32) = 1;
    result = notify_is_valid_token(*(*(v2 + 32) + 48));
    if (result)
    {
      notify_set_state(*(*(v2 + 32) + 48), 1uLL);
      v8 = *(v2 + 32);
      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.serverNotifyToken", *(v8 + 40)];
      }

      else
      {
        v9 = 0;
      }

      return notify_post([v9 UTF8String]);
    }
  }

  return result;
}

- (void)_invalidate
{
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3052000000;
    v5[3] = __Block_byref_object_copy__0;
    v5[4] = __Block_byref_object_dispose__0;
    v5[5] = listenerConnection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __30__BSBaseXPCServer__invalidate__block_invoke;
    handler[3] = &unk_1E72CAE60;
    handler[4] = v5;
    xpc_connection_set_event_handler(listenerConnection, handler);
    xpc_connection_cancel(self->_listenerConnection);
    self->_listenerConnection = 0;
    _Block_object_dispose(v5, 8);
  }
}

void __30__BSBaseXPCServer__invalidate__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == MEMORY[0x1E69E9E20])
  {
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
  }
}

void __40__BSBaseXPCServer__addClientConnection___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9E98])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [*(a1 + 32) _queue_clientForConnection:*(a1 + 40)];
      if (v7)
      {
        v8 = v7;
        [v7 invalidate];
        [v6[3] removeObject:v8];
        [v6 queue_clientRemoved:v8];
      }
    }
  }

  else if (Class == MEMORY[0x1E69E9E80])
  {
    [*(a1 + 32) queue_handleMessage:a2 client:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_queue_clientForConnection:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  clients = self->_clients;
  v5 = [(NSMutableSet *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(clients);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 connection] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)queue_newClientForConnection:(id)a3
{
  v3 = [(objc_class *)[(BSBaseXPCServer *)self queue_classForNewClientConnection:?] wrapperWithConnection:a3];

  return v3;
}

- (void)_sendMessageReply:(id)a3 messagePacker:(id)a4
{
  if (a4)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (!a3)
    {
      return;
    }
  }

  (*(a4 + 2))(a4, a3);
  remote_connection = xpc_dictionary_get_remote_connection(a3);

  xpc_connection_send_message(remote_connection, a3);
}

- (void)_sendReplyForMessage:(id)a3 messagePacker:(id)a4
{
  reply = xpc_dictionary_create_reply(a3);
  if (reply)
  {
    v7 = reply;
    [(BSBaseXPCServer *)self _sendMessageReply:reply messagePacker:a4];

    xpc_release(v7);
  }
}

- (id)_getStringFromMessage:(id)a3 key:(char *)a4
{
  result = xpc_dictionary_get_string(a3, a4);
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E696AEC0];

    return [v6 stringWithUTF8String:v5];
  }

  return result;
}

- (id)_connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__BSBaseXPCServer__connection__block_invoke;
  v5[3] = &unk_1E72CAEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_clients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__BSBaseXPCServer__clients__block_invoke;
  v5[3] = &unk_1E72CAEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__BSBaseXPCServer__clients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_copyEndpoint
{
  result = self->_listenerConnection;
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  return result;
}

@end