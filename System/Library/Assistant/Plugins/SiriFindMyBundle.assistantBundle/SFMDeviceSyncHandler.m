@interface SFMDeviceSyncHandler
- (void)beginSyncWithInfo:(id)a3 configuration:(id)a4;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation SFMDeviceSyncHandler

- (void)beginSyncWithInfo:(id)a3 configuration:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_3394(a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  if (a3)
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
  v9 = self;
  sub_43E0(v6, v8, a4);
  swift_unknownObjectRelease();
}

- (void)syncDidEnd
{
  v2 = self;
  sub_45C4();
}

@end