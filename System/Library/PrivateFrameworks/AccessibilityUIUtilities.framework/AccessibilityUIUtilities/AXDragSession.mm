@interface AXDragSession
- (AXDragSession)initWithDruidConnection:(id)a3;
- (AXDragSessionDelegate)delegate;
- (void)abort;
- (void)cancel;
- (void)dragDidEndWithOperation:(unint64_t)a3;
- (void)dragStatusDidChange:(id)a3;
- (void)dragWillBeginWithReply:(id)a3;
- (void)drop;
- (void)moveToPoint:(CGPoint)a3 forRequestor:(id)a4 completion:(id)a5;
@end

@implementation AXDragSession

- (AXDragSession)initWithDruidConnection:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AXDragSession;
  v6 = [(AXDragSession *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = _DUINewServerSessionAccessibilityInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v8];

    v9 = _DUINewClientSessionAccessibilityInterface();
    [(NSXPCConnection *)v7->_connection setExportedInterface:v9];

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    objc_initWeak(&location, v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__AXDragSession_initWithDruidConnection___block_invoke;
    v11[3] = &unk_1E812E6A0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __41__AXDragSession_initWithDruidConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 dragSessionWasTerminated:WeakRetained];

  v2 = [WeakRetained manager];
  [v2 sessionWasTerminated:WeakRetained];
}

- (void)dragWillBeginWithReply:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)dragStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AXDragSession *)self delegate];
  [v5 dragSessionChanged:self toStatus:v4];
}

- (void)dragDidEndWithOperation:(unint64_t)a3
{
  v5 = [(AXDragSession *)self delegate];
  [v5 dragSessionEnded:self withOperation:a3];

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (void)abort
{
  self->_aborted = 1;
  v3 = [(AXDragSession *)self delegate];
  [v3 dragSessionWasTerminated:self];

  v4 = [(AXDragSession *)self manager];
  [v4 sessionWasTerminated:self];
}

- (void)drop
{
  v2 = [(AXDragSession *)self _serverSession];
  [v2 accessibilityDrop];
}

- (void)cancel
{
  v3 = [(AXDragSession *)self _serverSession];
  [v3 accessibilityCancel];

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (void)moveToPoint:(CGPoint)a3 forRequestor:(id)a4 completion:(id)a5
{
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v9 = a5;
  v10 = [(AXDragSession *)self _serverSession];
  [v10 accessibilityMoveToPoint:{x, y}];

  v9[2](v9, 1);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 dragSession:self movedToPoint:v13 byRequestor:{x, y}];
  }
}

- (AXDragSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end