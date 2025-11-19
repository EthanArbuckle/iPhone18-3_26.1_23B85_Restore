@interface ATStatusObserverConnection
- (ATStatusObserverConnection)initWithConnection:(id)a3;
- (void)fetchAllStatusWithCompletion:(id)a3;
- (void)monitor:(id)a3 didUpdateWithStatus:(id)a4;
@end

@implementation ATStatusObserverConnection

- (void)fetchAllStatusWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ATStatusMonitor sharedMonitor];
  v5 = [v4 allStatus];

  v3[2](v3, v5, 0);
}

- (void)monitor:(id)a3 didUpdateWithStatus:(id)a4
{
  connection = self->_connection;
  v5 = a4;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 updateWithStatus:v5];
}

- (ATStatusObserverConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATStatusObserverConnection;
  v6 = [(ATStatusObserverConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end