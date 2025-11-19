@interface FMMutableGestureView
- (_TtC6FindMy20FMMutableGestureView)initWithCoder:(id)a3;
- (_TtC6FindMy20FMMutableGestureView)initWithFrame:(CGRect)a3;
@end

@implementation FMMutableGestureView

- (_TtC6FindMy20FMMutableGestureView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier);
  v9 = type metadata accessor for FMMutableGestureView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(FMMutableGestureView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy20FMMutableGestureView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMMutableGestureView();
  v5 = a3;
  v6 = [(FMMutableGestureView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end