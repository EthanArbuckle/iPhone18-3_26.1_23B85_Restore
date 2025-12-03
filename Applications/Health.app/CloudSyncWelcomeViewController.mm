@interface CloudSyncWelcomeViewController
- (_TtC6Health30CloudSyncWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6Health30CloudSyncWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation CloudSyncWelcomeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CloudSyncWelcomeViewController();
  v2 = v6.receiver;
  [(CloudSyncWelcomeViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    v5 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v5];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC6Health30CloudSyncWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6Health30CloudSyncWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end