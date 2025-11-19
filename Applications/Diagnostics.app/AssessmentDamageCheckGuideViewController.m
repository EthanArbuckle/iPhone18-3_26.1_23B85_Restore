@interface AssessmentDamageCheckGuideViewController
- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AssessmentDamageCheckGuideViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100069D18();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  v4 = v5.receiver;
  [(AssessmentDamageCheckGuideViewController *)&v5 viewDidAppear:v3];
  sub_1000EBDFC(4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10006ACB0(a3);
}

- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end