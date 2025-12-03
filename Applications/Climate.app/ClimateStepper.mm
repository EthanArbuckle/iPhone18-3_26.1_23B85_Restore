@interface ClimateStepper
- (NSArray)preferredFocusEnvironments;
- (NSUUID)id;
- (_TtC7Climate14ClimateStepper)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)longPressTriggered:(id)triggered;
@end

@implementation ClimateStepper

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7Climate14ClimateStepper_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D58A0;
  v4 = *(self + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  v5 = *(self + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v4;
  v7 = v5;
  sub_1000040E8(&unk_1001150F0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)layoutSubviews
{
  selfCopy = self;
  ClimateStepper.layoutSubviews()();
}

- (void)longPressTriggered:(id)triggered
{
  triggeredCopy = triggered;
  selfCopy = self;
  ClimateStepper.longPressTriggered(_:)(triggeredCopy);
}

- (_TtC7Climate14ClimateStepper)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end