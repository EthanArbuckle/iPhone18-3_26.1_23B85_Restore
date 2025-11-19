@interface ContactAssetGridView
- (_TtC7Journal20ContactAssetGridView)initWithCoder:(id)a3;
- (_TtC7Journal20ContactAssetGridView)initWithFrame:(CGRect)a3;
@end

@implementation ContactAssetGridView

- (_TtC7Journal20ContactAssetGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContactAssetGridView();
  return [(ContactAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal20ContactAssetGridView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ContactAssetGridView();
  v4 = a3;
  v5 = [(ContactAssetView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end