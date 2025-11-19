@interface FMPageViewController
- (_TtC6FindMy20FMPageViewController)initWithCoder:(id)a3;
- (_TtC6FindMy20FMPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)viewDidLoad;
@end

@implementation FMPageViewController

- (_TtC6FindMy20FMPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMPageViewController_pages) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100141F38();
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001426AC(v7);

  return v9;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100142780(v7);

  return v9;
}

- (_TtC6FindMy20FMPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end