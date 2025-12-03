@interface TKTokenConfigurationConnectionProxy
- (TKTokenConfigurationConnectionProxy)initWithConnection:(id)connection;
- (void)tokenConfigurationChanged:(id)changed;
@end

@implementation TKTokenConfigurationConnectionProxy

- (TKTokenConfigurationConnectionProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = TKTokenConfigurationConnectionProxy;
  v5 = [(TKTokenConfigurationConnectionProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakConfigurationConnection, connectionCopy);
  }

  return v6;
}

- (void)tokenConfigurationChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_weakConfigurationConnection);
  [WeakRetained tokenConfigurationChanged:changedCopy];
}

@end