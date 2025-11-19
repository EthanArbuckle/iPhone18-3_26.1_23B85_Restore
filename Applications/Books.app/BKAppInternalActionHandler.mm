@interface BKAppInternalActionHandler
- (BKAppInternalActionHandler)init;
- (void)books_internal_disableStoreInternalDebugMessageUI:(id)a3;
- (void)books_internal_incrementPostLaunchCacheCount:(id)a3;
- (void)books_internal_selectSidebarSearch:(id)a3;
- (void)books_internal_simulateMemoryWarning:(id)a3;
- (void)books_internal_toggleRecordingLiveResizeStats:(id)a3;
- (void)books_internal_triggerFakeDailyReadingGoalAchievementNotification:(id)a3;
- (void)books_internal_triggerFakeLongestStreakNotification:(id)a3;
- (void)books_internal_triggerFakeYearlyBooksGoalAchievementNotification:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation BKAppInternalActionHandler

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003BFEDC(v4);
}

- (void)books_internal_simulateMemoryWarning:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 postNotificationName:UIApplicationDidReceiveMemoryWarningNotification object:*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_application)];

  sub_100007840(v7, &unk_100AD5B40);
}

- (void)books_internal_toggleRecordingLiveResizeStats:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_userDefaults) setBool:objc_msgSend(*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_userDefaults) forKey:{"BOOLForKey:", TUIUserDefaultRecordLiveResizeStats, v6, v7) ^ 1, TUIUserDefaultRecordLiveResizeStats}];

  sub_100007840(&v6, &unk_100AD5B40);
}

- (void)books_internal_disableStoreInternalDebugMessageUI:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  v6 = OBJC_IVAR___BKAppInternalActionHandler_userDefaults;
  v7 = *(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_userDefaults);
  v8 = sub_1007A2214();
  LODWORD(v7) = [v7 BOOLForKey:v8];

  v9 = *(&self->super.super.isa + v6);
  v10 = sub_1007A2214();
  [v9 setBool:v7 ^ 1 forKey:v10];

  sub_100007840(v11, &unk_100AD5B40);
}

- (void)books_internal_triggerFakeDailyReadingGoalAchievementNotification:(id)a3
{
  v5 = sub_10079E6B4();
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  *v7 = 0;
  v7[8] = 0;
  swift_storeEnumTagMultiPayload();
  static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v7, 0);

  sub_1003C2EB4(v7);
  sub_100007840(v10, &unk_100AD5B40);
}

- (void)books_internal_triggerFakeYearlyBooksGoalAchievementNotification:(id)a3
{
  v5 = sub_10079E6B4();
  __chkstk_darwin(v5);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  *v7 = 0;
  swift_storeEnumTagMultiPayload();
  static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v7, 0);

  sub_1003C2EB4(v7);
  sub_100007840(v10, &unk_100AD5B40);
}

- (void)books_internal_triggerFakeLongestStreakNotification:(id)a3
{
  v5 = sub_100796BB4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10079E6B4();
  __chkstk_darwin(v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v9 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v10 = self;
  }

  sub_1001F1160(&qword_100AE0CA8);
  *v8 = 88;
  sub_100796BA4();
  sub_1007989E4();
  swift_storeEnumTagMultiPayload();
  static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v8, 0);

  sub_1003C2EB4(v8);
  sub_100007840(v11, &unk_100AD5B40);
}

- (void)books_internal_selectSidebarSearch:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v5 = self;
  }

  v6 = [*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_sceneManager) primarySceneController];
  v7 = [v6 rootBarCoordinator];

  if (v7)
  {
    v8 = sub_1007A2214();
    [v7 selectWithIdentifier:v8 isUserAction:1];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100007840(&v9, &unk_100AD5B40);
}

- (void)books_internal_incrementPostLaunchCacheCount:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v5 = self;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_100AD18C8 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_100B23660 object:{*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_application), v7, v8}];

  sub_100007840(&v7, &unk_100AD5B40);
}

- (BKAppInternalActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end