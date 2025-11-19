@interface ConnectionAssistantConnectionViewController
- (_TtC8SOSBuddy43ConnectionAssistantConnectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ConnectionAssistantConnectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10004A338();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConnectionAssistantConnectionViewController();
  v2 = v3.receiver;
  [(ConnectionAssistantConnectionViewController *)&v3 viewWillLayoutSubviews];
  sub_1000EB214();
}

- (_TtC8SOSBuddy43ConnectionAssistantConnectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end