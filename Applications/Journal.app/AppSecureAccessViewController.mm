@interface AppSecureAccessViewController
- (_TtC7Journal29AppSecureAccessViewController)initWithCoder:(id)coder;
- (_TtC7Journal29AppSecureAccessViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
@end

@implementation AppSecureAccessViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000150B4();
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000300C4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7Journal29AppSecureAccessViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal29AppSecureAccessViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  [commandCopy action];
  if (static Selector.== infix(_:_:)())
  {
    [commandCopy setAttributes:5];
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for AppSecureAccessViewController();
    [(AppSecureAccessViewController *)&v6 validateCommand:commandCopy];
  }
}

@end