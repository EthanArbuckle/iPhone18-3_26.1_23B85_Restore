@interface LAEnvironmentMechanismBiometry
- (BOOL)builtInSensorInaccessible;
- (BOOL)isEnrolled;
- (BOOL)isLockedOut;
- (LAEnvironmentMechanismBiometry)initWithCoreMechanism:(id)mechanism;
- (NSData)stateHash;
- (id)unsaltedStateHash;
- (int64_t)approvalState;
- (int64_t)biometryType;
@end

@implementation LAEnvironmentMechanismBiometry

- (BOOL)isLockedOut
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  lockedOut = [coreMechanism lockedOut];

  return lockedOut;
}

- (LAEnvironmentMechanismBiometry)initWithCoreMechanism:(id)mechanism
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismBiometry;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:mechanism];
}

- (int64_t)biometryType
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  biometryType = [coreMechanism biometryType];

  return biometryType;
}

- (BOOL)isEnrolled
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  enrolled = [coreMechanism enrolled];

  return enrolled;
}

- (NSData)stateHash
{
  v2 = MEMORY[0x1E69AD258];
  unsaltedStateHash = [(LAEnvironmentMechanismBiometry *)self unsaltedStateHash];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [v2 saltHash:unsaltedStateHash withBundleID:bundleIdentifier];

  return v6;
}

- (id)unsaltedStateHash
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  stateHash = [coreMechanism stateHash];

  return stateHash;
}

- (BOOL)builtInSensorInaccessible
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  sensorInaccessible = [coreMechanism sensorInaccessible];

  return sensorInaccessible;
}

- (int64_t)approvalState
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  approvalState = [coreMechanism approvalState];

  return approvalState;
}

@end