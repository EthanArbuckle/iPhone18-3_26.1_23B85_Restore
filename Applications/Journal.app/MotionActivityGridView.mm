@interface MotionActivityGridView
- (_TtC7Journal22MotionActivityGridView)initWithCoder:(id)coder;
- (_TtC7Journal22MotionActivityGridView)initWithFrame:(CGRect)frame;
@end

@implementation MotionActivityGridView

- (_TtC7Journal22MotionActivityGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MotionActivityGridView();
  return [(MotionActivityAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal22MotionActivityGridView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MotionActivityGridView();
  coderCopy = coder;
  v5 = [(MotionActivityAssetView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end