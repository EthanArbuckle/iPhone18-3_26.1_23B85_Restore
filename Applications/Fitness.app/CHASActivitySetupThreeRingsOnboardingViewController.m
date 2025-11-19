@interface CHASActivitySetupThreeRingsOnboardingViewController
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)delegate;
- (void)didTapAcceptButton;
- (void)didTapSkipButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupThreeRingsOnboardingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10015CDEC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10015D2C0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v4 = v5.receiver;
  [(CHASActivitySetupThreeRingsOnboardingViewController *)&v5 viewDidDisappear:v3];
  sub_10015DCD4();
}

- (void)didTapAcceptButton
{
  v2 = self;
  sub_10015D418();
}

- (void)didTapSkipButton
{
  v3 = self;
  v2 = [(CHASActivitySetupThreeRingsOnboardingViewController *)v3 delegate];
  if (v2)
  {
    [v2 buddyControllerDone:v3];
    swift_unknownObjectRelease();
  }
}

- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end