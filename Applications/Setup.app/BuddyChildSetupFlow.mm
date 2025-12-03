@interface BuddyChildSetupFlow
+ (id)allowedFlowItems;
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup19BuddyChildSetupFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)childSetupPresenter:(id)presenter didFail:(id)fail;
- (void)didSucceedWithChildSetupPresenter:(id)presenter;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)setChildSetupPresenter:(id)presenter;
- (void)setManagedConfiguration:(id)configuration;
- (void)setupLocationServicesWithNextTaskInfo:(BuddyAISFlowTaskInfo *)info completion:(id)completion;
- (void)setupPasscodeWithNextTaskInfo:(BuddyAISFlowTaskInfo *)info completion:(id)completion;
- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddyChildSetupFlow

- (_TtC5Setup19BuddyChildSetupFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  v9 = _Block_copy(injector);
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

  controllerCopy = controller;
  swift_unknownObjectRetain();
  starterCopy = starter;
  return sub_10005F110(controller, delegate, starter, v9, v10);
}

- (void)setManagedConfiguration:(id)configuration
{
  v4 = *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration);
  *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration) = configuration;
  configurationCopy = configuration;
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

- (void)setChildSetupPresenter:(id)presenter
{
  v4 = *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter);
  *(&self->managedConfiguration + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter) = presenter;
  presenterCopy = presenter;
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
  selfCopy = self;
  v3 = sub_10005F624();

  return v3 & 1;
}

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_100064ACC();
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10005F704(done, item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)setupPasscodeWithNextTaskInfo:(BuddyAISFlowTaskInfo *)info completion:(id)completion
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = info;
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
  infoCopy = info;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_100299200, v14);
}

- (void)setupLocationServicesWithNextTaskInfo:(BuddyAISFlowTaskInfo *)info completion:(id)completion
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = info;
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
  infoCopy = info;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_1002991E0, v14);
}

- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = with;
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
  withCopy = with;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_1002979A0, v14);
}

- (void)didSucceedWithChildSetupPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_100064CDC();
}

- (void)childSetupPresenter:(id)presenter didFail:(id)fail
{
  presenterCopy = presenter;
  failCopy = fail;
  selfCopy = self;
  sub_100064E60();
}

@end