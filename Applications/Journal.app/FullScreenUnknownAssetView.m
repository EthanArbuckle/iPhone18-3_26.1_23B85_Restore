@interface FullScreenUnknownAssetView
- (_TtC7Journal26FullScreenUnknownAssetView)initWithCoder:(id)a3;
- (_TtC7Journal26FullScreenUnknownAssetView)initWithFrame:(CGRect)a3;
@end

@implementation FullScreenUnknownAssetView

- (_TtC7Journal26FullScreenUnknownAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FullScreenUnknownAssetView();
  v7 = [(FullScreenUnknownAssetView *)&v9 initWithFrame:x, y, width, height];
  [(FullScreenUnknownAssetView *)v7 setContentMode:2];
  [(FullScreenUnknownAssetView *)v7 setClipsToBounds:1];
  sub_10029A9D4();

  return v7;
}

- (_TtC7Journal26FullScreenUnknownAssetView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end