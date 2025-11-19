@interface HomePersonalRequestNotificationViewController
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation HomePersonalRequestNotificationViewController

- (void)didReceiveNotification:(id)a3
{
  v4 = HULocalizedString();
  v5 = [UNNotificationActionIcon iconWithSystemImageName:@"gear"];
  v6 = [UNNotificationAction actionWithIdentifier:@"PersonalRequestsActivityAction" title:v4 options:0 icon:v5];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  v8 = [(HomePersonalRequestNotificationViewController *)self extensionContext];
  [v8 setNotificationActions:v7];
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  v12 = [v6 actionIdentifier];
  if ([v12 isEqualToString:@"PersonalRequestsActivityAction"])
  {
    v13 = [v6 notification];
    v14 = [v13 request];
    v15 = [v14 content];
    v16 = [v15 userInfo];
    v17 = [v16 objectForKey:@"PersonalRequestsActivityUserInfoHomeIdentifier"];

    v18 = [(HomePersonalRequestNotificationViewController *)self extensionContext];
    v19 = [HFURLComponents personalRequestsOptInURLForHomeID:v17];
    [v18 openURL:v19 completionHandler:0];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100001030(v11, v12, v20);
    }
  }

  v7[2](v7, 1);
}

@end