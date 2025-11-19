@interface LAEnvironmentMechanism
- (BOOL)isEqual:(id)a3;
- (BOOL)isUsable;
- (LAEnvironmentMechanism)initWithCoreMechanism:(id)a3;
- (NSString)iconSystemName;
- (NSString)localizedName;
- (id)availabilityError;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation LAEnvironmentMechanism

- (BOOL)isUsable
{
  v2 = MEMORY[0x1E69AD268];
  v3 = [(LAEnvironmentMechanism *)self coreMechanism];
  v4 = [v3 availabilityError];
  LOBYTE(v2) = [v2 error:v4 hasCode:*MEMORY[0x1E69AD118]];

  return v2;
}

- (LAEnvironmentMechanism)initWithCoreMechanism:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = LAEnvironmentMechanism;
    v6 = [(LAEnvironmentMechanism *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_coreMechanism, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LAEnvironmentMechanism *)self coreMechanism];
  v6 = [v4 initWithCoreMechanism:v5];

  return v6;
}

- (id)description
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(LAEnvironmentMechanism *)self coreMechanism];
      v6 = [(LAEnvironmentMechanism *)v4 coreMechanism];
      v7 = [v5 isEqual:v6];
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
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)iconSystemName
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 iconSystemName];

  return v3;
}

- (id)availabilityError
{
  v2 = [(LAEnvironmentMechanism *)self coreMechanism];
  v3 = [v2 availabilityError];

  return v3;
}

@end