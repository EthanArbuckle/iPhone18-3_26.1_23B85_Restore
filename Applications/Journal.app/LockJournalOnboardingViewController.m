@interface LockJournalOnboardingViewController
- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)notNowButtonTapped;
- (void)turnOnButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LockJournalOnboardingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005FC97C();
}

- (void)turnOnButtonTapped
{
  v2 = self;
  sub_1005FDA30();
}

- (void)notNowButtonTapped
{
  v3 = objc_opt_self();
  v8 = self;
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];

  v6 = [(LockJournalOnboardingViewController *)v8 presentingViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1005FE534();
}

- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end