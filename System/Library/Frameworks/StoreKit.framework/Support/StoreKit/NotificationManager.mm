@interface NotificationManager
+ (id)_notificationCategories;
+ (id)sharedManager;
- (NotificationManager)init;
- (void)postNotificationRequest:(id)request withCompletionHandler:(id)handler;
- (void)removeNotificationRequestWithIdentifier:(id)identifier;
@end

@implementation NotificationManager

- (NotificationManager)init
{
  v8.receiver = self;
  v8.super_class = NotificationManager;
  v2 = [(NotificationManager *)&v8 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.AppStore"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v5 = v2->_notificationCenter;
    v6 = +[NotificationManager _notificationCategories];
    [(UNUserNotificationCenter *)v5 setNotificationCategories:v6];

    [(UNUserNotificationCenter *)v2->_notificationCenter requestAuthorizationWithOptions:+[NotificationManager completionHandler:"_authorizationOptions"], &stru_100382B90];
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069868;
  block[3] = &unk_10037F9B0;
  block[4] = self;
  if (qword_1003D4768 != -1)
  {
    dispatch_once(&qword_1003D4768, block);
  }

  v2 = qword_1003D4760;

  return v2;
}

- (void)postNotificationRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000699B8;
  v11[3] = &unk_100382BB8;
  objc_copyWeak(&v14, &location);
  v9 = requestCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v9 withCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)removeNotificationRequestWithIdentifier:(id)identifier
{
  notificationCenter = self->_notificationCenter;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  v5 = [NSArray arrayWithObjects:&identifierCopy count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v5, identifierCopy];
}

+ (id)_notificationCategories
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [UNNotificationCategory categoryWithIdentifier:@"sk-notification-category-purchase-intent" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  [v2 addObject:v3];

  v4 = [NSString localizedUserNotificationStringForKey:@"VIEW_IN_APP_STORE" arguments:0];
  v5 = [UNNotificationAction actionWithIdentifier:@"sk-notification-action-view-in-app-store" title:v4 options:0];

  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [UNNotificationCategory categoryWithIdentifier:@"sk-notification-category-app-terminate" actions:v6 intentIdentifiers:&__NSArray0__struct options:1];
  [v2 addObject:v7];

  return v2;
}

@end