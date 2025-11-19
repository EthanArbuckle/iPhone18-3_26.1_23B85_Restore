@interface TKTokenConfigurationConnectionProxy
- (TKTokenConfigurationConnectionProxy)initWithConnection:(id)a3;
- (void)tokenConfigurationChanged:(id)a3;
@end

@implementation TKTokenConfigurationConnectionProxy

- (TKTokenConfigurationConnectionProxy)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TKTokenConfigurationConnectionProxy;
  v5 = [(TKTokenConfigurationConnectionProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakConfigurationConnection, v4);
  }

  return v6;
}

- (void)tokenConfigurationChanged:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakConfigurationConnection);
  [WeakRetained tokenConfigurationChanged:v4];
}

@end