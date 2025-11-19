@interface PrivacyViewController
- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation PrivacyViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001DD64();
}

- (void)didTapContinueButton
{
  v3 = self;
  sub_10007DAC4();
  v2 = *&v3->buttonHandler[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler];
  (*&v3->OBWelcomeController_opaque[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler])();
}

- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end