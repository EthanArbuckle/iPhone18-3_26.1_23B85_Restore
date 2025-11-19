@interface IMBBubbleView
- (_TtC8Business13IMBBubbleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation IMBBubbleView

- (void)setImage:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = a3;
  v5 = a3;
  v6 = self;

  sub_1000AA2B0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000AA5C4();
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor);
  v7 = self;
  [(IMBBubbleView *)v7 setBackgroundColor:v6];
  [*(&v7->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground) setBackgroundColor:*(&self->super.super.super.isa + v5)];
}

- (_TtC8Business13IMBBubbleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end