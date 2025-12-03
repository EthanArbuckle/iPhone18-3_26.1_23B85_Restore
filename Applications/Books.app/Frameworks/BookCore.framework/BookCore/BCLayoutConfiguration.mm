@interface BCLayoutConfiguration
- (BCLayoutConfiguration)initWithViewController:(id)controller configurationEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BCLayoutConfiguration

- (BCLayoutConfiguration)initWithViewController:(id)controller configurationEnvironment:(id)environment
{
  controllerCopy = controller;
  environmentCopy = environment;
  if (!environmentCopy)
  {
    environmentCopy = [[BCLayoutConfigurationEnvironment alloc] initWithViewController:controllerCopy];
  }

  v11.receiver = self;
  v11.super_class = BCLayoutConfiguration;
  v8 = [(BCLayoutConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_environment, environmentCopy);
    objc_storeWeak(&v9->_viewController, controllerCopy);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  environment = [(BCLayoutConfiguration *)self environment];
  v8 = [environment copyWithZone:zone];
  v9 = [v5 initWithViewController:WeakRetained configurationEnvironment:v8];

  return v9;
}

- (BOOL)isEqualToLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = objc_loadWeakRetained(configurationCopy + 1);
  if (WeakRetained == v6)
  {
    environment = self->_environment;
    if (environment == configurationCopy[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(BCLayoutConfigurationEnvironment *)environment isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCLayoutConfiguration *)self isEqualToLayoutConfiguration:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  environment = [(BCLayoutConfiguration *)self environment];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  weakRetained = [NSString stringWithFormat:@"<%@:%p environment:%@, viewController:%@>", v4, self, environment, WeakRetained];

  return weakRetained;
}

@end