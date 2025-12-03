@interface ATStatusObserverConnection
- (ATStatusObserverConnection)initWithConnection:(id)connection;
- (void)fetchAllStatusWithCompletion:(id)completion;
- (void)monitor:(id)monitor didUpdateWithStatus:(id)status;
@end

@implementation ATStatusObserverConnection

- (void)fetchAllStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ATStatusMonitor sharedMonitor];
  allStatus = [v4 allStatus];

  completionCopy[2](completionCopy, allStatus, 0);
}

- (void)monitor:(id)monitor didUpdateWithStatus:(id)status
{
  connection = self->_connection;
  statusCopy = status;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy updateWithStatus:statusCopy];
}

- (ATStatusObserverConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ATStatusObserverConnection;
  v6 = [(ATStatusObserverConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end