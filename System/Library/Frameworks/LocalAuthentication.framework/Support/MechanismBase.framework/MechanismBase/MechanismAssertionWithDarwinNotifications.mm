@interface MechanismAssertionWithDarwinNotifications
- (MechanismAssertionWithDarwinNotifications)initWithMechanism:(id)a3 inStateNotificationName:(id)a4 outStateNotificationName:(id)a5;
- (id)_notificationNameForInState:(BOOL)a3;
- (id)assertInState;
- (int)_notificationTokenForInState:(BOOL)a3;
- (void)handleAssertionFailureWithReason:(id)a3 error:(id)a4;
- (void)handleAssertionSuccessWithReason:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MechanismAssertionWithDarwinNotifications

- (MechanismAssertionWithDarwinNotifications)initWithMechanism:(id)a3 inStateNotificationName:(id)a4 outStateNotificationName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MechanismAssertionWithDarwinNotifications;
  v11 = [(MechanismAssertion *)&v14 initWithMechanism:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inStateNotificationName, a4);
    objc_storeStrong(&v12->_outStateNotificationName, a5);
    v12->_isInState = 1;
  }

  return v12;
}

- (id)assertInState
{
  if (self->_isInState)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:{@"Assertion failed", v2}];
  }

  return v4;
}

- (void)startMonitoring
{
  v3.receiver = self;
  v3.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v3 startMonitoring];
  [(MechanismAssertionWithDarwinNotifications *)self _registerDarwinNotificationForInState:1];
  [(MechanismAssertionWithDarwinNotifications *)self _registerDarwinNotificationForInState:0];
}

- (void)stopMonitoring
{
  v3.receiver = self;
  v3.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v3 stopMonitoring];
  [(MechanismAssertionWithDarwinNotifications *)self _unregisterDarwinNotificationForInstate:1];
  [(MechanismAssertionWithDarwinNotifications *)self _unregisterDarwinNotificationForInstate:0];
}

- (void)handleAssertionSuccessWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v4 handleAssertionSuccessWithReason:a3];
  self->_isInState = 1;
}

- (void)handleAssertionFailureWithReason:(id)a3 error:(id)a4
{
  v5.receiver = self;
  v5.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v5 handleAssertionFailureWithReason:a3 error:a4];
  self->_isInState = 0;
}

void __83__MechanismAssertionWithDarwinNotifications__registerDarwinNotificationForInState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    if (v3 == 1)
    {
      [WeakRetained handleAssertionSuccessWithReason:v4];
    }

    else
    {
      v5 = [WeakRetained assertInState];
      [v6 handleAssertionFailureWithReason:v4 error:v5];
    }

    WeakRetained = v6;
  }
}

- (id)_notificationNameForInState:(BOOL)a3
{
  if (a3)
  {
    [(MechanismAssertionWithDarwinNotifications *)self inStateNotificationName];
  }

  else
  {
    [(MechanismAssertionWithDarwinNotifications *)self outStateNotificationName];
  }
  v3 = ;

  return v3;
}

- (int)_notificationTokenForInState:(BOOL)a3
{
  v3 = &OBJC_IVAR___MechanismAssertionWithDarwinNotifications__outStateToken;
  if (a3)
  {
    v3 = &OBJC_IVAR___MechanismAssertionWithDarwinNotifications__inStateToken;
  }

  return (self + *v3);
}

- (void)_registerDarwinNotificationForInState:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_fault_impl(&dword_238B95000, log, OS_LOG_TYPE_FAULT, "Failed to register %{public}@: %u", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end