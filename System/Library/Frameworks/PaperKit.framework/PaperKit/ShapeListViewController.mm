@interface ShapeListViewController
- (_TtC8PaperKit23ShapeListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ShapeListViewController

- (_TtC8PaperKit23ShapeListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return ShapeListViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  ShapeListViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ShapeListViewController *)&v6 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController];
  *&v4[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController] = 0;
}

@end