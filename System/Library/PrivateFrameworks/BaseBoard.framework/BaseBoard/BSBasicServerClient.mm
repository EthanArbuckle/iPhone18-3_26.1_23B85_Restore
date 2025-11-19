@interface BSBasicServerClient
+ (id)wrapperWithConnection:(id)a3;
- (BSBasicServerClient)initWithConnection:(id)a3;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)sendMessage:(id)a3;
- (void)sendMessageWithPacker:(id)a3 replyHandler:(id)a4 onQueue:(id)a5;
- (void)suspend;
@end

@implementation BSBasicServerClient

+ (id)wrapperWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConnection:v4];

  return v5;
}

- (BSBasicServerClient)initWithConnection:(id)a3
{
  v5 = a3;
  v6 = [(BSBasicServerClient *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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
  v5 = [v3 build];

  return v5;
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

- (void)sendMessage:(id)a3
{
  v5 = a3;
  v4 = [(BSBasicServerClient *)self connection];
  [v5 sendToConnection:v4];
}

- (void)sendMessageWithPacker:(id)a3 replyHandler:(id)a4 onQueue:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if ((v9 != 0) != (v10 != 0))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"BSBasicServerClient.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"(replyHandler && queue) || (!replyHandler && !queue)"}];
  }

  v11 = [(BSBasicServerClient *)self connection];
  [BSXPCMessage sendMessageWithPacker:v13 toConnection:v11 replyHandler:v9 replyQueue:v10];
}

@end