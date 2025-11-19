@interface WelcomeViewController
- (_TtC6Health21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didSaveFirstLastNameFor:(id)a3;
- (void)didTapContinueButtonWithCompletion:(id)a3;
- (void)didTapNext:(id)a3;
- (void)viewDidLoad;
@end

@implementation WelcomeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for WelcomeViewController();
  v2 = v6.receiver;
  [(WelcomeViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v5];

    sub_1000716AC(*&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_animationView]);
  }

  else
  {
    __break(1u);
  }
}

- (void)didTapNext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006FF80(v4);
  v7 = 0;
  v6[3] = type metadata accessor for AnalyticsSender();
  v6[4] = &protocol witness table for AnalyticsSender;
  v6[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();

  sub_100003B90(v6);
}

- (_TtC6Health21WelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapContinueButtonWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1000728B4(sub_100074BE4, v5);
}

- (void)didSaveFirstLastNameFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100072A64(v4);
}

@end