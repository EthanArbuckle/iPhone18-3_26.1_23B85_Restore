@interface TPSSIMApplicationsController
- (BOOL)isSupportedForSubscriptionContext:(id)context;
- (TPSSIMApplicationsController)initWithTelephonyController:(id)controller;
- (id)SIMToolKitMenuForSubscriptionContext:(id)context;
- (id)localizedSubtitlesForSubscriptionContext:(id)context;
- (id)localizedTitleForSubscriptionContext:(id)context;
- (void)openApplicationAtIndex:(id)index forSubscriptionContext:(id)context;
@end

@implementation TPSSIMApplicationsController

- (TPSSIMApplicationsController)initWithTelephonyController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = TPSSIMApplicationsController;
  v6 = [(TPSSIMApplicationsController *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    subscriptionContextUUIDToSIMToolkitMenu = v6->_subscriptionContextUUIDToSIMToolkitMenu;
    v6->_subscriptionContextUUIDToSIMToolkitMenu = v7;

    objc_storeStrong(&v6->_telephonyController, controller);
  }

  return v6;
}

- (BOOL)isSupportedForSubscriptionContext:(id)context
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:context];
  v4 = v3 != 0;

  return v4;
}

- (id)localizedSubtitlesForSubscriptionContext:(id)context
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:context];
  subTitles = [v3 subTitles];

  return subTitles;
}

- (id)localizedTitleForSubscriptionContext:(id)context
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:context];
  title = [v3 title];

  return title;
}

- (void)openApplicationAtIndex:(id)index forSubscriptionContext:(id)context
{
  indexCopy = index;
  contextCopy = context;
  telephonyController = [(TPSSIMApplicationsController *)self telephonyController];
  telephonyClient = [telephonyController telephonyClient];
  v10 = [telephonyClient selectSIMToolkitMenuItem:contextCopy index:indexCopy];

  if (v10)
  {
    unsignedIntegerValue = [indexCopy unsignedIntegerValue];
    v12 = [(TPSSIMApplicationsController *)self localizedSubtitlesForSubscriptionContext:contextCopy];
    if (unsignedIntegerValue >= [v12 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:unsignedIntegerValue];
    }

    v14 = TPSSIMApplicationsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = contextCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Opening SIM application %@ for subscription context %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (id)SIMToolKitMenuForSubscriptionContext:(id)context
{
  contextCopy = context;
  subscriptionContextUUIDToSIMToolkitMenu = [(TPSSIMApplicationsController *)self subscriptionContextUUIDToSIMToolkitMenu];
  uuid = [contextCopy uuid];
  v7 = [subscriptionContextUUIDToSIMToolkitMenu objectForKeyedSubscript:uuid];

  if (!v7)
  {
    telephonyController = [(TPSSIMApplicationsController *)self telephonyController];
    telephonyClient = [telephonyController telephonyClient];
    v14 = 0;
    v10 = [telephonyClient getSIMToolkitMenu:contextCopy menu:&v14];
    v7 = v14;

    if (v7)
    {
      subscriptionContextUUIDToSIMToolkitMenu2 = [(TPSSIMApplicationsController *)self subscriptionContextUUIDToSIMToolkitMenu];
      uuid2 = [contextCopy uuid];
      [subscriptionContextUUIDToSIMToolkitMenu2 setObject:v7 forKeyedSubscript:uuid2];
    }

    else
    {
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      subscriptionContextUUIDToSIMToolkitMenu2 = TPSSIMApplicationsLog();
      if (os_log_type_enabled(subscriptionContextUUIDToSIMToolkitMenu2, OS_LOG_TYPE_ERROR))
      {
        sub_1B24(contextCopy, v10, subscriptionContextUUIDToSIMToolkitMenu2);
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end