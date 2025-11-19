@interface LAEnvironmentMechanismUserPassword
- (BOOL)isSet;
- (LAEnvironmentMechanismUserPassword)initWithCoreMechanism:(id)a3;
@end

@implementation LAEnvironmentMechanismUserPassword

- (LAEnvironmentMechanismUserPassword)initWithCoreMechanism:(id)a3
{
  v4.receiver = self;
  v4.super_class = LAEnvironmentMechanismUserPassword;
  return [(LAEnvironmentMechanism *)&v4 initWithCoreMechanism:a3];
}

- (BOOL)isSet
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 set];

  return v3;
}

@end