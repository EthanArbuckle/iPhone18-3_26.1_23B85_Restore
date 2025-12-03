@interface BlockQuoteLayerView
- (_TtC21JournalShareExtension19BlockQuoteLayerView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation BlockQuoteLayerView

- (_TtC21JournalShareExtension19BlockQuoteLayerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_barInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_topInset) = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1000DDE78(x, y, width, height);
}

@end