@interface FMItemMarkAsLostView
- (void)handleAction;
- (void)handleStatusRowTap;
@end

@implementation FMItemMarkAsLostView

- (void)handleAction
{
  v2 = self;
  sub_1004FD158();
}

- (void)handleStatusRowTap
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_1003A4004();
    swift_unknownObjectRelease();
  }
}

@end