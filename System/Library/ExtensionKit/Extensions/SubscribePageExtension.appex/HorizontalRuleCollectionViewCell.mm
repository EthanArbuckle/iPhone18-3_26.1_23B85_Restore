@interface HorizontalRuleCollectionViewCell
- (_TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell)initWithCoder:(id)coder;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation HorizontalRuleCollectionViewCell

- (_TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  v8 = enum case for HorizontalRule.Style.solid(_:);
  v9 = sub_100744E04();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor;
  sub_100016C60(0, &qword_100923500);
  *(&self->super.super.super.super.super.isa + v10) = sub_100753DB4();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100561F58();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  selfCopy = self;
  sub_1005621A0();
}

@end