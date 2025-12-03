@interface VSServiceConnectionHandler
- (VSServiceConnectionHandlerDelegate)delegate;
- (void)_didFinish;
- (void)setConnection:(id)connection;
@end

@implementation VSServiceConnectionHandler

- (void)_didFinish
{
  delegate = [(VSServiceConnectionHandler *)self delegate];
  [delegate connectionHandlerDidFinish:self];
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  if (self->_connection != connectionCopy)
  {
    objc_storeStrong(&self->_connection, connection);
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__VSServiceConnectionHandler_setConnection___block_invoke;
    v8[3] = &unk_278B74110;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)connectionCopy setInterruptionHandler:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__VSServiceConnectionHandler_setConnection___block_invoke_2;
    v6[3] = &unk_278B74110;
    objc_copyWeak(&v7, &location);
    [(NSXPCConnection *)connectionCopy setInvalidationHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __44__VSServiceConnectionHandler_setConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinish];
}

void __44__VSServiceConnectionHandler_setConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinish];
}

- (VSServiceConnectionHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end