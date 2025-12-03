@interface PUEditingExtensionUndoProxyHostSide
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (PUEditingExtensionUndoButtonHost)target;
- (PUEditingExtensionUndoProxyHostSide)init;
- (id)remoteObject;
- (void)performRedo;
- (void)performUndo;
@end

@implementation PUEditingExtensionUndoProxyHostSide

- (PUEditingExtensionUndoButtonHost)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)performRedo
{
  remoteObject = [(PUEditingExtensionUndoProxyHostSide *)self remoteObject];
  [remoteObject performRedo];
}

- (void)performUndo
{
  remoteObject = [(PUEditingExtensionUndoProxyHostSide *)self remoteObject];
  [remoteObject performUndo];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  connection = [(PUEditingExtensionUndoProxyHostSide *)self connection];

  if (!connection)
  {
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0498];
    [connectionCopy setExportedInterface:v7];

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0528];
    [connectionCopy setRemoteObjectInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_54];
    [connectionCopy setInvalidationHandler:&__block_literal_global_59];
    [(PUEditingExtensionUndoProxyHostSide *)self setConnection:connectionCopy];
    [connectionCopy resume];
  }

  return connection == 0;
}

- (id)remoteObject
{
  connection = [(PUEditingExtensionUndoProxyHostSide *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_319];

  return v3;
}

- (NSXPCListenerEndpoint)listenerEndpoint
{
  listener = [(PUEditingExtensionUndoProxyHostSide *)self listener];
  endpoint = [listener endpoint];

  return endpoint;
}

- (PUEditingExtensionUndoProxyHostSide)init
{
  v6.receiver = self;
  v6.super_class = PUEditingExtensionUndoProxyHostSide;
  v2 = [(PUEditingExtensionUndoProxyHostSide *)&v6 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

@end