@interface BuddyChildSetupFlow
+ (id)allowedFlowItems;
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup19BuddyChildSetupFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)childSetupPresenter:(id)a3 didFail:(id)a4;
- (void)didSucceedWithChildSetupPresenter:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)setChildSetupPresenter:(id)a3;
- (void)setManagedConfiguration:(id)a3;
- (void)setupLocationServicesWithNextTaskInfo:(BuddyAISFlowTaskInfo *)a3 completion:(id)a4;
- (void)setupPasscodeWithNextTaskInfo:(BuddyAISFlowTaskInfo *)a3 completion:(id)a4;
- (void)setupPerformAIDASignInWith:(NSDictionary *)a3 completion:(id)a4;
- (void)startFlowAnimated:(BOOL)a3;
@end

@implementation BuddyChildSetupFlow

- (_TtC5Setup19BuddyChildSetupFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_100065ADC;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a5;
  return sub_10005F110(a3, a4, a5, v9, v10);
}

- (void)setManagedConfiguration:(id)a3
{
  v4 = *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration);
  *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration) = a3;
  v3 = a3;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setChildSetupPresenter:(id)a3
{
  v4 = *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter);
  *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter) = a3;
  v3 = a3;
}

+ (id)allowedFlowItems
{
  sub_100006410(&qword_1003A2350);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100297E80;
  *(v2 + 32) = sub_1000648DC(0, &qword_1003A2338);
  *(v2 + 40) = sub_1000648DC(0, &qword_1003A2348);
  sub_100006410(&qword_1003A2358);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)controllerNeedsToRun
{
  v2 = self;
  v3 = sub_10005F624();

  return v3 & 1;
}

- (void)startFlowAnimated:(BOOL)a3
{
  v3 = self;
  sub_100064ACC();
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_10005F704(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)setupPasscodeWithNextTaskInfo:(BuddyAISFlowTaskInfo *)a3 completion:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002991F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002991F8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100063A28(0, 0, v9, &unk_100299200, v14);
}

- (void)setupLocationServicesWithNextTaskInfo:(BuddyAISFlowTaskInfo *)a3 completion:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002991D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002991D8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100063A28(0, 0, v9, &unk_1002991E0, v14);
}

- (void)setupPerformAIDASignInWith:(NSDictionary *)a3 completion:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100299188;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100297310;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100063A28(0, 0, v9, &unk_1002979A0, v14);
}

- (void)didSucceedWithChildSetupPresenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100064CDC();
}

- (void)childSetupPresenter:(id)a3 didFail:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100064E60();
}

@end