@interface PrivacyViewController
- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)viewDidLoad;
@end

@implementation PrivacyViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001DD64();
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_10007DAC4();
  v2 = *&selfCopy->buttonHandler[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler];
  (*&selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler])();
}

- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17AppleVisionProApp21PrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end