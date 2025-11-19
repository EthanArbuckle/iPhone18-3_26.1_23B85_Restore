@interface CanvasAssetOverflowView
- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithCoder:(id)a3;
- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithFrame:(CGRect)a3;
@end

@implementation CanvasAssetOverflowView

- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_tapCompletion);
  *v7 = nullsub_1;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasAssetOverflowView();
  v8 = [(CanvasAssetOverflowView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasAssetOverflowView *)v8 setClipsToBounds:1];
  sub_1000783B0();

  return v8;
}

- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_tapCompletion);
  *v3 = nullsub_1;
  v3[1] = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

@end