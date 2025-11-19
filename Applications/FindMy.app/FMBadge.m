@interface FMBadge
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy7FMBadge)initWithCoder:(id)a3;
- (_TtC6FindMy7FMBadge)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation FMBadge

- (_TtC6FindMy7FMBadge)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy7FMBadge_color) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor) = 0;
  v3 = (self + OBJC_IVAR____TtC6FindMy7FMBadge_insets);
  *v3 = xmmword_100558D70;
  v3[1] = xmmword_100558D70;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_100226510();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1002263BC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC6FindMy7FMBadge)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end