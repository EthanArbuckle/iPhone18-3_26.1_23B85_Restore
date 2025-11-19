@interface TipListViewController
- (TipListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TipListViewController)initWithViewModel:(id)a3;
- (id)currentCollection;
- (int64_t)preferredStatusBarStyle;
- (void)loadView;
- (void)setPreferredViewMethod:(id)a3;
- (void)setViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TipListViewController

- (void)setViewModel:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel) = a3;
  v3 = a3;
}

- (TipListViewController)initWithViewModel:(id)a3
{
  v4 = a3;
  v5 = sub_1000525AC(a3);

  return v5;
}

- (void)setPreferredViewMethod:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = a3;
  v3 = a3;
}

- (id)currentCollection
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TipListViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  v5 = v3;
  static Published.subscript.getter();

  return v7;
}

- (void)loadView
{
  v2 = self;
  sub_100051B04();
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TipListViewController();
  v2 = v4.receiver;
  [(TPSViewController *)&v4 viewDidLoad];
  v3 = [v2 navigationItem];
  [v3 setLargeTitleDisplayMode:2];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100051F94();
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = sub_100052254();

  return v3;
}

- (TipListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end