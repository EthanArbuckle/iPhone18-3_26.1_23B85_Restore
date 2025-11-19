@interface LAEnvironmentMechanismBiometry
- (BOOL)builtInSensorInaccessible;
- (BOOL)isEnrolled;
- (BOOL)isLockedOut;
- (LAEnvironmentMechanismBiometry)initWithCoreMechanism:(id)a3;
- (NSData)stateHash;
- (id)unsaltedStateHash;
- (int64_t)approvalState;
- (int64_t)biometryType;
@end

@implementation LAEnvironmentMechanismBiometry

- (BOOL)isLockedOut
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 lockedOut];

  return v3;
}

- (LAEnvironmentMechanismBiometry)initWithCoreMechanism:(id)a3
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismBiometry;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:a3];
}

- (int64_t)biometryType
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 biometryType];

  return v3;
}

- (BOOL)isEnrolled
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 enrolled];

  return v3;
}

- (NSData)stateHash
{
  v2 = MEMORY[0x1E69AD258];
  v3 = [(LAEnvironmentMechanismBiometry *)self unsaltedStateHash];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v2 saltHash:v3 withBundleID:v5];

  return v6;
}

- (id)unsaltedStateHash
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 stateHash];

  return v3;
}

- (BOOL)builtInSensorInaccessible
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 sensorInaccessible];

  return v3;
}

- (int64_t)approvalState
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 approvalState];

  return v3;
}

@end