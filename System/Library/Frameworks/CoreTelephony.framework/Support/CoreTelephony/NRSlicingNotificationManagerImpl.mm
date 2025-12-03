@interface NRSlicingNotificationManagerImpl
- (NRSlicingNotificationManagerImpl)initWithQueue:(dispatch_queue_s *)queue;
- (void)sendNotification:(id)notification body:(id)body identifier:(id)identifier;
@end

@implementation NRSlicingNotificationManagerImpl

- (NRSlicingNotificationManagerImpl)initWithQueue:(dispatch_queue_s *)queue
{
  v8.receiver = self;
  v8.super_class = NRSlicingNotificationManagerImpl;
  v4 = [(NRSlicingNotificationManagerImpl *)&v8 init];
  if (v4)
  {
    v5 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SIMSetupUIService" queue:queue];
    fUserNotificationCenter = v4->fUserNotificationCenter;
    v4->fUserNotificationCenter = v5;

    [(UNUserNotificationCenter *)v4->fUserNotificationCenter setDelegate:v4];
    [(UNUserNotificationCenter *)v4->fUserNotificationCenter setWantsNotificationResponsesDelivered];
  }

  return v4;
}

- (void)sendNotification:(id)notification body:(id)body identifier:(id)identifier
{
  notificationCopy = notification;
  bodyCopy = body;
  identifierCopy = identifier;
  v10 = objc_alloc_init(UNMutableNotificationContent);
  [v10 setTitle:notificationCopy];
  [v10 setBody:bodyCopy];
  v11 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.Preferences"];
  [v10 setIcon:v11];

  [v10 setShouldHideDate:1];
  [v10 setShouldHideTime:1];
  [v10 setShouldSuppressDefaultAction:0];
  [v10 setShouldBackgroundDefaultAction:0];
  [v10 setShouldAuthenticateDefaultAction:0];
  v12 = [NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
  [v10 setDefaultActionURL:v12];

  v13 = [UNNotificationRequest requestWithIdentifier:identifierCopy content:v10 trigger:0];
  [(UNUserNotificationCenter *)self->fUserNotificationCenter addNotificationRequest:v13 withCompletionHandler:&stru_101E48288];
}

@end