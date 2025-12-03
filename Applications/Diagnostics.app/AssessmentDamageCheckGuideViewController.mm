@interface AssessmentDamageCheckGuideViewController
- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AssessmentDamageCheckGuideViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100069D18();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  v4 = v5.receiver;
  [(AssessmentDamageCheckGuideViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000EBDFC(4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10006ACB0(disappear);
}

- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics40AssessmentDamageCheckGuideViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end