@interface CanvasAssetView
- (_TtC7Journal15CanvasAssetView)initWithCoder:(id)coder;
- (_TtC7Journal15CanvasAssetView)initWithFrame:(CGRect)frame;
@end

@implementation CanvasAssetView

- (_TtC7Journal15CanvasAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasAssetView();
  height = [(CanvasAssetView *)&v9 initWithFrame:x, y, width, height];
  [(CanvasAssetView *)height setContentMode:2];
  [(CanvasAssetView *)height setClipsToBounds:1];

  return height;
}

- (_TtC7Journal15CanvasAssetView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end