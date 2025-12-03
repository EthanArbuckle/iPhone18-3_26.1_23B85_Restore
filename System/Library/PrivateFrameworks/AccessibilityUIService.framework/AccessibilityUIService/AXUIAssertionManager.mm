@interface AXUIAssertionManager
+ (id)sharedInstance;
- (AXUIAssertionManager)init;
- (id)_serviceClientIDForService:(id)service clientIdentifier:(id)identifier;
- (void)_invalidateAssertion;
- (void)_invalidateAssertionUI;
- (void)acquireAssertionIfNeeded;
- (void)acquireAssertionUIIfNeeded;
- (void)acquireAssertionUIIfNeededForService:(id)service clientIdentifier:(id)identifier;
- (void)dealloc;
- (void)invalidateAssertionIfNeeded;
- (void)invalidateAssertionUIIfNeeded;
- (void)invalidateAssertionUIIfNeededForService:(id)service clientIdentifier:(id)identifier;
@end

@implementation AXUIAssertionManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AXUIAssertionManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = _AXUIAssertionManager;

  return v2;
}

uint64_t __38__AXUIAssertionManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _AXUIAssertionManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXUIAssertionManager)init
{
  v12.receiver = self;
  v12.super_class = AXUIAssertionManager;
  v2 = [(AXUIAssertionManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    clientsWithUIAssertion = v2->_clientsWithUIAssertion;
    v2->_clientsWithUIAssertion = v3;

    v5 = objc_alloc(MEMORY[0x277CE6950]);
    v6 = MEMORY[0x277D85CD0];
    v7 = [v5 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    timerUI = v2->_timerUI;
    v2->_timerUI = v7;

    [(AXDispatchTimer *)v2->_timerUI setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v9 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v6];
    timerBackground = v2->_timerBackground;
    v2->_timerBackground = v9;

    [(AXDispatchTimer *)v2->_timerBackground setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)dealloc
{
  [(AXUIAssertionManager *)self _invalidateAssertionUI];
  [(AXUIAssertionManager *)self _invalidateAssertion];
  v3.receiver = self;
  v3.super_class = AXUIAssertionManager;
  [(AXUIAssertionManager *)&v3 dealloc];
}

- (void)acquireAssertionIfNeeded
{
  v17[1] = *MEMORY[0x277D85DE8];
  timerBackground = [(AXUIAssertionManager *)self timerBackground];
  [timerBackground cancel];

  assertionBackground = self->_assertionBackground;
  currentProcess = AXLogAssertions();
  v6 = os_log_type_enabled(currentProcess, OS_LOG_TYPE_DEFAULT);
  if (assertionBackground)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23DBD1000, currentProcess, OS_LOG_TYPE_DEFAULT, "Background Assertion was already requested, skip", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23DBD1000, currentProcess, OS_LOG_TYPE_DEFAULT, "Acquiring Background assertion", buf, 2u);
    }

    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v7 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.AccessibilityUIServer" name:@"AXUIServerBackground"];
    v8 = objc_alloc(MEMORY[0x277D46DB8]);
    v17[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v10 = [v8 initWithExplanation:@"AXUIServer Running Background Tasks" target:currentProcess attributes:v9];
    v11 = self->_assertionBackground;
    self->_assertionBackground = v10;

    v12 = AXLogAssertions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23DBD1000, v12, OS_LOG_TYPE_DEFAULT, "About to acquire AXUIServer RB assertion com.apple.AccessibilityUIServer::AXUIServerBackground", buf, 2u);
    }

    v13 = self->_assertionBackground;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__AXUIAssertionManager_acquireAssertionIfNeeded__block_invoke;
    v15[3] = &unk_278BF3700;
    v15[4] = self;
    [(RBSAssertion *)v13 acquireWithInvalidationHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__AXUIAssertionManager_acquireAssertionIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 code];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = AXLogAssertions();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v9 = [v6 userInfo];
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v9;
        v11 = "RB assertion invalidated - Permission Denied: %@. %@";
        break;
      case 4:
        v8 = AXLogAssertions();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v6 userInfo];
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v9;
          v11 = "RB assertion invalidated - Constraint Unmet: %@. %@";
          break;
        }

        goto LABEL_22;
      case 5:
        v8 = AXLogAssertions();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v9 = [v6 userInfo];
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v9;
        v11 = "RB assertion invalidated - Conditions Denied: %@. %@";
        break;
      default:
        goto LABEL_23;
    }

