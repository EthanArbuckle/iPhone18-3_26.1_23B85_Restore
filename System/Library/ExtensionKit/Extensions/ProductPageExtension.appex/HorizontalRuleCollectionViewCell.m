@interface HorizontalRuleCollectionViewCell
- (_TtC20ProductPageExtension32HorizontalRuleCollectionViewCell)initWithCoder:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation HorizontalRuleCollectionViewCell

- (_TtC20ProductPageExtension32HorizontalRuleCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  v8 = enum case for HorizontalRule.Style.solid(_:);
  v9 = sub_1007617CC();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor;
  sub_100016F40(0, &qword_100942F10);
  *(&self->super.super.super.super.super.isa + v10) = sub_100770CDC();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000681B4();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = self;
  sub_1000683FC();
}

@end