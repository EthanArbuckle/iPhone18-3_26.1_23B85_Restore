@interface TermsAndConditionsViewController
- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapAgreeButton;
- (void)didTapDisagreeButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TermsAndConditionsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TermsAndConditionsViewController();
  v2 = v6.receiver;
  [(TermsAndConditionsViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    sub_10011A2A8();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TermsAndConditionsViewController();
  v4 = v5.receiver;
  [(TermsAndConditionsViewController *)&v5 viewDidAppear:v3];
  sub_1000EBDFC(0);
}

- (void)didTapAgreeButton
{
  v2 = self;
  sub_10011A604();
}

- (void)didTapDisagreeButton
{
  v2 = self;
  sub_10011A808();
}

- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end