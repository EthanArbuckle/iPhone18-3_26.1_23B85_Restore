@interface WelcomeViewController
- (_TtC6Health21WelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didSaveFirstLastNameFor:(id)for;
- (void)didTapContinueButtonWithCompletion:(id)completion;
- (void)didTapNext:(id)next;
- (void)viewDidLoad;
@end

@implementation WelcomeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for WelcomeViewController();
  v2 = v6.receiver;
  [(WelcomeViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    v5 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v5];

    sub_1000716AC(*&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_animationView]);
  }

  else
  {
    __break(1u);
  }
}

- (void)didTapNext:(id)next
{
  nextCopy = next;
  selfCopy = self;
  sub_10006FF80(nextCopy);
  v7 = 0;
  v6[3] = type metadata accessor for AnalyticsSender();
  v6[4] = &protocol witness table for AnalyticsSender;
  v6[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();

  sub_100003B90(v6);
}

- (_TtC6Health21WelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapContinueButtonWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000728B4(sub_100074BE4, v5);
}

- (void)didSaveFirstLastNameFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100072A64(forCopy);
}

@end