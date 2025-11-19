@interface BCLayoutConfiguration
- (BCLayoutConfiguration)initWithViewController:(id)a3 configurationEnvironment:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation BCLayoutConfiguration

- (BCLayoutConfiguration)initWithViewController:(id)a3 configurationEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [[BCLayoutConfigurationEnvironment alloc] initWithViewController:v6];
  }

  v11.receiver = self;
  v11.super_class = BCLayoutConfiguration;
  v8 = [(BCLayoutConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_environment, v7);
    objc_storeWeak(&v9->_viewController, v6);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = [(BCLayoutConfiguration *)self environment];
  v8 = [v7 copyWithZone:a3];
  v9 = [v5 initWithViewController:WeakRetained configurationEnvironment:v8];

  return v9;
}

- (BOOL)isEqualToLayoutConfiguration:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = objc_loadWeakRetained(v4 + 1);
  if (WeakRetained == v6)
  {
    environment = self->_environment;
    if (environment == v4[2])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCLayoutConfiguration *)self isEqualToLayoutConfiguration:v4];
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
  v5 = [(BCLayoutConfiguration *)self environment];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = [NSString stringWithFormat:@"<%@:%p environment:%@, viewController:%@>", v4, self, v5, WeakRetained];

  return v7;
}

@end