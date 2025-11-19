@interface BKHIDIncomingServiceConnection
- (BKHIDIncomingServiceConnection)initWithIncomingServiceConnection:(id)a3 debugMappedObjectName:(id)a4;
- (BKHIDIncomingServiceConnectionDelegate)delegate;
- (BSAuditToken)auditToken;
- (_BKHIDIncomingServiceConnectionHandler)handler;
- (void)acceptConnectionWithMappedObject:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)incomingServiceConnectionDidRevoke:(id)a3;
- (void)rejectConnection;
- (void)setDelegate:(id)a3;
- (void)setHandler:(id)a3;
@end

@implementation BKHIDIncomingServiceConnection

- (BSAuditToken)auditToken
{
  v2 = [(BKHIDDomainIncomingServiceConnection *)self->_domainIncomingServiceConnection connection];
  v3 = [v2 remoteToken];

  return v3;
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
      v15 = self;
      v16 = 2114;
      v17 = @"BKHIDIncomingServiceConnection.m";
      v18 = 1024;
      v19 = 47;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC1B64);
  }

  v9.receiver = self;
  v9.super_class = BKHIDIncomingServiceConnection;
  [(BKHIDIncomingServiceConnection *)&v9 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)incomingServiceConnectionDidRevoke:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (lock_wasHandled)
  {
    if (v7)
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2048;
      v12 = WeakRetained;
      _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "Incoming connection revoked: %{public}@  - not notifying delegate %p because this incoming connection was already handled", &v9, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2048;
      v12 = WeakRetained;
      _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "Incoming connection revoked: %{public}@  - notifying delegate %p", &v9, 0x16u);
    }

    [WeakRetained incomingServiceConnectionDidRevoke:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BKHIDIncomingServiceConnection_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2784F7270;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __60__BKHIDIncomingServiceConnection_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 48) connection];
  v2 = [v1 appendObject:v3 withName:@"connection"];
}

- (void)rejectConnection
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_wasHandled = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = self;
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
      v9 = self;
      v6 = "ignoring call to rejectConnection: %{public}@, no handler";
      goto LABEL_9;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)acceptConnectionWithMappedObject:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    debugMappedObjectName = self->_debugMappedObjectName;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to provide %@ while activating incoming connection: %@", debugMappedObjectName, self->_domainIncomingServiceConnection];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BKHIDIncomingServiceConnection.m";
      v25 = 1024;
      v26 = 99;
      v27 = 2114;
      v28 = v13;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE0324);
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  lock_wasHandled = self->_lock_wasHandled;
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_wasHandled = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = self;
      v10 = "ignoring call to acceptConnection: %{public}@, already handled";
LABEL_10:
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    }
  }

  else if (WeakRetained)
  {
    [WeakRetained acceptIncomingServiceConnection:self mappedObject:v6];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = self;
      v10 = "ignoring call to acceptConnection: %{public}@, no handler";
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, "can't set handler for connection: %{public}@, already handled", &v8, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_lock_handler);

    if (WeakRetained != v4)
    {
      objc_storeWeak(&self->_lock_handler, v4);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v7 = *MEMORY[0x277D85DE8];
}

- (_BKHIDIncomingServiceConnectionHandler)handler
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_handler);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wasHandled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_error_impl(&dword_223CBE000, log, OS_LOG_TYPE_ERROR, "can't set delegate for connection: %{public}@, already handled", &v8, 0xCu);
    }

    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);

  if (WeakRetained == v4)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  objc_storeWeak(&self->_lock_delegate, v4);
  os_unfair_lock_unlock(&self->_lock);
  if ([(BKHIDDomainIncomingServiceConnection *)self->_domainIncomingServiceConnection isRevoked])
  {
    [v4 incomingServiceConnectionDidRevoke:self];
  }

LABEL_8:

  v7 = *MEMORY[0x277D85DE8];
}

- (BKHIDIncomingServiceConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BKHIDIncomingServiceConnection)initWithIncomingServiceConnection:(id)a3 debugMappedObjectName:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"BKHIDIncomingServiceConnection.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"incomingConnection"}];
  }

  v16.receiver = self;
  v16.super_class = BKHIDIncomingServiceConnection;
  v10 = [(BKHIDIncomingServiceConnection *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [v8 log];
    log = v11->_log;
    v11->_log = v12;

    objc_storeStrong(&v11->_debugMappedObjectName, a4);
    v11->_lock_wasHandled = 0;
    objc_storeStrong(&v11->_domainIncomingServiceConnection, a3);
    [(BKHIDDomainIncomingServiceConnection *)v11->_domainIncomingServiceConnection setDelegate:v11];
  }

  return v11;
}

@end