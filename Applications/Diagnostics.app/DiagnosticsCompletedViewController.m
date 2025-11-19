@interface DiagnosticsCompletedViewController
- (_TtC11Diagnostics34DiagnosticsCompletedViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics34DiagnosticsCompletedViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DiagnosticsCompletedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001313B0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001315BC(a3);
}

- (_TtC11Diagnostics34DiagnosticsCompletedViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics34DiagnosticsCompletedViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end