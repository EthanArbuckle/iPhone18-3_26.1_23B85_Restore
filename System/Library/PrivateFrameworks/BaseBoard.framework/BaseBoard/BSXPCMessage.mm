@interface BSXPCMessage
+ (id)message:(int64_t)message withPacker:(id)packer;
+ (id)message:(int64_t)message withPacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue;
+ (id)messageWithPacker:(id)packer;
+ (id)messageWithPacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue;
+ (id)messageWithPayload:(id)payload;
+ (void)sendMessage:(int64_t)message toConnection:(id)connection withMessagePacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue;
+ (void)sendMessageWithPacker:(id)packer toConnection:(id)connection replyHandler:(id)handler replyQueue:(id)queue;
- (BOOL)sendToConnection:(id)connection;
- (BOOL)sendToConnection:(id)connection replyQueue:(id)queue replyHandler:(id)handler;
- (BSXPCMessage)initWithMessage:(int64_t)message packer:(id)packer replyHandler:(id)handler replyQueue:(id)queue;
- (id)_errorForXPCMessageReply:(uint64_t)reply;
- (id)description;
- (id)initWithMessage:(void *)message replyHandler:(void *)handler replyQueue:;
- (id)initWithMessagePacker:(void *)packer replyHandler:(void *)handler replyQueue:;
- (id)sendSynchronouslyToConnection:(id)connection error:(id *)error;
- (void)forcefullyInvokeReplyHandler:(id)handler;
@end

@implementation BSXPCMessage

+ (id)messageWithPacker:(id)packer
{
  packerCopy = packer;
  v4 = objc_alloc_init(BSXPCMessage);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (packerCopy)
  {
    packerCopy[2](packerCopy, v5);
  }

  message = v4->_message;
  v4->_message = v5;

  return v4;
}

+ (id)messageWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = objc_alloc_init(BSXPCMessage);
  message = v4->_message;
  v4->_message = payloadCopy;

  return v4;
}

+ (void)sendMessageWithPacker:(id)packer toConnection:(id)connection replyHandler:(id)handler replyQueue:(id)queue
{
  packerCopy = packer;
  connectionCopy = connection;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = [[BSXPCMessage alloc] initWithMessagePacker:packerCopy replyHandler:handlerCopy replyQueue:queueCopy];
  [v12 sendToConnection:connectionCopy];
}

- (id)initWithMessagePacker:(void *)packer replyHandler:(void *)handler replyQueue:
{
  v7 = a2;
  packerCopy = packer;
  handlerCopy = handler;
  if (self)
  {
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithMessagePacker_replyHandler_replyQueue_ object:self file:@"BSXPCMessage.m" lineNumber:100 description:@"No message packer"];
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    v7[2](v7, v10);
    self = [(BSXPCMessage *)self initWithMessage:v10 replyHandler:packerCopy replyQueue:handlerCopy];
  }

  return self;
}

+ (void)sendMessage:(int64_t)message toConnection:(id)connection withMessagePacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue
{
  connectionCopy = connection;
  packerCopy = packer;
  handlerCopy = handler;
  queueCopy = queue;
  v14 = [[BSXPCMessage alloc] initWithMessage:message packer:packerCopy replyHandler:handlerCopy replyQueue:queueCopy];
  [(BSXPCMessage *)v14 sendToConnection:connectionCopy];
}

+ (id)message:(int64_t)message withPacker:(id)packer
{
  v4 = [BSXPCMessage message:message withPacker:packer replyHandler:0 replyQueue:0];

  return v4;
}

+ (id)message:(int64_t)message withPacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue
{
  packerCopy = packer;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = [[BSXPCMessage alloc] initWithMessage:message packer:packerCopy replyHandler:handlerCopy replyQueue:queueCopy];

  return v12;
}

+ (id)messageWithPacker:(id)packer replyHandler:(id)handler replyQueue:(id)queue
{
  packerCopy = packer;
  handlerCopy = handler;
  queueCopy = queue;
  v10 = [[BSXPCMessage alloc] initWithMessagePacker:packerCopy replyHandler:handlerCopy replyQueue:queueCopy];

  return v10;
}

- (id)initWithMessage:(void *)message replyHandler:(void *)handler replyQueue:
{
  v8 = a2;
  messageCopy = message;
  handlerCopy = handler;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = BSXPCMessage;
    self = objc_msgSendSuper2(&v15, sel_init);
    if (self)
    {
      if (!v8)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_initWithMessage_replyHandler_replyQueue_ object:self file:@"BSXPCMessage.m" lineNumber:82 description:@"No message packer"];
      }

      objc_storeStrong(self + 4, a2);
      if (messageCopy)
      {
        v11 = [messageCopy copy];
        v12 = self[1];
        self[1] = v11;
      }

      if (handlerCopy)
      {
        objc_storeStrong(self + 2, handler);
      }
    }
  }

  return self;
}

