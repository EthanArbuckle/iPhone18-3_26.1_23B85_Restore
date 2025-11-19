@interface APBaseShieldViewConfig
- (APBaseShieldViewConfig)initWithApplication:(id)a3;
- (APBaseShieldViewDelegate)delegate;
@end

@implementation APBaseShieldViewConfig

- (APBaseShieldViewConfig)initWithApplication:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APBaseShieldViewConfig;
  v5 = [(APBaseShieldViewConfig *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(APBaseShieldViewConfig *)v5 setApplication:v4];
  }

  return v6;
}

- (APBaseShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end