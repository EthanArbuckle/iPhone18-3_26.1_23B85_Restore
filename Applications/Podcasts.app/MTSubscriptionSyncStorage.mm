@interface MTSubscriptionSyncStorage
+ (void)resetAllSubscriptionsSyncKeys;
+ (void)resetForSyncType:(int64_t)a3;
- (BOOL)syncDirtyFlag;
- (MTSubscriptionSyncStorage)init;
- (NSString)podcastsDomainVersion;
- (NSString)syncVersion;
- (double)subscriptionsLastSyncTimestamp;
- (id)importContext;
- (void)cleanUpOldHiddenPodcasts;
- (void)disableSubscriptionsWithUuids:(id)a3 ctx:(id)a4;
- (void)enableSubscriptionOnPodcastUuid:(id)a3 ctx:(id)a4;
- (void)immediatelyDeleteAllHiddenPodcasts;
- (void)setPodcastsDomainVersion:(id)a3;
- (void)setSyncDirtyFlag:(BOOL)a3;
- (void)setSyncVersion:(id)a3;
- (void)updateSubscriptionsLastSyncTimestamp;
@end

@implementation MTSubscriptionSyncStorage

- (MTSubscriptionSyncStorage)init
{
  v6.receiver = self;
  v6.super_class = MTSubscriptionSyncStorage;
  v2 = [(MTSubscriptionSyncStorage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC8Podcasts20CloudSyncBugReporter);
    cloudSyncBugReporter = v2->_cloudSyncBugReporter;
    v2->_cloudSyncBugReporter = v3;
  }

  return v2;
}

- (void)setPodcastsDomainVersion:(id)a3
{
  v3 = a3;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:v3];
}

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 podcastsDomainVersion];

  return v3;
}

- (void)setSyncDirtyFlag:(BOOL)a3
{
  v3 = a3;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markSubscriptionSyncDirty:v3 for:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];
}

- (BOOL)syncDirtyFlag
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  LOBYTE(self) = [v3 isSubscriptionSyncDirtyFor:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];

  return self;
}

- (double)subscriptionsLastSyncTimestamp
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 subscriptionsLastSyncTimestampFor:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];
  v5 = v4;

  return v5;
}

- (void)updateSubscriptionsLastSyncTimestamp
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 updateSubscriptionsLastSyncTimestampFor:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];
}

- (NSString)syncVersion
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 subscriptionsSyncVersionFor:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];

  return v4;
}

- (void)setSyncVersion:(id)a3
{
  v4 = a3;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 updateSubscriptionsSyncVersionFor:-[MTSubscriptionSyncStorage syncType](self newValue:{"syncType"), v4}];

  v6 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncClass];
  v7 = [(MTSubscriptionSyncStorage *)self syncType];

  [(objc_class *)v6 didUpdateSubscriptionsSyncVersionForSyncType:v7];
}

+ (void)resetAllSubscriptionsSyncKeys
{
  [a1 resetForSyncType:0];

  [a1 resetForSyncType:1];
}

+ (void)resetForSyncType:(int64_t)a3
{
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 resetSubscriptionsSyncVersionFor:a3];

  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markSubscriptionSyncDirty:1 for:a3];

  v6 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v6 resetSubscriptionsLastSyncTimestampFor:a3];
}

- (void)cleanUpOldHiddenPodcasts
{
  v2 = +[MTLibrary sharedInstance];
  [v2 cleanUpOldHiddenPodcasts];
}

- (void)immediatelyDeleteAllHiddenPodcasts
{
  v2 = +[MTLibrary sharedInstance];
  [v2 immediatelyDeleteAllHiddenPodcasts];
}

- (void)enableSubscriptionOnPodcastUuid:(id)a3 ctx:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v7 unsafeEnableSubscriptionOnPodcastUUID:v6 from:0 context:v5];
}

- (void)disableSubscriptionsWithUuids:(id)a3 ctx:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v7 disableSubscriptionsOnPodcastUUIDs:v6 from:0 context:v5];
}

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 importContext];

  return v3;
}

@end