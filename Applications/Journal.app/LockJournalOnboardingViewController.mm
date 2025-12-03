@interface LockJournalOnboardingViewController
- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)notNowButtonTapped;
- (void)turnOnButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LockJournalOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005FC97C();
}

- (void)turnOnButtonTapped
{
  selfCopy = self;
  sub_1005FDA30();
}

- (void)notNowButtonTapped
{
  v3 = objc_opt_self();
  selfCopy = self;
  standardUserDefaults = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [standardUserDefaults setBool:1 forKey:v5];

  presentingViewController = [(LockJournalOnboardingViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v7 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1005FE534();
}

- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal35LockJournalOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end