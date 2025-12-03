@interface MTForegroundSyncUtil
+ (MTForegroundSyncUtil)sharedInstance;
- (NSDate)lastExpectedFeedsUpdateDate;
- (void)feedUpdateAllPodcastsOnForeground;
- (void)setLastExpectedFeedsUpdateDate:(id)date;
- (void)startCloudSyncAfterPrivacy;
- (void)syncEverythingIfNeeded;
- (void)updatePlaybackSettingIfNeeded;
@end

@implementation MTForegroundSyncUtil

+ (MTForegroundSyncUtil)sharedInstance
{
  if (qword_100572848 != -1)
  {
    swift_once();
  }

  v3 = static ForegroundSyncUtil.shared;

  return v3;
}

- (void)updatePlaybackSettingIfNeeded
{
  selfCopy = self;
  ForegroundSyncUtil.updatePlaybackSettingIfNeeded()();
}

- (void)feedUpdateAllPodcastsOnForeground
{
  selfCopy = self;
  ForegroundSyncUtil.feedUpdateAllPodcastsOnForeground()();
}

- (void)syncEverythingIfNeeded
{
  selfCopy = self;
  ForegroundSyncUtil.syncEverythingIfNeeded()();
}

- (NSDate)lastExpectedFeedsUpdateDate
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setLastExpectedFeedsUpdateDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (void)startCloudSyncAfterPrivacy
{
  selfCopy = self;
  ForegroundSyncUtil.startCloudSyncAfterPrivacy()();
}

@end