@interface FRFeedSubscriptionAssembly
- (FRFeedSubscriptionAssembly)init;
- (FRFeedSubscriptionAssembly)initWithWindow:(id)a3;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRFeedSubscriptionAssembly

- (FRFeedSubscriptionAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRFeedSubscriptionAssembly;
  return [(FRFeedSubscriptionAssembly *)&v3 init];
}

- (FRFeedSubscriptionAssembly)initWithWindow:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FB1C();
  }

  v9.receiver = self;
  v9.super_class = FRFeedSubscriptionAssembly;
  v6 = [(FRFeedSubscriptionAssembly *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_window, a3);
  }

  return v7;
}

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&OBJC_PROTOCOL___FREnableNotificationsAlertPresenter factory:&stru_1000C4228];
  v6 = [v5 inScope:2];

  v8 = [v3 privateContainer];

  v7 = [v8 registerClass:objc_opt_class() factory:&stru_1000C4268];
}

@end