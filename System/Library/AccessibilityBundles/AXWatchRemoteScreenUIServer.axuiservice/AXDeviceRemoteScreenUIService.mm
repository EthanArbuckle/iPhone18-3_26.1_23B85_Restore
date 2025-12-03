@interface AXDeviceRemoteScreenUIService
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier;
- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)init;
- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)initWithDisplayManager:(id)manager;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)clientConnectionWasInterrupted;
- (void)restartTwiceRemoteScreen;
- (void)startTwiceRemoteScreenWithSendRestart:(BOOL)restart;
- (void)stopTwiceRemoteScreen;
@end

@implementation AXDeviceRemoteScreenUIService

- (_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService)initWithDisplayManager:(id)manager
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_displayManager) = manager;
  v9.receiver = self;
  v9.super_class = ObjectType;
  managerCopy = manager;
  return [(AXDeviceRemoteScreenUIService *)&v9 init];
}

- (void)startTwiceRemoteScreenWithSendRestart:(BOOL)restart
{
  selfCopy = self;
  sub_1B8C(restart);
}

- (void)stopTwiceRemoteScreen
{
  selfCopy = self;
  sub_1ED0();
}

- (void)restartTwiceRemoteScreen
{
  selfCopy = self;
  sub_22F8();
}

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_4354();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_4374();
  v11 = v10;
  selfCopy = self;
  sub_2484(v8, identifier, v9, v11);

  v13.super.isa = sub_4344().super.isa;

  return v13.super.isa;
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier
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
    selfCopy = self;
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