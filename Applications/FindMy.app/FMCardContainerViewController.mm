@interface FMCardContainerViewController
- (BOOL)collapseCard;
- (BOOL)expandCard;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (UITraitCollection)traitCollection;
- (_TtC6FindMy29FMCardContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)handleCloseAction;
- (void)handlePanGestureWithSender:(id)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)unwindToBaseAction;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FMCardContainerViewController

- (_TtC6FindMy29FMCardContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10001C69C(v5, v7, a4);
}

- (void)loadView
{
  v2 = self;
  sub_1000237EC();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardContainerViewController();
  v2 = v3.receiver;
  [(FMCardContainerViewController *)&v3 viewDidLoad];
  [v2 setDefinesPresentationContext:{1, v3.receiver, v3.super_class}];
  sub_100023964();
  sub_1000247A0();
  sub_100025A40();
}

- (UITraitCollection)traitCollection
{
  v2 = self;
  v3 = sub_100024544();

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000277F0(a3, &selRef_viewWillAppear_);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10004C4FC(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100050618();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000277F0(a3, &selRef_viewWillDisappear_);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = self;
  v6 = [(FMCardContainerViewController *)v5 traitCollection];
  v7 = [(UITraitCollection *)v6 horizontalSizeClass];

  if (v7 == 1)
  {
    v8 = type metadata accessor for FMCardPresentedCompactTransition();
  }

  else
  {
    v8 = type metadata accessor for FMCardPresentedRegularTransition();
  }

  v9 = [objc_allocWithZone(v8) init];

  return v9;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = self;
  v4 = [(FMCardContainerViewController *)v3 traitCollection];
  v5 = [(UITraitCollection *)v4 horizontalSizeClass];

  if (v5 == 1)
  {
    v6 = type metadata accessor for FMCardDismissedCompactTransition();
  }

  else
  {
    v6 = type metadata accessor for FMCardDismissedRegularTransition();
  }

  v7 = [objc_allocWithZone(v6) init];

  return v7;
}

- (void)handleCloseAction
{
  v2 = self;
  sub_10024D71C();
}

- (void)unwindToBaseAction
{
  v2 = self;
  sub_10024D8DC();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10024FFD8(a4, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)expandCard
{
  v2 = self;
  sub_1000490B0();
  v4 = v3 > 0.3 || v3 < -1.0;
  v5 = v3 > 0.85 || v3 < 0.3;
  sub_10024D538(v4 && v5, 0.4);
  sub_10024DF58(v4 && v5);

  return 1;
}

- (BOOL)collapseCard
{
  v2 = self;
  sub_1000490B0();
  if (v3 > 0.3 || v3 < -1.0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  sub_10024D538(v5, 0.4);
  sub_10024DF58(v5);

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1005370B4(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100537244(v7);

  return v9 & 1;
}

- (void)handlePanGestureWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005362DC(v4);
}

@end