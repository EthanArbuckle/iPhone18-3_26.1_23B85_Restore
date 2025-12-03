@interface BLSHAssertionAttributeTimer
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSDurationAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
- (void)_with_lock_cancel;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)startTimer;
@end

@implementation BLSHAssertionAttributeTimer

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  if ([attributeCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = off_27841DF40;
LABEL_7:
    v12 = [objc_alloc(*v11) initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];
    [(BLSHAssertionAttributeTimer *)v12 startTimer];
    goto LABEL_8;
  }

  if ([attributeCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = off_27841E038;
    goto LABEL_7;
  }

  if ([attributeCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = off_27841E020;
    goto LABEL_7;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"invalid class (not BLSDurationAttribute subclass) of attribute:%@", attributeCopy}];
  v12 = 0;
LABEL_8:

  return v12;
}

- (void)startTimer
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 48));
    [WeakRetained duration];
    if (v3 > 0.0)
    {
      v4 = v3;
      objc_initWeak(&location, self);
      os_unfair_lock_lock((self + 8));
      v5 = objc_loadWeakRetained((self + 40));
      osInterfaceProvider = [v5 osInterfaceProvider];
      v7 = [WeakRetained description];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __41__BLSHAssertionAttributeTimer_startTimer__block_invoke;
      v10[3] = &unk_27841F898;
      objc_copyWeak(&v11, &location);
      v8 = [osInterfaceProvider scheduledTimerWithIdentifier:v7 interval:v10 leewayInterval:v4 handler:v4 * 0.1];
      v9 = *(self + 16);
      *(self + 16) = v8;

      os_unfair_lock_unlock((self + 8));
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = BLSHAssertionAttributeTimer;
  v11 = [(BLSHAssertionAttributeTimer *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_attribute, attributeCopy);
    objc_storeWeak(p_isa + 4, assertionCopy);
    objc_storeWeak(p_isa + 5, serviceCopy);
  }

  return p_isa;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"BLSHAssertionAttributeTimer must be invalidated before dealloc:%@", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"BLSHDurationAttributeHandler.m";
    v16 = 1024;
    v17 = 102;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __41__BLSHAssertionAttributeTimer_startTimer__block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  [(BLSHAssertionAttributeTimer *)self _with_lock_cancel];

  os_unfair_lock_unlock(&self->_lock);
}

- (BLSAssertionServiceResponding)assertion
{
  WeakRetained = objc_loadWeakRetained(&self->_assertion);

  return WeakRetained;
}

- (BLSHAssertionAttributeHandlerService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BLSDurationAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

- (void)_with_lock_cancel
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    [*(self + 16) invalidate];
    v2 = *(self + 16);
    *(self + 16) = 0;
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  [(BLSHAssertionAttributeTimer *)self _with_lock_cancel];

  os_unfair_lock_unlock(&self->_lock);
}

@end