@interface FullScreenUnknownAssetView
- (_TtC7Journal26FullScreenUnknownAssetView)initWithCoder:(id)coder;
- (_TtC7Journal26FullScreenUnknownAssetView)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenUnknownAssetView

- (_TtC7Journal26FullScreenUnknownAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FullScreenUnknownAssetView();
  height = [(FullScreenUnknownAssetView *)&v9 initWithFrame:x, y, width, height];
  [(FullScreenUnknownAssetView *)height setContentMode:2];
  [(FullScreenUnknownAssetView *)height setClipsToBounds:1];
  sub_10029A9D4();

  return height;
}

- (_TtC7Journal26FullScreenUnknownAssetView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end