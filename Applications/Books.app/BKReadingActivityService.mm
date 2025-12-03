@interface BKReadingActivityService
+ (NSString)includePDFsDefaultsKey;
+ (id)readingGoalsUserDefaultsKey;
- (BKReadingActivityService)init;
- (BOOL)enableCloudSync;
- (BOOL)todayIsStreakDay;
- (double)readingTimeTodayIncludingUnflushed;
- (int64_t)allTimeRecordStreak;
- (int64_t)currentStreak;
- (int64_t)timeReadToday;
- (void)changeBooksPerYearGoal:(int64_t)goal :(BOOL)a4;
- (void)changeDailyGoal:(double)goal :(BOOL)a4;
- (void)clearData;
- (void)dynamicProgressChanged:(id)changed;
- (void)handleCloudChangeNotification:(id)notification;
- (void)resumeNotifications;
- (void)setCurrentBooksFinishedStateTo:(int64_t)to;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)setReadingGoalsEnabled:(BOOL)enabled;
- (void)setReadingHistoryForWeekWithEnding:(id)ending;
- (void)setReadingHistoryWithBeginning:(id)beginning ending:(id)ending;
- (void)suppressNotifications;
- (void)timeTracker:(id)tracker didBeginTrackingSession:(id)session trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags;
- (void)timeTracker:(id)tracker didEndTrackingSession:(id)session duration:(double)duration trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags;
- (void)willMarkAsset:(id)asset finished:(BOOL)finished finishedDate:(id)date;
@end

@implementation BKReadingActivityService

+ (NSString)includePDFsDefaultsKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (id)readingGoalsUserDefaultsKey
{
  v2 = sub_1007A2214();

  return v2;
}

- (BOOL)enableCloudSync
{
  v3 = OBJC_IVAR___BKReadingActivityService_enableCloudSync;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableCloudSync:(BOOL)sync
{
  selfCopy = self;
  ReadingActivityService.enableCloudSync.setter(sync);
}

- (int64_t)currentStreak
{
  selfCopy = self;
  v3 = ReadingActivityService.currentStreak.getter();

  return v3;
}

- (int64_t)allTimeRecordStreak
{
  selfCopy = self;
  v3 = ReadingActivityService.allTimeRecordStreak.getter();

  return v3;
}

- (int64_t)timeReadToday
{
  selfCopy = self;
  v3 = ReadingActivityService.timeReadToday.getter();

  return v3;
}

- (BOOL)todayIsStreakDay
{
  selfCopy = self;
  IsStreak = ReadingActivityService.todayIsStreakDay.getter();

  return IsStreak & 1;
}

- (double)readingTimeTodayIncludingUnflushed
{
  selfCopy = self;
  v3 = ReadingActivityService.readingTimeTodayIncludingUnflushed()();

  return v3;
}

- (void)setReadingGoalsEnabled:(BOOL)enabled
{
  books = [objc_opt_self() books];
  userDefaults = [books userDefaults];

  isa = sub_1007A2684().super.super.isa;
  v6 = sub_1007A2214();
  [userDefaults setValue:isa forKey:v6];
}

- (void)clearData
{
  selfCopy = self;
  ReadingActivityService.clearData()();
}

- (void)handleCloudChangeNotification:(id)notification
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  selfCopy = self;
  sub_100647748();

  (*(v5 + 8))(v7, v4);
}

- (BKReadingActivityService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)changeBooksPerYearGoal:(int64_t)goal :(BOOL)a4
{
  selfCopy = self;
  ReadingActivityService.changeBooksPerYearGoal(_:_:)(goal, a4);
}

- (void)changeDailyGoal:(double)goal :(BOOL)a4
{
  selfCopy = self;
  ReadingActivityService.changeDailyGoal(_:_:)(goal, a4);
}

- (void)setCurrentBooksFinishedStateTo:(int64_t)to
{
  v3 = self + OBJC_IVAR___BKReadingActivityService_booksFinishedModule;
  swift_beginAccess();
  if (*(v3 + 3))
  {
    sub_100009864((v3 + 40), v4);
    sub_10000E3E8(v4, v4[3]);
    sub_10079E9E4();
    sub_1000074E0(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)setReadingHistoryWithBeginning:(id)beginning ending:(id)ending
{
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  sub_100796B64();
  sub_100796B64();
  v12 = self + OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  if (*(v12 + 3))
  {
    sub_100009864((v12 + 40), v14);
    sub_10000E3E8(v14, v14[3]);
    sub_10079EA64();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    sub_1000074E0(v14);
  }

  else
  {
    __break(1u);
  }
}

- (void)setReadingHistoryForWeekWithEnding:(id)ending
{
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796B64();
  v8 = self + OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  if (*(v8 + 3))
  {
    sub_100009864((v8 + 40), v9);
    sub_10000E3E8(v9, v9[3]);
    sub_10079EA74();
    (*(v5 + 8))(v7, v4);
    sub_1000074E0(v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)suppressNotifications
{
  selfCopy = self;
  ReadingActivityService.suppressNotifications()();
}

- (void)resumeNotifications
{
  selfCopy = self;
  ReadingActivityService.resumeNotifications()();
}

- (void)timeTracker:(id)tracker didBeginTrackingSession:(id)session trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags
{
  flagsCopy = flags;
  v12 = sub_100796C04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10064DCBC(v15, type, asset, flagsCopy);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
}

- (void)timeTracker:(id)tracker didEndTrackingSession:(id)session duration:(double)duration trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags
{
  flagsCopy = flags;
  v12 = sub_100796C04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10064E574(v15, asset, flagsCopy);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
}

- (void)dynamicProgressChanged:(id)changed
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ReadingActivityService.dynamicProgressChanged(_:)(changed);
  swift_unknownObjectRelease();
}

- (void)willMarkAsset:(id)asset finished:(BOOL)finished finishedDate:(id)date
{
  v7 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1007A2254();
  if (date)
  {
    sub_100796B64();
    v10 = sub_100796BB4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  if (*(&self->super.isa + OBJC_IVAR___BKReadingActivityService_achievementsController))
  {
    selfCopy = self;

    sub_10079EAD4();

    sub_100007840(v9, &unk_100ADB5C0);
  }

  else
  {
    __break(1u);
  }
}

@end