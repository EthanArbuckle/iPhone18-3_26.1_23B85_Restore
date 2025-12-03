@interface SlotDrawer
- (_TtC28ManagedAppDistributionDaemon10SlotDrawer)init;
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
@end

@implementation SlotDrawer

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10020A6D0(v13, v12);
  type metadata accessor for SecureButtonTag();
  if (swift_dynamicCast())
  {
    v7 = objc_allocWithZone(type metadata accessor for SecureButton());
    v8 = sub_1004B5158(styleCopy, v11, remote);

    sub_10000710C(v13);
    v9 = v8;
  }

  else
  {

    sub_10000710C(v13);
    v9 = 0;
  }

  return v9;
}

- (_TtC28ManagedAppDistributionDaemon10SlotDrawer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SlotDrawer();
  return [(SlotDrawer *)&v3 init];
}

@end