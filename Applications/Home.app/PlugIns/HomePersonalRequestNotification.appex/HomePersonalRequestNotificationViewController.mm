@interface HomePersonalRequestNotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
@end

@implementation HomePersonalRequestNotificationViewController

- (void)didReceiveNotification:(id)notification
{
  v4 = HULocalizedString();
  v5 = [UNNotificationActionIcon iconWithSystemImageName:@"gear"];
  v6 = [UNNotificationAction actionWithIdentifier:@"PersonalRequestsActivityAction" title:v4 options:0 icon:v5];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  extensionContext = [(HomePersonalRequestNotificationViewController *)self extensionContext];
  [extensionContext setNotificationActions:v7];
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  actionIdentifier = [responseCopy actionIdentifier];
  if ([actionIdentifier isEqualToString:@"PersonalRequestsActivityAction"])
  {
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    content2 = [request2 content];
    userInfo = [content2 userInfo];
    v17 = [userInfo objectForKey:@"PersonalRequestsActivityUserInfoHomeIdentifier"];

    extensionContext = [(HomePersonalRequestNotificationViewController *)self extensionContext];
    v19 = [HFURLComponents personalRequestsOptInURLForHomeID:v17];
    [extensionContext openURL:v19 completionHandler:0];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100001030(categoryIdentifier, actionIdentifier, v20);
    }
  }

  handlerCopy[2](handlerCopy, 1);
}

@end