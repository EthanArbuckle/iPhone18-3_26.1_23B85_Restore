@interface TPSCellularNetworkBundleController
- (BOOL)isHidden;
- (id)specifiers;
- (id)supportedSubscriptions;
@end

@implementation TPSCellularNetworkBundleController

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [TPSCellularNetworkStrings localizedStringForKey:@"BUNDLE_CONTROLLER_ROOT_SPECIFIER_TITLE"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v6 setIdentifier:@"CELLULAR_NETWORK_TELEPHONY_SETTINGS"];
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
  v3.super_class = TPSCellularNetworkBundleController;
  if ([(TPSCellularNetworkBundleController *)&v3 isHidden])
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
    v21.receiver = self;
    v21.super_class = TPSCellularNetworkBundleController;
    subscriptions = [(TPSCellularNetworkBundleController *)&v21 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [subscriptions count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = subscriptions;
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
            telephonyController = [(TPSCellularNetworkBundleController *)self telephonyController];
            v13 = [telephonyController supportsCellularNetworkSelectionForSubscriptionContext:v11];

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