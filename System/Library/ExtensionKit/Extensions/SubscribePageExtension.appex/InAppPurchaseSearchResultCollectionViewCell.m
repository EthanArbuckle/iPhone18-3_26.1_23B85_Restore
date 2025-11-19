@interface InAppPurchaseSearchResultCollectionViewCell
- (_TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InAppPurchaseSearchResultCollectionViewCell

- (_TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v5 = sub_100742014();
  v6 = sub_10000D0FC(v5, qword_100982190);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  sub_100016C60(0, &qword_100923500);
  *(&self->super.super.super.super.super.isa + v7) = sub_100753E74();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10050568C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100505B30(a3);
}

@end