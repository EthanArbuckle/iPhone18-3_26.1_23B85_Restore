@interface CHWelcomeViewController
- (CHWelcomeViewController)initWithFitnessPlusAvailable:(BOOL)a3 buttonHandler:(id)a4;
- (CHWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (CHWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation CHWelcomeViewController

- (CHWelcomeViewController)initWithFitnessPlusAvailable:(BOOL)a3 buttonHandler:(id)a4
{
  v5 = _Block_copy(a4);
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

  return sub_10016A248(a3, v8, v7);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10016A410();
}

- (void)didTapContinueButton
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR___CHWelcomeViewController_buttonHandler];
  if (v2)
  {
    v3 = self;
    v2();
  }
}

- (CHWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end