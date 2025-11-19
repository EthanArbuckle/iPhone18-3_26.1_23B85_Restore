@interface UpsellSubscriptionPlanButton
- (BOOL)isSelected;
- (_TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation UpsellSubscriptionPlanButton

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(UpsellSubscriptionPlanButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  v7 = [(UpsellSubscriptionPlanButton *)&v10 isSelected];
  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(UpsellSubscriptionPlanButton *)&v9 setSelected:v3];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (v7 != [(UpsellSubscriptionPlanButton *)&v8 isSelected])
  {
    sub_2F2C3C();
  }
}

- (_TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___subtitleLabel) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end