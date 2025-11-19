@interface AFibBurdenOnboardingResultsViewController
- (_TtC5Heart41AFibBurdenOnboardingResultsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Heart41AFibBurdenOnboardingResultsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)dealloc;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation AFibBurdenOnboardingResultsViewController

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver) = 0;
  v3 = self;

  v4.receiver = v3;
  v4.super_class = type metadata accessor for AFibBurdenOnboardingResultsViewController();
  [(AFibBurdenOnboardingResultsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29D85FDC4();
}

- (void)hxui_primaryFooterButtonTapped
{
  v3 = self + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = self;
    v5();
    sub_29D936978();
  }
}

- (void)hxui_cancelButtonTapped
{
  v3 = self + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    v6 = self;
    v5();
    sub_29D936978();
  }
}

- (_TtC5Heart41AFibBurdenOnboardingResultsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart41AFibBurdenOnboardingResultsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  v2 = self;
  sub_29D8618DC();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v3 = self;
  v2 = [(OBBaseWelcomeController *)v3 navigationItem];
  [v2 setRightBarButtonItem_];
}

@end