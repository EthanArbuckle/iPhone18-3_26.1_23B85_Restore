@interface BKHIDDomainServiceServer
- (BKHIDDomainServiceServer)initWithDelegate:(id)a3 incomingServiceConnectionHandler:(id)a4 serverTarget:(id)a5 serverProtocol:(id)a6 clientProtocol:(id)a7 serviceName:(id)a8 queue:(id)a9 log:(id)a10 entitlement:(id)a11;
- (BOOL)responsePendingForConnection:(id)a3;
- (id)connectionForPID:(int)a3;
- (id)didRespondBlockForConnection:(id)a3;
- (id)userInfoForConnection:(id)a3;
- (void)acceptIncomingServiceConnection:(id)a3;
- (void)enumerateUserInfoWithBlock:(id)a3;
- (void)invalidate;
- (void)rejectIncomingServiceConnection:(id)a3;
- (void)setUserInfo:(id)a3 forConnection:(id)a4;
@end

@implementation BKHIDDomainServiceServer

- (void)rejectIncomingServiceConnection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 connection];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    serviceName = self->_serviceName;
    v9 = 138543618;
    v10 = serviceName;
    v11 = 2114;
    v12 = v4;
    _os_log_debug_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEBUG, "invalidating connection (%{public}@) - %{public}@", &v9, 0x16u);
  }

  [v5 invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)acceptIncomingServiceConnection:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v5 remoteToken];
  v7 = [v6 pid];

  os_unfair_lock_lock(&self->_lock);
  lock_activeConnectionsByPID = self->_lock_activeConnectionsByPID;
  if (!lock_activeConnectionsByPID)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF0C68]);
    v10 = self->_lock_activeConnectionsByPID;
    self->_lock_activeConnectionsByPID = v9;

    lock_activeConnectionsByPID = self->_lock_activeConnectionsByPID;
  }

  [(BSMutableIntegerMap *)lock_activeConnectionsByPID setObject:v5 forKey:v7];
  os_unfair_lock_unlock(&self->_lock);
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    queue = self->_queue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __60__BKHIDDomainServiceServer_acceptIncomingServiceConnection___block_invoke;
    v19 = &unk_2784F7270;
    v20 = self;
    v21 = v5;
    [(BSServiceDispatchQueue *)queue performAsyncAndWait:&v16];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    serviceName = self->_serviceName;
    *buf = 138543618;
    v23 = serviceName;
    v24 = 2114;
    v25 = v4;
    _os_log_debug_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEBUG, "activating connection (%{public}@) - %{public}@", buf, 0x16u);
  }

  [v5 activate];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)didRespondBlockForConnection:(id)a3
{
  v3 = [a3 userInfo];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v7[8] = 1;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__BKHIDDomainServiceServer_didRespondBlockForConnection___block_invoke;
  v12[3] = &unk_2784F6B98;
  v13 = v7;
  v8 = v7;
  v9 = MEMORY[0x223DF7D60](v12);
  v10 = MEMORY[0x223DF7D60]();

  return v10;
}

uint64_t __57__BKHIDDomainServiceServer_didRespondBlockForConnection___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 8) = 0;
  }

  return result;
}

- (BOOL)responsePendingForConnection:(id)a3
{
  v3 = [a3 userInfo];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7[8];
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)enumerateUserInfoWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_lock_activeConnectionsByPID copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = v4;
    BSIntegerMapEnumerateWithBlock();
  }
}

void __55__BKHIDDomainServiceServer_enumerateUserInfoWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8[2];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setUserInfo:(id)a3 forConnection:(id)a4
{
  v13 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 userInfo];

  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    objc_storeStrong(v12 + 2, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userInfoForConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 userInfo];

  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = v9[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)connectionForPID:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_lock_activeConnectionsByPID objectForKey:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidSignal signal])
  {
    [(BSServiceConnectionListener *)self->_connectionListener invalidate];
    connectionListener = self->_connectionListener;
    self->_connectionListener = 0;

    delegate = self->_delegate;
    self->_delegate = 0;

    serviceTarget = self->_serviceTarget;
    self->_serviceTarget = 0;

    queue = self->_queue;
    self->_queue = 0;

    log = self->_log;
    self->_log = 0;
  }
}

