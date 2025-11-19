@interface CHMoveModeChangePromptViewController
- (CHMoveModeChangePromptViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (CHMoveModeChangePromptViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapAcceptButton;
- (void)viewDidLoad;
@end

@implementation CHMoveModeChangePromptViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100642F1C();
}

- (void)didTapAcceptButton
{
  v2 = self;
  sub_1006432CC();
}

- (CHMoveModeChangePromptViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CHMoveModeChangePromptViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end