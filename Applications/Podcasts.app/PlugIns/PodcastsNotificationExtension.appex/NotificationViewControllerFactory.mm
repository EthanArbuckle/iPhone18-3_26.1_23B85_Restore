@interface NotificationViewControllerFactory
+ (id)contentAvailableViewControllerForNotification:(id)notification;
+ (id)viewControllerMultipleNotificationEpisodes:(id)episodes notification:(id)notification;
+ (id)viewControllerSingleNotificationEpisode:(id)episode notification:(id)notification;
@end

@implementation NotificationViewControllerFactory

+ (id)contentAvailableViewControllerForNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  mt_notificationEpisodes = [content mt_notificationEpisodes];

  if ([mt_notificationEpisodes count] < 2)
  {
    firstObject = [mt_notificationEpisodes firstObject];
    v8 = [self viewControllerSingleNotificationEpisode:firstObject notification:notificationCopy];
  }

  else
  {
    v8 = [self viewControllerMultipleNotificationEpisodes:mt_notificationEpisodes notification:notificationCopy];
  }

  return v8;
}

+ (id)viewControllerSingleNotificationEpisode:(id)episode notification:(id)notification
{
  notificationCopy = notification;
  v5 = [[EpisodeAvailableViewController alloc] initWithNotification:notificationCopy];

  return v5;
}

+ (id)viewControllerMultipleNotificationEpisodes:(id)episodes notification:(id)notification
{
  notificationCopy = notification;
  v6 = [episodes mt_compactMap:&stru_10002CC48];
  v7 = [NSSet setWithArray:v6];
  v8 = [v7 count];

  if (v8 >= 2)
  {
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Stack of multiple notifications referencing multiple podcast is not supported", v12, 2u);
    }
  }

  v10 = [[EpisodeListAvailableViewController alloc] initWithNotification:notificationCopy];

  return v10;
}

@end