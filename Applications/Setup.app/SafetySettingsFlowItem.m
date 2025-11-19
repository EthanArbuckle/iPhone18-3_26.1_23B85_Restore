@interface SafetySettingsFlowItem
+ (id)cloudConfigSkipKey;
- (BYRunState)runState;
- (BuddySafetySettingsUIProvider)safetySettingsUIProvider;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)startFlowItem:(BOOL)a3;
@end

@implementation SafetySettingsFlowItem

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BuddySafetySettingsUIProvider)safetySettingsUIProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setNavigationController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController) = a3;
  v3 = a3;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100298DD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  v13 = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (void)startFlowItem:(BOOL)a3
{
  v3 = self;
  sub_10005B3A0();
}

- (void)safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:(id)a3
{
  if (a3)
  {
    sub_10005AE0C();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_10005A9EC(v4);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10005B650();
}

@end