@interface RuleResultsViewController
- (_TtC8AppStore25RuleResultsViewController)initWithCoder:(id)a3;
- (_TtC8AppStore25RuleResultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RuleResultsViewController

- (_TtC8AppStore25RuleResultsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001D9558();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001D96DC(a3);
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  [(RuleResultsViewController *)&v2 didReceiveMemoryWarning];
}

- (_TtC8AppStore25RuleResultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end