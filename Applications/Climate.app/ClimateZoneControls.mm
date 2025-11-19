@interface ClimateZoneControls
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate19ClimateZoneControls)initWithCoder:(id)a3;
- (_TtC7Climate19ClimateZoneControls)initWithFrame:(CGRect)a3;
- (void)didUpdateSettings;
@end

@implementation ClimateZoneControls

- (_TtC7Climate19ClimateZoneControls)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Climate19ClimateZoneControls)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateSettings
{
  v4 = self;
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  sub_100072970();
  v3 = v2;

  sub_1000A72C8(v3);
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5DA0;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000040E8(&unk_1001150F0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end