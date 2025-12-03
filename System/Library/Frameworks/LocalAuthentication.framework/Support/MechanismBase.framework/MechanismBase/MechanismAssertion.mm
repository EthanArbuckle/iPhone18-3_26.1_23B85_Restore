@interface MechanismAssertion
- (BOOL)acquireWithReason:(id)reason error:(id *)error;
- (MechanismAssertion)initWithMechanism:(id)mechanism;
- (MechanismBase)mechanism;
- (id)_assertInStateAndStartMonitoring;
- (id)description;
- (void)_startMonitoringIfNeeded;
- (void)_stopMonitoringIfNeeded;
- (void)dealloc;
- (void)dropWithReason:(id)reason;
- (void)handleAssertionFailureWithReason:(id)reason error:(id)error;
- (void)handleAssertionSuccessWithReason:(id)reason;
@end

@implementation MechanismAssertion

- (MechanismAssertion)initWithMechanism:(id)mechanism
{
  mechanismCopy = mechanism;
  v16.receiver = self;
  v16.super_class = MechanismAssertion;
  v5 = [(MechanismAssertion *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mechanism, mechanismCopy);
    v7 = [mechanismCopy description];
    mechanismInitialDescription = v6->_mechanismInitialDescription;
    v6->_mechanismInitialDescription = v7;

    mechanism = [(MechanismAssertion *)v6 mechanism];
    request = [mechanism request];
    v11 = [request log];
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
  mechanism = [(MechanismAssertion *)self mechanism];
  v7 = mechanism;
  if (!mechanism)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (post dealloc)", self->_mechanismInitialDescription];
  }

  additionalDescription = [(MechanismAssertion *)self additionalDescription];
  v9 = [v3 stringWithFormat:@"<%@ on %@%@>", v5, v7, additionalDescription];

  if (!mechanism)
  {
  }

  return v9;
}

- (BOOL)acquireWithReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  _assertInStateAndStartMonitoring = [(MechanismAssertion *)self _assertInStateAndStartMonitoring];
  if (!_assertInStateAndStartMonitoring)
  {
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"successful acquisition for %@", reasonCopy];

    [(MechanismAssertion *)self handleAssertionSuccessWithReason:reasonCopy];
    self->_acquired = 1;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  reasonCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed acquisition for %@", reasonCopy];

  [(MechanismAssertion *)self handleAssertionFailureWithReason:reasonCopy2 error:_assertInStateAndStartMonitoring];
  if (error)
  {
LABEL_3:
    v9 = _assertInStateAndStartMonitoring;
    *error = _assertInStateAndStartMonitoring;
  }

LABEL_4:

  return _assertInStateAndStartMonitoring == 0;
}

- (void)dropWithReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (self->_acquired)
  {
    v5 = [(MechanismAssertion *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = reasonCopy;
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
  assertInState = [(MechanismAssertion *)self assertInState];
  if (assertInState)
  {
    [(MechanismAssertion *)self _stopMonitoringIfNeeded];
  }

  return assertInState;
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

- (void)handleAssertionSuccessWithReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = reasonCopy;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ confirmed (%{public}@)", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAssertionFailureWithReason:(id)reason error:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  v8 = [(MechanismAssertion *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MechanismAssertion *)self handleAssertionFailureWithReason:reasonCopy error:v8];
  }

  mechanism = [(MechanismAssertion *)self mechanism];
  isRunning = [mechanism isRunning];

  if (isRunning)
  {
    mechanism2 = [(MechanismAssertion *)self mechanism];
    [mechanism2 failAuthenticationWithError:errorCopy];
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