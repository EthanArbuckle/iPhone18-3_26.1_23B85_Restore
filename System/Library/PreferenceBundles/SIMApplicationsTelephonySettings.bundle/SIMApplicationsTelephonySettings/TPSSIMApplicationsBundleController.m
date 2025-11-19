@interface TPSSIMApplicationsBundleController
- (BOOL)isHidden;
- (TPSSIMApplicationsController)SIMApplicationsController;
- (id)specifiers;
- (id)supportedSubscriptions;
@end

@implementation TPSSIMApplicationsBundleController

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [TPSSIMApplicationsLocalizedString localizedStringForKey:@"BUNDLE_CONTROLLER_ROOT_SPECIFIER_TITLE"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v6 setIdentifier:@"SIM_APPLICATIONS_TELEPHONY_SETTINGS"];
    v7 = [(TPSSIMApplicationsBundleController *)self SIMApplicationsController];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v6 setProperty:v7 forKey:v9];

    [v4 addObject:v6];
    v10 = [v4 copy];
    v11 = self->_specifiers;
    self->_specifiers = v10;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = TPSSIMApplicationsBundleController;
  if ([(TPSSIMApplicationsBundleController *)&v3 isHidden])
  {
    return 1;
  }

  else
  {
    return +[UIApplication isRunningInStoreDemoMode];
  }
}

- (TPSSIMApplicationsController)SIMApplicationsController
{
  SIMApplicationsController = self->_SIMApplicationsController;
  if (!SIMApplicationsController)
  {
    v4 = [TPSSIMApplicationsController alloc];
    v5 = [(TPSSIMApplicationsBundleController *)self telephonyController];
    v6 = [(TPSSIMApplicationsController *)v4 initWithTelephonyController:v5];
    v7 = self->_SIMApplicationsController;
    self->_SIMApplicationsController = v6;

    SIMApplicationsController = self->_SIMApplicationsController;
  }

  return SIMApplicationsController;
}

- (id)supportedSubscriptions
{
  supportedSubscriptions = self->_supportedSubscriptions;
  if (!supportedSubscriptions)
  {
    v21.receiver = self;
    v21.super_class = TPSSIMApplicationsBundleController;
    v4 = [(TPSSIMApplicationsBundleController *)&v21 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v4 count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isSimHidden] & 1) == 0)
          {
            v12 = [(TPSSIMApplicationsBundleController *)self SIMApplicationsController];
            v13 = [v12 isSupportedForSubscriptionContext:v11];

            if (v13)
            {
              [v5 addObject:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    v15 = self->_supportedSubscriptions;
    self->_supportedSubscriptions = v14;

    supportedSubscriptions = self->_supportedSubscriptions;
  }

  return supportedSubscriptions;
}

@end