@interface CHWhatsNewViewController
- (CHWhatsNewViewController)initWithFitnessPlusAvailable:(BOOL)a3 workoutBuddySupported:(BOOL)a4 buttonHandler:(id)a5;
- (CHWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (CHWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation CHWhatsNewViewController

- (CHWhatsNewViewController)initWithFitnessPlusAvailable:(BOOL)a3 workoutBuddySupported:(BOOL)a4 buttonHandler:(id)a5
{
  v7 = _Block_copy(a5);
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

  return sub_100554604(a3, a4, v10, v9);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1005547D8();
}

- (void)didTapContinueButton
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR___CHWhatsNewViewController_buttonHandler];
  if (v2)
  {
    v3 = self;
    v2();
  }
}

- (CHWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end