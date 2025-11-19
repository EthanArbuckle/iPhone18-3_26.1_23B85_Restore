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
- (void)changeBooksPerYearGoal:(int64_t)a3 :(BOOL)a4;
- (void)changeDailyGoal:(double)a3 :(BOOL)a4;
- (void)clearData;
- (void)dynamicProgressChanged:(id)a3;
- (void)handleCloudChangeNotification:(id)a3;
- (void)resumeNotifications;
- (void)setCurrentBooksFinishedStateTo:(int64_t)a3;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)setReadingGoalsEnabled:(BOOL)a3;
- (void)setReadingHistoryForWeekWithEnding:(id)a3;
- (void)setReadingHistoryWithBeginning:(id)a3 ending:(id)a4;
- (void)suppressNotifications;
- (void)timeTracker:(id)a3 didBeginTrackingSession:(id)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 readingFeatureFlags:(int64_t)a7;
- (void)timeTracker:(id)a3 didEndTrackingSession:(id)a4 duration:(double)a5 trackerEventType:(unint64_t)a6 asset:(id)a7 readingFeatureFlags:(int64_t)a8;
- (void)willMarkAsset:(id)a3 finished:(BOOL)a4 finishedDate:(id)a5;
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

- (void)setEnableCloudSync:(BOOL)a3
{
  v4 = self;
  ReadingActivityService.enableCloudSync.setter(a3);
}

- (int64_t)currentStreak
{
  v2 = self;
  v3 = ReadingActivityService.currentStreak.getter();

  return v3;
}

- (int64_t)allTimeRecordStreak
{
  v2 = self;
  v3 = ReadingActivityService.allTimeRecordStreak.getter();

  return v3;
}

- (int64_t)timeReadToday
{
  v2 = self;
  v3 = ReadingActivityService.timeReadToday.getter();

  return v3;
}

- (BOOL)todayIsStreakDay
{
  v2 = self;
  IsStreak = ReadingActivityService.todayIsStreakDay.getter();

  return IsStreak & 1;
}

- (double)readingTimeTodayIncludingUnflushed
{
  v2 = self;
  v3 = ReadingActivityService.readingTimeTodayIncludingUnflushed()();

  return v3;
}

- (void)setReadingGoalsEnabled:(BOOL)a3
{
  v3 = [objc_opt_self() books];
  v4 = [v3 userDefaults];

  isa = sub_1007A2684().super.super.isa;
  v6 = sub_1007A2214();
  [v4 setValue:isa forKey:v6];
}

- (void)clearData
{
  v2 = self;
  ReadingActivityService.clearData()();
}

- (void)handleCloudChangeNotification:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = self;
  sub_100647748();

  (*(v5 + 8))(v7, v4);
}

- (BKReadingActivityService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)changeBooksPerYearGoal:(int64_t)a3 :(BOOL)a4
{
  v6 = self;
  ReadingActivityService.changeBooksPerYearGoal(_:_:)(a3, a4);
}

- (void)changeDailyGoal:(double)a3 :(BOOL)a4
{
  v6 = self;
  ReadingActivityService.changeDailyGoal(_:_:)(a3, a4);
}

- (void)setCurrentBooksFinishedStateTo:(int64_t)a3
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

- (void)setReadingHistoryWithBeginning:(id)a3 ending:(id)a4
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

- (void)setReadingHistoryForWeekWithEnding:(id)a3
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
  v2 = self;
  ReadingActivityService.suppressNotifications()();
}

- (void)resumeNotifications
{
  v2 = self;
  ReadingActivityService.resumeNotifications()();
}

- (void)timeTracker:(id)a3 didBeginTrackingSession:(id)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 readingFeatureFlags:(int64_t)a7
{
  v7 = a7;
  v12 = sub_100796C04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = self;
  sub_10064DCBC(v15, a5, a6, v7);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
}

- (void)timeTracker:(id)a3 didEndTrackingSession:(id)a4 duration:(double)a5 trackerEventType:(unint64_t)a6 asset:(id)a7 readingFeatureFlags:(int64_t)a8
{
  v8 = a8;
  v12 = sub_100796C04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = self;
  sub_10064E574(v15, a7, v8);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
}

- (void)dynamicProgressChanged:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  ReadingActivityService.dynamicProgressChanged(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)willMarkAsset:(id)a3 finished:(BOOL)a4 finishedDate:(id)a5
{
  v7 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1007A2254();
  if (a5)
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
    v12 = self;

    sub_10079EAD4();

    sub_100007840(v9, &unk_100ADB5C0);
  }

  else
  {
    __break(1u);
  }
}

@end