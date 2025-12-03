@interface NewFeaturesFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (id)viewController;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setChronicle:(id)chronicle;
@end

@implementation NewFeaturesFlowItem

- (void)setChronicle:(id)chronicle
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle) = chronicle;
  chronicleCopy = chronicle;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BOOL)controllerNeedsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_runState);
  if (v2)
  {
    selfCopy = self;
    if ([v2 hasCompletedInitialRun])
    {
      needsToRun = [sub_100004C40() needsToRun];
      swift_unknownObjectRelease();
    }

    else
    {
      needsToRun = 0;
    }

    LOBYTE(self) = needsToRun;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  sub_100006410(&qword_1003A0110);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100297308;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100297310;
  v11[5] = v10;
  selfCopy = self;
  sub_100063A28(0, 0, v6, &unk_1002979A0, v11);
}

- (void)controllerWasPopped
{
  selfCopy = self;
  [sub_100004C40() updatePresentedKey:0];
  swift_unknownObjectRelease();
}

- (id)viewController
{
  selfCopy = self;
  v3 = sub_100005764();

  return v3;
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end