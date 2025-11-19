@interface LAEnvironmentMechanismCompanion
- (LAEnvironmentMechanismCompanion)initWithCoreMechanism:(id)a3;
- (NSData)stateHash;
- (int64_t)companionType;
@end

@implementation LAEnvironmentMechanismCompanion

- (LAEnvironmentMechanismCompanion)initWithCoreMechanism:(id)a3
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismCompanion;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:a3];
}

- (int64_t)companionType
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 companionType];

  return v3;
}

- (NSData)stateHash
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 stateHash];

  return v3;
}

@end