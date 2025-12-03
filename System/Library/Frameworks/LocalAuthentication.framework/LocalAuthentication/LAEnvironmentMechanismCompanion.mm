@interface LAEnvironmentMechanismCompanion
- (LAEnvironmentMechanismCompanion)initWithCoreMechanism:(id)mechanism;
- (NSData)stateHash;
- (int64_t)companionType;
@end

@implementation LAEnvironmentMechanismCompanion

- (LAEnvironmentMechanismCompanion)initWithCoreMechanism:(id)mechanism
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismCompanion;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:mechanism];
}

- (int64_t)companionType
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  companionType = [coreMechanism companionType];

  return companionType;
}

- (NSData)stateHash
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  stateHash = [coreMechanism stateHash];

  return stateHash;
}

@end