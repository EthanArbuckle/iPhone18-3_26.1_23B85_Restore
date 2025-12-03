@interface MTSubscriptionSyncStorage
+ (void)resetAllSubscriptionsSyncKeys;
+ (void)resetForSyncType:(int64_t)type;
- (BOOL)syncDirtyFlag;
- (MTSubscriptionSyncStorage)init;
- (NSString)podcastsDomainVersion;
- (NSString)syncVersion;
- (double)subscriptionsLastSyncTimestamp;
- (id)importContext;
- (void)cleanUpOldHiddenPodcasts;
- (void)disableSubscriptionsWithUuids:(id)uuids ctx:(id)ctx;
- (void)enableSubscriptionOnPodcastUuid:(id)uuid ctx:(id)ctx;
- (void)immediatelyDeleteAllHiddenPodcasts;
- (void)setPodcastsDomainVersion:(id)version;
- (void)setSyncDirtyFlag:(BOOL)flag;
- (void)setSyncVersion:(id)version;
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

- (void)setPodcastsDomainVersion:(id)version
{
  versionCopy = version;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:versionCopy];
}

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  podcastsDomainVersion = [v2 podcastsDomainVersion];

  return podcastsDomainVersion;
}

- (void)setSyncDirtyFlag:(BOOL)flag
{
  flagCopy = flag;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markSubscriptionSyncDirty:flagCopy for:{-[MTSubscriptionSyncStorage syncType](self, "syncType")}];
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

- (void)setSyncVersion:(id)version
{
  versionCopy = version;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 updateSubscriptionsSyncVersionFor:-[MTSubscriptionSyncStorage syncType](self newValue:{"syncType"), versionCopy}];

  v6 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncClass];
  syncType = [(MTSubscriptionSyncStorage *)self syncType];

  [(objc_class *)v6 didUpdateSubscriptionsSyncVersionForSyncType:syncType];
}

+ (void)resetAllSubscriptionsSyncKeys
{
  [self resetForSyncType:0];

  [self resetForSyncType:1];
}

+ (void)resetForSyncType:(int64_t)type
{
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 resetSubscriptionsSyncVersionFor:type];

  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markSubscriptionSyncDirty:1 for:type];

  v6 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v6 resetSubscriptionsLastSyncTimestampFor:type];
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

- (void)enableSubscriptionOnPodcastUuid:(id)uuid ctx:(id)ctx
{
  ctxCopy = ctx;
  uuidCopy = uuid;
  v7 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v7 unsafeEnableSubscriptionOnPodcastUUID:uuidCopy from:0 context:ctxCopy];
}

- (void)disableSubscriptionsWithUuids:(id)uuids ctx:(id)ctx
{
  ctxCopy = ctx;
  uuidsCopy = uuids;
  v7 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v7 disableSubscriptionsOnPodcastUUIDs:uuidsCopy from:0 context:ctxCopy];
}

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  importContext = [v2 importContext];

  return importContext;
}

@end