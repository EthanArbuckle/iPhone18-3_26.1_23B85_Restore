@interface MiniPlayerHostViewController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC23ShelfKitCollectionViews28MiniPlayerHostViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews28MiniPlayerHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MiniPlayerHostViewController

- (_TtC23ShelfKitCollectionViews28MiniPlayerHostViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_playerHeight) = 0x4057400000000000;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MiniPlayerHostViewController *)&v3 viewDidLoad];
  sub_19F3B4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  MiniPlayerHostViewController.viewDidLayoutSubviews()();
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (_TtC23ShelfKitCollectionViews28MiniPlayerHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end