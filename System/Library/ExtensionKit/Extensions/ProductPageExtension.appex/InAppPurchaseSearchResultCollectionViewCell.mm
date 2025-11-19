@interface InAppPurchaseSearchResultCollectionViewCell
- (_TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InAppPurchaseSearchResultCollectionViewCell

- (_TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v5 = sub_10075E93C();
  v6 = sub_10000A61C(v5, qword_1009A09A0);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  sub_100016F40(0, &qword_100942F10);
  *(&self->super.super.super.super.super.isa + v7) = sub_100770D9C();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10059F01C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10059F4C0(a3);
}

@end