@interface SuiteInProgressViewController
- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SuiteInProgressViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SuiteInProgressViewController();
  v2 = v4.receiver;
  [(SuiteInProgressViewController *)&v4 viewDidLoad];
  sub_1000ED360();
  contentView = [v2 contentView];
  [contentView addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView]];

  sub_1000EDDE8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000EE328(appear);
}

- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end