@interface TTYSubscriptionsSettingsController
- (BOOL)rttSupportedForContext:(id)context;
- (id)labelForContext:(id)context;
- (id)specifiers;
- (id)ttyEnabledForSpecifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TTYSubscriptionsSettingsController

- (id)labelForContext:(id)context
{
  contextCopy = context;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  uuid = [contextCopy uuid];

  uUIDString = [uuid UUIDString];
  v7 = [v4 labelFromUUID:uUIDString];

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
    subscriptionContexts = [v6 subscriptionContexts];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __48__TTYSubscriptionsSettingsController_specifiers__block_invoke;
    v12[3] = &unk_2566A0;
    v12[4] = self;
    v8 = v5;
    v13 = v8;
    [subscriptionContexts enumerateObjectsUsingBlock:v12];

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

- (BOOL)rttSupportedForContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    if (([RTTTelephonyUtilities isTTYSupportedForContext:contextCopy]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = [RTTTelephonyUtilities isRTTSupportedForContext:contextCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ttyEnabledForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:PSSubscriptionContextKey];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TTYSubscriptionsSettingsController;
  [(TTYSubscriptionsSettingsController *)&v4 viewWillAppear:appear];
  [(TTYSubscriptionsSettingsController *)self reloadSpecifiers];
}

@end