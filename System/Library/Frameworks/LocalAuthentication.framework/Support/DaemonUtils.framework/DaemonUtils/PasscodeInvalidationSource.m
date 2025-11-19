@interface PasscodeInvalidationSource
- (PasscodeInvalidationSource)initWithPreflightCache:(id)a3;
- (id)invalidationReason;
- (void)dealloc;
- (void)updateStatus;
@end

@implementation PasscodeInvalidationSource

- (PasscodeInvalidationSource)initWithPreflightCache:(id)a3
{
  v6.receiver = self;
  v6.super_class = PasscodeInvalidationSource;
  v3 = [(PreflightCacheInvalidationSource *)&v6 initWithPreflightCache:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D24090] sharedInstance];
    [v4 addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D24090] sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PasscodeInvalidationSource;
  [(PasscodeInvalidationSource *)&v4 dealloc];
}

- (void)updateStatus
{
  v3 = [MEMORY[0x277D24090] sharedInstance];
  -[PreflightCacheInvalidationSource setStatus:](self, "setStatus:", [v3 isPasscodeSet]);
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PreflightCacheInvalidationSource *)self status];
  v4 = "off";
  if (v3)
  {
    v4 = "on";
  }

  return [v2 stringWithFormat:@"passcode was turned %s", v4];
}

@end