@interface OnboardingIntroViewController
- (_TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelFlow;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingIntroViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for OnboardingIntroViewController(0);
  [(OnboardingIntroViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000F918(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10000FB5C(a3);
}

- (void)cancelFlow
{
  v2 = self;
  sub_1000100D4();
}

- (_TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end