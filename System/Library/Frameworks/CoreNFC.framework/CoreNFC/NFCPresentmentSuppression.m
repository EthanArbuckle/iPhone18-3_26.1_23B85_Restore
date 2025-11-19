@interface NFCPresentmentSuppression
+ (id)assertionWithAssertion:(id)a3 delegate:(id)a4;
- (NFCPresentmentSuppression)initWithAssertion:(id)a3 delegate:(id)a4;
- (void)invalidate;
- (void)startAssertion:(double)a3;
- (void)startCooldown:(double)a3;
@end

@implementation NFCPresentmentSuppression

- (NFCPresentmentSuppression)initWithAssertion:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NFCPresentmentSuppression;
  v9 = [(NFCPresentmentSuppression *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertion, a3);
    v10->_delegate = v8;
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

+ (id)assertionWithAssertion:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NFCPresentmentSuppression alloc] initWithAssertion:v6 delegate:v5];

  return v7;
}

- (void)startAssertion:(double)a3
{
  if (a3 >= 15.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 15.0;
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D82BA0]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2372B1A40;
  v12 = &unk_278A29CA8;
  v13 = self;
  v14[1] = a2;
  objc_copyWeak(v14, &location);
  v7 = [v6 initWithCallback:&v9 queue:self->_timerQueue];
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = v7;

  [(NFTimer *)self->_assertionTimer startTimer:v5, v9, v10, v11, v12, v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)startCooldown:(double)a3
{
  if (a3 >= 15.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 15.0;
  }

  [(NFTimer *)self->_assertionTimer stopTimer];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D82BA0]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2372B1CCC;
  v12 = &unk_278A29CA8;
  v13 = self;
  v14[1] = a2;
  objc_copyWeak(v14, &location);
  v7 = [v6 initWithCallback:&v9 queue:self->_timerQueue];
  cooldownTimer = self->_cooldownTimer;
  self->_cooldownTimer = v7;

  [(NFTimer *)self->_cooldownTimer startTimer:v5, v9, v10, v11, v12, v13];
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