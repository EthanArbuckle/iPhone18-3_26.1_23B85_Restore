@interface Client
- (Client)initWithConnection:(id)a3 entitled:(BOOL)a4;
- (void)didWriteLog:(id)a3 filePath:(id)a4;
- (void)failedToWriteLog:(id)a3 error:(id)a4;
- (void)registerForEvents:(id)a3 replyHandler:(id)a4;
- (void)registerForWrites:(id)a3 replyHandler:(id)a4;
- (void)willWriteLog:(id)a3 details:(id)a4;
@end

@implementation Client

- (Client)initWithConnection:(id)a3 entitled:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = Client;
  v8 = [(Client *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_entitled = a4;
    objc_storeStrong(&v8->_connection, a3);
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

- (void)willWriteLog:(id)a3 details:(id)a4
{
  v14 = a3;
  v6 = a4;
  eventTypes = self->_eventTypes;
  v8 = [v14 bugType];
  LODWORD(eventTypes) = [(NSSet *)eventTypes containsObject:v8];

  if (eventTypes)
  {
    v9 = [[OSALogEvent alloc] initWithIdentity:v14 details:v6];
    v10 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v10 receivedLogEvent:v9];
  }

  writeTypes = self->_writeTypes;
  v12 = [v14 bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:v12];

  if (writeTypes)
  {
    v13 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v13 willWriteLog:v14];
  }
}

- (void)didWriteLog:(id)a3 filePath:(id)a4
{
  v11 = a3;
  v6 = a4;
  writeTypes = self->_writeTypes;
  v8 = [v11 bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:v8];

  if (writeTypes)
  {
    v9 = [[OSALogWriteResult alloc] initWithIdentity:v11 filePath:v6];
    v10 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v10 didWriteLog:v9];
  }
}

- (void)failedToWriteLog:(id)a3 error:(id)a4
{
  v11 = a3;
  v6 = a4;
  writeTypes = self->_writeTypes;
  v8 = [v11 bugType];
  LODWORD(writeTypes) = [(NSSet *)writeTypes containsObject:v8];

  if (writeTypes)
  {
    v9 = [[OSALogWriteResult alloc] initWithIdentity:v11 error:v6];
    v10 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v10 didWriteLog:v9];
  }
}

- (void)registerForEvents:(id)a3 replyHandler:(id)a4
{
  v9 = a3;
  v7 = a4;
  sub_10000C7A0(v9);
  if (self->_entitled)
  {
    objc_storeStrong(&self->_eventTypes, a3);
    v7[2](v7, 0);
  }

  else
  {
    v8 = sub_10000C938();
    v7[2](v7, v8);

    v7 = v8;
  }
}

- (void)registerForWrites:(id)a3 replyHandler:(id)a4
{
  v9 = a3;
  v7 = a4;
  sub_10000C7A0(v9);
  if (self->_entitled)
  {
    objc_storeStrong(&self->_writeTypes, a3);
    v7[2](v7, 0);
  }

  else
  {
    v8 = sub_10000C938();
    v7[2](v7, v8);

    v7 = v8;
  }
}

@end