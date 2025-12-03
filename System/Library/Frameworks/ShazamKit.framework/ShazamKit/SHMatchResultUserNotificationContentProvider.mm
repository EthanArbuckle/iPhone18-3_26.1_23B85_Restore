@interface SHMatchResultUserNotificationContentProvider
+ (id)notificationActionForMatch;
+ (id)notificationCategories;
- (SHMatchResultUserNotificationContentProvider)initWithAttribution:(id)attribution;
- (id)notificationContentForNoMatch;
- (void)notificationContentForMediaItem:(id)item completionHandler:(id)handler;
@end

@implementation SHMatchResultUserNotificationContentProvider

- (SHMatchResultUserNotificationContentProvider)initWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  v9.receiver = self;
  v9.super_class = SHMatchResultUserNotificationContentProvider;
  v6 = [(SHMatchResultUserNotificationContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribution, attribution);
  }

  return v7;
}

- (void)notificationContentForMediaItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v8 = objc_alloc_init(UNMutableNotificationContent);
  title = [itemCopy title];
  [v8 setTitle:title];

  [v8 setShouldBackgroundDefaultAction:1];
  [v8 setThreadIdentifier:@"com.apple.ShazamNotifications.main-thread"];
  [v8 setShouldIgnoreDoNotDisturb:1];
  [v8 setShouldIgnoreDowntime:1];
  v10 = +[UNNotificationSound defaultSound];
  [v8 setSound:v10];

  [v8 setShouldAuthenticateDefaultAction:1];
  artist = [itemCopy artist];
  if (artist)
  {
    [v8 setBody:artist];
  }

  appleMusicURL = [itemCopy appleMusicURL];

  if (appleMusicURL)
  {
    v13 = @"com.apple.ShazamNotifications.category.actionable";
  }

  else
  {
    v13 = @"com.apple.ShazamNotifications.category.default";
  }

  [v8 setCategoryIdentifier:v13];
  attribution = [(SHMatchResultUserNotificationContentProvider *)self attribution];
  bundleIdentifier = [attribution bundleIdentifier];
  v16 = [SHMatchResultUserNotificationPayload userInfoPayloadForMediaItem:itemCopy bundleIdentifier:bundleIdentifier];
  [v8 setUserInfo:v16];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001033C;
  v19[3] = &unk_10007D308;
  v20 = v8;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = v8;
  [SHMatchResultUserNotificationAttachmentProvider notificationAttachmentForMediaItem:itemCopy completionHandler:v19];
}

+ (id)notificationCategories
{
  notificationActionForMatch = [objc_opt_class() notificationActionForMatch];
  v8 = notificationActionForMatch;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.ShazamNotifications.category.actionable" actions:v3 intentIdentifiers:&__NSArray0__struct options:4];

  v5 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.ShazamNotifications.category.default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:4];
  v6 = [NSSet setWithObjects:v4, v5, 0];

  return v6;
}

+ (id)notificationActionForMatch
{
  v2 = [SHLocalization localizedStringForKey:@"SHAZAM_MODULE_NOTIFICATION_ACTION_TITLE"];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  v4 = [UNNotificationActionIcon iconWithSystemImageName:@"music.square.fill"];
  v5 = [UNNotificationAction actionWithIdentifier:v3 title:v2 options:0 icon:v4];

  return v5;
}

- (id)notificationContentForNoMatch
{
  v3 = objc_alloc_init(UNMutableNotificationContent);
  v4 = [NSString localizedUserNotificationStringForKey:@"SHAZAM_MODULE_NOTIFICATION_NO_MATCH_SUBTITLE" arguments:0];
  [v3 setTitle:v4];

  v5 = [NSString localizedUserNotificationStringForKey:@"SHAZAM_MODULE_NOTIFICATION_NO_MATCH_BODY" arguments:0];
  [v3 setBody:v5];

  [v3 setThreadIdentifier:@"com.apple.ShazamNotifications.main-thread"];
  v6 = [NSDate dateWithTimeIntervalSinceNow:60.0];
  [v3 setExpirationDate:v6];

  [v3 setShouldIgnoreDoNotDisturb:1];
  [v3 setShouldIgnoreDowntime:1];
  [v3 setShouldHideDate:1];
  [v3 setShouldSuppressDefaultAction:1];
  v7 = +[UNNotificationSound defaultSound];
  [v3 setSound:v7];

  attribution = [(SHMatchResultUserNotificationContentProvider *)self attribution];
  bundleIdentifier = [attribution bundleIdentifier];
  v10 = [SHMatchResultUserNotificationPayload userInfoPayloadForMediaItem:0 bundleIdentifier:bundleIdentifier];
  [v3 setUserInfo:v10];

  return v3;
}

@end