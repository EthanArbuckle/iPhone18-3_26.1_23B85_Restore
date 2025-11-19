@interface ClimateZonePositionView
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate23ClimateZonePositionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ClimateZonePositionView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateZonePositionView();
  v2 = v3.receiver;
  [(ClimateZonePositionView *)&v3 layoutSubviews];
  sub_1000A49C0();
}

- (_TtC7Climate23ClimateZonePositionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5DA0;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000040E8(&unk_1001150F0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end