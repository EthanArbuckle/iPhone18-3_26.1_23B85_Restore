@interface HorizontalRuleCollectionViewCell
- (_TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell)initWithCoder:(id)coder;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation HorizontalRuleCollectionViewCell

- (_TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  v8 = enum case for HorizontalRule.Style.solid(_:);
  v9 = sub_75AC60();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor;
  sub_BE70(0, &qword_93E540);
  *(&self->super.super.super.super.super.isa + v10) = sub_769FB0();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21F6B0();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  selfCopy = self;
  sub_21F8F8();
}

@end