@interface FullScreenMapViewController
- (_TtC7Journal27FullScreenMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeTapped;
- (void)didMoveToParentViewController:(id)controller;
- (void)plusTapped;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation FullScreenMapViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100534428();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FullScreenMapViewController();
  v4 = v5.receiver;
  [(FullScreenMapViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_100534DB4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenMapViewController();
  v4 = v8.receiver;
  [(FullScreenMapViewController *)&v8 viewDidDisappear:disappearCopy];
  presentedViewController = [v4 presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    [presentedViewController dismissViewControllerAnimated:0 completion:0];
  }

  v7 = *&v4[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController];
  *&v4[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController] = 0;
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1005348E4(controller);
}

- (void)closeTapped
{
  selfCopy = self;
  sub_1005349E0();
}

- (void)plusTapped
{
  selfCopy = self;
  sub_100534BDC();
}

- (_TtC7Journal27FullScreenMapViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100535454(v5, v7, bundle);
}

@end