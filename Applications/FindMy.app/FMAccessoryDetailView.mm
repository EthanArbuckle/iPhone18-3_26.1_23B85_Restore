@interface FMAccessoryDetailView
- (void)handleAction;
- (void)handleFirmwareUpdate;
- (void)handleSerialReveal;
@end

@implementation FMAccessoryDetailView

- (void)handleAction
{
  v2 = self;
  sub_1002CE0A8();
}

- (void)handleFirmwareUpdate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = self;
    swift_unknownObjectRetain();
    sub_1003A51F8(sub_1002CE964, v5);
    swift_unknownObjectRelease();
  }
}

- (void)handleSerialReveal
{
  v2 = self;
  sub_1002CE324();
}

@end