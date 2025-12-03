@interface BiometryLockoutInvalidationSource
- (BiometryLockoutInvalidationSource)initWithPreflightCache:(id)cache;
- (id)invalidationReason;
- (void)updateStatus;
@end

@implementation BiometryLockoutInvalidationSource

- (BiometryLockoutInvalidationSource)initWithPreflightCache:(id)cache
{
  v4.receiver = self;
  v4.super_class = BiometryLockoutInvalidationSource;
  return [(DarwinNotificationInvalidationSource *)&v4 initWithPreflightCache:cache notificationName:"com.apple.BiometricKit.generalLockoutStateChanged"];
}

- (void)updateStatus
{
  v5 = +[(LACBiometryHelper *)BiometryHelper];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:geteuid()];
  initSimulatedForBiolockoutPreflight = [[EvaluationRequest alloc] initSimulatedForBiolockoutPreflight];
  -[PreflightCacheInvalidationSource setStatus:](self, "setStatus:", [v5 isLockedOutForUser:v3 request:initSimulatedForBiolockoutPreflight error:0]);
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  status = [(PreflightCacheInvalidationSource *)self status];
  v4 = "recovered from";
  if (status)
  {
    v4 = "entered";
  }

  return [v2 stringWithFormat:@"%s biometric lockout", v4];
}

@end