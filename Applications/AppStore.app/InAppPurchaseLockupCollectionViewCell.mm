@interface InAppPurchaseLockupCollectionViewCell
- (_TtC8AppStore37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseLockupCollectionViewCell

- (_TtC8AppStore37InAppPurchaseLockupCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_spotlightView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView) = 0;
  v6 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separator;
  v7 = type metadata accessor for Separator();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100058A48();
}

@end