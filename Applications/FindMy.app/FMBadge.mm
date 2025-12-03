@interface FMBadge
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy7FMBadge)initWithCoder:(id)coder;
- (_TtC6FindMy7FMBadge)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation FMBadge

- (_TtC6FindMy7FMBadge)initWithCoder:(id)coder
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

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_100226510();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1002263BC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC6FindMy7FMBadge)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end