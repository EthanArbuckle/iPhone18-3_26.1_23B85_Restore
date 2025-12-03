@interface BuddySafetyAndHandlingFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (id)viewController;
- (void)continueButtonTapped;
- (void)controllerWasPopped;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)setBuddyPreferencesExcludedFromBackup:(id)backup;
- (void)setSafetyAndHandlingManager:(id)manager;
@end

@implementation BuddySafetyAndHandlingFlowItem

- (void)setBuddyPreferencesExcludedFromBackup:(id)backup
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_buddyPreferencesExcludedFromBackup);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_buddyPreferencesExcludedFromBackup) = backup;
  backupCopy = backup;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSafetyAndHandlingManager:(id)manager
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager) = manager;
  managerCopy = manager;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_100029030();

  return v3 & 1;
}

- (id)viewController
{
  selfCopy = self;
  v3 = sub_100029144();

  return v3;
}

- (void)controllerWasPopped
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences];
    selfCopy = self;
    v4 = v2;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v6 = String._bridgeToObjectiveC()();
    [v3 setObject:isa forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController);
  if (v6)
  {
    v7 = operation == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    sub_100029DB4(0, &qword_1003A0C98);
    controllerCopy = controller;
    viewControllerCopy = viewController;
    selfCopy = self;
    v13 = v6;
    if (static NSObject.== infix(_:_:)())
    {
      sub_1000293B8(controllerCopy);
    }
  }
}

- (void)continueButtonTapped
{
  selfCopy = self;
  sub_1000299C0();
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end