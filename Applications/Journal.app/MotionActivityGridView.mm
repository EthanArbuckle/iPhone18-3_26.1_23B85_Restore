@interface MotionActivityGridView
- (_TtC7Journal22MotionActivityGridView)initWithCoder:(id)a3;
- (_TtC7Journal22MotionActivityGridView)initWithFrame:(CGRect)a3;
@end

@implementation MotionActivityGridView

- (_TtC7Journal22MotionActivityGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MotionActivityGridView();
  return [(MotionActivityAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal22MotionActivityGridView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MotionActivityGridView();
  v4 = a3;
  v5 = [(MotionActivityAssetView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end