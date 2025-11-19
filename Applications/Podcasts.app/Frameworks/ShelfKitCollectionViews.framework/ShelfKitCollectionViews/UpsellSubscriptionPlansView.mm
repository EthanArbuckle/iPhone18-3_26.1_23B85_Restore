@interface UpsellSubscriptionPlansView
- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithFrame:(CGRect)a3;
- (void)planButtonTappedWithButton:(id)a3;
@end

@implementation UpsellSubscriptionPlansView

- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons) = _swiftEmptyArrayStorage;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  *v3 = 0;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)planButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2F206C(v4);
}

- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end