LABEL_20:
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x16u);
LABEL_21:

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = AXLogAssertions();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v9 = [v6 userInfo];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    v11 = "RB assertion invalidated - Unknown Error: %@. %@";
    goto LABEL_20;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_23;
    }

    v8 = AXLogAssertions();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v9 = [v6 userInfo];
    v10 = [v5 attributes];
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_DEFAULT, "RB assertion invalidated - Invalid Parameters: %@. %@. %@", &v15, 0x20u);

    goto LABEL_21;
  }

  v8 = AXLogAssertions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 userInfo];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    v11 = "RB assertion invalidated: %@. %@";
    goto LABEL_20;
  }

LABEL_22:

LABEL_23:
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  if (v13 == v5)
  {
    *(v12 + 16) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertionIfNeeded
{
  timerBackground = [(AXUIAssertionManager *)self timerBackground];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__AXUIAssertionManager_invalidateAssertionIfNeeded__block_invoke;
  v4[3] = &unk_278BF3050;
  v4[4] = self;
  [timerBackground afterDelay:v4 processBlock:30.0];
}

void __51__AXUIAssertionManager_invalidateAssertionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = AXLogAssertions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23DBD1000, v2, OS_LOG_TYPE_DEFAULT, "invalidateAssertionIfNeeded timer", buf, 2u);
  }

  v3 = [*(a1 + 32) assertionBackground];

  if (v3)
  {
    v4 = +[AXUIServiceManager sharedServiceManager];
    v5 = [v4 _servicesCount];

    if (v5)
    {
      v6 = AXLogAssertions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_23DBD1000, v6, OS_LOG_TYPE_DEFAULT, "Can't invalidate Background Assertion, still services are registered", v7, 2u);
      }
    }

    else
    {
      [*(a1 + 32) _invalidateAssertion];
    }
  }
}

- (void)acquireAssertionUIIfNeeded
{
  v17[2] = *MEMORY[0x277D85DE8];
  timerUI = [(AXUIAssertionManager *)self timerUI];
  [timerUI cancel];

  assertionUI = self->_assertionUI;
  currentProcess = AXLogAssertions();
  v6 = os_log_type_enabled(currentProcess, OS_LOG_TYPE_DEFAULT);
  if (assertionUI)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23DBD1000, currentProcess, OS_LOG_TYPE_DEFAULT, "UI Assertion was already requested, skip", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23DBD1000, currentProcess, OS_LOG_TYPE_DEFAULT, "Acquiring UI assertion", buf, 2u);
    }

    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v7 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.AccessibilityUIServer" name:@"LegacyUIOverlay"];
    v8 = [MEMORY[0x277D46E50] grantWithNamespace:@"com.apple.frontboard.visibility" endowment:MEMORY[0x277CBEC38]];
    v9 = objc_alloc(MEMORY[0x277D46DB8]);
    v17[0] = v7;
    v17[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v11 = [v9 initWithExplanation:@"AXUIServer Showing UI" target:currentProcess attributes:v10];
    v12 = self->_assertionUI;
    self->_assertionUI = v11;

    v13 = self->_assertionUI;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__AXUIAssertionManager_acquireAssertionUIIfNeeded__block_invoke;
    v15[3] = &unk_278BF3700;
    v15[4] = self;
    [(RBSAssertion *)v13 acquireWithInvalidationHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __50__AXUIAssertionManager_acquireAssertionUIIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 code];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = AXLogAssertions();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v9 = [v6 userInfo];
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v9;
        v11 = "RB assertion invalidated - Permission Denied: %@. %@";
        break;
      case 4:
        v8 = AXLogAssertions();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v6 userInfo];
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v9;
          v11 = "RB assertion invalidated - Constraint Unmet: %@. %@";
          break;
        }

        goto LABEL_22;
      case 5:
        v8 = AXLogAssertions();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v9 = [v6 userInfo];
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v9;
        v11 = "RB assertion invalidated - Conditions Denied: %@. %@";
        break;
      default:
        goto LABEL_23;
    }

