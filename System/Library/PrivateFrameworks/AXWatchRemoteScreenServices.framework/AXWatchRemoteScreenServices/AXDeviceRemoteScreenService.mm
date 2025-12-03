@interface AXDeviceRemoteScreenService
+ (_TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService)sharedInstance;
- (BOOL)startTwiceRemoteScreen;
- (BOOL)stopTwiceRemoteScreen;
- (_TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService)init;
@end

@implementation AXDeviceRemoteScreenService

+ (_TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService)sharedInstance
{
  if (qword_27E2E1900 != -1)
  {
    swift_once();
  }

  v3 = qword_27E2E1980;

  return v3;
}

- (_TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_serviceImpl);
  v5 = type metadata accessor for AXWatchRemoteScreenServiceAXUIService();
  v6 = [objc_allocWithZone(v5) init];
  v4[3] = v5;
  v4[4] = &off_284FB5DF8;
  *v4 = v6;
  v7 = (&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent);
  *v7 = 0xD000000000000036;
  v7[1] = 0x800000023D6C7990;
  v8 = (&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledKey);
  *v8 = 0x64656C62616E65;
  v8[1] = 0xE700000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(AXDeviceRemoteScreenService *)&v10 init];
}

- (BOOL)startTwiceRemoteScreen
{
  selfCopy = self;
  v3 = AXDeviceRemoteScreenService.startTwiceRemoteScreen()();

  return v3;
}

- (BOOL)stopTwiceRemoteScreen
{
  selfCopy = self;
  v3 = AXDeviceRemoteScreenService.stopTwiceRemoteScreen()();

  return v3;
}

@end