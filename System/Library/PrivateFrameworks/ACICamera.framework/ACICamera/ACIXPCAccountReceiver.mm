@interface ACIXPCAccountReceiver
- (ACIXPCAccountReceiver)initWithEndpoint:(id)a3;
- (void)cleanup;
@end

@implementation ACIXPCAccountReceiver

- (ACIXPCAccountReceiver)initWithEndpoint:(id)a3
{
  v5 = a3;
  v6 = [(ACIXPCAccountReceiver *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v5];
    connection = v7->_connection;
    v7->_connection = v8;

    v10 = +[ACIXPCProvider remoteServiceSenderInterface];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v11 = +[ACIXPCProvider remoteServiceReceiverInterface];
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v7->_connection resume];
    v12 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    receiverProxy = v7->_receiverProxy;
    v7->_receiverProxy = v12;

    v14 = v7;
  }

  return v7;
}

- (void)cleanup
{
  [(NSXPCConnection *)self->_connection invalidate];
  endpoint = self->_endpoint;
  self->_endpoint = 0;

  [(NSXPCConnection *)self->_connection setExportedObject:0];
  connection = self->_connection;
  self->_connection = 0;
}

@end