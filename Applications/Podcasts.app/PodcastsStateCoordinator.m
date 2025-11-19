@interface PodcastsStateCoordinator
+ (_TtC8Podcasts24PodcastsStateCoordinator)shared;
+ (void)setShared:(id)a3;
- (_TtC8Podcasts24PodcastsStateCoordinator)init;
- (id)currentPodcastStateDescriptionFrom:(id)a3;
- (void)disableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4;
- (void)disableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4 context:(id)a5;
- (void)disableSubscriptionsOnPodcastUUIDs:(id)a3 from:(int64_t)a4 context:(id)a5;
- (void)enableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4;
- (void)insertNewImplicitFollowIfNeededForPlayerItem:(id)a3 from:(int64_t)a4 completion:(id)a5;
- (void)unsafeBookmarkEpisode:(id)a3 onTimestamp:(double)a4 shouldDownloadEpisode:(BOOL)a5 from:(int64_t)a6;
- (void)unsafeDidBumpLastDatePlayedFor:(id)a3;
- (void)unsafeEnableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4 context:(id)a5;
- (void)unsafeEpisodePlayedBeyondThresholdForFirstTime:(id)a3 from:(int64_t)a4;
- (void)unsafeMark:(id)a3 as:(int64_t)a4 in:(id)a5 from:(int64_t)a6;
- (void)unsafeRemoveEpisodeFromBookmarks:(id)a3 from:(int64_t)a4;
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

+ (void)setShared:(id)a3
{
  v3 = qword_100572820;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static PodcastsStateCoordinator.shared;
  static PodcastsStateCoordinator.shared = v4;
}

- (_TtC8Podcasts24PodcastsStateCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)enableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  PodcastsStateCoordinator.enableSubscription(onPodcastUUID:from:)(v6, v8, a4);
}

- (void)unsafeEnableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4 context:(id)a5
{
  v8 = a5;
  v11 = self;
  v9 = [v8 podcastForUuid:a3];
  if (v9)
  {
    v10 = v9;
    sub_1002F2D24(v9, a4);
    [v8 saveInCurrentBlock];
  }
}

- (void)disableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider);
  v7 = a3;
  v9 = self;
  v8 = [v6 mainOrPrivateContext];
  [(PodcastsStateCoordinator *)v9 disableSubscriptionOnPodcastUUID:v7 from:a4 context:v8];
}

- (void)disableSubscriptionOnPodcastUUID:(id)a3 from:(int64_t)a4 context:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = self;
  v11[6] = a4;
  v17[4] = sub_1002FA5A8;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = &unk_1004EC640;
  v12 = _Block_copy(v17);
  v13 = a5;
  v14 = self;
  v15 = v13;
  v16 = v14;

  [v15 performBlockAndWaitWithSave:v12];

  _Block_release(v12);
}

- (void)disableSubscriptionsOnPodcastUUIDs:(id)a3 from:(int64_t)a4 context:(id)a5
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = v8;
  v9[4] = self;
  v9[5] = a4;
  v15[4] = sub_1002FA5CC;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F038;
  v15[3] = &unk_1004EC5F0;
  v10 = _Block_copy(v15);
  v11 = a5;
  v12 = self;
  v13 = v11;
  v14 = v12;

  [v13 performBlockAndWaitWithSave:v10];

  _Block_release(v10);
}

- (void)unsafeBookmarkEpisode:(id)a3 onTimestamp:(double)a4 shouldDownloadEpisode:(BOOL)a5 from:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = self;
  sub_1002F3EC0(v10, *&a4, 0, v7, a6);
}

- (void)unsafeRemoveEpisodeFromBookmarks:(id)a3 from:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  PodcastsStateCoordinator.unsafeRemoveEpisodeFromBookmarks(episode:from:)(v6, a4);
}

- (void)insertNewImplicitFollowIfNeededForPlayerItem:(id)a3 from:(int64_t)a4 completion:(id)a5
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
  v15 = _Block_copy(a5);
  v16 = a3;
  _Block_copy(v15);
  v17 = self;
  sub_10021C6D8(v16);
  v18 = v16;
  sub_10021C844(v18, v10);
  PlayerItem.init(podcast:episode:)();
  sub_1002F90C4(v14, a4, v17, v15);
  _Block_release(v15);

  _Block_release(v15);
  (*(v12 + 8))(v14, v11);
}

- (void)unsafeEpisodePlayedBeyondThresholdForFirstTime:(id)a3 from:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  PodcastsStateCoordinator.unsafeEpisodePlayedBeyondThresholdForFirstTime(_:from:)(a3, a4);
}

- (void)unsafeMark:(id)a3 as:(int64_t)a4 in:(id)a5 from:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = self;
  sub_1002F9768(v10, a4, a6);
}

- (void)unsafeDidBumpLastDatePlayedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  PodcastsStateCoordinator.unsafeDidBumpLastDatePlayed(for:)(v4);
}

- (id)currentPodcastStateDescriptionFrom:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  _s8Podcasts0A16StateCoordinatorC014currentPodcastB11Description4fromS2S_tF_0();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

@end