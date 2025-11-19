@interface AXGuestPassAssertionManager
- (_TtC19AXGuestPassServices27AXGuestPassAssertionManager)init;
@end

@implementation AXGuestPassAssertionManager

- (_TtC19AXGuestPassServices27AXGuestPassAssertionManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction) = 0;
  v3 = OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_listener;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for AXGuestPassNetworkListener()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for AXGuestPassAssertionManager();
  return [(AXGuestPassAssertionManager *)&v5 init];
}

@end