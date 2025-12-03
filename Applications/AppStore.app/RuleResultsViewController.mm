@interface RuleResultsViewController
- (_TtC8AppStore25RuleResultsViewController)initWithCoder:(id)coder;
- (_TtC8AppStore25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RuleResultsViewController

- (_TtC8AppStore25RuleResultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001D9558();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001D96DC(appear);
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  [(RuleResultsViewController *)&v2 didReceiveMemoryWarning];
}

- (_TtC8AppStore25RuleResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end