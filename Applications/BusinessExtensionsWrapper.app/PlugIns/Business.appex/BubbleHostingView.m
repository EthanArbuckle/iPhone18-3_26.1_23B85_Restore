@interface BubbleHostingView
- (_TtC8Business17BubbleHostingView)initWithCoder:(id)a3;
- (_TtC8Business17BubbleHostingView)initWithFrame:(CGRect)a3;
@end

@implementation BubbleHostingView

- (_TtC8Business17BubbleHostingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_subview) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BubbleHostingView();
  return [(BubbleHostingView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8Business17BubbleHostingView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business17BubbleHostingView_subview) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BubbleHostingView();
  v5 = a3;
  v6 = [(BubbleHostingView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end