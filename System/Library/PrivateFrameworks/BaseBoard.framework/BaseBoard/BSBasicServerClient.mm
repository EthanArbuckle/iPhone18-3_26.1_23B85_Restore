@interface BSBasicServerClient
+ (id)wrapperWithConnection:(id)connection;
- (BSBasicServerClient)initWithConnection:(id)connection;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)sendMessage:(id)message;
- (void)sendMessageWithPacker:(id)packer replyHandler:(id)handler onQueue:(id)queue;
- (void)suspend;
@end

@implementation BSBasicServerClient

+ (id)wrapperWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithConnection:connectionCopy];

  return v5;
}

- (BSBasicServerClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(BSBasicServerClient *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)dealloc
{
  [(BSBasicServerClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = BSBasicServerClient;
  [(BSBasicServerClient *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendInt:xpc_connection_get_pid(self->_connection) withName:@"pid"];
  build = [v3 build];

  return build;
}

- (void)resume
{
  connection = [(BSBasicServerClient *)self connection];
  if (connection)
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&self->_resumed, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v3)
    {
      self->_managingResumeState = 1;
      xpc_connection_resume(connection);
    }
  }
}

- (void)suspend
{
  connection = [(BSBasicServerClient *)self connection];
  if (connection)
  {
    v3 = 1;
    atomic_compare_exchange_strong_explicit(&self->_resumed, &v3, 0, memory_order_relaxed, memory_order_relaxed);
    if (v3 == 1)
    {
      xpc_connection_suspend(connection);
    }
  }
}

- (void)invalidate
{
  connection = [(BSBasicServerClient *)self connection];
  if (connection)
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&self->_cancelled, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v3)
    {
      xpc_connection_cancel(connection);
      if (self->_managingResumeState)
      {
        [(BSBasicServerClient *)self resume];
      }
    }
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  connection = [(BSBasicServerClient *)self connection];
  [messageCopy sendToConnection:connection];
}

- (void)sendMessageWithPacker:(id)packer replyHandler:(id)handler onQueue:(id)queue
{
  packerCopy = packer;
  handlerCopy = handler;
  queueCopy = queue;
  if ((handlerCopy != 0) != (queueCopy != 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSBasicServerClient.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"(replyHandler && queue) || (!replyHandler && !queue)"}];
  }

  connection = [(BSBasicServerClient *)self connection];
  [BSXPCMessage sendMessageWithPacker:packerCopy toConnection:connection replyHandler:handlerCopy replyQueue:queueCopy];
}

@end