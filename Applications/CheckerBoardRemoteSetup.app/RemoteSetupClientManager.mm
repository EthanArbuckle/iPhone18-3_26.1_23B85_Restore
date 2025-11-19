@interface RemoteSetupClientManager
- (_TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager)init;
@end

@implementation RemoteSetupClientManager

- (_TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass) = -1;
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_clientSideAuth) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_reverseFlowForDevices) = &_swiftEmptySetSingleton;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteSetupClientManager();
  return [(RemoteSetupClientManager *)&v3 init];
}

@end