@interface InAppPurchaseLockupCollectionViewCell
- (_TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseLockupCollectionViewCell

- (_TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_spotlightView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView) = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separator;
  v7 = sub_767510();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_321F34();
}

@end