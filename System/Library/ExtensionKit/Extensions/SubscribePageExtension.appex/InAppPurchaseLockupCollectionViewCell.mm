@interface InAppPurchaseLockupCollectionViewCell
- (_TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseLockupCollectionViewCell

- (_TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView) = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  v7 = sub_100751374();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100701208();
}

@end