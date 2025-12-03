@interface TermsAndConditionsViewController
- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapAgreeButton;
- (void)didTapDisagreeButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TermsAndConditionsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TermsAndConditionsViewController();
  v2 = v6.receiver;
  [(TermsAndConditionsViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:systemBackgroundColor];

    sub_10011A2A8();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TermsAndConditionsViewController();
  v4 = v5.receiver;
  [(TermsAndConditionsViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000EBDFC(0);
}

- (void)didTapAgreeButton
{
  selfCopy = self;
  sub_10011A604();
}

- (void)didTapDisagreeButton
{
  selfCopy = self;
  sub_10011A808();
}

- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics32TermsAndConditionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end