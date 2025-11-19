@interface BlockQuoteLayerView
- (_TtC7Journal19BlockQuoteLayerView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation BlockQuoteLayerView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100096310(x, y, width, height);
}

- (_TtC7Journal19BlockQuoteLayerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end