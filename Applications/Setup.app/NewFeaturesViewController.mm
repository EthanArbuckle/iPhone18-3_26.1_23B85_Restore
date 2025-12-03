@interface NewFeaturesViewController
- (_TtC5Setup25NewFeaturesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backButtonTappedWithSender:(id)sender;
- (void)handlePanGesture:(id)gesture;
- (void)pageControlValueDidChangeWithSender:(id)sender;
- (void)skipButtonTappedWithSender:(id)sender;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NewFeaturesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002E710();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for NewFeaturesViewController();
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(NewFeaturesViewController *)&v14 viewWillAppear:appearCopy];
  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for NewFeaturesViewController();
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(NewFeaturesViewController *)&v14 viewDidDisappear:disappearCopy];
  sub_1000313F8(0);
  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
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

- (void)pageControlValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100030E5C(senderCopy);
}

- (void)backButtonTappedWithSender:(id)sender
{
  selfCopy = self;
  sub_100031098();
}

- (void)skipButtonTappedWithSender:(id)sender
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_completion);
  selfCopy = self;
  v3();
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_100031220(gestureCopy);
}

- (_TtC5Setup25NewFeaturesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end