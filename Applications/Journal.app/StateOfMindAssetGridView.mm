@interface StateOfMindAssetGridView
- (_TtC7Journal24StateOfMindAssetGridView)initWithCoder:(id)coder;
- (_TtC7Journal24StateOfMindAssetGridView)initWithFrame:(CGRect)frame;
@end

@implementation StateOfMindAssetGridView

- (_TtC7Journal24StateOfMindAssetGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StateOfMindAssetGridView();
  return [(StateOfMindAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal24StateOfMindAssetGridView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StateOfMindAssetGridView();
  coderCopy = coder;
  v5 = [(StateOfMindAssetView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end