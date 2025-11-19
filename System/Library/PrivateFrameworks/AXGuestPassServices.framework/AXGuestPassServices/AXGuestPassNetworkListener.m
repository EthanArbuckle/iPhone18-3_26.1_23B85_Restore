@interface AXGuestPassNetworkListener
- (_TtC19AXGuestPassServices26AXGuestPassNetworkListener)init;
- (void)listen;
@end

@implementation AXGuestPassNetworkListener

- (void)listen
{
  v2 = self;
  AXGuestPassNetworkListener.listen()();
}

- (_TtC19AXGuestPassServices26AXGuestPassNetworkListener)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_listener) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection) = 0;
  v4 = OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connectionState;
  v5 = *MEMORY[0x277CD8DD8];
  v6 = sub_23D60C2F0();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.isa + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_data) = xmmword_23D60D3A0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AXGuestPassNetworkListener *)&v8 init];
}

@end