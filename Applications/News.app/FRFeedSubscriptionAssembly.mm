@interface FRFeedSubscriptionAssembly
- (FRFeedSubscriptionAssembly)init;
- (FRFeedSubscriptionAssembly)initWithWindow:(id)window;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRFeedSubscriptionAssembly

- (FRFeedSubscriptionAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRFeedSubscriptionAssembly;
  return [(FRFeedSubscriptionAssembly *)&v3 init];
}

- (FRFeedSubscriptionAssembly)initWithWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FB1C();
  }

  v9.receiver = self;
  v9.super_class = FRFeedSubscriptionAssembly;
  v6 = [(FRFeedSubscriptionAssembly *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_window, window);
  }

  return v7;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&OBJC_PROTOCOL___FREnableNotificationsAlertPresenter factory:&stru_1000C4228];
  v6 = [v5 inScope:2];

  privateContainer = [registryCopy privateContainer];

  v7 = [privateContainer registerClass:objc_opt_class() factory:&stru_1000C4268];
}

@end