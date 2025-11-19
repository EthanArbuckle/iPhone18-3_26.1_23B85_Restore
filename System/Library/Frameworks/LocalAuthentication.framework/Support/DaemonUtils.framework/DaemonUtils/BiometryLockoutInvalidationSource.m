@interface BiometryLockoutInvalidationSource
- (BiometryLockoutInvalidationSource)initWithPreflightCache:(id)a3;
- (id)invalidationReason;
- (void)updateStatus;
@end

@implementation BiometryLockoutInvalidationSource

- (BiometryLockoutInvalidationSource)initWithPreflightCache:(id)a3
{
  v4.receiver = self;
  v4.super_class = BiometryLockoutInvalidationSource;
  return [(DarwinNotificationInvalidationSource *)&v4 initWithPreflightCache:a3 notificationName:"com.apple.BiometricKit.generalLockoutStateChanged"];
}

- (void)updateStatus
{
  v5 = +[(LACBiometryHelper *)BiometryHelper];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:geteuid()];
  v4 = [[EvaluationRequest alloc] initSimulatedForBiolockoutPreflight];
  -[PreflightCacheInvalidationSource setStatus:](self, "setStatus:", [v5 isLockedOutForUser:v3 request:v4 error:0]);
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PreflightCacheInvalidationSource *)self status];
  v4 = "recovered from";
  if (v3)
  {
    v4 = "entered";
  }

  return [v2 stringWithFormat:@"%s biometric lockout", v4];
}

@end