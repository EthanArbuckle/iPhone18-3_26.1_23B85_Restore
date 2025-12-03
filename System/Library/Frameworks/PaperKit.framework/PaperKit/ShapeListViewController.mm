@interface ShapeListViewController
- (_TtC8PaperKit23ShapeListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ShapeListViewController

- (_TtC8PaperKit23ShapeListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return ShapeListViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  ShapeListViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ShapeListViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController];
  *&v4[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController] = 0;
}

@end