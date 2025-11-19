@interface FullScreenMapViewController
- (_TtC7Journal27FullScreenMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeTapped;
- (void)didMoveToParentViewController:(id)a3;
- (void)plusTapped;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation FullScreenMapViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100534428();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FullScreenMapViewController();
  v4 = v5.receiver;
  [(FullScreenMapViewController *)&v5 viewIsAppearing:v3];
  sub_100534DB4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenMapViewController();
  v4 = v8.receiver;
  [(FullScreenMapViewController *)&v8 viewDidDisappear:v3];
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:0 completion:0];
  }

  v7 = *&v4[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController];
  *&v4[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController] = 0;
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1005348E4(a3);
}

- (void)closeTapped
{
  v2 = self;
  sub_1005349E0();
}

- (void)plusTapped
{
  v2 = self;
  sub_100534BDC();
}

- (_TtC7Journal27FullScreenMapViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100535454(v5, v7, a4);
}

@end