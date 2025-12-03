@interface ClimateSettingsButton
- (NSUUID)id;
- (_TtC7Climate21ClimateSettingsButton)initWithCoder:(id)coder;
- (_TtC7Climate21ClimateSettingsButton)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateConfiguration;
@end

@implementation ClimateSettingsButton

- (_TtC7Climate21ClimateSettingsButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_1000AC8C8();
}

- (_TtC7Climate21ClimateSettingsButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSUUID)id
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateSettingsButton();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(ClimateSettingsButton *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  [v8 setNeedsUpdateConfiguration];
}

@end