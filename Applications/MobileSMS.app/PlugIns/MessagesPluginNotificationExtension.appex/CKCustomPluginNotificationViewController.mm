@interface CKCustomPluginNotificationViewController
+ (id)customNotificationManagerForBalloonBundleID:(id)d;
+ (void)connectIfNeeded;
- (CGSize)preferredContentSize;
- (CKCustomPluginNotificationViewController)init;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)loadView;
@end

@implementation CKCustomPluginNotificationViewController

+ (void)connectIfNeeded
{
  if (qword_100010840 != -1)
  {
    sub_100006660();
  }
}

- (CKCustomPluginNotificationViewController)init
{
  v4.receiver = self;
  v4.super_class = CKCustomPluginNotificationViewController;
  v2 = [(CKCustomPluginNotificationViewController *)&v4 init];
  if (v2)
  {
    [objc_opt_class() connectIfNeeded];
  }

  return v2;
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [(CKCustomPluginNotificationViewController *)self setView:v4];
}

- (CGSize)preferredContentSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)customNotificationManagerForBalloonBundleID:(id)d
{
  dCopy = d;
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [dCopy isEqualToString:v4];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using AskTo custom notification manager for balloon bundle ID %@", &v11, 0xCu);
      }
    }

    v8 = +[CKAskToNotificationManager sharedManager];
  }

  else
  {
    if (v6)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = dCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No custom notification manager for balloon bundle ID %@", &v11, 0xCu);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received notification for balloon bundle ID %@", &v18, 0xCu);
    }
  }

  v10 = [CKCustomPluginNotificationViewController customNotificationManagerForBalloonBundleID:v8];
  v11 = [v10 notificationActionsFromNotification:notificationCopy];
  v12 = [v11 count] == 0;
  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Custom notification manager returned no actions for balloon bundle ID %@", &v18, 0xCu);
      }
    }
  }

  else
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v11 count];
        v18 = 134218242;
        v19 = v15;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Custom notification manager returned %li actions for balloon bundle ID %@", &v18, 0x16u);
      }
    }

    extensionContext = [(CKCustomPluginNotificationViewController *)self extensionContext];
    [extensionContext setNotificationActions:v11];
  }
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v11 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received notification response for balloon bundle ID %@", &v14, 0xCu);
    }
  }

  v13 = [CKCustomPluginNotificationViewController customNotificationManagerForBalloonBundleID:v11];
  [v13 handleResponse:responseCopy completion:handlerCopy];
}

@end