@interface TPSChecklistViewController
- (TPSChecklistViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TPSChecklistViewController)initWithViewModel:(id)a3;
- (id)currentCollection;
- (void)loadView;
- (void)setHostingController:(id)a3;
- (void)setPreferredViewMethod:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TPSChecklistViewController

- (void)setHostingController:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController) = a3;
  v3 = a3;
}

- (TPSChecklistViewController)initWithViewModel:(id)a3
{
  v3 = a3;
  v4 = sub_100048A04(v3);

  return v4;
}

- (void)setPreferredViewMethod:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = a3;
  v3 = a3;
}

- (id)currentCollection
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.getter();

  return v6;
}

- (void)loadView
{
  v2 = self;
  sub_1000480AC();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ChecklistViewController();
  v2 = v6.receiver;
  [(TPSViewController *)&v6 viewDidLoad];
  v3 = [v2 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel];
  v5 = *(v4 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
  *(v4 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000485F0(a3);
}

- (TPSChecklistViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end