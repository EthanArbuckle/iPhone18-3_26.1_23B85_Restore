@interface BlockQuoteLayerView
- (_TtC7Journal19BlockQuoteLayerView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation BlockQuoteLayerView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_100096310(x, y, width, height);
}

- (_TtC7Journal19BlockQuoteLayerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end