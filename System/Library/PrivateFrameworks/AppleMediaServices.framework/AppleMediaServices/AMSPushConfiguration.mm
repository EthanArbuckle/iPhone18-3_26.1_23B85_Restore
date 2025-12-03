@interface AMSPushConfiguration
- (AMSPushConfiguration)initWithEnabledActionTypes:(id)types;
- (AMSPushHandlerDelegate)delegate;
@end

@implementation AMSPushConfiguration

- (AMSPushConfiguration)initWithEnabledActionTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = AMSPushConfiguration;
  v6 = [(AMSPushConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enabledActionTypes, types);
  }

  return v7;
}

- (AMSPushHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end