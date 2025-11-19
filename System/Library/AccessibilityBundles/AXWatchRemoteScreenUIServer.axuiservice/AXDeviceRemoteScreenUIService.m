@interface AXDeviceRemoteScreenUIService
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3;
- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)init;
- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)initWithDisplayManager:(id)a3;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)clientConnectionWasInterrupted;
- (void)restartTwiceRemoteScreen;
- (void)startTwiceRemoteScreenWithSendRestart:(BOOL)a3;
- (void)stopTwiceRemoteScreen;
@end

@implementation AXDeviceRemoteScreenUIService

- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)initWithDisplayManager:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_displayManager) = a3;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
  return [(AXDeviceRemoteScreenUIService *)&v9 init];
}

- (void)startTwiceRemoteScreenWithSendRestart:(BOOL)a3
{
  v4 = self;
  sub_1B8C(a3);
}

- (void)stopTwiceRemoteScreen
{
  v2 = self;
  sub_1ED0();
}

- (void)restartTwiceRemoteScreen
{
  v2 = self;
  sub_22F8();
}

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_4354();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_4374();
  v11 = v10;
  v12 = self;
  sub_2484(v8, a4, v9, v11);

  v13.super.isa = sub_4344().super.isa;

  return v13.super.isa;
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3
{
  if (sub_4158())
  {
    v3.super.isa = sub_4394().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)clientConnectionWasInterrupted
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
  if (v2)
  {
    v4 = *&self->displayManager[OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController];
    v5 = *(&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
    swift_getObjectType();
    v7 = self;
    v6 = v2;
    sub_42D4();
  }
}

- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end