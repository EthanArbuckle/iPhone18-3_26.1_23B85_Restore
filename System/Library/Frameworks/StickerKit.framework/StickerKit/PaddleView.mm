@interface PaddleView
- (_TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PaddleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19A70EDF0();
}

- (_TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView) = 0;
  v7 = self + OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_style;
  *v7 = 0;
  v7[8] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_hostingController) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PaddleView();
  return [(PaddleView *)&v9 initWithFrame:x, y, width, height];
}

@end