@interface SafetySettingsFlowItem
+ (id)cloudConfigSkipKey;
- (BYRunState)runState;
- (BuddySafetySettingsUIProvider)safetySettingsUIProvider;
- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:(id)remove;
- (void)setNavigationController:(id)controller;
- (void)startFlowItem:(BOOL)item;
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

- (void)setNavigationController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController) = controller;
  controllerCopy = controller;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (void)startFlowItem:(BOOL)item
{
  selfCopy = self;
  sub_10005B3A0();
}

- (void)safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:(id)remove
{
  if (remove)
  {
    sub_10005AE0C();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_10005A9EC(v4);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10005B650();
}

@end