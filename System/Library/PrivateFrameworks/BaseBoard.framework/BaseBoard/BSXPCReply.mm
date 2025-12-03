@interface BSXPCReply
+ (id)messageWithReply:(id)reply;
+ (id)replyForMessage:(id)message;
- (BSXPCReply)initWithReply:(id)reply;
- (id)_initWithReply:(id *)reply;
- (id)initForMessage:(id)message;
- (void)sendReply:(id)reply;
@end

@implementation BSXPCReply

- (id)_initWithReply:(id *)reply
{
  v4 = a2;
  if (reply)
  {
    v7.receiver = reply;
    v7.super_class = BSXPCReply;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    reply = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return reply;
}

+ (id)replyForMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCMessage.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"originalMessage"}];
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  if (reply)
  {
    v7 = [(BSXPCReply *)[self alloc] _initWithReply:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initForMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCMessage.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"originalMessage"}];
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  v7 = [(BSXPCReply *)&self->super.isa _initWithReply:?];
  v8 = v7;
  if (!reply)
  {

    v8 = 0;
  }

  return v8;
}

- (void)sendReply:(id)reply
{
  replyCopy = reply;
  reply = self->_reply;
  if (reply)
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(&self->_sent, &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v5)
    {
      if (replyCopy)
      {
        replyCopy[2]();
        reply = self->_reply;
      }

      v6 = xpc_dictionary_get_remote_connection(reply);
      xpc_connection_send_message(v6, self->_reply);
    }
  }
}

+ (id)messageWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [[self alloc] initWithReply:replyCopy];

  return v5;
}

- (BSXPCReply)initWithReply:(id)reply
{
  reply = xpc_dictionary_create_reply(reply);
  v5 = [(BSXPCReply *)&self->super.isa _initWithReply:?];

  return v5;
}

@end