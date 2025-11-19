@interface MechanismAssertion
- (BOOL)acquireWithReason:(id)a3 error:(id *)a4;
- (MechanismAssertion)initWithMechanism:(id)a3;
- (MechanismBase)mechanism;
- (id)_assertInStateAndStartMonitoring;
- (id)description;
- (void)_startMonitoringIfNeeded;
- (void)_stopMonitoringIfNeeded;
- (void)dealloc;
- (void)dropWithReason:(id)a3;
- (void)handleAssertionFailureWithReason:(id)a3 error:(id)a4;
- (void)handleAssertionSuccessWithReason:(id)a3;
@end

@implementation MechanismAssertion

- (MechanismAssertion)initWithMechanism:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MechanismAssertion;
  v5 = [(MechanismAssertion *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mechanism, v4);
    v7 = [v4 description];
    mechanismInitialDescription = v6->_mechanismInitialDescription;
    v6->_mechanismInitialDescription = v7;

    v9 = [(MechanismAssertion *)v6 mechanism];
    v10 = [v9 request];
    v11 = [v10 log];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = LALogForCategory();
    }

    log = v6->_log;
    v6->_log = v13;
  }

  return v6;
}

- (void)dealloc
{
  [(MechanismAssertion *)self dropWithReason:@"dealloc"];
  v3.receiver = self;
  v3.super_class = MechanismAssertion;
  [(MechanismAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MechanismAssertion *)self mechanism];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (post dealloc)", self->_mechanismInitialDescription];
  }

  v8 = [(MechanismAssertion *)self additionalDescription];
  v9 = [v3 stringWithFormat:@"<%@ on %@%@>", v5, v7, v8];

  if (!v6)
  {
  }

  return v9;
}

- (BOOL)acquireWithReason:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MechanismAssertion *)self _assertInStateAndStartMonitoring];
  if (!v7)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"successful acquisition for %@", v6];

    [(MechanismAssertion *)self handleAssertionSuccessWithReason:v11];
    self->_acquired = 1;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed acquisition for %@", v6];

  [(MechanismAssertion *)self handleAssertionFailureWithReason:v8 error:v7];
  if (a4)
  {
LABEL_3:
    v9 = v7;
    *a4 = v7;
  }

LABEL_4:

  return v7 == 0;
}

- (void)dropWithReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_acquired)
  {
    v5 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ dropped (%{public}@)", &v7, 0x16u);
    }

    [(MechanismAssertion *)self stopMonitoring];
    self->_acquired = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_assertInStateAndStartMonitoring
{
  [(MechanismAssertion *)self _startMonitoringIfNeeded];
  v3 = [(MechanismAssertion *)self assertInState];
  if (v3)
  {
    [(MechanismAssertion *)self _stopMonitoringIfNeeded];
  }

  return v3;
}

- (void)_startMonitoringIfNeeded
{
  if (!self->_monitoring)
  {
    [(MechanismAssertion *)self startMonitoring];
    self->_monitoring = 1;
  }
}

- (void)_stopMonitoringIfNeeded
{
  if (self->_monitoring)
  {
    [(MechanismAssertion *)self stopMonitoring];
    self->_monitoring = 0;
  }
}

- (void)handleAssertionSuccessWithReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ confirmed (%{public}@)", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAssertionFailureWithReason:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MechanismAssertion *)self handleAssertionFailureWithReason:v6 error:v8];
  }

  v9 = [(MechanismAssertion *)self mechanism];
  v10 = [v9 isRunning];

  if (v10)
  {
    v11 = [(MechanismAssertion *)self mechanism];
    [v11 failAuthenticationWithError:v7];
  }
}

- (MechanismBase)mechanism
{
  WeakRetained = objc_loadWeakRetained(&self->_mechanism);

  return WeakRetained;
}

- (void)handleAssertionFailureWithReason:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_238B95000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed (%{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end