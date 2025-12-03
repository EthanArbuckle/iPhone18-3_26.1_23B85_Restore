@interface TPSSIMPasscodeBundleController
- (BOOL)isHidden;
- (TPSSIMPasscodeBundleController)initWithParentListController:(id)controller;
- (TPSSubscriberTelephonyController)subscriberController;
- (id)specifiers;
- (id)supportedSubscriptions;
@end

@implementation TPSSIMPasscodeBundleController

- (TPSSIMPasscodeBundleController)initWithParentListController:(id)controller
{
  v9.receiver = self;
  v9.super_class = TPSSIMPasscodeBundleController;
  v3 = [(TPSSIMPasscodeBundleController *)&v9 initWithParentListController:controller];
  v4 = v3;
  if (v3)
  {
    subscriptionContext = [(TPSSIMPasscodeBundleController *)v3 subscriptionContext];
    if (subscriptionContext)
    {
      v6 = [[TPSSubscriberTelephonyController alloc] initWithSubscriptionContext:subscriptionContext];
      subscriberController = v4->_subscriberController;
      v4->_subscriberController = v6;
    }
  }

  return v4;
}

- (TPSSubscriberTelephonyController)subscriberController
{
  if (!self->_subscriberController)
  {
    subscriptionContext = [(TPSSIMPasscodeBundleController *)self subscriptionContext];

    if (subscriptionContext)
    {
      v4 = [TPSSubscriberTelephonyController alloc];
      subscriptionContext2 = [(TPSSIMPasscodeBundleController *)self subscriptionContext];
      v6 = [v4 initWithSubscriptionContext:subscriptionContext2];
      subscriberController = self->_subscriberController;
      self->_subscriberController = v6;
    }
  }

  v8 = self->_subscriberController;

  return v8;
}

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"BUNDLE_CONTROLLER_ROOT_SPECIFIER_TITLE"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v6 setIdentifier:@"SIM_PASSCODE_TELEPHONY_SETTINGS"];
    [v4 addObject:v6];
    v7 = [v4 copy];
    v8 = self->_specifiers;
    self->_specifiers = v7;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = TPSSIMPasscodeBundleController;
  if ([(TPSSIMPasscodeBundleController *)&v3 isHidden])
  {
    return 1;
  }

  else
  {
    return +[UIApplication isRunningInStoreDemoMode];
  }
}

- (id)supportedSubscriptions
{
  supportedSubscriptions = self->_supportedSubscriptions;
  if (!supportedSubscriptions)
  {
    v23.receiver = self;
    v23.super_class = TPSSIMPasscodeBundleController;
    subscriptions = [(TPSSIMPasscodeBundleController *)&v23 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [subscriptions count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = subscriptions;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if (([v11 isSimHidden] & 1) == 0)
          {
            telephonyController = [(TPSSIMPasscodeBundleController *)self telephonyController];
            telephonyClient = [telephonyController telephonyClient];
            v14 = [telephonyClient shouldAllowSimLockFor:v11];

            if ([v14 BOOLValue])
            {
              [v5 addObject:v11];
            }

            else
            {
              v15 = TPSSIMPasscodeLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v25 = v14;
                v26 = 2112;
                v27 = v11;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "SIM Lock is not allowed (%@); excluding subscription %@.", buf, 0x16u);
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v8);
    }

    v16 = [v5 copy];
    v17 = self->_supportedSubscriptions;
    self->_supportedSubscriptions = v16;

    supportedSubscriptions = self->_supportedSubscriptions;
  }

  return supportedSubscriptions;
}

@end