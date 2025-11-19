@interface BSXPCMessage
+ (id)message:(int64_t)a3 withPacker:(id)a4;
+ (id)message:(int64_t)a3 withPacker:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6;
+ (id)messageWithPacker:(id)a3;
+ (id)messageWithPacker:(id)a3 replyHandler:(id)a4 replyQueue:(id)a5;
+ (id)messageWithPayload:(id)a3;
+ (void)sendMessage:(int64_t)a3 toConnection:(id)a4 withMessagePacker:(id)a5 replyHandler:(id)a6 replyQueue:(id)a7;
+ (void)sendMessageWithPacker:(id)a3 toConnection:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6;
- (BOOL)sendToConnection:(id)a3;
- (BOOL)sendToConnection:(id)a3 replyQueue:(id)a4 replyHandler:(id)a5;
- (BSXPCMessage)initWithMessage:(int64_t)a3 packer:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6;
- (id)_errorForXPCMessageReply:(uint64_t)a1;
- (id)description;
- (id)initWithMessage:(void *)a3 replyHandler:(void *)a4 replyQueue:;
- (id)initWithMessagePacker:(void *)a3 replyHandler:(void *)a4 replyQueue:;
- (id)sendSynchronouslyToConnection:(id)a3 error:(id *)a4;
- (void)forcefullyInvokeReplyHandler:(id)a3;
@end

@implementation BSXPCMessage

+ (id)messageWithPacker:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BSXPCMessage);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v3[2](v3, v5);
  }

  message = v4->_message;
  v4->_message = v5;

  return v4;
}

+ (id)messageWithPayload:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BSXPCMessage);
  message = v4->_message;
  v4->_message = v3;

  return v4;
}

+ (void)sendMessageWithPacker:(id)a3 toConnection:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [[BSXPCMessage alloc] initWithMessagePacker:v13 replyHandler:v10 replyQueue:v11];
  [v12 sendToConnection:v9];
}

- (id)initWithMessagePacker:(void *)a3 replyHandler:(void *)a4 replyQueue:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_initWithMessagePacker_replyHandler_replyQueue_ object:a1 file:@"BSXPCMessage.m" lineNumber:100 description:@"No message packer"];
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    v7[2](v7, v10);
    a1 = [(BSXPCMessage *)a1 initWithMessage:v10 replyHandler:v8 replyQueue:v9];
  }

  return a1;
}

+ (void)sendMessage:(int64_t)a3 toConnection:(id)a4 withMessagePacker:(id)a5 replyHandler:(id)a6 replyQueue:(id)a7
{
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[BSXPCMessage alloc] initWithMessage:a3 packer:v11 replyHandler:v12 replyQueue:v13];
  [(BSXPCMessage *)v14 sendToConnection:v15];
}

+ (id)message:(int64_t)a3 withPacker:(id)a4
{
  v4 = [BSXPCMessage message:a3 withPacker:a4 replyHandler:0 replyQueue:0];

  return v4;
}

+ (id)message:(int64_t)a3 withPacker:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [[BSXPCMessage alloc] initWithMessage:a3 packer:v9 replyHandler:v10 replyQueue:v11];

  return v12;
}

+ (id)messageWithPacker:(id)a3 replyHandler:(id)a4 replyQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[BSXPCMessage alloc] initWithMessagePacker:v7 replyHandler:v8 replyQueue:v9];

  return v10;
}

- (id)initWithMessage:(void *)a3 replyHandler:(void *)a4 replyQueue:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = BSXPCMessage;
    a1 = objc_msgSendSuper2(&v15, sel_init);
    if (a1)
    {
      if (!v8)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:sel_initWithMessage_replyHandler_replyQueue_ object:a1 file:@"BSXPCMessage.m" lineNumber:82 description:@"No message packer"];
      }

      objc_storeStrong(a1 + 4, a2);
      if (v9)
      {
        v11 = [v9 copy];
        v12 = a1[1];
        a1[1] = v11;
      }

      if (v10)
      {
        objc_storeStrong(a1 + 2, a4);
      }
    }
  }

  return a1;
}

- (BSXPCMessage)initWithMessage:(int64_t)a3 packer:(id)a4 replyHandler:(id)a5 replyQueue:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"BSXPCMessage.m" lineNumber:112 description:@"No message packer"];
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = [objc_opt_class() messageTypeKey];
  xpc_dictionary_set_int64(v14, v15, a3);
  v11[2](v11, v14);
  v16 = [(BSXPCMessage *)&self->super.isa initWithMessage:v14 replyHandler:v12 replyQueue:v13];

  return v16;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_message withName:@"payload"];
  v5 = [v3 build];

  return v5;
}

- (BOOL)sendToConnection:(id)a3
{
  replyQueue = self->_replyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BSXPCMessage_sendToConnection___block_invoke;
  v5[3] = &unk_1E72CB680;
  v5[4] = self;
  return [(BSXPCMessage *)self sendToConnection:a3 replyQueue:replyQueue replyHandler:v5];
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

- (BOOL)sendToConnection:(id)a3 replyQueue:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || (v12 = 0, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v12, 1u, memory_order_relaxed, memory_order_relaxed), v12))
  {
    v15 = 0;
  }

  else
  {
    if (v10)
    {
      if (!v9)
      {
        v9 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      message = self->_message;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__BSXPCMessage_sendToConnection_replyQueue_replyHandler___block_invoke;
      v18[3] = &unk_1E72CB6A8;
      v18[4] = self;
      v19 = v11;
      xpc_connection_send_message_with_reply(v8, message, v9, v18);
    }

    else
    {
      xpc_connection_send_message(v8, self->_message);
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

- (id)_errorForXPCMessageReply:(uint64_t)a1
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 28), &v5, 1u, memory_order_relaxed, memory_order_relaxed);
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

- (id)sendSynchronouslyToConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || (v8 = 0, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v8, 1u, memory_order_relaxed, memory_order_relaxed), v8))
  {
    v12 = 0;
    goto LABEL_11;
  }

  v9 = xpc_connection_send_message_with_reply_sync(v6, self->_message);
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

  if (a4)
  {
    [(BSXPCMessage *)self _errorForXPCMessageReply:v10];
    *a4 = v12 = 0;
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

- (void)forcefullyInvokeReplyHandler:(id)a3
{
  v4 = a3;
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(&self->_replied, &v6, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v6)
    {
      v8 = v4;
      replyHandler[2]();
      v7 = self->_replyHandler;
      self->_replyHandler = 0;

      v4 = v8;
    }
  }
}

@end