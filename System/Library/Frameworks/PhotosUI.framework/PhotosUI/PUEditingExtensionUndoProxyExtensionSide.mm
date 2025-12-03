@interface PUEditingExtensionUndoProxyExtensionSide
- (PUEditingExtensionUndoProxyExtensionSide)initWithEndpoint:(id)endpoint;
- (PUEditingExtensionUndoTarget)target;
- (id)remoteObject;
- (void)performRedo;
- (void)performUndo;
@end

@implementation PUEditingExtensionUndoProxyExtensionSide

- (PUEditingExtensionUndoTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)remoteObject
{
  connection = [(PUEditingExtensionUndoProxyExtensionSide *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_107_330];

  return v3;
}

- (void)performRedo
{
  target = [(PUEditingExtensionUndoProxyExtensionSide *)self target];
  [target performRedo];
}

- (void)performUndo
{
  target = [(PUEditingExtensionUndoProxyExtensionSide *)self target];
  [target performUndo];
}

- (PUEditingExtensionUndoProxyExtensionSide)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = PUEditingExtensionUndoProxyExtensionSide;
  v5 = [(PUEditingExtensionUndoProxyExtensionSide *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0528];
    [(NSXPCConnection *)v5->_connection setExportedInterface:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0498];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v5->_connection setInterruptionHandler:&__block_literal_global_97];
    [(NSXPCConnection *)v5->_connection setInvalidationHandler:&__block_literal_global_102];
    [(NSXPCConnection *)v5->_connection setExportedObject:v5];
    [(NSXPCConnection *)v5->_connection resume];
  }

  return v5;
}

@end