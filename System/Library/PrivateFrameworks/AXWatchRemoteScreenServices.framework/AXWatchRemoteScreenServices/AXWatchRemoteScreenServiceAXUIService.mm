@interface AXWatchRemoteScreenServiceAXUIService
- (_TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService)init;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
@end

@implementation AXWatchRemoteScreenServiceAXUIService

- (_TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService)init
{
  *(&self->super.isa + OBJC_IVAR____TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService__client) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXWatchRemoteScreenServiceAXUIService();
  return [(AXWatchRemoteScreenServiceAXUIService *)&v3 init];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23D6BDDDC(a3);
}

@end