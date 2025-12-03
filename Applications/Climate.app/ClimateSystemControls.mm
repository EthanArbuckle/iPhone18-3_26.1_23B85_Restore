@interface ClimateSystemControls
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate21ClimateSystemControls)initWithCoder:(id)coder;
- (_TtC7Climate21ClimateSystemControls)initWithFrame:(CGRect)frame;
@end

@implementation ClimateSystemControls

- (_TtC7Climate21ClimateSystemControls)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls) = 0;
  v4 = OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView;
  type metadata accessor for ClimateFocusStackView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimateSystemControls_areButtonsAlreadyVisible) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Climate21ClimateSystemControls)initWithFrame:(CGRect)frame
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
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000040E8(&unk_1001150F0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end