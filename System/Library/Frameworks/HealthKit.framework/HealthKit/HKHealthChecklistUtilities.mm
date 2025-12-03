@interface HKHealthChecklistUtilities
+ (id)shared;
- (BOOL)isEmergencySOSAvailable;
- (BOOL)isHealthAppVisibleAndInstalled;
- (BOOL)isHealthChecklistAvailable;
- (BOOL)isMedicalIDAvailable;
@end

@implementation HKHealthChecklistUtilities

+ (id)shared
{
  v2 = objc_alloc_init(HKHealthChecklistUtilities);

  return v2;
}

- (BOOL)isHealthChecklistAvailable
{
  isHealthAppVisibleAndInstalled = [(HKHealthChecklistUtilities *)self isHealthAppVisibleAndInstalled];
  if (isHealthAppVisibleAndInstalled)
  {
    isMedicalIDAvailable = [(HKHealthChecklistUtilities *)self isMedicalIDAvailable];
    LOBYTE(isHealthAppVisibleAndInstalled) = isMedicalIDAvailable & [(HKHealthChecklistUtilities *)self isEmergencySOSAvailable];
  }

  return isHealthAppVisibleAndInstalled;
}

- (BOOL)isHealthAppVisibleAndInstalled
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier == @"com.apple.Health")
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v4 = +[_HKBehavior sharedBehavior];
    v5 = [v4 healthAppHiddenOrNotInstalled] ^ 1;
  }

  return v5;
}

- (BOOL)isMedicalIDAvailable
{
  v2 = +[_HKBehavior sharedBehavior];
  isiPad = [v2 isiPad];

  if (isiPad)
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

- (BOOL)isEmergencySOSAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSOSManagerClass_softClass;
  v9 = getSOSManagerClass_softClass;
  if (!getSOSManagerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSOSManagerClass_block_invoke;
    v5[3] = &unk_1E7378388;
    v5[4] = &v6;
    __getSOSManagerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 deviceSupportsSOS];
}

@end