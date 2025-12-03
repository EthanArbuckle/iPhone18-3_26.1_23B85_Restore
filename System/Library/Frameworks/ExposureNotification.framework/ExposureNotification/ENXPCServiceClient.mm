@interface ENXPCServiceClient
- (ENXPCServiceClient)init;
- (id)_ensureXPCStartedAndReturnError:(id *)error;
- (id)getXPCConnectionAndReturnError:(id *)error;
- (void)_invalidateForced:(BOOL)forced;
- (void)_xpcReceivedEvent:(id)event;
- (void)dealloc;
@end

@implementation ENXPCServiceClient

- (ENXPCServiceClient)init
{
  v4.receiver = self;
  v4.super_class = ENXPCServiceClient;
  v2 = [(ENXPCServiceClient *)&v4 init];
  if (v2)
  {
    if (DefaultDispatchQueue_onceToken != -1)
    {
      [ENXPCServiceClient init];
    }

    objc_storeStrong(&v2->_dispatchQueue, DefaultDispatchQueue_defaultQueue);
  }

  return v2;
}

- (void)dealloc
{
  [(ENXPCServiceClient *)self _invalidateForced:1];
  v3.receiver = self;
  v3.super_class = ENXPCServiceClient;
  [(ENXPCServiceClient *)&v3 dealloc];
}

- (void)_invalidateForced:(BOOL)forced
{
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
  }

  invalidated = self->_invalidated;
  self->_invalidated = 1;
  v7 = self->_xpcConnection;
  self->_xpcConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (!invalidated && !forced && gLogCategory__ENXPCServiceClient <= 90 && (gLogCategory__ENXPCServiceClient != -1 || _LogCategory_Initialize()))
  {
    [ENXPCServiceClient _invalidateForced:];
  }
}

- (id)getXPCConnectionAndReturnError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ENXPCServiceClient *)self _ensureXPCStartedAndReturnError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_ensureXPCStartedAndReturnError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_invalidated)
  {
    [(ENXPCServiceClient *)error _ensureXPCStartedAndReturnError:&v14];
    v6 = v14;
  }

  else
  {
    v5 = self->_xpcConnection;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = self->_testListenerEndpoint;
      v8 = v7;
      if (v7)
      {
        v9 = xpc_connection_create_from_endpoint(v7);
        xpc_connection_set_target_queue(v9, self->_dispatchQueue);
      }

      else
      {
        v9 = xpc_connection_create("com.apple.ExposureNotificationService", self->_dispatchQueue);
      }

      objc_storeStrong(&self->_xpcConnection, v9);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __54__ENXPCServiceClient__ensureXPCStartedAndReturnError___block_invoke;
      handler[3] = &unk_278A4B6D0;
      handler[4] = self;
      v10 = v9;
      v13 = v10;
      xpc_connection_set_event_handler(v10, handler);
      xpc_connection_activate(v10);
      v6 = v10;
    }
  }

  return v6;
}

void *__54__ENXPCServiceClient__ensureXPCStartedAndReturnError___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[2] == *(a1 + 40))
  {
    return [result _xpcReceivedEvent:a2];
  }

  return result;
}

- (void)_xpcReceivedEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy != MEMORY[0x277D863F0])
  {
    v11 = eventCopy;
    if (eventCopy == MEMORY[0x277D863F8])
    {
      [(ENXPCServiceClient *)self _invalidateForced:0];
    }

    else
    {
      v6 = CUXPCDecodeNSErrorIfNeeded();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = ENErrorF(1);
      }

      v10 = v8;

      if (gLogCategory__ENXPCServiceClient <= 90 && (gLogCategory__ENXPCServiceClient != -1 || _LogCategory_Initialize()))
      {
        [ENXPCServiceClient _xpcReceivedEvent:];
      }
    }

    goto LABEL_15;
  }

  if (gLogCategory__ENXPCServiceClient <= 90)
  {
    v11 = eventCopy;
    if (gLogCategory__ENXPCServiceClient != -1 || (v9 = _LogCategory_Initialize(), v5 = v11, v9))
    {
      [ENXPCServiceClient _xpcReceivedEvent:];
LABEL_15:
      v5 = v11;
    }
  }
}

- (void)_ensureXPCStartedAndReturnError:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *a1 = ENErrorF(10);
  }

  *a3 = 0;
}

- (void)_xpcReceivedEvent:.cold.1()
{
  v1 = CUPrintNSError();
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

@end