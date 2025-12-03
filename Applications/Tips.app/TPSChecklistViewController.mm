@interface TPSChecklistViewController
- (TPSChecklistViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TPSChecklistViewController)initWithViewModel:(id)model;
- (id)currentCollection;
- (void)loadView;
- (void)setHostingController:(id)controller;
- (void)setPreferredViewMethod:(id)method;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TPSChecklistViewController

- (void)setHostingController:(id)controller
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController) = controller;
  controllerCopy = controller;
}

- (TPSChecklistViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v4 = sub_100048A04(modelCopy);

  return v4;
}

- (void)setPreferredViewMethod:(id)method
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = method;
  methodCopy = method;
}

- (id)currentCollection
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v6;
}

- (void)loadView
{
  selfCopy = self;
  sub_1000480AC();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ChecklistViewController();
  v2 = v6.receiver;
  [(TPSViewController *)&v6 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v4 = *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel];
  v5 = *(v4 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
  *(v4 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000485F0(appear);
}

- (TPSChecklistViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end