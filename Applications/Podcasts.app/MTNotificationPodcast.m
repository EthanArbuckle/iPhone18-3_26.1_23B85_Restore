@interface MTNotificationPodcast
- (MTNotificationPodcast)initWithUuid:(id)a3 title:(id)a4;
- (id)descriptionForNotificationLogging;
@end

@implementation MTNotificationPodcast

- (MTNotificationPodcast)initWithUuid:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MTNotificationPodcast;
  v9 = [(MTNotificationPodcast *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_title, a4);
    v11 = objc_alloc_init(NSMutableArray);
    episodes = v10->_episodes;
    v10->_episodes = v11;
  }

  return v10;
}

- (id)descriptionForNotificationLogging
{
  v3 = [(MTNotificationPodcast *)self episodes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MTNotificationPodcast *)self episodes];
    v6 = [v5 mt_compactMap:&stru_1004D8CA0];

    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [(MTNotificationPodcast *)self uuid];
    v9 = [NSString stringWithFormat:@"podcastUuid = %@, episodeUuids = %@", v8, v7];
  }

  else
  {
    v9 = @"(no content)";
  }

  return v9;
}

@end