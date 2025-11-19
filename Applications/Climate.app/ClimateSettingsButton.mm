@interface ClimateSettingsButton
- (NSUUID)id;
- (_TtC7Climate21ClimateSettingsButton)initWithCoder:(id)a3;
- (_TtC7Climate21ClimateSettingsButton)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateConfiguration;
@end

@implementation ClimateSettingsButton

- (_TtC7Climate21ClimateSettingsButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_1000AC8C8();
}

- (_TtC7Climate21ClimateSettingsButton)initWithFrame:(CGRect)a3
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateSettingsButton();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(ClimateSettingsButton *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  [v8 setNeedsUpdateConfiguration];
}

@end