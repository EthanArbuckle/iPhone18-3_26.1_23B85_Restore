@interface MTNotificationPodcast
- (MTNotificationPodcast)initWithUuid:(id)uuid title:(id)title;
- (id)descriptionForNotificationLogging;
@end

@implementation MTNotificationPodcast

- (MTNotificationPodcast)initWithUuid:(id)uuid title:(id)title
{
  uuidCopy = uuid;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = MTNotificationPodcast;
  v9 = [(MTNotificationPodcast *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, uuid);
    objc_storeStrong(&v10->_title, title);
    v11 = objc_alloc_init(NSMutableArray);
    episodes = v10->_episodes;
    v10->_episodes = v11;
  }

  return v10;
}

- (id)descriptionForNotificationLogging
{
  episodes = [(MTNotificationPodcast *)self episodes];
  v4 = [episodes count];

  if (v4)
  {
    episodes2 = [(MTNotificationPodcast *)self episodes];
    v6 = [episodes2 mt_compactMap:&stru_1004D8CA0];

    v7 = [v6 componentsJoinedByString:{@", "}];
    uuid = [(MTNotificationPodcast *)self uuid];
    v9 = [NSString stringWithFormat:@"podcastUuid = %@, episodeUuids = %@", uuid, v7];
  }

  else
  {
    v9 = @"(no content)";
  }

  return v9;
}

@end