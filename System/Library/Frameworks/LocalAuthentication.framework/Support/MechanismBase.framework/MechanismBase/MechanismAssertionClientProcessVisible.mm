@interface MechanismAssertionClientProcessVisible
- (MechanismAssertionClientProcessVisible)initWithMechanism:(id)mechanism trackedBundleID:(id)d trackedPID:(int)iD;
- (id)_assertInStateWithProcessState:(id)state;
- (id)_callerName;
- (id)_rbsProcessHandleWithError:(id *)error;
- (id)_rbsStateDescriptor;
- (id)assertInState;
- (void)_configureMonitor:(id)monitor;
- (void)_handleStateUpdate:(id)update monitor:(id)monitor process:(id)process;
- (void)_setupProcessHandle;
- (void)assertInState;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MechanismAssertionClientProcessVisible

- (MechanismAssertionClientProcessVisible)initWithMechanism:(id)mechanism trackedBundleID:(id)d trackedPID:(int)iD
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = MechanismAssertionClientProcessVisible;
  v10 = [(MechanismAssertion *)&v13 initWithMechanism:mechanism];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleID, d);
    v11->_pid = iD;
    if (v11->_bundleID)
    {
      [(MechanismAssertionClientProcessVisible *)v11 _setupProcessHandle];
    }
  }

  return v11;
}

- (void)_setupProcessHandle
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_238B95000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to identify the process for monitoring: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_rbsProcessHandleWithError:(id *)error
{
  v5 = MEMORY[0x277D46F40];
  v6 = [MEMORY[0x277D46F98] predicateMatchingBundleIdentifier:self->_bundleID];
  v15 = 0;
  v7 = [v5 handleForPredicate:v6 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v9 = MEMORY[0x277D46F40];
    v10 = [MEMORY[0x277D46F58] identifierWithPid:self->_pid];
    v14 = 0;
    v7 = [v9 handleForIdentifier:v10 error:&v14];
    v11 = v14;

    v8 = v11;
  }

  if (error)
  {
    v12 = v8;
    *error = v8;
  }

  return v7;
}

- (id)_rbsStateDescriptor
{
  descriptor = [MEMORY[0x277D46FB8] descriptor];
  [descriptor setEndowmentNamespaces:&unk_284B78AC0];

  return descriptor;
}

- (id)assertInState
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_bundleID)
  {
    processHandle = self->_processHandle;
    if (processHandle)
    {
      currentState = [(RBSProcessHandle *)processHandle currentState];
      v5 = [(MechanismAssertionClientProcessVisible *)self _assertInStateWithProcessState:currentState];

      goto LABEL_9;
    }

    v6 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MechanismAssertionClientProcessVisible *)self assertInState];
    }
  }

  else
  {
    v6 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _callerName = [(MechanismAssertionClientProcessVisible *)self _callerName];
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = _callerName;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully asserted a bundle-less caller (%{public}@)", &v10, 0x16u);
    }
  }

  v5 = 0;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_assertInStateWithProcessState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy taskState] != 4)
  {
    v11 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MechanismAssertionClientProcessVisible _assertInStateWithProcessState:?];
    }

    v12 = MEMORY[0x277CD47F0];
    v13 = @"Client process was suspended.";
    goto LABEL_12;
  }

  endowmentNamespaces = [stateCopy endowmentNamespaces];
  v6 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

  v7 = [(MechanismAssertion *)self log];
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MechanismAssertionClientProcessVisible _assertInStateWithProcessState:?];
    }

    v12 = MEMORY[0x277CD47F0];
    v13 = @"Client process moved to background.";
