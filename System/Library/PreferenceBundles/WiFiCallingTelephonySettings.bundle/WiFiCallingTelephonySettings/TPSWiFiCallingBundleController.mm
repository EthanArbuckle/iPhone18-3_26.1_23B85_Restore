@interface TPSWiFiCallingBundleController
- (BOOL)isHidden;
- (TPSWiFiCallingBundleController)initWithParentListController:(id)a3;
- (id)capabilityState:(id)a3;
- (id)specifiers;
- (id)supportedSubscriptions;
- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)a3;
@end

@implementation TPSWiFiCallingBundleController

- (TPSWiFiCallingBundleController)initWithParentListController:(id)a3
{
  v10.receiver = self;
  v10.super_class = TPSWiFiCallingBundleController;
  v3 = [(TPSWiFiCallingBundleController *)&v10 initWithParentListController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(TPSWiFiCallingBundleController *)v3 subscriptionContext];
    if (v5)
    {
      v6 = [[TPSWiFiCallingController alloc] initWithSubscriptionContext:v5];
      callingController = v4->_callingController;
      v4->_callingController = v6;

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:v4 selector:"handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:" name:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:v4->_callingController];
    }
  }

  return v4;
}

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = TUStringKeyForNetwork();
    v6 = [TPSWiFiCallingStrings localizedStringForKey:v5];

    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"capabilityState:" detail:objc_opt_class() cell:2 edit:0];
    [v7 setIdentifier:@"WIFI_CALLING_TELEPHONY_SETTINGS"];
    v8 = [(TPSWiFiCallingBundleController *)self callingController];

    if (v8)
    {
      v9 = [(TPSWiFiCallingBundleController *)self callingController];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v7 setProperty:v9 forKey:v11];
    }

    [v4 addObject:v7];
    v12 = [v4 copy];
    v13 = self->_specifiers;
    self->_specifiers = v12;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = TPSWiFiCallingBundleController;
  if ([(TPSWiFiCallingBundleController *)&v3 isHidden])
  {
    return 1;
  }

  else
  {
    return +[UIApplication isRunningInStoreDemoMode];
  }
}

- (id)capabilityState:(id)a3
{
  v3 = [(TPSWiFiCallingBundleController *)self callingController];
  v4 = [v3 isWiFiCallingEnabled];

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  v6 = [TPSWiFiCallingStrings localizedStringForKey:v5];

  return v6;
}

- (id)supportedSubscriptions
{
  supportedSubscriptions = self->_supportedSubscriptions;
  if (!supportedSubscriptions)
  {
    v23 = self;
    v35.receiver = self;
    v35.super_class = TPSWiFiCallingBundleController;
    v4 = [(TPSWiFiCallingBundleController *)&v35 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v4 count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v24 = *v32;
      do
      {
        v9 = 0;
        v25 = v7;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          if (([v10 isSimHidden] & 1) == 0)
          {
            v11 = +[TUCallCapabilities senderIdentityCapabilities];
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v28;
              do
              {
                for (i = 0; i != v13; i = i + 1)
                {
                  if (*v28 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v27 + 1) + 8 * i);
                  v17 = [v16 senderIdentityUUID];
                  v18 = [v10 uuid];
                  if ([v17 isEqual:v18])
                  {
                    v19 = [v16 supportsWiFiCalling];

                    if (v19)
                    {
                      [v5 addObject:v10];
                    }
                  }

                  else
                  {
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
              }

              while (v13);
            }

            v8 = v24;
            v7 = v25;
          }

          v9 = v9 + 1;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);
    }

    v20 = [v5 copy];
    v21 = v23->_supportedSubscriptions;
    v23->_supportedSubscriptions = v20;

    supportedSubscriptions = v23->_supportedSubscriptions;
  }

  return supportedSubscriptions;
}

- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v8, 0x16u);
  }

  v7 = [(TPSWiFiCallingBundleController *)self parentListController];
  [v7 reloadSpecifierID:@"WIFI_CALLING_TELEPHONY_SETTINGS"];
}

@end