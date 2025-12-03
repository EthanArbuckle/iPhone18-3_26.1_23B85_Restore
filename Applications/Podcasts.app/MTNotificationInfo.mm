@interface MTNotificationInfo
- (MTNotificationInfo)init;
- (id)addPodcastWithTitle:(id)title uuid:(id)uuid;
- (id)descriptionForNotificationLogging;
- (void)addPodcast:(id)podcast;
@end

@implementation MTNotificationInfo

- (MTNotificationInfo)init
{
  v6.receiver = self;
  v6.super_class = MTNotificationInfo;
  v2 = [(MTNotificationInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    podcasts = v2->_podcasts;
    v2->_podcasts = v3;
  }

  return v2;
}

- (id)addPodcastWithTitle:(id)title uuid:(id)uuid
{
  uuidCopy = uuid;
  titleCopy = title;
  v8 = [[MTNotificationPodcast alloc] initWithUuid:uuidCopy title:titleCopy];

  [(MTNotificationInfo *)self addPodcast:v8];

  return v8;
}

- (void)addPodcast:(id)podcast
{
  podcasts = self->_podcasts;
  podcastCopy = podcast;
  uuid = [podcastCopy uuid];
  [(NSMutableDictionary *)podcasts setObject:podcastCopy forKey:uuid];
}

- (id)descriptionForNotificationLogging
{
  podcasts = [(MTNotificationInfo *)self podcasts];
  v4 = [podcasts count];

  if (v4)
  {
    v5 = +[NSMutableString string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    podcasts2 = [(MTNotificationInfo *)self podcasts];
    v7 = [podcasts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(podcasts2);
          }

          descriptionForNotificationLogging = [*(*(&v13 + 1) + 8 * i) descriptionForNotificationLogging];
          [(__CFString *)v5 appendString:descriptionForNotificationLogging];
        }

        v8 = [podcasts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = @"(no content)";
  }

  return v5;
}

@end