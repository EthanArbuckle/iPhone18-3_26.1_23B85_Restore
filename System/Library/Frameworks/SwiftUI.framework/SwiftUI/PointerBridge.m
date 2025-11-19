@interface PointerBridge
- (_TtC7SwiftUI13PointerBridge)init;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation PointerBridge

- (_TtC7SwiftUI13PointerBridge)init
{
  ObjectType = swift_getObjectType();
  *&self->host[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed) = 0;
  v4 = [objc_opt_self() currentDevice];
  [v4 userInterfaceIdiom];

  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PointerBridge *)&v6 init];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = specialized PointerBridge.pointerInteraction(_:regionFor:defaultRegion:)(v9);

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized PointerBridge.pointerInteraction(_:styleFor:)();

  return v9;
}

@end