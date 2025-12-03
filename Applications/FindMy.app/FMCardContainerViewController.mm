@interface FMCardContainerViewController
- (BOOL)collapseCard;
- (BOOL)expandCard;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (UITraitCollection)traitCollection;
- (_TtC6FindMy29FMCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)handleCloseAction;
- (void)handlePanGestureWithSender:(id)sender;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)unwindToBaseAction;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FMCardContainerViewController

- (_TtC6FindMy29FMCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10001C69C(v5, v7, bundle);
}

- (void)loadView
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_100024544();

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000277F0(appear, &selRef_viewWillAppear_);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10004C4FC(change);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100050618();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000277F0(disappear, &selRef_viewWillDisappear_);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  selfCopy = self;
  traitCollection = [(FMCardContainerViewController *)selfCopy traitCollection];
  horizontalSizeClass = [(UITraitCollection *)traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
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

- (id)animationControllerForDismissedController:(id)controller
{
  selfCopy = self;
  traitCollection = [(FMCardContainerViewController *)selfCopy traitCollection];
  horizontalSizeClass = [(UITraitCollection *)traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
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
  selfCopy = self;
  sub_10024D71C();
}

- (void)unwindToBaseAction
{
  selfCopy = self;
  sub_10024D8DC();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10024FFD8(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)expandCard
{
  selfCopy = self;
  sub_1000490B0();
  v4 = v3 > 0.3 || v3 < -1.0;
  v5 = v3 > 0.85 || v3 < 0.3;
  sub_10024D538(v4 && v5, 0.4);
  sub_10024DF58(v4 && v5);

  return 1;
}

- (BOOL)collapseCard
{
  selfCopy = self;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1005370B4(gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_100537244(gestureRecognizerCopy);

  return v9 & 1;
}

- (void)handlePanGestureWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1005362DC(senderCopy);
}

@end