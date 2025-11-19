@interface ConnectionAssistantViewController
- (_TtC8SOSBuddy33ConnectionAssistantViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ConnectionAssistantViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006E7C0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10006EEE0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ConnectionAssistantViewController();
  v4 = v5.receiver;
  [(ConnectionAssistantViewController *)&v5 viewWillDisappear:v3];
  *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion] = 0;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10006F51C();
}

- (_TtC8SOSBuddy33ConnectionAssistantViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end