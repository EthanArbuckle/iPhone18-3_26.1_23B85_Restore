@interface HorizontalRuleCollectionViewCell
- (_TtC8AppStore32HorizontalRuleCollectionViewCell)initWithCoder:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation HorizontalRuleCollectionViewCell

- (_TtC8AppStore32HorizontalRuleCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  v8 = enum case for HorizontalRule.Style.solid(_:);
  v9 = type metadata accessor for HorizontalRule.Style();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  v10 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor;
  sub_100005744(0, &qword_100970180);
  *(&self->super.super.super.super.super.isa + v10) = static UIColor.defaultLine.getter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10075D560();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = self;
  sub_10075D7A8();
}

@end