LABEL_12:
    v10 = [v12 errorWithCode:-4 message:v13];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    _callerName = [(MechanismAssertionClientProcessVisible *)self _callerName];
    v16 = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = _callerName;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_INFO, "%{public}@ successfully asserted %{public}@ (confirmed task scheduled and visible)", &v16, 0x16u);
  }

  v10 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startMonitoring
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_processHandle)
  {
    v3 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      _callerName = [(MechanismAssertionClientProcessVisible *)self _callerName];
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = _callerName;
      _os_log_impl(&dword_238B95000, v3, OS_LOG_TYPE_INFO, "%{public}@ started monitoring %{public}@ for state changes", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    if (objc_opt_class())
    {
      v5 = MEMORY[0x277D46F88];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__MechanismAssertionClientProcessVisible_startMonitoring__block_invoke;
      v9[3] = &unk_278A62ED8;
      objc_copyWeak(&v10, buf);
      v6 = [v5 monitorWithConfiguration:v9];
      monitor = self->_monitor;
      self->_monitor = v6;

      objc_destroyWeak(&v10);
    }

    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__MechanismAssertionClientProcessVisible_startMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureMonitor:v3];
}

- (void)_configureMonitor:(id)monitor
{
  v13[1] = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  processHandle = self->_processHandle;
  if (processHandle)
  {
    processPredicate = [(RBSProcessHandle *)processHandle processPredicate];
    v13[0] = processPredicate;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [monitorCopy setPredicates:v7];
  }

  _rbsStateDescriptor = [(MechanismAssertionClientProcessVisible *)self _rbsStateDescriptor];
  [monitorCopy setStateDescriptor:_rbsStateDescriptor];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__MechanismAssertionClientProcessVisible__configureMonitor___block_invoke;
  v10[3] = &unk_278A62F00;
  objc_copyWeak(&v11, &location);
  [monitorCopy setUpdateHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

void __60__MechanismAssertionClientProcessVisible__configureMonitor___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CD47C8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__MechanismAssertionClientProcessVisible__configureMonitor___block_invoke_2;
  v14[3] = &unk_278A62E88;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  [v10 dispatchOnServer:v14];

  objc_destroyWeak(&v18);
}

void __60__MechanismAssertionClientProcessVisible__configureMonitor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleStateUpdate:*(a1 + 32) monitor:*(a1 + 40) process:*(a1 + 48)];
}

- (void)_handleStateUpdate:(id)update monitor:(id)monitor process:(id)process
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  monitorCopy = monitor;
  processCopy = process;
  v11 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v21 = 2112;
    v22 = updateCopy;
    v23 = 2112;
    v24 = monitorCopy;
    v25 = 2112;
    v26 = processCopy;
    _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received update:%@ monitor:%@ process: %@", buf, 0x2Au);
  }

  if (self->_monitor != monitorCopy)
  {
    [MechanismAssertionClientProcessVisible _handleStateUpdate:monitor:process:];
  }

  if (([processCopy matchesProcess:self->_processHandle] & 1) == 0)
  {
    [MechanismAssertionClientProcessVisible _handleStateUpdate:monitor:process:];
  }

  state = [updateCopy state];
  v13 = [(MechanismAssertionClientProcessVisible *)self _assertInStateWithProcessState:state];

  v14 = MEMORY[0x277CCACA8];
  _callerName = [(MechanismAssertionClientProcessVisible *)self _callerName];
  v16 = _callerName;
  if (v13)
  {
    v17 = [v14 stringWithFormat:@"%@ is no longer visible", _callerName];
    [(MechanismAssertion *)self handleAssertionFailureWithReason:v17 error:v13];
  }

  else
  {
    v17 = [v14 stringWithFormat:@"%@ was confirmed visible", _callerName];
    [(MechanismAssertion *)self handleAssertionSuccessWithReason:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_callerName
{
  bundleID = self->_bundleID;
  pid = self->_pid;
  if (bundleID)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%u]", bundleID, pid];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"pid %u", pid, v6];
  }
  v4 = ;

  return v4;
}

- (void)stopMonitoring
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    _callerName = [(MechanismAssertionClientProcessVisible *)self _callerName];
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = _callerName;
    _os_log_impl(&dword_238B95000, v3, OS_LOG_TYPE_INFO, "%{public}@ stopped monitoring %{public}@ for state changes", &v6, 0x16u);
  }

  [(RBSProcessMonitor *)self->_monitor invalidate];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)assertInState
{
  v10 = *MEMORY[0x277D85DE8];
  _callerName = [self _callerName];
  v9 = self[9];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_assertInStateWithProcessState:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 _callerName];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assertInStateWithProcessState:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 _callerName];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end