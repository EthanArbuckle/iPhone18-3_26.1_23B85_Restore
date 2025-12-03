@interface AXDragEndpointVendor
- (AXDragEndpointVendor)initWithXPCListener:(id)listener;
- (AXDragEndpointVendorDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)endpointForConnection:(id)connection forEndpointRequestSatisfier:(id)satisfier;
@end

@implementation AXDragEndpointVendor

- (AXDragEndpointVendor)initWithXPCListener:(id)listener
{
  listenerCopy = listener;
  v11.receiver = self;
  v11.super_class = AXDragEndpointVendor;
  v6 = [(AXDragEndpointVendor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
    [(NSXPCListener *)v7->_listener setDelegate:v7];
    v8 = [MEMORY[0x1E695DFA8] set];
    activeConnections = v7->_activeConnections;
    v7->_activeConnections = v8;
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[AXDragEndpointRequestSatisfier alloc] initWithConnection:connectionCopy];

  [(AXDragEndpointRequestSatisfier *)v6 setDelegate:self];
  [(NSMutableSet *)self->_activeConnections addObject:v6];

  return 1;
}

- (id)endpointForConnection:(id)connection forEndpointRequestSatisfier:(id)satisfier
{
  connectionCopy = connection;
  delegate = [(AXDragEndpointVendor *)self delegate];
  v7 = [delegate endpointForRequestingConnection:connectionCopy fromEndpointVendor:self];

  return v7;
}

- (AXDragEndpointVendorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end