@interface CHASActivitySetupThreeRingsOnboardingViewController
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (CHASActivitySetupThreeRingsOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)delegate;
- (void)didTapAcceptButton;
- (void)didTapSkipButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupThreeRingsOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1705C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_17530(appear);
}

- (void)didTapAcceptButton
{
  selfCopy = self;
  sub_17688();
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