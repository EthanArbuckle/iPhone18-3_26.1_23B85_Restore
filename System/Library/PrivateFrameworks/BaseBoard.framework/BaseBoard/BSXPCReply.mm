@interface BSXPCReply
+ (id)messageWithReply:(id)a3;
+ (id)replyForMessage:(id)a3;
- (BSXPCReply)initWithReply:(id)a3;
- (id)_initWithReply:(id *)a1;
- (id)initForMessage:(id)a3;
- (void)sendReply:(id)a3;
@end

@implementation BSXPCReply

- (id)_initWithReply:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BSXPCReply;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

+ (id)replyForMessage:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"BSXPCMessage.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"originalMessage"}];
  }

  reply = xpc_dictionary_create_reply(v5);
  if (reply)
  {
    v7 = [(BSXPCReply *)[a1 alloc] _initWithReply:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initForMessage:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSXPCMessage.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"originalMessage"}];
  }

  reply = xpc_dictionary_create_reply(v5);
  v7 = [(BSXPCReply *)&self->super.isa _initWithReply:?];
  v8 = v7;
  if (!reply)
  {

    v8 = 0;
  }

  return v8;
}

- (void)sendReply:(id)a3
{
  v7 = a3;
  reply = self->_reply;
  if (reply)
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(&self->_sent, &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v5)
    {
      if (v7)
      {
        v7[2]();
        reply = self->_reply;
      }

      v6 = xpc_dictionary_get_remote_connection(reply);
      xpc_connection_send_message(v6, self->_reply);
    }
  }
}

+ (id)messageWithReply:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithReply:v4];

  return v5;
}

- (BSXPCReply)initWithReply:(id)a3
{
  reply = xpc_dictionary_create_reply(a3);
  v5 = [(BSXPCReply *)&self->super.isa _initWithReply:?];

  return v5;
}

@end