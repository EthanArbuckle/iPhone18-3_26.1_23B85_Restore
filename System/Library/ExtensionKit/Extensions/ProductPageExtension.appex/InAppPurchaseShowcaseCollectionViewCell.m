@interface InAppPurchaseShowcaseCollectionViewCell
- (_TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseShowcaseCollectionViewCell

- (_TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  v2 = v11.receiver;
  [(InAppPurchaseShowcaseCollectionViewCell *)&v11 layoutSubviews];
  v3 = OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView];
  sub_10076422C();
  [v4 sizeThatFits:{v5, v6, v11.receiver, v11.super_class}];
  v8 = v7;
  v10 = v9;
  sub_10076422C();
  [*&v2[v3] setFrame:{CGRectGetMinX(v12), 20.0, v8, v10}];
}

@end