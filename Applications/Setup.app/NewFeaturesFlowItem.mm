@interface NewFeaturesFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (id)viewController;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setChronicle:(id)a3;
@end

@implementation NewFeaturesFlowItem

- (void)setChronicle:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle) = a3;
  v3 = a3;
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
    v3 = self;
    if ([v2 hasCompletedInitialRun])
    {
      v4 = [sub_100004C40() needsToRun];
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0;
    }

    LOBYTE(self) = v4;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  sub_100006410(&qword_1003A0110);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(a3);
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
  v12 = self;
  sub_100063A28(0, 0, v6, &unk_1002979A0, v11);
}

- (void)controllerWasPopped
{
  v2 = self;
  [sub_100004C40() updatePresentedKey:0];
  swift_unknownObjectRelease();
}

- (id)viewController
{
  v2 = self;
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