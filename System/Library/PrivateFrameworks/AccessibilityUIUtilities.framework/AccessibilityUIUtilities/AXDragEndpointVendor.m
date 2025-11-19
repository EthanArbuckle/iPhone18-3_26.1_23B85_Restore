@interface AXDragEndpointVendor
- (AXDragEndpointVendor)initWithXPCListener:(id)a3;
- (AXDragEndpointVendorDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)endpointForConnection:(id)a3 forEndpointRequestSatisfier:(id)a4;
@end

@implementation AXDragEndpointVendor

- (AXDragEndpointVendor)initWithXPCListener:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AXDragEndpointVendor;
  v6 = [(AXDragEndpointVendor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
    [(NSXPCListener *)v7->_listener setDelegate:v7];
    v8 = [MEMORY[0x1E695DFA8] set];
    activeConnections = v7->_activeConnections;
    v7->_activeConnections = v8;
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[AXDragEndpointRequestSatisfier alloc] initWithConnection:v5];

  [(AXDragEndpointRequestSatisfier *)v6 setDelegate:self];
  [(NSMutableSet *)self->_activeConnections addObject:v6];

  return 1;
}

- (id)endpointForConnection:(id)a3 forEndpointRequestSatisfier:(id)a4
{
  v5 = a3;
  v6 = [(AXDragEndpointVendor *)self delegate];
  v7 = [v6 endpointForRequestingConnection:v5 fromEndpointVendor:self];

  return v7;
}

- (AXDragEndpointVendorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end