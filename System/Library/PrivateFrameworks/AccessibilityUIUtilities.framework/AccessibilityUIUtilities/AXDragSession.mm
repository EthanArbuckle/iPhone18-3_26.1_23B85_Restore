@interface AXDragSession
- (AXDragSession)initWithDruidConnection:(id)connection;
- (AXDragSessionDelegate)delegate;
- (void)abort;
- (void)cancel;
- (void)dragDidEndWithOperation:(unint64_t)operation;
- (void)dragStatusDidChange:(id)change;
- (void)dragWillBeginWithReply:(id)reply;
- (void)drop;
- (void)moveToPoint:(CGPoint)point forRequestor:(id)requestor completion:(id)completion;
@end

@implementation AXDragSession

- (AXDragSession)initWithDruidConnection:(id)connection
{
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = AXDragSession;
  v6 = [(AXDragSession *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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

- (void)dragWillBeginWithReply:(id)reply
{
  if (reply)
  {
    (*(reply + 2))(reply);
  }
}

- (void)dragStatusDidChange:(id)change
{
  changeCopy = change;
  delegate = [(AXDragSession *)self delegate];
  [delegate dragSessionChanged:self toStatus:changeCopy];
}

- (void)dragDidEndWithOperation:(unint64_t)operation
{
  delegate = [(AXDragSession *)self delegate];
  [delegate dragSessionEnded:self withOperation:operation];

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (void)abort
{
  self->_aborted = 1;
  delegate = [(AXDragSession *)self delegate];
  [delegate dragSessionWasTerminated:self];

  manager = [(AXDragSession *)self manager];
  [manager sessionWasTerminated:self];
}

- (void)drop
{
  _serverSession = [(AXDragSession *)self _serverSession];
  [_serverSession accessibilityDrop];
}

- (void)cancel
{
  _serverSession = [(AXDragSession *)self _serverSession];
  [_serverSession accessibilityCancel];

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (void)moveToPoint:(CGPoint)point forRequestor:(id)requestor completion:(id)completion
{
  y = point.y;
  x = point.x;
  requestorCopy = requestor;
  completionCopy = completion;
  _serverSession = [(AXDragSession *)self _serverSession];
  [_serverSession accessibilityMoveToPoint:{x, y}];

  completionCopy[2](completionCopy, 1);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(_serverSession) = objc_opt_respondsToSelector();

  if (_serverSession)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 dragSession:self movedToPoint:requestorCopy byRequestor:{x, y}];
  }
}

- (AXDragSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end