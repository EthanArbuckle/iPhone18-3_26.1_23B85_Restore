@interface SyncOnboardingViewController
- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)notNowButtonTapped;
- (void)turnOniCloudButtonTapped;
@end

@implementation SyncOnboardingViewController

- (void)notNowButtonTapped
{
  v2 = self;
  sub_1001943AC();
}

- (void)turnOniCloudButtonTapped
{
  v2 = qword_100ACFA38;
  v5 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1001946D0();
  v3 = [(SyncOnboardingViewController *)v5 presentingViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal28SyncOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end