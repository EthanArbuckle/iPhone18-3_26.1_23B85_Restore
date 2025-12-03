@interface AXDragEndpointRequestSatisfier
- (AXDragEndpointRequestSatisfier)initWithConnection:(id)connection;
- (AXDragEndpointRequestSatisfierDelegate)delegate;
- (void)requestDragEndpoint:(id)endpoint;
@end

@implementation AXDragEndpointRequestSatisfier

- (AXDragEndpointRequestSatisfier)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = AXDragEndpointRequestSatisfier;
  v6 = [(AXDragEndpointRequestSatisfier *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F408F010];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v8];

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    objc_initWeak(&location, v7);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __53__AXDragEndpointRequestSatisfier_initWithConnection___block_invoke;
    v13 = &unk_1E812E6A0;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:&v10];
    [(NSXPCConnection *)v7->_connection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__AXDragEndpointRequestSatisfier_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 endpointRequestSatisfierDidDisconnect:WeakRetained];
}

- (void)requestDragEndpoint:(id)endpoint
{
  if (endpoint)
  {
    endpointCopy = endpoint;
    delegate = [(AXDragEndpointRequestSatisfier *)self delegate];
    v6 = [delegate endpointForConnection:self->_connection forEndpointRequestSatisfier:self];

    endpointCopy[2](endpointCopy, v6);
  }

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (AXDragEndpointRequestSatisfierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end