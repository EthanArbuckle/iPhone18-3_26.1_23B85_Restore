@interface ProductDescriptionCollectionViewCell
- (_TtC8AppStore36ProductDescriptionCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductDescriptionCollectionViewCell

- (_TtC8AppStore36ProductDescriptionCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10012A8D4();
}

@end