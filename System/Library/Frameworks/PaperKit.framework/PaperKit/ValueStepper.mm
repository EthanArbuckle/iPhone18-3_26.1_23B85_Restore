@interface ValueStepper
- (_TtC8PaperKit12ValueStepper)initWithFrame:(CGRect)frame;
- (void)didTapLeftButton;
- (void)didTapRightButton;
- (void)updateUI;
@end

@implementation ValueStepper

- (void)didTapLeftButton
{
  selfCopy = self;
  ValueStepper.didTapLeftButton()();
}

- (void)didTapRightButton
{
  selfCopy = self;
  ValueStepper.didTapRightButton()();
}

- (void)updateUI
{
  selfCopy = self;
  ValueStepper.updateUI()();
}

- (_TtC8PaperKit12ValueStepper)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end