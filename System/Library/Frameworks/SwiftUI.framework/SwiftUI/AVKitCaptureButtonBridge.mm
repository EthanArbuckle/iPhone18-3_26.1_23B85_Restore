@interface AVKitCaptureButtonBridge
- (_TtC7SwiftUI24AVKitCaptureButtonBridge)init;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
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

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized AVKitCaptureButtonBridge._physicalButtonInteraction(_:handle:withActiveActions:)(v8);
}

@end