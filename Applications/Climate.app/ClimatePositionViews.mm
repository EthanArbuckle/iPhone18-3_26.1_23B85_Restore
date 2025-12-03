@interface ClimatePositionViews
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate20ClimatePositionViews)initWithCoder:(id)coder;
- (_TtC7Climate20ClimatePositionViews)initWithFrame:(CGRect)frame;
@end

@implementation ClimatePositionViews

- (_TtC7Climate20ClimatePositionViews)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate20ClimatePositionViews_scale) = 0x3FF0000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate20ClimatePositionViews____lazy_storage___heightConstraint) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate20ClimatePositionViews____lazy_storage___widthConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Climate20ClimatePositionViews)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate20ClimatePositionViews_positions);
  selfCopy = self;
  sub_1000C5884(v2);

  sub_1000040E8(&unk_1001150F0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end