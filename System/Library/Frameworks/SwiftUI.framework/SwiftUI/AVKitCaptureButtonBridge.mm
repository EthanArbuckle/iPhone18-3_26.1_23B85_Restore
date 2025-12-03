@interface AVKitCaptureButtonBridge
- (_TtC7SwiftUI24AVKitCaptureButtonBridge)init;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
@end

@implementation AVKitCaptureButtonBridge

- (_TtC7SwiftUI24AVKitCaptureButtonBridge)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_seedTracker) = -1;
  v4 = (&self->super.isa + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction) = 0;
  *&self->seedTracker[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(AVKitCaptureButtonBridge *)&v6 init];
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  interactionCopy = interaction;
  actionCopy = action;
  selfCopy = self;
  specialized AVKitCaptureButtonBridge._physicalButtonInteraction(_:handle:withActiveActions:)(actionCopy);
}

@end