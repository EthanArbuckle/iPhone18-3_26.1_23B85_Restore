@interface ProductDescriptionCollectionViewCell
- (_TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductDescriptionCollectionViewCell

- (_TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100706F1C();
}

@end