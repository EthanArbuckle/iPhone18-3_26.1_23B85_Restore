@interface CRLScenesNavigatorViewController
- (BOOL)accessibilityPerformEscape;
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform32CRLScenesNavigatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)transitionDuration:(id)duration;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)animateTransition:(id)transition;
- (void)dealloc;
- (void)loadView;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBeginScrollingOperation;
@end

@implementation CRLScenesNavigatorViewController

- (void)willBeginScrollingOperation
{
  selfCopy = self;
  sub_100F34C60();
}

- (void)loadView
{
  selfCopy = self;
  sub_100F2336C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100F2347C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100F237F0(appear, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100F23684(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100F237F0(disappear, &selRef_viewDidDisappear_);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  v2 = v3.receiver;
  [(CRLScenesNavigatorViewController *)&v3 viewDidLayoutSubviews];
  sub_100F2B100(0, 0);
}

- (void)dealloc
{
  selfCopy = self;
  sub_100F24318();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  [(CRLScenesNavigatorViewController *)&v3 dealloc];
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_100F287EC();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  crl_canBeDismissed = [(CRLScenesNavigatorViewController *)selfCopy crl_canBeDismissed];
  if (crl_canBeDismissed)
  {
    [(CRLScenesNavigatorViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }

  return crl_canBeDismissed;
}

- (NSArray)decoratorOverlayRenderables
{
  sub_100006370(0, &qword_101A00020);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform32CRLScenesNavigatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100F34EFC(transition);
  swift_unknownObjectRelease();
}

- (double)transitionDuration:(id)duration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100F35B64(duration);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) == 1)
  {

    return self;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) == 1)
  {

    return self;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

@end