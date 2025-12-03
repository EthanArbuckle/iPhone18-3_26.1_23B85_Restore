@interface RuleResultsViewController
- (_TtC20ProductPageExtension25RuleResultsViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RuleResultsViewController

- (_TtC20ProductPageExtension25RuleResultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10035A2E8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10035A46C(appear);
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  [(RuleResultsViewController *)&v2 didReceiveMemoryWarning];
}

- (_TtC20ProductPageExtension25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end