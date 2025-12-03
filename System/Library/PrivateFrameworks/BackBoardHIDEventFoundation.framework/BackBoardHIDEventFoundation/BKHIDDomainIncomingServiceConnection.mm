@interface BKHIDDomainIncomingServiceConnection
- (BKHIDDomainIncomingServiceConnection)initWithConnection:(id)connection log:(id)log;
- (BKHIDDomainIncomingServiceConnectionDelegate)delegate;
- (_BKHIDDomainIncomingServiceConnectionHandler)handler;
- (void)_lock_markAsHandled;
- (void)acceptConnection;
- (void)appendDescriptionToStream:(id)stream;
- (void)connection:(id)connection revokedWithEvent:(id)event;
- (void)dealloc;
- (void)rejectConnection;
- (void)setDelegate:(id)delegate;
- (void)setHandler:(id)handler;
@end

@implementation BKHIDDomainIncomingServiceConnection

- (void)acceptConnection
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  [(BKHIDDomainIncomingServiceConnection *)self _lock_markAsHandled];
  os_unfair_lock_unlock(&self->_lock);
  if (lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v6 = "ignoring call to acceptConnection: %{public}@, already handled";
LABEL_9:
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);
    }
  }

  else if (WeakRetained)
  {
    [WeakRetained acceptIncomingServiceConnection:self];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v6 = "ignoring call to acceptConnection: %{public}@, no handler";
      goto LABEL_9;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_lock_markAsHandled
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 24));
    *(self + 40) = 1;
    [*(self + 32) invalidate];
    v2 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_lock_wasHandled)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client code must accept/reject the connection <%@:%p> before dealloc", objc_opt_class(), self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKHIDDomainIncomingServiceConnection.m";
      v18 = 1024;
      v19 = 43;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC1D44);
  }

  v9.receiver = self;
  v9.super_class = BKHIDDomainIncomingServiceConnection;
  [(BKHIDDomainIncomingServiceConnection *)&v9 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__BKHIDDomainIncomingServiceConnection_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2784F7270;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

- (void)connection:(id)connection revokedWithEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);
  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (lock_wasHandled)
  {
    if (v8)
    {
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2048;
      v13 = WeakRetained;
      _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "Incoming connection revoked: %{public}@  - not notifying delegate %p because this incoming connection was already handled", &v10, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2048;
      v13 = WeakRetained;
      _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "Incoming connection revoked: %{public}@  - notifying delegate %p", &v10, 0x16u);
    }

    [WeakRetained incomingServiceConnectionDidRevoke:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)rejectConnection
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  [(BKHIDDomainIncomingServiceConnection *)self _lock_markAsHandled];
  os_unfair_lock_unlock(&self->_lock);
  if (lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v6 = "ignoring call to rejectConnection: %{public}@, already handled";
LABEL_9:
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);
    }
  }

  else if (WeakRetained)
  {
    [WeakRetained rejectIncomingServiceConnection:self];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v6 = "ignoring call to rejectConnection: %{public}@, no handler";
      goto LABEL_9;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, "can't set handler for connection: %{public}@, already handled", &v8, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_lock_handler);

    if (WeakRetained != handlerCopy)
    {
      objc_storeWeak(&self->_lock_handler, handlerCopy);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v7 = *MEMORY[0x277D85DE8];
}

- (_BKHIDDomainIncomingServiceConnectionHandler)handler
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v10 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, "can't set delegate for connection: %{public}@, already handled", &v8, 0xCu);
    }

    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);

  if (WeakRetained == delegateCopy)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  objc_storeWeak(&self->_lock_delegate, delegateCopy);
  os_unfair_lock_unlock(&self->_lock);
  if ([(BSServiceListenerConnection *)self->_connection isRevoked])
  {
    [delegateCopy incomingServiceConnectionDidRevoke:self];
  }

LABEL_8:

  v7 = *MEMORY[0x277D85DE8];
}

- (BKHIDDomainIncomingServiceConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BKHIDDomainIncomingServiceConnection)initWithConnection:(id)connection log:(id)log
{
  connectionCopy = connection;
  logCopy = log;
  v10 = logCopy;
  if (connectionCopy)
  {
    if (logCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDDomainIncomingServiceConnection.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKHIDDomainIncomingServiceConnection.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"log"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = BKHIDDomainIncomingServiceConnection;
  v11 = [(BKHIDDomainIncomingServiceConnection *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v11->_log, log);
    objc_storeStrong(&v12->_connection, connection);
    v12->_lock_wasHandled = 0;
    v13 = [connectionCopy addEventObserver:v12];
    lock_eventObserver = v12->_lock_eventObserver;
    v12->_lock_eventObserver = v13;
  }

  return v12;
}

@end