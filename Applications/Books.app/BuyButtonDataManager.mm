@interface BuyButtonDataManager
- (void)networkReachabilityChangedWithNotification:(id)notification;
- (void)preorderedStateChanged;
@end

@implementation BuyButtonDataManager

- (void)networkReachabilityChangedWithNotification:(id)notification
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    sub_1005353C0();
    sub_100535160();
    swift_unknownObjectRelease();
  }
}

- (void)preorderedStateChanged
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    sub_1005353C0();
    sub_100535160();
    swift_unknownObjectRelease();
  }
}

@end