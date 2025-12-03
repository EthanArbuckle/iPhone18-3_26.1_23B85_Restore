@interface APBaseShieldViewConfig
- (APBaseShieldViewConfig)initWithApplication:(id)application;
- (APBaseShieldViewDelegate)delegate;
@end

@implementation APBaseShieldViewConfig

- (APBaseShieldViewConfig)initWithApplication:(id)application
{
  applicationCopy = application;
  v8.receiver = self;
  v8.super_class = APBaseShieldViewConfig;
  v5 = [(APBaseShieldViewConfig *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(APBaseShieldViewConfig *)v5 setApplication:applicationCopy];
  }

  return v6;
}

- (APBaseShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end