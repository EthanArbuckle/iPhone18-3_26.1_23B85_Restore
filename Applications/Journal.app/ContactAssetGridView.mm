@interface ContactAssetGridView
- (_TtC7Journal20ContactAssetGridView)initWithCoder:(id)coder;
- (_TtC7Journal20ContactAssetGridView)initWithFrame:(CGRect)frame;
@end

@implementation ContactAssetGridView

- (_TtC7Journal20ContactAssetGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType) = 8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContactAssetGridView();
  return [(ContactAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal20ContactAssetGridView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType) = 8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ContactAssetGridView();
  coderCopy = coder;
  v5 = [(ContactAssetView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end