@interface PUEditingExtensionUndoProxyHostSide
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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
  v2 = [(PUEditingExtensionUndoProxyHostSide *)self remoteObject];
  [v2 performRedo];
}

- (void)performUndo
{
  v2 = [(PUEditingExtensionUndoProxyHostSide *)self remoteObject];
  [v2 performUndo];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(PUEditingExtensionUndoProxyHostSide *)self connection];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0498];
    [v5 setExportedInterface:v7];

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0528];
    [v5 setRemoteObjectInterface:v8];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_54];
    [v5 setInvalidationHandler:&__block_literal_global_59];
    [(PUEditingExtensionUndoProxyHostSide *)self setConnection:v5];
    [v5 resume];
  }

  return v6 == 0;
}

- (id)remoteObject
{
  v2 = [(PUEditingExtensionUndoProxyHostSide *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_319];

  return v3;
}

- (NSXPCListenerEndpoint)listenerEndpoint
{
  v2 = [(PUEditingExtensionUndoProxyHostSide *)self listener];
  v3 = [v2 endpoint];

  return v3;
}

- (PUEditingExtensionUndoProxyHostSide)init
{
  v6.receiver = self;
  v6.super_class = PUEditingExtensionUndoProxyHostSide;
  v2 = [(PUEditingExtensionUndoProxyHostSide *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

@end