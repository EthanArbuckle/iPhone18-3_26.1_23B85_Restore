@interface NFCPresentmentSuppression
+ (id)assertionWithAssertion:(id)assertion delegate:(id)delegate;
- (NFCPresentmentSuppression)initWithAssertion:(id)assertion delegate:(id)delegate;
- (void)invalidate;
- (void)startAssertion:(double)assertion;
- (void)startCooldown:(double)cooldown;
@end

@implementation NFCPresentmentSuppression

- (NFCPresentmentSuppression)initWithAssertion:(id)assertion delegate:(id)delegate
{
  assertionCopy = assertion;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = NFCPresentmentSuppression;
  v9 = [(NFCPresentmentSuppression *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertion, assertion);
    v10->_delegate = delegateCopy;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.corenfc.presentment.suppression.timer", v11);
    timerQueue = v10->_timerQueue;
    v10->_timerQueue = v12;

    v14 = [MEMORY[0x277CCABB0] numberWithInt:arc4random()];
    externalHandle = v10->_externalHandle;
    v10->_externalHandle = v14;

    v16 = v10;
  }

  return v10;
}

+ (id)assertionWithAssertion:(id)assertion delegate:(id)delegate
{
  delegateCopy = delegate;
  assertionCopy = assertion;
  v7 = [[NFCPresentmentSuppression alloc] initWithAssertion:assertionCopy delegate:delegateCopy];

  return v7;
}

- (void)startAssertion:(double)assertion
{
  if (assertion >= 15.0)
  {
    assertionCopy = assertion;
  }

  else
  {
    assertionCopy = 15.0;
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D82BA0]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2372B1A40;
  v12 = &unk_278A29CA8;
  selfCopy = self;
  v14[1] = a2;
  objc_copyWeak(v14, &location);
  v7 = [v6 initWithCallback:&v9 queue:self->_timerQueue];
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = v7;

  [(NFTimer *)self->_assertionTimer startTimer:assertionCopy, v9, v10, v11, v12, selfCopy];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)startCooldown:(double)cooldown
{
  if (cooldown >= 15.0)
  {
    cooldownCopy = cooldown;
  }

  else
  {
    cooldownCopy = 15.0;
  }

  [(NFTimer *)self->_assertionTimer stopTimer];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D82BA0]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2372B1CCC;
  v12 = &unk_278A29CA8;
  selfCopy = self;
  v14[1] = a2;
  objc_copyWeak(v14, &location);
  v7 = [v6 initWithCallback:&v9 queue:self->_timerQueue];
  cooldownTimer = self->_cooldownTimer;
  self->_cooldownTimer = v7;

  [(NFTimer *)self->_cooldownTimer startTimer:cooldownCopy, v9, v10, v11, v12, selfCopy];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  [(NFTimer *)self->_assertionTimer stopTimer];
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = 0;

  [(NFTimer *)self->_cooldownTimer stopTimer];
  cooldownTimer = self->_cooldownTimer;
  self->_cooldownTimer = 0;
}

@end