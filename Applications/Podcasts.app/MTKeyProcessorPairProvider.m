@interface MTKeyProcessorPairProvider
- (MTKeyProcessorPairProvider)initWithCloudSyncBugReporter:(id)a3;
- (id)bookmarkKeyForSyncType:(int64_t)a3;
- (id)bookmarkKeysForSyncType:(int64_t)a3;
- (id)keysAndProcessorsForAllBookkeeperKeys;
- (id)keysAndProcessorsForBookmarksSync;
- (id)keysAndProcessorsForCriticalBookkeeperKeys;
- (id)keysAndProcessorsForInterestSync;
- (id)keysAndProcessorsForNonFollowedShowsSync;
- (id)keysAndProcessorsForSubscriptionsAndStationsSync;
- (id)keysAndProcessorsForTermsVersionSync;
- (id)subscriptionKeyForSyncType:(int64_t)a3;
- (id)subscriptionKeysForSyncType:(int64_t)a3;
@end

@implementation MTKeyProcessorPairProvider

- (MTKeyProcessorPairProvider)initWithCloudSyncBugReporter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTKeyProcessorPairProvider;
  v6 = [(MTKeyProcessorPairProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudSyncBugReporter, a3);
  }

  return v7;
}

- (id)keysAndProcessorsForAllBookkeeperKeys
{
  v3 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForCriticalBookkeeperKeys];
  v4 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForTermsVersionSync];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)keysAndProcessorsForCriticalBookkeeperKeys
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 isLibrarySyncEnabled];

  if (v4)
  {
    v5 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForSubscriptionsAndStationsSync];
    v6 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForBookmarksSync];
    v7 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForNonFollowedShowsSync];
    v8 = [v5 arrayByAddingObjectsFromArray:v6];
    v9 = [v8 arrayByAddingObjectsFromArray:v7];

    if (+[_TtC8Podcasts21InterestSyncProcessor canSyncInterests])
    {
      v10 = [(MTKeyProcessorPairProvider *)self keysAndProcessorsForInterestSync];
      v11 = [v9 arrayByAddingObjectsFromArray:v10];

      v9 = v11;
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)keysAndProcessorsForNonFollowedShowsSync
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 isLibrarySyncEnabled];

  if (v3)
  {
    v4 = objc_alloc_init(_TtC8Podcasts29NonFollowedShowsSyncProcessor);
    v5 = [MTKeyProcessorPair alloc];
    v6 = [(MTKeyProcessorPair *)v5 initWithKey:kMTNonFollowedShowsSyncKey processor:v4];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)keysAndProcessorsForInterestSync
{
  if (+[_TtC8Podcasts21InterestSyncProcessor canSyncInterests])
  {
    v2 = objc_alloc_init(_TtC8Podcasts21InterestSyncProcessor);
    v3 = [MTKeyProcessorPair alloc];
    v4 = [(MTKeyProcessorPair *)v3 initWithKey:kMTInterestSyncKey processor:v2];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)keysAndProcessorsForBookmarksSync
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 isLibrarySyncEnabled];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = [(MTKeyProcessorPairProvider *)self bookmarkKeyForSyncType:v6];
      v10 = [[MTBookmarksSyncStorage alloc] initWithSyncType:v6];
      v11 = [MTBookmarksSyncProcessor alloc];
      v12 = [(MTKeyProcessorPairProvider *)self cloudSyncBugReporter];
      v13 = [(MTBookmarksSyncProcessor *)v11 initWithStorageProvider:v10 cloudSyncBugReporter:v12];

      v14 = [[MTKeyProcessorPair alloc] initWithKey:v9 processor:v13];
      [v5 addObject:v14];

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)keysAndProcessorsForTermsVersionSync
{
  v2 = [MTTermsVersionSyncProcessor alloc];
  v3 = objc_opt_new();
  v4 = [(MTTermsVersionSyncProcessor *)v2 initWithStorage:v3];

  v5 = [MTKeyProcessorPair alloc];
  v6 = [(MTKeyProcessorPair *)v5 initWithKey:kMTTermsVersionKey processor:v4];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (id)keysAndProcessorsForSubscriptionsAndStationsSync
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 isLibrarySyncEnabled];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = [(MTKeyProcessorPairProvider *)self subscriptionKeyForSyncType:v6];
      v10 = [MTSubscriptionSyncProcessorConfig configWithSupportsMetrics:1];
      v11 = objc_opt_new();
      [v11 setSyncType:v6];
      v12 = [MTSubscriptionSyncProcessor alloc];
      v13 = [(MTKeyProcessorPairProvider *)self cloudSyncBugReporter];
      v14 = [(MTSubscriptionSyncProcessor *)v12 initWithStorage:v11 config:v10 cloudSyncBugReporter:v13];

      v15 = [[MTKeyProcessorPair alloc] initWithKey:v9 processor:v14];
      [v5 addObject:v15];

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
    v16 = [MTPlaylistSyncProcessor alloc];
    v17 = objc_opt_new();
    v18 = [(MTPlaylistSyncProcessor *)v16 initWithStorageProvider:v17];

    v19 = [MTKeyProcessorPair alloc];
    v20 = [(MTKeyProcessorPair *)v19 initWithKey:kMTPlaylistsKey processor:v18];
    [v5 addObject:v20];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)bookmarkKeysForSyncType:(int64_t)a3
{
  v3 = [(MTKeyProcessorPairProvider *)self bookmarkKeyForSyncType:a3];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)bookmarkKeyForSyncType:(int64_t)a3
{
  v3 = &kMTBookmarksDRMKey;
  if (a3 != 1)
  {
    v3 = &kMTBookmarksKey;
  }

  return *v3;
}

- (id)subscriptionKeysForSyncType:(int64_t)a3
{
  v3 = [(MTKeyProcessorPairProvider *)self subscriptionKeyForSyncType:a3];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)subscriptionKeyForSyncType:(int64_t)a3
{
  v3 = &kMTSubscriptionsV3Key;
  if (a3 != 1)
  {
    v3 = &kMTSubscriptionsKey;
  }

  return *v3;
}

@end