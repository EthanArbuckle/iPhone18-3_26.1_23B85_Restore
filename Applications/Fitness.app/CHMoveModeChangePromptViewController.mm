@interface CHMoveModeChangePromptViewController
- (CHMoveModeChangePromptViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (CHMoveModeChangePromptViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapAcceptButton;
- (void)viewDidLoad;
@end

@implementation CHMoveModeChangePromptViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100642F1C();
}

- (void)didTapAcceptButton
{
  selfCopy = self;
  sub_1006432CC();
}

- (CHMoveModeChangePromptViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHMoveModeChangePromptViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end