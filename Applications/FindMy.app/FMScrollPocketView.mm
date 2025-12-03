@interface FMScrollPocketView
- (_TtC6FindMy18FMScrollPocketView)initWithCoder:(id)coder;
- (_TtC6FindMy18FMScrollPocketView)initWithFrame:(CGRect)frame;
@end

@implementation FMScrollPocketView

- (_TtC6FindMy18FMScrollPocketView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy18FMScrollPocketView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end