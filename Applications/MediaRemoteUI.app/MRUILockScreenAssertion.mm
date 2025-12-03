@interface MRUILockScreenAssertion
- (MRUILockScreenAssertion)initWithAnimated:(BOOL)animated;
- (void)acquire;
- (void)dealloc;
- (void)delayAcquire;
- (void)invalidate;
@end

@implementation MRUILockScreenAssertion

- (MRUILockScreenAssertion)initWithAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = MRUILockScreenAssertion;
  v4 = [(MRUILockScreenAssertion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_animated = animated;
    [(MRUILockScreenAssertion *)v4 acquire];
  }

  return v5;
}

- (void)acquire
{
  self->_valid = 1;
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(SBSBackgroundContentDefinition);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000025B0;
  v8 = &unk_10005D688;
  objc_copyWeak(&v9, &location);
  v4 = [SBSLockScreenBackgroundContentAssertion acquireBackgroundContentAssertionWithDefinition:v3 errorHandler:&v5];
  [(MRUILockScreenAssertion *)self setBackgroundContentAssertion:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)delayAcquire
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000270C;
  block[3] = &unk_10005D6B0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)invalidate
{
  backgroundContentAssertion = [(MRUILockScreenAssertion *)self backgroundContentAssertion];
  [backgroundContentAssertion invalidate];

  [(MRUILockScreenAssertion *)self setBackgroundContentAssertion:0];
  self->_valid = 0;
}

- (void)dealloc
{
  [(MRUILockScreenAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MRUILockScreenAssertion;
  [(MRUILockScreenAssertion *)&v3 dealloc];
}

@end