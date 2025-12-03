@interface SKXPCConnection
- (SKXPCConnection)initWithServiceName:(id)name;
- (SKXPCConnection)initWithXPCConnection:(id)connection;
- (id)_initSKXPCConnection;
- (id)disconnectBlock;
- (id)messageBlock;
- (void)_reloadEventHandler;
- (void)sendMessage:(id)message withReply:(id)reply;
- (void)sendSynchronousMessage:(id)message withReply:(id)reply;
- (void)setDisconnectBlock:(id)block;
- (void)setMessageBlock:(id)block;
@end

@implementation SKXPCConnection

- (id)_initSKXPCConnection
{
  v6.receiver = self;
  v6.super_class = SKXPCConnection;
  v2 = [(SKXPCConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreKit.SKXPCConnection", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SKXPCConnection)initWithServiceName:(id)name
{
  if (name)
  {
    uTF8String = [name UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  v5 = xpc_connection_create(uTF8String, 0);
  xpc_connection_set_legacy();
  v6 = [(SKXPCConnection *)self initWithXPCConnection:v5];

  return v6;
}

- (SKXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  _initSKXPCConnection = [(SKXPCConnection *)self _initSKXPCConnection];
  v7 = _initSKXPCConnection;
  if (_initSKXPCConnection)
  {
    objc_storeStrong(_initSKXPCConnection + 1, connection);
    [(SKXPCConnection *)v7 _reloadEventHandler];
    xpc_connection_resume(v7->_connection);
  }

  return v7;
}

- (id)disconnectBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SKXPCConnection_disconnectBlock__block_invoke;
  v5[3] = &unk_1E7B283E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__SKXPCConnection_disconnectBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)messageBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SKXPCConnection_messageBlock__block_invoke;
  v5[3] = &unk_1E7B283E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__SKXPCConnection_messageBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)sendMessage:(id)message withReply:(id)reply
{
  connection = self->_connection;
  v7 = dispatch_get_global_queue(0, 0);
  xpc_connection_send_message_with_reply(connection, message, v7, reply);
}

- (void)sendSynchronousMessage:(id)message withReply:(id)reply
{
  replyCopy = reply;
  messageCopy = message;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__SKXPCConnection_sendSynchronousMessage_withReply___block_invoke;
  v11[3] = &unk_1E7B28410;
  v12 = v8;
  v13 = replyCopy;
  v9 = v8;
  v10 = replyCopy;
  [(SKXPCConnection *)self sendMessage:messageCopy withReply:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __52__SKXPCConnection_sendSynchronousMessage_withReply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)setDisconnectBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SKXPCConnection_setDisconnectBlock___block_invoke;
  v7[3] = &unk_1E7B28438;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

void *__38__SKXPCConnection_setDisconnectBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 24) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)setMessageBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SKXPCConnection_setMessageBlock___block_invoke;
  v7[3] = &unk_1E7B28438;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

void *__35__SKXPCConnection_setMessageBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 32) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)_reloadEventHandler
{
  v3 = _Block_copy(self->_disconnectBlock);
  v4 = _Block_copy(self->_messageBlock);
  connection = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SKXPCConnection__reloadEventHandler__block_invoke;
  v8[3] = &unk_1E7B28488;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  xpc_connection_set_event_handler(connection, v8);
}

void __38__SKXPCConnection__reloadEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else if (MEMORY[0x1B274C210](v3) == MEMORY[0x1E69E9E68])
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SKXPCConnection__reloadEventHandler__block_invoke_2;
    handler[3] = &unk_1E7B28460;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v7 = v4;
    v9 = v7;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v7);
  }
}

uint64_t __38__SKXPCConnection__reloadEventHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v8 = v4;
  v6 = (*(v6 + 16))();
  v4 = v8;
LABEL_10:

  return MEMORY[0x1EEE66BB8](v6, v4);
}

@end