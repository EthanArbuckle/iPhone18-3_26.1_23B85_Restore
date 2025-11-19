@interface ADSessionLocalConnection
- (ADSessionLocalConnectionDelegate)delegate;
- (id)initOnQueue:(id)a3;
- (void)cancelWithCompletion:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation ADSessionLocalConnection

- (ADSessionLocalConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
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

- (id)initOnQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ADSessionLocalConnection;
  v6 = [(ADSessionLocalConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

@end