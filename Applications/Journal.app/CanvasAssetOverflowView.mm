@interface CanvasAssetOverflowView
- (_TtC7Journal23CanvasAssetOverflowView)initWithCoder:(id)a3;
- (_TtC7Journal23CanvasAssetOverflowView)initWithFrame:(CGRect)a3;
@end

@implementation CanvasAssetOverflowView

- (_TtC7Journal23CanvasAssetOverflowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v7 = (self + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_tapCompletion);
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasAssetOverflowView();
  v8 = [(CanvasAssetOverflowView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasAssetOverflowView *)v8 setClipsToBounds:1];
  sub_100134808();

  return v8;
}

- (_TtC7Journal23CanvasAssetOverflowView)initWithCoder:(id)a3
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