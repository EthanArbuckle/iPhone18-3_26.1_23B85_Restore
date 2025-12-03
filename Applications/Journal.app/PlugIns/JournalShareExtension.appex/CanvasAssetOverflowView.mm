@interface CanvasAssetOverflowView
- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithCoder:(id)coder;
- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithFrame:(CGRect)frame;
@end

@implementation CanvasAssetOverflowView

- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_overflowCountLabel) = 0;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_tapCompletion);
  *v7 = nullsub_1;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CanvasAssetOverflowView();
  height = [(CanvasAssetOverflowView *)&v10 initWithFrame:x, y, width, height];
  [(CanvasAssetOverflowView *)height setClipsToBounds:1];
  sub_1000783B0();

  return height;
}

- (_TtC21JournalShareExtension23CanvasAssetOverflowView)initWithCoder:(id)coder
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