@interface NewFeaturesViewController
- (_TtC5Setup25NewFeaturesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backButtonTappedWithSender:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)pageControlValueDidChangeWithSender:(id)a3;
- (void)skipButtonTappedWithSender:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NewFeaturesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10002E710();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for NewFeaturesViewController();
  v14.receiver = self;
  v14.super_class = v8;
  v9 = self;
  [(NewFeaturesViewController *)&v14 viewWillAppear:v3];
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_100022A78(0, 0, v7, &unk_100298760, v13);

  sub_1000313F8(1);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for NewFeaturesViewController();
  v14.receiver = self;
  v14.super_class = v8;
  v9 = self;
  [(NewFeaturesViewController *)&v14 viewDidDisappear:v3];
  sub_1000313F8(0);
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_100022A78(0, 0, v7, &unk_100298758, v13);
}

- (void)pageControlValueDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100030E5C(v4);
}

- (void)backButtonTappedWithSender:(id)a3
{
  v3 = self;
  sub_100031098();
}

- (void)skipButtonTappedWithSender:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_completion);
  v4 = self;
  v3();
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100031220(v4);
}

- (_TtC5Setup25NewFeaturesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end