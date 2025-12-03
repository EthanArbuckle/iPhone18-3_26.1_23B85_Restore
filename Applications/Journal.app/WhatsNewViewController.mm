@interface WhatsNewViewController
- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonTapped;
- (void)linkButtonTapped;
- (void)viewDidLoad;
@end

@implementation WhatsNewViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WhatsNewViewController();
  v2 = v7.receiver;
  [(WhatsNewViewController *)&v7 viewDidLoad];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 keyCommandWithInput:v3 modifierFlags:0 action:{"continueButtonTapped", v7.receiver, v7.super_class}];

  [v2 addKeyCommand:v5];
  v6 = [v4 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"continueButtonTapped"];
  [v2 addKeyCommand:v6];
}

- (void)linkButtonTapped
{
  selfCopy = self;
  sub_1005782CC();
}

- (void)continueButtonTapped
{
  selfCopy = self;
  sub_1005790A0();
}

- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end