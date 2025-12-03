@interface HeadphoneRouter
- (_TtC20HeadphoneProxService15HeadphoneRouter)init;
- (void)proxCardFlowDidDismiss;
@end

@implementation HeadphoneRouter

- (_TtC20HeadphoneProxService15HeadphoneRouter)init
{
  ObjectType = swift_getObjectType();
  *&self->currentView[OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = 0;
  v4 = self + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks) = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell);
  *v5 = 0;
  v5[1] = 0;
  *&self->currentView[OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_delegate] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneRouter *)&v7 init];
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_10004CCB8();
}

@end