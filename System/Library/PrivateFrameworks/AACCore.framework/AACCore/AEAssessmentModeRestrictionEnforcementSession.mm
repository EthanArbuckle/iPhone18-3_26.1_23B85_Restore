@interface AEAssessmentModeRestrictionEnforcementSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)initWithRestrictionEnforcer:(void *)enforcer machServiceName:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AEAssessmentModeRestrictionEnforcementSession

- (void)dealloc
{
  [(AEAssessmentModeRestrictionEnforcementSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = AEAssessmentModeRestrictionEnforcementSession;
  [(AEAssessmentModeRestrictionEnforcementSession *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.automatic-assessment-configuration.restrictor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue] & 1) == 0)
  {
    [connectionCopy invalidate];
    v10 = 0;
  }

  else
  {
    objc_initWeak(&location, connectionCopy);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __84__AEAssessmentModeRestrictionEnforcementSession_listener_shouldAcceptNewConnection___block_invoke;
    v15 = &unk_278BB6CF0;
    objc_copyWeak(&v16, &location);
    [connectionCopy setInterruptionHandler:&v12];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_enforcer);
    }

    [connectionCopy setExportedObject:{self, v12, v13, v14, v15}];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284EFA8C0];
    [connectionCopy setExportedInterface:v9];

    [connectionCopy activate];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    v10 = 1;
  }

  return v10;
}

void __84__AEAssessmentModeRestrictionEnforcementSession_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = AECoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __84__AEAssessmentModeRestrictionEnforcementSession_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (id)initWithRestrictionEnforcer:(void *)enforcer machServiceName:
{
  v5 = a2;
  enforcerCopy = enforcer;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = AEAssessmentModeRestrictionEnforcementSession;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, enforcer);
      objc_storeWeak(self + 2, v5);
      v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:enforcerCopy];
      v9 = self[3];
      self[3] = v8;

      [self[3] setDelegate:self];
      [self[3] activate];
    }
  }

  return self;
}

- (void)invalidate
{
  if (self)
  {
    self = self->_xpcListener;
  }

  [(AEAssessmentModeRestrictionEnforcementSession *)self invalidate];
}

@end