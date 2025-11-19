@interface AssessmentIssueFoundViewController
- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AssessmentIssueFoundViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100046C70();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentIssueFoundViewController();
  v4 = v5.receiver;
  [(AssessmentIssueFoundViewController *)&v5 viewDidAppear:v3];
  sub_1000EBDFC(9);
}

- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end