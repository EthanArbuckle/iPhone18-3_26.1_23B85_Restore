@interface BlockQuoteLayerView
- (_TtC21JournalShareExtension19BlockQuoteLayerView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation BlockQuoteLayerView

- (_TtC21JournalShareExtension19BlockQuoteLayerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_barInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_topInset) = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1000DDE78(x, y, width, height);
}

@end