@interface PointerBridge
- (_TtC7SwiftUI13PointerBridge)init;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation PointerBridge

- (_TtC7SwiftUI13PointerBridge)init
{
  ObjectType = swift_getObjectType();
  *&self->host[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed) = 0;
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice userInterfaceIdiom];

  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PointerBridge *)&v6 init];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = specialized PointerBridge.pointerInteraction(_:regionFor:defaultRegion:)(requestCopy);

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = specialized PointerBridge.pointerInteraction(_:styleFor:)();

  return v9;
}

@end