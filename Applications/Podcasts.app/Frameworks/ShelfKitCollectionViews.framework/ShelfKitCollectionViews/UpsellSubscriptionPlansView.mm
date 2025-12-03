@interface UpsellSubscriptionPlansView
- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithFrame:(CGRect)frame;
- (void)planButtonTappedWithButton:(id)button;
@end

@implementation UpsellSubscriptionPlansView

- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons) = _swiftEmptyArrayStorage;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  *v3 = 0;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)planButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_2F206C(buttonCopy);
}

- (_TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end