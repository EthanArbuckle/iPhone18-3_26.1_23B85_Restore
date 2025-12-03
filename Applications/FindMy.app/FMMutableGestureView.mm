@interface FMMutableGestureView
- (_TtC6FindMy20FMMutableGestureView)initWithCoder:(id)coder;
- (_TtC6FindMy20FMMutableGestureView)initWithFrame:(CGRect)frame;
@end

@implementation FMMutableGestureView

- (_TtC6FindMy20FMMutableGestureView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier);
  v9 = type metadata accessor for FMMutableGestureView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(FMMutableGestureView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy20FMMutableGestureView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMMutableGestureView();
  coderCopy = coder;
  v6 = [(FMMutableGestureView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end