@interface PlaceholderAssetView
- (_TtC7Journal20PlaceholderAssetView)initWithCoder:(id)coder;
- (_TtC7Journal20PlaceholderAssetView)initWithFrame:(CGRect)frame;
@end

@implementation PlaceholderAssetView

- (_TtC7Journal20PlaceholderAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlaceholderAssetView();
  return [(PlaceholderAssetView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal20PlaceholderAssetView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderAssetView();
  coderCopy = coder;
  v5 = [(PlaceholderAssetView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end