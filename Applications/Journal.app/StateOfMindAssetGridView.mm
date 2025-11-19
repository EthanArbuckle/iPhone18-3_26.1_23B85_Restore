@interface StateOfMindAssetGridView
- (_TtC7Journal24StateOfMindAssetGridView)initWithCoder:(id)a3;
- (_TtC7Journal24StateOfMindAssetGridView)initWithFrame:(CGRect)a3;
@end

@implementation StateOfMindAssetGridView

- (_TtC7Journal24StateOfMindAssetGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StateOfMindAssetGridView();
  return [(StateOfMindAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal24StateOfMindAssetGridView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StateOfMindAssetGridView();
  v4 = a3;
  v5 = [(StateOfMindAssetView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end