@interface ConnectionAssistantViewController
- (_TtC8SOSBuddy33ConnectionAssistantViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ConnectionAssistantViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006E7C0();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10006EEE0(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ConnectionAssistantViewController();
  v4 = v5.receiver;
  [(ConnectionAssistantViewController *)&v5 viewWillDisappear:disappearCopy];
  *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion] = 0;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10006F51C();
}

- (_TtC8SOSBuddy33ConnectionAssistantViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end