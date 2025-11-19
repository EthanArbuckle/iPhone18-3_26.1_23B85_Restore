@interface HNDSecureIntentManager
+ (id)sharedInstance;
- (HNDSecureIntentManager)init;
- (void)_showFirstTimeAlert;
- (void)dealloc;
@end

@implementation HNDSecureIntentManager

+ (id)sharedInstance
{
  if (qword_100218AF8 != -1)
  {
    sub_100129ED8();
  }

  v3 = qword_100218AF0;

  return v3;
}

- (HNDSecureIntentManager)init
{
  v9.receiver = self;
  v9.super_class = HNDSecureIntentManager;
  v2 = [(HNDSecureIntentManager *)&v9 init];
  if (v2)
  {
    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AST/SC registering for Secure Intent Notifications", v8, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100089880, @"com.apple.LocalAuthentication.intent.waiting", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, sub_100089880, @"com.apple.LocalAuthentication.intent.not-waiting", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = +[NSUserDefaults standardUserDefaults];
    -[HNDSecureIntentManager setCachedHasShownHint:](v2, "setCachedHasShownHint:", [v6 BOOLForKey:@"com.apple.assistivetouchd.has_shown_secure_intent_confirm"]);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HNDSecureIntentManager;
  [(HNDSecureIntentManager *)&v4 dealloc];
}

- (void)_showFirstTimeAlert
{
  v3 = +[AXSpringBoardServer server];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100089A88;
  v4[3] = &unk_1001D4408;
  v4[4] = self;
  [v3 showAlert:24 withHandler:v4];
}

@end