@interface CHWorkoutBrowsingViewController
- (CHWorkoutBrowsingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentedMirroredStartViewController:(id)controller;
- (void)activity:(id)activity didSaveWorkout:(id)workout;
- (void)handleQuickStartWorkoutActionContext:(id)context;
- (void)handleWorkoutConfigurationData:(id)data;
- (void)handleWorkoutConfigurationURL:(id)l;
- (void)popToRoot;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CHWorkoutBrowsingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003D36AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003D3B60(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003D3E20(disappear);
}

- (void)popToRoot
{
  selfCopy = self;
  sub_1003D40E0();
}

- (void)handleWorkoutConfigurationURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003D4E18();

  (*(v5 + 8))(v7, v4);
}

- (void)handleWorkoutConfigurationData:(id)data
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = selfCopy;
  sub_100215414(v10, v12);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v10;
  v16[5] = v12;
  v16[6] = v14;
  sub_10026E198(0, 0, v7, &unk_1006EDC80, v16);

  sub_10000AF88(v10, v12);
}

- (id)presentedMirroredStartViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1003D6A2C();

  return v6;
}

- (CHWorkoutBrowsingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleQuickStartWorkoutActionContext:(id)context
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  contextCopy = context;
  selfCopy = self;
  v11 = contextCopy;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = v11;
  sub_10026E198(0, 0, v7, &unk_1006EDC08, v13);
}

- (void)activity:(id)activity didSaveWorkout:(id)workout
{
  activityCopy = activity;
  selfCopy = self;
  sub_10068F1D8(activityCopy);
}

- (void)scrollToTop
{
  selfCopy = self;
  sub_1003D7A0C();
}

@end