@interface CHWelcomeViewController
- (CHWelcomeViewController)initWithFitnessPlusAvailable:(BOOL)available buttonHandler:(id)handler;
- (CHWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (CHWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation CHWelcomeViewController

- (CHWelcomeViewController)initWithFitnessPlusAvailable:(BOOL)available buttonHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_10016B148;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  return sub_10016A248(available, v8, v7);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10016A410();
}

- (void)didTapContinueButton
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR___CHWelcomeViewController_buttonHandler];
  if (v2)
  {
    selfCopy = self;
    v2();
  }
}

- (CHWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end