- (BKHIDDomainServiceServer)initWithDelegate:(id)a3 incomingServiceConnectionHandler:(id)a4 serverTarget:(id)a5 serverProtocol:(id)a6 clientProtocol:(id)a7 serviceName:(id)a8 queue:(id)a9 log:(id)a10 entitlement:(id)a11
{
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v47 = a6;
  v46 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (!v20)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"BKHIDDomainServiceServer.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"logCategory"}];
  }

  v51.receiver = self;
  v51.super_class = BKHIDDomainServiceServer;
  v22 = [(BKHIDDomainServiceServer *)&v51 init];
  v23 = v22;
  if (v22)
  {
    v22->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v22->_delegate, a3);
    objc_storeStrong(&v23->_incomingConnectionHandler, a4);
    objc_storeStrong(&v23->_serviceTarget, a5);
    v24 = objc_alloc_init(MEMORY[0x277CF0B80]);
    invalidSignal = v23->_invalidSignal;
    v23->_invalidSignal = v24;

    if (v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = [MEMORY[0x277CF32B0] queueWithName:v18];
    }

    queue = v23->_queue;
    v23->_queue = v26;

    v28 = [v18 copy];
    serviceName = v23->_serviceName;
    v23->_serviceName = v28;

    objc_storeStrong(&v23->_log, a10);
    v42 = v21;
    v30 = [v21 copy];
    entitlement = v23->_entitlement;
    v23->_entitlement = v30;

    v32 = [MEMORY[0x277CF0C90] protocolForProtocol:v47];
    v33 = [MEMORY[0x277CF0C90] protocolForProtocol:v46];
    v34 = [MEMORY[0x277CF3278] interfaceWithIdentifier:v18];
    [v34 setServer:v32];
    [v34 setClient:v33];
    objc_storeStrong(&v23->_interface, v34);
    v35 = [MEMORY[0x277CF32A8] configurationWithDomain:*MEMORY[0x277CF05A0] service:v18];
    objc_initWeak(&location, v23);
    v36 = MEMORY[0x277CF32A0];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __155__BKHIDDomainServiceServer_initWithDelegate_incomingServiceConnectionHandler_serverTarget_serverProtocol_clientProtocol_serviceName_queue_log_entitlement___block_invoke;
    v48[3] = &unk_2784F6220;
    objc_copyWeak(&v49, &location);
    v37 = [v36 listenerWithConfiguration:v35 handler:v48];
    connectionListener = v23->_connectionListener;
    v23->_connectionListener = v37;

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);

    v21 = v42;
  }

  return v23;
}

void __155__BKHIDDomainServiceServer_initWithDelegate_incomingServiceConnectionHandler_serverTarget_serverProtocol_clientProtocol_serviceName_queue_log_entitlement___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([*(WeakRetained + 12) hasBeenSignalled])
    {
      [v23 invalidate];
      goto LABEL_23;
    }

    v5 = v23;
    v6 = [v5 remoteToken];
    v7 = [v6 pid];
    v8 = v4[7];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_debug_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEBUG, "got a connection! -- %{public}@ pid:%d", buf, 0x12u);
    }

    if (v7 <= 0)
    {
      v11 = v4[7];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109378;
      *&buf[4] = v7;
      *&buf[8] = 2114;
      *&buf[10] = v5;
      v12 = "dropping connection with junk pid (%d) -- %{public}@, ";
      v13 = v11;
      v14 = 18;
    }

    else
    {
      if (!v4[8] || [v6 hasEntitlement:?])
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __54__BKHIDDomainServiceServer__handleIncomingConnection___block_invoke;
        v25 = &unk_2784F6298;
        v26 = v4;
        [v5 configure:buf];
        v9 = [[BKHIDDomainIncomingServiceConnection alloc] initWithConnection:v5 log:v4[7]];
        [(BKHIDDomainIncomingServiceConnection *)v9 setHandler:v4];
        v10 = v4[3];
        if (v10)
        {
          [v10 handleIncomingServiceConnection:v9];
        }

        else
        {
          v16 = v9;
          v17 = [(BKHIDDomainIncomingServiceConnection *)v16 connection];
          v18 = [v17 remoteToken];
          v19 = [v18 pid];

          if (v19 <= 0)
          {
            v20 = v4[7];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *v27 = 138543362;
              v28 = v16;
              _os_log_error_impl(&dword_223CBE000, v20, OS_LOG_TYPE_ERROR, "cannot get remote process for connection %{public}@", v27, 0xCu);
            }

            [(BKHIDDomainIncomingServiceConnection *)v16 rejectConnection];
          }

          else
          {
            [(BKHIDDomainIncomingServiceConnection *)v16 acceptConnection];
          }
        }

        goto LABEL_22;
      }

      v15 = v4[7];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        [v5 invalidate];
LABEL_22:

        goto LABEL_23;
      }

      v22 = v4[8];
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      v12 = "cannot connect to '%{public}@': missing entitlement %{public}@";
      v13 = v15;
      v14 = 22;
    }

    _os_log_error_impl(&dword_223CBE000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    goto LABEL_14;
  }

LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
}

void __54__BKHIDDomainServiceServer__handleIncomingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  [v4 setInterface:v3];
  [v4 setInterfaceTarget:*(*(a1 + 32) + 40)];
  [v4 setQueue:*(*(a1 + 32) + 48)];
  v5 = objc_alloc_init(_BKHIDDomainClientRecord);
  [v4 setUserInfo:v5];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__BKHIDDomainServiceServer__handleIncomingConnection___block_invoke_2;
  v6[3] = &unk_2784F6270;
  v6[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v6];
}

void __54__BKHIDDomainServiceServer__handleIncomingConnection___block_invoke_2(uint64_t a1, void *a2)
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    *v17 = v3;
    _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "invalidated connection %{public}@", &v16, 0xCu);
    v4 = *(a1 + 32);
    v13 = v3;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = v3;
  }

  v7 = [*(v4 + 48) queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v3 remoteToken];
  v9 = [v8 pid];

  v10 = *(v4 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = v10;
    v15 = [v3 remoteTarget];
    v16 = 67109378;
    v17[0] = v9;
    LOWORD(v17[1]) = 2114;
    *(&v17[1] + 2) = v15;
    _os_log_debug_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEBUG, "removing connection pid:%d remote target: %{public}@", &v16, 0x12u);
  }

  os_unfair_lock_lock((v4 + 88));
  [*(v4 + 80) removeObjectForKey:v9];
  os_unfair_lock_unlock((v4 + 88));
  v11 = *(v4 + 16);
  if (objc_opt_respondsToSelector())
  {
    [*(v4 + 16) connectionDidTerminate:v3];
  }

LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
}

@end