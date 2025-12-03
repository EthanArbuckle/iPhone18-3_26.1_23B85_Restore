@interface Client
- (Client)initWithConnection:(id)connection entitled:(BOOL)entitled;
- (void)didWriteLog:(id)log filePath:(id)path;
- (void)failedToWriteLog:(id)log error:(id)error;
- (void)registerForEvents:(id)events replyHandler:(id)handler;
- (void)registerForWrites:(id)writes replyHandler:(id)handler;
- (void)willWriteLog:(id)log details:(id)details;
@end

@implementation Client

- (Client)initWithConnection:(id)connection entitled:(BOOL)entitled
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = Client;
  v8 = [(Client *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_entitled = entitled;
    objc_storeStrong(&v8->_connection, connection);
    v10 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v10;

    eventTypes = v9->_eventTypes;
    v9->_eventTypes = 0;

    writeTypes = v9->_writeTypes;
    v9->_writeTypes = 0;
  }

  return v9;
}

- (void)willWriteLog:(id)log details:(id)details
{
  logCopy = log;
  detailsCopy = details;
  eventTypes = self->_eventTypes;
  bugType = [logCopy bugType];
  LODWORD(eventTypes) = [(NSSet *)eventTypes containsObject:bugType];

  if (eventTypes)
  {
    v9 = [[OSALogEvent alloc] initWithIdentity:logCopy details:detailsCopy];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy receivedLogEvent:v9];
  }

  writeTypes = self->_writeTypes;
  bugType2 = [logCopy bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:bugType2];

  if (writeTypes)
  {
    remoteObjectProxy2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy2 willWriteLog:logCopy];
  }
}

- (void)didWriteLog:(id)log filePath:(id)path
{
  logCopy = log;
  pathCopy = path;
  writeTypes = self->_writeTypes;
  bugType = [logCopy bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:bugType];

  if (writeTypes)
  {
    v9 = [[OSALogWriteResult alloc] initWithIdentity:logCopy filePath:pathCopy];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy didWriteLog:v9];
  }
}

- (void)failedToWriteLog:(id)log error:(id)error
{
  logCopy = log;
  errorCopy = error;
  writeTypes = self->_writeTypes;
  bugType = [logCopy bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:bugType];

  if (writeTypes)
  {
    v9 = [[OSALogWriteResult alloc] initWithIdentity:logCopy error:errorCopy];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy didWriteLog:v9];
  }
}

- (void)registerForEvents:(id)events replyHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  sub_10000C7A0(eventsCopy);
  if (self->_entitled)
  {
    objc_storeStrong(&self->_eventTypes, events);
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = sub_10000C938();
    handlerCopy[2](handlerCopy, v8);

    handlerCopy = v8;
  }
}

- (void)registerForWrites:(id)writes replyHandler:(id)handler
{
  writesCopy = writes;
  handlerCopy = handler;
  sub_10000C7A0(writesCopy);
  if (self->_entitled)
  {
    objc_storeStrong(&self->_writeTypes, writes);
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = sub_10000C938();
    handlerCopy[2](handlerCopy, v8);

    handlerCopy = v8;
  }
}

@end