@interface TPSSIMApplicationsController
- (BOOL)isSupportedForSubscriptionContext:(id)a3;
- (TPSSIMApplicationsController)initWithTelephonyController:(id)a3;
- (id)SIMToolKitMenuForSubscriptionContext:(id)a3;
- (id)localizedSubtitlesForSubscriptionContext:(id)a3;
- (id)localizedTitleForSubscriptionContext:(id)a3;
- (void)openApplicationAtIndex:(id)a3 forSubscriptionContext:(id)a4;
@end

@implementation TPSSIMApplicationsController

- (TPSSIMApplicationsController)initWithTelephonyController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TPSSIMApplicationsController;
  v6 = [(TPSSIMApplicationsController *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    subscriptionContextUUIDToSIMToolkitMenu = v6->_subscriptionContextUUIDToSIMToolkitMenu;
    v6->_subscriptionContextUUIDToSIMToolkitMenu = v7;

    objc_storeStrong(&v6->_telephonyController, a3);
  }

  return v6;
}

- (BOOL)isSupportedForSubscriptionContext:(id)a3
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)localizedSubtitlesForSubscriptionContext:(id)a3
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:a3];
  v4 = [v3 subTitles];

  return v4;
}

- (id)localizedTitleForSubscriptionContext:(id)a3
{
  v3 = [(TPSSIMApplicationsController *)self SIMToolKitMenuForSubscriptionContext:a3];
  v4 = [v3 title];

  return v4;
}

- (void)openApplicationAtIndex:(id)a3 forSubscriptionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TPSSIMApplicationsController *)self telephonyController];
  v9 = [v8 telephonyClient];
  v10 = [v9 selectSIMToolkitMenuItem:v7 index:v6];

  if (v10)
  {
    v11 = [v6 unsignedIntegerValue];
    v12 = [(TPSSIMApplicationsController *)self localizedSubtitlesForSubscriptionContext:v7];
    if (v11 >= [v12 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:v11];
    }

    v14 = TPSSIMApplicationsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Opening SIM application %@ for subscription context %@ failed with error %@", &v15, 0x20u);
    }
  }
}

- (id)SIMToolKitMenuForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(TPSSIMApplicationsController *)self subscriptionContextUUIDToSIMToolkitMenu];
  v6 = [v4 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(TPSSIMApplicationsController *)self telephonyController];
    v9 = [v8 telephonyClient];
    v14 = 0;
    v10 = [v9 getSIMToolkitMenu:v4 menu:&v14];
    v7 = v14;

    if (v7)
    {
      v11 = [(TPSSIMApplicationsController *)self subscriptionContextUUIDToSIMToolkitMenu];
      v12 = [v4 uuid];
      [v11 setObject:v7 forKeyedSubscript:v12];
    }

    else
    {
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = TPSSIMApplicationsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B24(v4, v10, v11);
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end