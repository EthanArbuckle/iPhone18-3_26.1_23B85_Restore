@interface FMPageViewController
- (_TtC6FindMy20FMPageViewController)initWithCoder:(id)coder;
- (_TtC6FindMy20FMPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)viewDidLoad;
@end

@implementation FMPageViewController

- (_TtC6FindMy20FMPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMPageViewController_pages) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100141F38();
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_1001426AC(viewControllerCopy);

  return v9;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_100142780(viewControllerCopy);

  return v9;
}

- (_TtC6FindMy20FMPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end