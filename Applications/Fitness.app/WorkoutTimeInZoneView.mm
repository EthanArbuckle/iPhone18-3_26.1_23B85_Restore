@interface WorkoutTimeInZoneView
- (CGSize)intrinsicContentSize;
- (_TtC10FitnessApp21WorkoutTimeInZoneView)initWithCoder:(id)coder;
- (_TtC10FitnessApp21WorkoutTimeInZoneView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WorkoutTimeInZoneView

- (CGSize)intrinsicContentSize
{
  v2 = INFINITY;
  v3 = 33.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC10FitnessApp21WorkoutTimeInZoneView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_dividerHeight) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_dividerHeight);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    traitCollection = [(WorkoutTimeInZoneView *)selfCopy traitCollection];
    [traitCollection displayScale];
    v7 = v6;

    [v4 setConstant:1.0 / v7];
  }
}

- (_TtC10FitnessApp21WorkoutTimeInZoneView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end