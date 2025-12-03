@interface IMBBubbleView
- (_TtC8Business13IMBBubbleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation IMBBubbleView

- (void)setImage:(id)image
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = image;
  imageCopy = image;
  selfCopy = self;

  sub_1000AA2B0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000AA5C4();
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor);
  selfCopy = self;
  [(IMBBubbleView *)selfCopy setBackgroundColor:v6];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground) setBackgroundColor:*(&self->super.super.super.isa + v5)];
}

- (_TtC8Business13IMBBubbleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end