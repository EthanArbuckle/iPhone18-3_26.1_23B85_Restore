@interface PodcastsStateCoordinator
+ (_TtC8Podcasts24PodcastsStateCoordinator)shared;
+ (void)setShared:(id)shared;
- (_TtC8Podcasts24PodcastsStateCoordinator)init;
- (id)currentPodcastStateDescriptionFrom:(id)from;
- (void)disableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from;
- (void)disableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from context:(id)context;
- (void)disableSubscriptionsOnPodcastUUIDs:(id)ds from:(int64_t)from context:(id)context;
- (void)enableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from;
- (void)insertNewImplicitFollowIfNeededForPlayerItem:(id)item from:(int64_t)from completion:(id)completion;
- (void)unsafeBookmarkEpisode:(id)episode onTimestamp:(double)timestamp shouldDownloadEpisode:(BOOL)downloadEpisode from:(int64_t)from;
- (void)unsafeDidBumpLastDatePlayedFor:(id)for;
- (void)unsafeEnableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from context:(id)context;
- (void)unsafeEpisodePlayedBeyondThresholdForFirstTime:(id)time from:(int64_t)from;
- (void)unsafeMark:(id)mark as:(int64_t)as in:(id)in from:(int64_t)from;
- (void)unsafeRemoveEpisodeFromBookmarks:(id)bookmarks from:(int64_t)from;
@end

@implementation PodcastsStateCoordinator

+ (_TtC8Podcasts24PodcastsStateCoordinator)shared
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static PodcastsStateCoordinator.shared;
}

+ (void)setShared:(id)shared
{
  v3 = qword_100572820;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static PodcastsStateCoordinator.shared;
  static PodcastsStateCoordinator.shared = sharedCopy;
}

- (_TtC8Podcasts24PodcastsStateCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)enableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  PodcastsStateCoordinator.enableSubscription(onPodcastUUID:from:)(v6, v8, from);
}

- (void)unsafeEnableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from context:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v9 = [contextCopy podcastForUuid:d];
  if (v9)
  {
    v10 = v9;
    sub_1002F2D24(v9, from);
    [contextCopy saveInCurrentBlock];
  }
}

- (void)disableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider);
  dCopy = d;
  selfCopy = self;
  mainOrPrivateContext = [v6 mainOrPrivateContext];
  [(PodcastsStateCoordinator *)selfCopy disableSubscriptionOnPodcastUUID:dCopy from:from context:mainOrPrivateContext];
}

- (void)disableSubscriptionOnPodcastUUID:(id)d from:(int64_t)from context:(id)context
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = self;
  v11[6] = from;
  v17[4] = sub_1002FA5A8;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = &unk_1004EC640;
  v12 = _Block_copy(v17);
  contextCopy = context;
  selfCopy = self;
  v15 = contextCopy;
  v16 = selfCopy;

  [v15 performBlockAndWaitWithSave:v12];

  _Block_release(v12);
}

- (void)disableSubscriptionsOnPodcastUUIDs:(id)ds from:(int64_t)from context:(id)context
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  v9[2] = context;
  v9[3] = v8;
  v9[4] = self;
  v9[5] = from;
  v15[4] = sub_1002FA5CC;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F038;
  v15[3] = &unk_1004EC5F0;
  v10 = _Block_copy(v15);
  contextCopy = context;
  selfCopy = self;
  v13 = contextCopy;
  v14 = selfCopy;

  [v13 performBlockAndWaitWithSave:v10];

  _Block_release(v10);
}

- (void)unsafeBookmarkEpisode:(id)episode onTimestamp:(double)timestamp shouldDownloadEpisode:(BOOL)downloadEpisode from:(int64_t)from
{
  downloadEpisodeCopy = downloadEpisode;
  episodeCopy = episode;
  selfCopy = self;
  sub_1002F3EC0(episodeCopy, *&timestamp, 0, downloadEpisodeCopy, from);
}

- (void)unsafeRemoveEpisodeFromBookmarks:(id)bookmarks from:(int64_t)from
{
  bookmarksCopy = bookmarks;
  selfCopy = self;
  PodcastsStateCoordinator.unsafeRemoveEpisodeFromBookmarks(episode:from:)(bookmarksCopy, from);
}

- (void)insertNewImplicitFollowIfNeededForPlayerItem:(id)item from:(int64_t)from completion:(id)completion
{
  type metadata accessor for EpisodePlayerItem();
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastPlayerItem();
  __chkstk_darwin();
  v11 = type metadata accessor for PlayerItem();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(completion);
  itemCopy = item;
  _Block_copy(v15);
  selfCopy = self;
  sub_10021C6D8(itemCopy);
  v18 = itemCopy;
  sub_10021C844(v18, v10);
  PlayerItem.init(podcast:episode:)();
  sub_1002F90C4(v14, from, selfCopy, v15);
  _Block_release(v15);

  _Block_release(v15);
  (*(v12 + 8))(v14, v11);
}

- (void)unsafeEpisodePlayedBeyondThresholdForFirstTime:(id)time from:(int64_t)from
{
  timeCopy = time;
  selfCopy = self;
  PodcastsStateCoordinator.unsafeEpisodePlayedBeyondThresholdForFirstTime(_:from:)(time, from);
}

- (void)unsafeMark:(id)mark as:(int64_t)as in:(id)in from:(int64_t)from
{
  markCopy = mark;
  inCopy = in;
  selfCopy = self;
  sub_1002F9768(markCopy, as, from);
}

- (void)unsafeDidBumpLastDatePlayedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  PodcastsStateCoordinator.unsafeDidBumpLastDatePlayed(for:)(forCopy);
}

- (id)currentPodcastStateDescriptionFrom:(id)from
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _s8Podcasts0A16StateCoordinatorC014currentPodcastB11Description4fromS2S_tF_0();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

@end