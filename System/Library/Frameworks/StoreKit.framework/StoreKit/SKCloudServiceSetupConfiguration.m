@interface SKCloudServiceSetupConfiguration
- (BOOL)isEqual:(id)a3;
- (SKCloudServiceSetupConfiguration)init;
- (SKCloudServiceSetupConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKCloudServiceSetupConfiguration

- (SKCloudServiceSetupConfiguration)init
{
  v7.receiver = self;
  v7.super_class = SKCloudServiceSetupConfiguration;
  v2 = [(SKCloudServiceSetupConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    applicationIdentifier = v2->_applicationIdentifier;
    v2->_applicationIdentifier = &stru_1F29BCE20;

    applicationVersion = v3->_applicationVersion;
    v3->_applicationVersion = &stru_1F29BCE20;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  if (self->_applicationIdentifier)
  {
    [v6 appendFormat:@"; applicationIdentifier = %@", self->_applicationIdentifier];
  }

  if (self->_applicationVersion)
  {
    [v6 appendFormat:@"; applicationVersion = %@", self->_applicationVersion];
  }

  if (self->_targetsFinanceApplication)
  {
    [v6 appendFormat:@"; targetsFinanceApplication = %@", @"YES"];
  }

  if (self->_forPublicSDK)
  {
    [v6 appendFormat:@"; forPublicSDK = %@", @"YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      applicationIdentifier = self->_applicationIdentifier;
      v8 = (applicationIdentifier == v5->_applicationIdentifier || [(NSString *)applicationIdentifier isEqual:?]) && ((applicationVersion = self->_applicationVersion, applicationVersion == v5->_applicationVersion) || [(NSString *)applicationVersion isEqualToString:?]) && self->_targetsFinanceApplication == v5->_targetsFinanceApplication && self->_forPublicSDK == v5->_forPublicSDK;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_applicationIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_applicationVersion copy];
  v8 = v4[3];
  v4[3] = v7;

  *(v4 + 8) = self->_targetsFinanceApplication;
  *(v4 + 9) = self->_forPublicSDK;
  return v4;
}

- (SKCloudServiceSetupConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKCloudServiceSetupConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    v7 = [v6 copy];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationVersion"];
    v10 = [v9 copy];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v10;

    v5->_targetsFinanceApplication = [v4 decodeBoolForKey:@"targetsFinanceApplication"];
    v5->_forPublicSDK = [v4 decodeBoolForKey:@"forPublicSDK"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeObject:self->_applicationVersion forKey:@"applicationVersion"];
  [v5 encodeBool:self->_targetsFinanceApplication forKey:@"targetsFinanceApplication"];
  [v5 encodeBool:self->_forPublicSDK forKey:@"forPublicSDK"];
}

@end