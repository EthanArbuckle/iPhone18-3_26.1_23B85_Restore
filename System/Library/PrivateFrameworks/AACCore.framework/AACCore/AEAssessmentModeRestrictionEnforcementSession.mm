@interface AEAssessmentModeRestrictionEnforcementSession
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)initWithRestrictionEnforcer:(void *)a3 machServiceName:;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.automatic-assessment-configuration.restrictor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue] & 1) == 0)
  {
    [v7 invalidate];
    v10 = 0;
  }

  else
  {
    objc_initWeak(&location, v7);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __84__AEAssessmentModeRestrictionEnforcementSession_listener_shouldAcceptNewConnection___block_invoke;
    v15 = &unk_278BB6CF0;
    objc_copyWeak(&v16, &location);
    [v7 setInterruptionHandler:&v12];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_enforcer);
    }

    [v7 setExportedObject:{self, v12, v13, v14, v15}];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284EFA8C0];
    [v7 setExportedInterface:v9];

    [v7 activate];
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

- (id)initWithRestrictionEnforcer:(void *)a3 machServiceName:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = AEAssessmentModeRestrictionEnforcementSession;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a3);
      objc_storeWeak(a1 + 2, v5);
      v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v6];
      v9 = a1[3];
      a1[3] = v8;

      [a1[3] setDelegate:a1];
      [a1[3] activate];
    }
  }

  return a1;
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