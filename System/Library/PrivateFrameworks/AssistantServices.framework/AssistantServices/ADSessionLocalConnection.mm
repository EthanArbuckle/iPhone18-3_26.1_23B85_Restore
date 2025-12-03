@interface ADSessionLocalConnection
- (ADSessionLocalConnectionDelegate)delegate;
- (id)initOnQueue:(id)queue;
- (void)cancelWithCompletion:(id)completion;
- (void)dealloc;
- (void)start;
@end

@implementation ADSessionLocalConnection

- (ADSessionLocalConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)start
{
  v5 = [[SiriCoreConnectionType alloc] initWithTechnology:3005];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriConnection:self willStartWithConnectionType:v5];

  v4 = objc_loadWeakRetained(&self->_delegate);
  [v4 siriConnection:self didOpenWithConnectionType:v5 delay:0.0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ADSessionLocalConnection;
  [(ADSessionLocalConnection *)&v2 dealloc];
}

- (id)initOnQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = ADSessionLocalConnection;
  v6 = [(ADSessionLocalConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

@end