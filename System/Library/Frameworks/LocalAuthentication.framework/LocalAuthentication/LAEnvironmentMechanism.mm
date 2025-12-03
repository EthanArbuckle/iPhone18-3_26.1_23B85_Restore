@interface LAEnvironmentMechanism
- (BOOL)isEqual:(id)equal;
- (BOOL)isUsable;
- (LAEnvironmentMechanism)initWithCoreMechanism:(id)mechanism;
- (NSString)iconSystemName;
- (NSString)localizedName;
- (id)availabilityError;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation LAEnvironmentMechanism

- (BOOL)isUsable
{
  v2 = MEMORY[0x1E69AD268];
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  availabilityError = [coreMechanism availabilityError];
  LOBYTE(v2) = [v2 error:availabilityError hasCode:*MEMORY[0x1E69AD118]];

  return v2;
}

- (LAEnvironmentMechanism)initWithCoreMechanism:(id)mechanism
{
  mechanismCopy = mechanism;
  if (mechanismCopy)
  {
    v10.receiver = self;
    v10.super_class = LAEnvironmentMechanism;
    v6 = [(LAEnvironmentMechanism *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_coreMechanism, mechanism);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  v6 = [v4 initWithCoreMechanism:coreMechanism];

  return v6;
}

- (id)description
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [coreMechanism description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
      coreMechanism2 = [(LAEnvironmentMechanism *)equalCopy coreMechanism];
      v7 = [coreMechanism isEqual:coreMechanism2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)localizedName
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  localizedName = [coreMechanism localizedName];

  return localizedName;
}

- (NSString)iconSystemName
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  iconSystemName = [coreMechanism iconSystemName];

  return iconSystemName;
}

- (id)availabilityError
{
  coreMechanism = [(LAEnvironmentMechanism *)self coreMechanism];
  availabilityError = [coreMechanism availabilityError];

  return availabilityError;
}

@end