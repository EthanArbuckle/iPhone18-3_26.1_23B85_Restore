@interface PasscodeInvalidationSource
- (PasscodeInvalidationSource)initWithPreflightCache:(id)cache;
- (id)invalidationReason;
- (void)dealloc;
- (void)updateStatus;
@end

@implementation PasscodeInvalidationSource

- (PasscodeInvalidationSource)initWithPreflightCache:(id)cache
{
  v6.receiver = self;
  v6.super_class = PasscodeInvalidationSource;
  v3 = [(PreflightCacheInvalidationSource *)&v6 initWithPreflightCache:cache];
  if (v3)
  {
    mEMORY[0x277D24090] = [MEMORY[0x277D24090] sharedInstance];
    [mEMORY[0x277D24090] addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  mEMORY[0x277D24090] = [MEMORY[0x277D24090] sharedInstance];
  [mEMORY[0x277D24090] removeObserver:self];

  v4.receiver = self;
  v4.super_class = PasscodeInvalidationSource;
  [(PasscodeInvalidationSource *)&v4 dealloc];
}

- (void)updateStatus
{
  mEMORY[0x277D24090] = [MEMORY[0x277D24090] sharedInstance];
  -[PreflightCacheInvalidationSource setStatus:](self, "setStatus:", [mEMORY[0x277D24090] isPasscodeSet]);
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  status = [(PreflightCacheInvalidationSource *)self status];
  v4 = "off";
  if (status)
  {
    v4 = "on";
  }

  return [v2 stringWithFormat:@"passcode was turned %s", v4];
}

@end