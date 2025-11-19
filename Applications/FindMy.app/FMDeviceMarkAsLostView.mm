@interface FMDeviceMarkAsLostView
- (void)handleAction;
- (void)handleStatusRowTap;
@end

@implementation FMDeviceMarkAsLostView

- (void)handleAction
{
  v2 = self;
  sub_100276504();
}

- (void)handleStatusRowTap
{
  v3 = self + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

@end