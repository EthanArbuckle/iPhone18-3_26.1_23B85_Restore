@interface BuddySafetyAndHandlingFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (id)viewController;
- (void)continueButtonTapped;
- (void)controllerWasPopped;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)setBuddyPreferencesExcludedFromBackup:(id)a3;
- (void)setSafetyAndHandlingManager:(id)a3;
@end

@implementation BuddySafetyAndHandlingFlowItem

- (void)setBuddyPreferencesExcludedFromBackup:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_buddyPreferencesExcludedFromBackup);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_buddyPreferencesExcludedFromBackup) = a3;
  v3 = a3;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSafetyAndHandlingManager:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager) = a3;
  v3 = a3;
}

- (BOOL)controllerNeedsToRun
{
  v2 = self;
  v3 = sub_100029030();

  return v3 & 1;
}

- (id)viewController
{
  v2 = self;
  v3 = sub_100029144();

  return v3;
}

- (void)controllerWasPopped
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences];
    v7 = self;
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

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController);
  if (v6)
  {
    v7 = a5 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    sub_100029DB4(0, &qword_1003A0C98);
    v11 = a3;
    v12 = a4;
    v14 = self;
    v13 = v6;
    if (static NSObject.== infix(_:_:)())
    {
      sub_1000293B8(v11);
    }
  }
}

- (void)continueButtonTapped
{
  v2 = self;
  sub_1000299C0();
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end