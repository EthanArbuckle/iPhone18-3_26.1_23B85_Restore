@interface WhatsNewViewController
- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v2 = self;
  sub_1005782CC();
}

- (void)continueButtonTapped
{
  v2 = self;
  sub_1005790A0();
}

- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal22WhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end