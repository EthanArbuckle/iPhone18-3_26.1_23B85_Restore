@interface SyncOnboardingViewController
- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)notNowButtonTapped;
- (void)turnOniCloudButtonTapped;
@end

@implementation SyncOnboardingViewController

- (void)notNowButtonTapped
{
  selfCopy = self;
  sub_1001943AC();
}

- (void)turnOniCloudButtonTapped
{
  v2 = qword_100ACFA38;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1001946D0();
  presentingViewController = [(SyncOnboardingViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v4 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end