LABEL_20:
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x16u);
LABEL_21:

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = AXLogAssertions();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v9 = [v6 userInfo];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    v11 = "RB assertion invalidated - Unknown Error: %@. %@";
    goto LABEL_20;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_23;
    }

    v8 = AXLogAssertions();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v9 = [v6 userInfo];
    v10 = [v5 attributes];
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_DEFAULT, "RB assertion invalidated - Invalid Parameters: %@. %@. %@", &v15, 0x20u);

    goto LABEL_21;
  }

  v8 = AXLogAssertions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 userInfo];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    v11 = "RB assertion invalidated: %@. %@";
    goto LABEL_20;
  }

LABEL_22:

LABEL_23:
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  if (v13 == v5)
  {
    *(v12 + 8) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertionUIIfNeeded
{
  timerUI = [(AXUIAssertionManager *)self timerUI];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__AXUIAssertionManager_invalidateAssertionUIIfNeeded__block_invoke;
  v4[3] = &unk_278BF3050;
  v4[4] = self;
  [timerUI afterDelay:v4 processBlock:30.0];
}

void __53__AXUIAssertionManager_invalidateAssertionUIIfNeeded__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = AXLogAssertions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_23DBD1000, v2, OS_LOG_TYPE_DEFAULT, "invalidateAssertionUIIfNeeded timer", &v12, 2u);
  }

  v3 = [*(a1 + 32) assertionUI];

  if (v3)
  {
    v4 = [*(a1 + 32) clientsWithUIAssertion];
    v5 = [v4 count];

    if (v5)
    {
      v6 = AXLogAssertions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) clientsWithUIAssertion];
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_23DBD1000, v6, OS_LOG_TYPE_DEFAULT, "Can't invalidate UI Assertion, still clients with UI assertion %@", &v12, 0xCu);
      }
    }

    else
    {
      v8 = +[AXUIDisplayManager sharedDisplayManager];
      v9 = [v8 allWindowsHidden];

      if (v9)
      {
        [*(a1 + 32) _invalidateAssertionUI];
      }

      else
      {
        v10 = AXLogAssertions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_23DBD1000, v10, OS_LOG_TYPE_DEFAULT, "Can't invalidate UI Assertion, still UI is presented", &v12, 2u);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)acquireAssertionUIIfNeededForService:(id)service clientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifierCopy = identifier;
  if (objc_opt_respondsToSelector())
  {
    v8 = [serviceCopy serviceTypeForClientWithIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = AXLogAssertions();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = v8;
    v13 = 2112;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = serviceCopy;
    _os_log_impl(&dword_23DBD1000, v9, OS_LOG_TYPE_DEFAULT, "serviceType: %d, client: %@, service: %@", v12, 0x1Cu);
  }

  if (v8)
  {
    v10 = [(AXUIAssertionManager *)self _serviceClientIDForService:serviceCopy clientIdentifier:identifierCopy];
    if (v10)
    {
      [(NSMutableSet *)self->_clientsWithUIAssertion addObject:v10];
    }

    [(AXUIAssertionManager *)self acquireAssertionUIIfNeeded];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertionUIIfNeededForService:(id)service clientIdentifier:(id)identifier
{
  v5 = [(AXUIAssertionManager *)self _serviceClientIDForService:service clientIdentifier:identifier];
  if ([(NSMutableSet *)self->_clientsWithUIAssertion containsObject:?])
  {
    [(NSMutableSet *)self->_clientsWithUIAssertion removeObject:v5];
    [(AXUIAssertionManager *)self invalidateAssertionUIIfNeeded];
  }
}

- (void)_invalidateAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *self;
  userInfo = [a2 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23DBD1000, v4, v5, "RB assertion invalidation error: %@. %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAssertionUI
{
  p_assertionUI = &self->_assertionUI;
  assertionUI = self->_assertionUI;
  v9 = 0;
  [(RBSAssertion *)assertionUI invalidateWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = AXLogAssertions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXUIAssertionManager *)p_assertionUI _invalidateAssertion];
    }
  }

  v6 = *p_assertionUI;
  *p_assertionUI = 0;

  v7 = AXLogAssertions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_DEFAULT, "Invalidated UI assertion", v8, 2u);
  }
}

- (id)_serviceClientIDForService:(id)service clientIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCACA8];
  identifierCopy = identifier;
  identifierCopy = [v4 stringWithFormat:@"%@_%@", objc_opt_class(), identifierCopy];

  return identifierCopy;
}

@end