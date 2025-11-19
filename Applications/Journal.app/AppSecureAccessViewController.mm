@interface AppSecureAccessViewController
- (_TtC7Journal29AppSecureAccessViewController)initWithCoder:(id)a3;
- (_TtC7Journal29AppSecureAccessViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidLoad;
@end

@implementation AppSecureAccessViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000150B4();
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1000300C4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7Journal29AppSecureAccessViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal29AppSecureAccessViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 action];
  if (static Selector.== infix(_:_:)())
  {
    [v4 setAttributes:5];
  }

  else
  {
    v6.receiver = v5;
    v6.super_class = type metadata accessor for AppSecureAccessViewController();
    [(AppSecureAccessViewController *)&v6 validateCommand:v4];
  }
}

@end