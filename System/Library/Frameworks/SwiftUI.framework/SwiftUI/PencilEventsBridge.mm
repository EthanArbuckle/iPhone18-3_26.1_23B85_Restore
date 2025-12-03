@interface PencilEventsBridge
- (_TtC7SwiftUI18PencilEventsBridge)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze;
- (void)pencilInteraction:(id)interaction didReceiveTap:(id)tap;
@end

@implementation PencilEventsBridge

- (_TtC7SwiftUI18PencilEventsBridge)init
{
  ObjectType = swift_getObjectType();
  *&self->host[OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_wantsPencilEventsSeed) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilInteraction) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilDoubleTapSerial) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilSqueezeSerial) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PencilEventsBridge *)&v5 init];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  PencilEventsBridge.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  outlined destroy of Any?(v18);
}

- (void)pencilInteraction:(id)interaction didReceiveTap:(id)tap
{
  interactionCopy = interaction;
  tapCopy = tap;
  selfCopy = self;
  specialized PencilEventsBridge.pencilInteraction(_:didReceiveTap:)(tapCopy);
}

- (void)pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze
{
  interactionCopy = interaction;
  squeezeCopy = squeeze;
  selfCopy = self;
  specialized PencilEventsBridge.pencilInteraction(_:didReceiveSqueeze:)(squeezeCopy);
}

@end