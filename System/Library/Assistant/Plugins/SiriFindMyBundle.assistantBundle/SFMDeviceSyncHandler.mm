@interface SFMDeviceSyncHandler
- (void)beginSyncWithInfo:(id)info configuration:(id)configuration;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation SFMDeviceSyncHandler

- (void)beginSyncWithInfo:(id)info configuration:(id)configuration
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_3394(info);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  if (anchor)
  {
    v6 = sub_61E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_43E0(v6, v8, info);
  swift_unknownObjectRelease();
}

- (void)syncDidEnd
{
  selfCopy = self;
  sub_45C4();
}

@end