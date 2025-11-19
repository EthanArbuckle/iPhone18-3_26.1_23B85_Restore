@interface TTYSubscriptionsSettingsController
- (BOOL)rttSupportedForContext:(id)a3;
- (id)labelForContext:(id)a3;
- (id)specifiers;
- (id)ttyEnabledForSpecifier:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TTYSubscriptionsSettingsController

- (id)labelForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v3 uuid];

  v6 = [v5 UUIDString];
  v7 = [v4 labelFromUUID:v6];

  return v7;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v7 = [v6 subscriptionContexts];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __48__TTYSubscriptionsSettingsController_specifiers__block_invoke;
    v12[3] = &unk_2566A0;
    v12[4] = self;
    v8 = v5;
    v13 = v8;
    [v7 enumerateObjectsUsingBlock:v12];

    v9 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v8;
    v10 = v8;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __48__TTYSubscriptionsSettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 labelForContext:v4];
  v8 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:"ttyEnabledForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v8 setProperty:v4 forKey:PSSubscriptionContextKey];
  v6 = [*(a1 + 32) rttSupportedForContext:v4];

  v7 = [NSNumber numberWithBool:v6];
  [v8 setProperty:v7 forKey:PSEnabledKey];

  [*(a1 + 40) addObject:v8];
}

- (BOOL)rttSupportedForContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (([RTTTelephonyUtilities isTTYSupportedForContext:v3]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = [RTTTelephonyUtilities isRTTSupportedForContext:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ttyEnabledForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:PSSubscriptionContextKey];
  if (!v4)
  {
    v6 = @"OFF";
LABEL_9:
    v8 = v6;
    goto LABEL_11;
  }

  if ([(TTYSubscriptionsSettingsController *)self rttSupportedForContext:v4])
  {
    v5 = +[RTTSettings sharedInstance];
    v6 = @"ON";
    if (([v5 TTYHardwareEnabledForContext:v4] & 1) == 0)
    {
      v7 = +[RTTSettings sharedInstance];
      if (![v7 TTYSoftwareEnabledForContext:v4])
      {
        v6 = @"OFF";
      }
    }

    goto LABEL_9;
  }

  v8 = @"RTT_TTY_UNAVAILABLE";
LABEL_11:
  v9 = settingsLocString(v8, @"Accessibility");

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TTYSubscriptionsSettingsController;
  [(TTYSubscriptionsSettingsController *)&v4 viewWillAppear:a3];
  [(TTYSubscriptionsSettingsController *)self reloadSpecifiers];
}

@end