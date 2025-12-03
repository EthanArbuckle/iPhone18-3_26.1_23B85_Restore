@interface BubbleHostingView
- (_TtC8Business17BubbleHostingView)initWithCoder:(id)coder;
- (_TtC8Business17BubbleHostingView)initWithFrame:(CGRect)frame;
@end

@implementation BubbleHostingView

- (_TtC8Business17BubbleHostingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_subview) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BubbleHostingView();
  return [(BubbleHostingView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8Business17BubbleHostingView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_subview) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BubbleHostingView();
  coderCopy = coder;
  v6 = [(BubbleHostingView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end