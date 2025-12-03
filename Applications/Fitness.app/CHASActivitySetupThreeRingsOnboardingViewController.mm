@interface CHASActivitySetupThreeRingsOnboardingViewController
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)delegate;
- (void)didTapAcceptButton;
- (void)didTapSkipButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupThreeRingsOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10015CDEC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10015D2C0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v4 = v5.receiver;
  [(CHASActivitySetupThreeRingsOnboardingViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_10015DCD4();
}

- (void)didTapAcceptButton
{
  selfCopy = self;
  sub_10015D418();
}

- (void)didTapSkipButton
{
  selfCopy = self;
  delegate = [(CHASActivitySetupThreeRingsOnboardingViewController *)selfCopy delegate];
  if (delegate)
  {
    [delegate buddyControllerDone:selfCopy];
    swift_unknownObjectRelease();
  }
}

- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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