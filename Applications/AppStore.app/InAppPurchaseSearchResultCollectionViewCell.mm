@interface InAppPurchaseSearchResultCollectionViewCell
- (_TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InAppPurchaseSearchResultCollectionViewCell

- (_TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v6 = sub_1000056A8(v5, qword_1009D25F0);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  sub_100005744(0, &qword_100970180);
  *(&self->super.super.super.super.super.isa + v7) = static UIColor.componentBackgroundStandout.getter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10050B614();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10050BAB8(a3);
}

@end