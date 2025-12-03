@interface TipListViewController
- (TipListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TipListViewController)initWithViewModel:(id)model;
- (id)currentCollection;
- (int64_t)preferredStatusBarStyle;
- (void)loadView;
- (void)setPreferredViewMethod:(id)method;
- (void)setViewModel:(id)model;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TipListViewController

- (void)setViewModel:(id)model
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel) = model;
  modelCopy = model;
}

- (TipListViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v5 = sub_1000525AC(model);

  return v5;
}

- (void)setPreferredViewMethod:(id)method
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = method;
  methodCopy = method;
}

- (id)currentCollection
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  v5 = v3;
  static Published.subscript.getter();

  return v7;
}

- (void)loadView
{
  selfCopy = self;
  sub_100051B04();
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TipListViewController();
  v2 = v4.receiver;
  [(TPSViewController *)&v4 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100051F94();
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = sub_100052254();

  return v3;
}

- (TipListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end