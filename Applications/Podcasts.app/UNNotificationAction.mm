@interface UNNotificationAction
+ (id)mt_playEpisodeActionWithOptions:(unint64_t)options;
+ (id)mt_playMultipleEpisodesActionWithCount:(int64_t)count options:(unint64_t)options;
+ (id)mt_showOnePodcastMultipleEpisodesDetail;
+ (id)mt_showOnePodcastOneEpisodeDetail;
@end

@implementation UNNotificationAction

+ (id)mt_showOnePodcastOneEpisodeDetail
{
  v2 = sub_1000799E0(3);
  v3 = [NSString localizedUserNotificationStringForKey:@"NOTIFICATION_ACTION_SHOW_EPISODE_DETAILS" arguments:0];
  v4 = [UNNotificationActionIcon iconWithSystemImageName:@"podcasts.square"];
  v5 = [UNNotificationAction actionWithIdentifier:v2 title:v3 options:4 icon:v4];

  return v5;
}

+ (id)mt_showOnePodcastMultipleEpisodesDetail
{
  v2 = sub_1000799E0(4);
  v3 = [NSString localizedUserNotificationStringForKey:@"NOTIFICATION_ACTION_SHOW_EPISODE_DETAILS" arguments:0];
  v4 = [UNNotificationActionIcon iconWithSystemImageName:@"podcasts.square"];
  v5 = [UNNotificationAction actionWithIdentifier:v2 title:v3 options:4 icon:v4];

  return v5;
}

+ (id)mt_playEpisodeActionWithOptions:(unint64_t)options
{
  v4 = sub_1000799E0(1);
  v5 = [NSString localizedUserNotificationStringForKey:@"NOTIFICATION_ACTION_PLAY_EPISODE" arguments:0];
  v6 = [UNNotificationActionIcon iconWithSystemImageName:@"play"];
  v7 = [UNNotificationAction actionWithIdentifier:v4 title:v5 options:options icon:v6];

  return v7;
}

+ (id)mt_playMultipleEpisodesActionWithCount:(int64_t)count options:(unint64_t)options
{
  v5 = sub_1000799E0(2);
  v6 = [NSString localizedUserNotificationStringForKey:@"NOTIFICATION_ACTION_PLAY_MANY_EPISODES" arguments:0];
  v7 = [UNNotificationActionIcon iconWithSystemImageName:@"play"];
  v8 = [UNNotificationAction actionWithIdentifier:v5 title:v6 options:options icon:v7];

  return v8;
}

@end