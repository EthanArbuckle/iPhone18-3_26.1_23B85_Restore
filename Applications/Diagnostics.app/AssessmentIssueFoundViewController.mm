@interface AssessmentIssueFoundViewController
- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AssessmentIssueFoundViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100046C70();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentIssueFoundViewController();
  v4 = v5.receiver;
  [(AssessmentIssueFoundViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000EBDFC(9);
}

- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics34AssessmentIssueFoundViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end