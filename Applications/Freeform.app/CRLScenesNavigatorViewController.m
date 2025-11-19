@interface CRLScenesNavigatorViewController
- (BOOL)accessibilityPerformEscape;
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform32CRLScenesNavigatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)transitionDuration:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)animateTransition:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBeginScrollingOperation;
@end

@implementation CRLScenesNavigatorViewController

- (void)willBeginScrollingOperation
{
  v1 = a1;
  sub_100F34C60();
}

- (void)loadView
{
  v2 = self;
  sub_100F2336C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100F2347C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100F237F0(a3, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100F23684(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100F237F0(a3, &selRef_viewDidDisappear_);
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
  v2 = self;
  sub_100F24318();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  [(CRLScenesNavigatorViewController *)&v3 dealloc];
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_100F287EC();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = [(CRLScenesNavigatorViewController *)v2 crl_canBeDismissed];
  if (v3)
  {
    [(CRLScenesNavigatorViewController *)v2 dismissViewControllerAnimated:1 completion:0];
  }

  return v3;
}

- (NSArray)decoratorOverlayRenderables
{
  sub_100006370(0, &qword_101A00020);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform32CRLScenesNavigatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100F34EFC(a3);
  swift_unknownObjectRelease();
}

- (double)transitionDuration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100F35B64(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
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

- (id)animationControllerForDismissedController:(id)a3
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