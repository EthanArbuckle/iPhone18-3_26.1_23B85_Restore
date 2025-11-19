@interface InAppPurchaseLockupCollectionViewCell
- (_TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseLockupCollectionViewCell

- (_TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  v7 = sub_10076E21C();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100079F50();
}

@end