- (BSXPCMessage)initWithMessage:(int64_t)message packer:(id)packer replyHandler:(id)handler replyQueue:(id)queue
{
  packerCopy = packer;
  handlerCopy = handler;
  queueCopy = queue;
  if (!packerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCMessage.m" lineNumber:112 description:@"No message packer"];
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  messageTypeKey = [objc_opt_class() messageTypeKey];
  xpc_dictionary_set_int64(v14, messageTypeKey, message);
  packerCopy[2](packerCopy, v14);
  v16 = [(BSXPCMessage *)&self->super.isa initWithMessage:v14 replyHandler:handlerCopy replyQueue:queueCopy];

  return v16;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_message withName:@"payload"];
  build = [v3 build];

  return build;
}

- (BOOL)sendToConnection:(id)connection
{
  replyQueue = self->_replyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BSXPCMessage_sendToConnection___block_invoke;
  v5[3] = &unk_1E72CB680;
  v5[4] = self;
  return [(BSXPCMessage *)self sendToConnection:connection replyQueue:replyQueue replyHandler:v5];
}

void __33__BSXPCMessage_sendToConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (v7)
  {
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v9 payload];
    }

    (*(v7 + 16))(v7, v8);
    if (!v6)
    {
    }
  }
}

- (BOOL)sendToConnection:(id)connection replyQueue:(id)queue replyHandler:(id)handler
{
  connectionCopy = connection;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!connectionCopy || (v12 = 0, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v12, 1u, memory_order_relaxed, memory_order_relaxed), v12))
  {
    v15 = 0;
  }

  else
  {
    if (handlerCopy)
    {
      if (!queueCopy)
      {
        queueCopy = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      message = self->_message;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__BSXPCMessage_sendToConnection_replyQueue_replyHandler___block_invoke;
      v18[3] = &unk_1E72CB6A8;
      v18[4] = self;
      v19 = v11;
      xpc_connection_send_message_with_reply(connectionCopy, message, queueCopy, v18);
    }

    else
    {
      xpc_connection_send_message(connectionCopy, self->_message);
    }

    v16 = self->_message;
    self->_message = 0;

    v15 = 1;
  }

  return v15;
}

void __57__BSXPCMessage_sendToConnection_replyQueue_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [(BSXPCMessage *)*(a1 + 32) _errorForXPCMessageReply:v7];
  v5 = *(a1 + 40);
  if (v4)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  else
  {
    v6 = [BSXPCMessage messageWithPayload:v7];
    (*(v5 + 16))(v5, v6, 0);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_errorForXPCMessageReply:(uint64_t)reply
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!reply)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit((reply + 28), &v5, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v5)
  {
    goto LABEL_6;
  }

  if (object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
LABEL_10:
    v6 = 0;
  }

  else
  {
    if (object_getClass(v4) != MEMORY[0x1E69E9E98])
    {
LABEL_6:
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4101 userInfo:0];
      goto LABEL_7;
    }

    string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
    if (string)
    {
      v13 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = 0;
    }

    v11 = 4101;
    if (v4 == MEMORY[0x1E69E9E20])
    {
      v11 = 4099;
    }

    if (v4 == MEMORY[0x1E69E9E18])
    {
      v12 = 4097;
    }

    else
    {
      v12 = v11;
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v12 userInfo:v10];
  }

LABEL_7:

  return v6;
}

- (id)sendSynchronouslyToConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (!connectionCopy || (v8 = 0, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v8, 1u, memory_order_relaxed, memory_order_relaxed), v8))
  {
    v12 = 0;
    goto LABEL_11;
  }

  v9 = xpc_connection_send_message_with_reply_sync(connectionCopy, self->_message);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = 0;
  atomic_compare_exchange_strong_explicit(&self->_replied, &v11, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v11)
  {
    goto LABEL_9;
  }

  if (object_getClass(v9) == MEMORY[0x1E69E9E80])
  {
    v12 = [BSXPCMessage messageWithPayload:v10];
    goto LABEL_10;
  }

  if (error)
  {
    [(BSXPCMessage *)self _errorForXPCMessageReply:v10];
    *error = v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_10:

LABEL_11:

  return v12;
}

- (void)forcefullyInvokeReplyHandler:(id)handler
{
  handlerCopy = handler;
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(&self->_replied, &v6, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v6)
    {
      v8 = handlerCopy;
      replyHandler[2]();
      v7 = self->_replyHandler;
      self->_replyHandler = 0;

      handlerCopy = v8;
    }
  }
}

@end