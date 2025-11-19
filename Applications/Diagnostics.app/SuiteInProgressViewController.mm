@interface SuiteInProgressViewController
- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
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
  v3 = [v2 contentView];
  [v3 addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView]];

  sub_1000EDDE8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000EE328(a3);
}

- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics29SuiteInProgressViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end