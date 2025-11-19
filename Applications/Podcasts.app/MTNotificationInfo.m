@interface MTNotificationInfo
- (MTNotificationInfo)init;
- (id)addPodcastWithTitle:(id)a3 uuid:(id)a4;
- (id)descriptionForNotificationLogging;
- (void)addPodcast:(id)a3;
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

- (id)addPodcastWithTitle:(id)a3 uuid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MTNotificationPodcast alloc] initWithUuid:v6 title:v7];

  [(MTNotificationInfo *)self addPodcast:v8];

  return v8;
}

- (void)addPodcast:(id)a3
{
  podcasts = self->_podcasts;
  v4 = a3;
  v5 = [v4 uuid];
  [(NSMutableDictionary *)podcasts setObject:v4 forKey:v5];
}

- (id)descriptionForNotificationLogging
{
  v3 = [(MTNotificationInfo *)self podcasts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableString string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(MTNotificationInfo *)self podcasts];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) descriptionForNotificationLogging];
          [(__CFString *)v5 appendString:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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