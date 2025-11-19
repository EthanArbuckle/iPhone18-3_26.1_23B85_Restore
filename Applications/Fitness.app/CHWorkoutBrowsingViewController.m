@interface CHWorkoutBrowsingViewController
- (CHWorkoutBrowsingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentedMirroredStartViewController:(id)a3;
- (void)activity:(id)a3 didSaveWorkout:(id)a4;
- (void)handleQuickStartWorkoutActionContext:(id)a3;
- (void)handleWorkoutConfigurationData:(id)a3;
- (void)handleWorkoutConfigurationURL:(id)a3;
- (void)popToRoot;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CHWorkoutBrowsingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003D36AC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1003D3B60(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003D3E20(a3);
}

- (void)popToRoot
{
  v2 = self;
  sub_1003D40E0();
}

- (void)handleWorkoutConfigurationURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003D4E18();

  (*(v5 + 8))(v7, v4);
}

- (void)handleWorkoutConfigurationData:(id)a3
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = a3;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v9;
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

- (id)presentedMirroredStartViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1003D6A2C();

  return v6;
}

- (CHWorkoutBrowsingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleQuickStartWorkoutActionContext:(id)a3
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_10026E198(0, 0, v7, &unk_1006EDC08, v13);
}

- (void)activity:(id)a3 didSaveWorkout:(id)a4
{
  v6 = a3;
  v5 = self;
  sub_10068F1D8(v6);
}

- (void)scrollToTop
{
  v2 = self;
  sub_1003D7A0C();
}

@end