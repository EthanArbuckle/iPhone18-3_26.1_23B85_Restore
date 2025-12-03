@interface CHWhatsNewViewController
- (CHWhatsNewViewController)initWithFitnessPlusAvailable:(BOOL)available workoutBuddySupported:(BOOL)supported buttonHandler:(id)handler;
- (CHWhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (CHWhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation CHWhatsNewViewController

- (CHWhatsNewViewController)initWithFitnessPlusAvailable:(BOOL)available workoutBuddySupported:(BOOL)supported buttonHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = sub_10016B148;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return sub_100554604(available, supported, v10, v9);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005547D8();
}

- (void)didTapContinueButton
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR___CHWhatsNewViewController_buttonHandler];
  if (v2)
  {
    selfCopy = self;
    v2();
  }
}

- (CHWhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHWhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end