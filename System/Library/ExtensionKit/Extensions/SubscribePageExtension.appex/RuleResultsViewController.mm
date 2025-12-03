@interface RuleResultsViewController
- (_TtC22SubscribePageExtension25RuleResultsViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RuleResultsViewController

- (_TtC22SubscribePageExtension25RuleResultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100313E54();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100313FD8(appear);
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  [(RuleResultsViewController *)&v2 didReceiveMemoryWarning];
}

- (_TtC22SubscribePageExtension25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end