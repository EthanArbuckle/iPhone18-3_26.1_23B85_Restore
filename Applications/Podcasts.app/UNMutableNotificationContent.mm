@interface UNMutableNotificationContent
- (void)mt_setUserInfoEpisode:(id)episode;
- (void)mt_setUserInfoPodcastUuid:(id)uuid episodes:(id)episodes;
@end

@implementation UNMutableNotificationContent

- (void)mt_setUserInfoPodcastUuid:(id)uuid episodes:(id)episodes
{
  episodesCopy = episodes;
  uuidCopy = uuid;
  userInfo = [(UNMutableNotificationContent *)self userInfo];
  v9 = [userInfo mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v16 = v11;

  if (uuidCopy)
  {
    v12 = uuidCopy;
  }

  else
  {
    v12 = &stru_1004F3018;
  }

  [v16 setObject:v12 forKeyedSubscript:@"podcastUuid"];

  v13 = NSStringFromSelector("dictionaryRepresentation");
  v14 = [episodesCopy valueForKey:v13];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  [v16 setObject:v15 forKeyedSubscript:@"notificationEpisodeDictionaryRepresentations"];
  [(UNMutableNotificationContent *)self setUserInfo:v16];
}

- (void)mt_setUserInfoEpisode:(id)episode
{
  episodeCopy = episode;
  podcastUuid = [episodeCopy podcastUuid];
  v6 = podcastUuid;
  v7 = &stru_1004F3018;
  if (podcastUuid)
  {
    v7 = podcastUuid;
  }

  v8 = v7;

  v10 = episodeCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [(UNMutableNotificationContent *)self mt_setUserInfoPodcastUuid:v8 episodes:v9];
}

@end