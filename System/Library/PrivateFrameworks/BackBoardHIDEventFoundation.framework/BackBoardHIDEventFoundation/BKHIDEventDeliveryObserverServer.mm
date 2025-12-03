@interface BKHIDEventDeliveryObserverServer
- (BKHIDEventDeliveryObserverServer)initWithDeliveryObserverServiceProvider:(id)provider;
- (BKHIDEventDeliveryObserverServer)initWithIncomingServiceConnectionHandler:(id)handler;
- (id)_deliveryObserverServiceForEstablishedConnection:(uint64_t)connection;
- (id)setObservesDeferringResolutions:(id)resolutions;
- (void)acceptIncomingServiceConnection:(id)connection mappedObject:(id)object;
- (void)connectionDidTerminate:(id)terminate;
- (void)handleIncomingServiceConnection:(id)connection;
- (void)rejectIncomingServiceConnection:(id)connection;
- (void)setObservesDeferringChainIdentities:(id)identities;
@end

@implementation BKHIDEventDeliveryObserverServer

- (void)connectionDidTerminate:(id)terminate
{
  v25 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  v5 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:terminateCopy];
  if (!v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"no delivery observer service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKHIDEventDeliveryObserverServer.m";
      v21 = 1024;
      v22 = 147;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9548);
  }

  v6 = v5;
  [v5 connectionDidTerminate:terminateCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_deliveryObserverServiceForEstablishedConnection:(uint64_t)connection
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (connection)
  {
    v4 = [*(connection + 8) userInfoForConnection:v3];
    if (!v4 || (v5 = v4, (v6 = *(v4 + 16)) == 0))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to find delivery observer service for established connection: %@", v3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__deliveryObserverServiceForEstablishedConnection_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v15 = v11;
        v16 = 2114;
        v17 = v13;
        v18 = 2048;
        connectionCopy = connection;
        v20 = 2114;
        v21 = @"BKHIDEventDeliveryObserverServer.m";
        v22 = 1024;
        v23 = 157;
        v24 = 2114;
        v25 = v10;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CC96F0);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)rejectIncomingServiceConnection:(id)connection
{
  domainIncomingServiceConnection = [connection domainIncomingServiceConnection];
  [domainIncomingServiceConnection rejectConnection];
}

- (void)acceptIncomingServiceConnection:(id)connection mappedObject:(id)object
{
  v37 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  objectCopy = object;
  v8 = objc_opt_class();
  v9 = objectCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    connectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to provide delivery observer service for incoming connection: %@", connectionCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *v28 = 138544642;
      *&v28[4] = v24;
      *&v28[12] = 2114;
      *&v28[14] = v26;
      v29 = 2048;
      selfCopy = self;
      v31 = 2114;
      v32 = @"BKHIDEventDeliveryObserverServer.m";
      v33 = 1024;
      v34 = 129;
      v35 = 2114;
      v36 = connectionCopy;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v28, 0x3Au);
    }

    [connectionCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC99C8);
  }

  domainIncomingServiceConnection = [connectionCopy domainIncomingServiceConnection];
  v13 = [_BKEventObserverConnectionRecord alloc];
  auditToken = [connectionCopy auditToken];
  v15 = [auditToken pid];
  if (v13 && (v16 = v15, *v28 = v13, *&v28[8] = _BKEventObserverConnectionRecord, (v17 = objc_msgSendSuper2(v28, sel_init)) != 0))
  {
    v18 = v17;
    *(v17 + 3) = v16;

    v19 = v11;
    auditToken = v18[2];
    v18[2] = v19;
  }

  else
  {
    v18 = 0;
  }

  server = self->_server;
  connection = [domainIncomingServiceConnection connection];
  [(BKHIDDomainServiceServer *)server setUserInfo:v18 forConnection:connection];

  [domainIncomingServiceConnection acceptConnection];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingServiceConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (!self->_incomingServiceConnectionHandler)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_incomingServiceConnectionHandler"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKHIDEventDeliveryObserverServer.m";
      v20 = 1024;
      v21 = 118;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9B7CLL);
  }

  v5 = [[BKHIDIncomingServiceConnection alloc] initWithIncomingServiceConnection:connectionCopy debugMappedObjectName:@"delivery observer service"];
  [(BKHIDIncomingServiceConnection *)v5 setHandler:self];
  [(BKHIDEventDeliveryObserverIncomingServiceConnectionHandler *)self->_incomingServiceConnectionHandler handleIncomingDeliveryObserverConnection:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObservesDeferringChainIdentities:(id)identities
{
  v28 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  currentConnection = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  remoteToken = [currentConnection remoteToken];
  v7 = [remoteToken hasEntitlement:@"com.apple.backboardd.globalDeferringChainObserver"];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:currentConnection];
  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"BKHIDEventDeliveryObserverServer.m";
      v24 = 1024;
      v25 = 109;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9D68);
  }

  v9 = v8;
  [v8 connection:currentConnection setObservesDeferringChainIdentities:identitiesCopy entitled:v7];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)setObservesDeferringResolutions:(id)resolutions
{
  v28 = *MEMORY[0x277D85DE8];
  resolutionsCopy = resolutions;
  currentConnection = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:currentConnection];
  if (!v7)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"BKHIDEventDeliveryObserverServer.m";
      v24 = 1024;
      v25 = 89;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9F48);
  }

  v8 = v7;
  v9 = [v7 connection:currentConnection setObservesDeferringResolutions:{objc_msgSend(resolutionsCopy, "BOOLValue")}];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BKHIDEventDeliveryObserverServer)initWithIncomingServiceConnectionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryObserverServer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"incomingServiceConnectionHandler"}];
  }

  v16.receiver = self;
  v16.super_class = BKHIDEventDeliveryObserverServer;
  v7 = [(BKHIDEventDeliveryObserverServer *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_incomingServiceConnectionHandler, handler);
    v9 = [BKHIDDomainServiceServer alloc];
    v10 = *MEMORY[0x277CF0598];
    v11 = BKLogEventDelivery();
    v12 = [(BKHIDDomainServiceServer *)v9 initWithDelegate:v8 incomingServiceConnectionHandler:v8 serverTarget:v8 serverProtocol:&unk_2837409A0 clientProtocol:&unk_2837451B8 serviceName:v10 queue:0 log:v11 entitlement:0];
    server = v8->_server;
    v8->_server = v12;
  }

  return v8;
}

- (BKHIDEventDeliveryObserverServer)initWithDeliveryObserverServiceProvider:(id)provider
{
  providerCopy = provider;
  v5 = [_BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler alloc];
  v6 = providerCopy;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithDeliveryObserverServiceProvider_ object:v5 file:@"BKHIDEventDeliveryObserverServer.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"deliveryObserverServiceProvider"}];
    }

    v12.receiver = v5;
    v12.super_class = _BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler;
    v8 = [(BKHIDEventDeliveryObserverServer *)&v12 init];
    v5 = v8;
    if (v8)
    {
      v8->_server = v7;
    }
  }

  v9 = [(BKHIDEventDeliveryObserverServer *)self initWithIncomingServiceConnectionHandler:v5];
  return v9;
}

@end