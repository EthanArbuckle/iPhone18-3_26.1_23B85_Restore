@interface CanvasAssetOverflowView
- (_TtC7Journal23CanvasAssetOverflowView)initWithCoder:(id)coder;
- (_TtC7Journal23CanvasAssetOverflowView)initWithFrame:(CGRect)frame;
@end

@implementation CanvasAssetOverflowView

- (_TtC7Journal23CanvasAssetOverflowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v7 = (self + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_tapCompletion);
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasAssetOverflowView();
  height = [(CanvasAssetOverflowView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasAssetOverflowView *)height setClipsToBounds:1];
  sub_100134808();

  return height;
}

- (_TtC7Journal23CanvasAssetOverflowView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v3 = (self + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_tapCompletion);
  *v3 = DebugData.init(name:);
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end