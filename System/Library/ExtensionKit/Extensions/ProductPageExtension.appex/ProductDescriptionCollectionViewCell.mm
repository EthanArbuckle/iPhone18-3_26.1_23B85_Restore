@interface ProductDescriptionCollectionViewCell
- (_TtC20ProductPageExtension36ProductDescriptionCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductDescriptionCollectionViewCell

- (_TtC20ProductPageExtension36ProductDescriptionCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002C6DF4();
}

@end