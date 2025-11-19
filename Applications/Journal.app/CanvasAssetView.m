@interface CanvasAssetView
- (_TtC7Journal15CanvasAssetView)initWithCoder:(id)a3;
- (_TtC7Journal15CanvasAssetView)initWithFrame:(CGRect)a3;
@end

@implementation CanvasAssetView

- (_TtC7Journal15CanvasAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasAssetView();
  v7 = [(CanvasAssetView *)&v9 initWithFrame:x, y, width, height];
  [(CanvasAssetView *)v7 setContentMode:2];
  [(CanvasAssetView *)v7 setClipsToBounds:1];

  return v7;
}

- (_TtC7Journal15CanvasAssetView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end