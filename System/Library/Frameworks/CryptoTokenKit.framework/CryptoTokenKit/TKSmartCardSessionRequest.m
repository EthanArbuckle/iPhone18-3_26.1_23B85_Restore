@interface TKSmartCardSessionRequest
- (NSXPCConnection)connection;
@end

@implementation TKSmartCardSessionRequest

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end