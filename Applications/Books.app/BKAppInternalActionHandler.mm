@interface BKAppInternalActionHandler
- (BKAppInternalActionHandler)init;
- (void)books_internal_disableStoreInternalDebugMessageUI:(id)i;
- (void)books_internal_incrementPostLaunchCacheCount:(id)count;
- (void)books_internal_selectSidebarSearch:(id)search;
- (void)books_internal_simulateMemoryWarning:(id)warning;
- (void)books_internal_toggleRecordingLiveResizeStats:(id)stats;
- (void)books_internal_triggerFakeDailyReadingGoalAchievementNotification:(id)notification;
- (void)books_internal_triggerFakeLongestStreakNotification:(id)notification;
- (void)books_internal_triggerFakeYearlyBooksGoalAchievementNotification:(id)notification;
- (void)validateCommand:(id)command;
@end

@implementation BKAppInternalActionHandler

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1003BFEDC(commandCopy);
}

- (void)books_internal_simulateMemoryWarning:(id)warning
{
  if (warning)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter postNotificationName:UIApplicationDidReceiveMemoryWarningNotification object:*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_application)];

  sub_100007840(v7, &unk_100AD5B40);
}

- (void)books_internal_toggleRecordingLiveResizeStats:(id)stats
{
  if (stats)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_userDefaults) setBool:objc_msgSend(*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_userDefaults) forKey:{"BOOLForKey:", TUIUserDefaultRecordLiveResizeStats, v6, v7) ^ 1, TUIUserDefaultRecordLiveResizeStats}];

  sub_100007840(&v6, &unk_100AD5B40);
}

- (void)books_internal_disableStoreInternalDebugMessageUI:(id)i
{
  if (i)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
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

- (void)books_internal_triggerFakeDailyReadingGoalAchievementNotification:(id)notification
{
  v5 = sub_10079E6B4();
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (notification)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  *v7 = 0;
  v7[8] = 0;
  swift_storeEnumTagMultiPayload();
  static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v7, 0);

  sub_1003C2EB4(v7);
  sub_100007840(v10, &unk_100AD5B40);
}

- (void)books_internal_triggerFakeYearlyBooksGoalAchievementNotification:(id)notification
{
  v5 = sub_10079E6B4();
  __chkstk_darwin(v5);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (notification)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  *v7 = 0;
  swift_storeEnumTagMultiPayload();
  static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v7, 0);

  sub_1003C2EB4(v7);
  sub_100007840(v10, &unk_100AD5B40);
}

- (void)books_internal_triggerFakeLongestStreakNotification:(id)notification
{
  v5 = sub_100796BB4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10079E6B4();
  __chkstk_darwin(v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (notification)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
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

- (void)books_internal_selectSidebarSearch:(id)search
{
  if (search)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    selfCopy2 = self;
  }

  primarySceneController = [*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_sceneManager) primarySceneController];
  rootBarCoordinator = [primarySceneController rootBarCoordinator];

  if (rootBarCoordinator)
  {
    v8 = sub_1007A2214();
    [rootBarCoordinator selectWithIdentifier:v8 isUserAction:1];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100007840(&v9, &unk_100AD5B40);
}

- (void)books_internal_incrementPostLaunchCacheCount:(id)count
{
  if (count)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    selfCopy2 = self;
  }

  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_100AD18C8 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_100B23660 object:{*(&self->super.super.isa + OBJC_IVAR___BKAppInternalActionHandler_application), v7, v8}];

  sub_100007840(&v7, &unk_100AD5B40);
}

- (BKAppInternalActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end