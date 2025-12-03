@interface LAEnvironmentMechanismUserPassword
- (BOOL)isSet;
- (LAEnvironmentMechanismUserPassword)initWithCoreMechanism:(id)mechanism;
@end

@implementation LAEnvironmentMechanismUserPassword

- (LAEnvironmentMechanismUserPassword)initWithCoreMechanism:(id)mechanism
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismUserPassword;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:mechanism];
}

- (BOOL)isSet
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [coreMechanism set];

  return v3;
}

@end