@interface PencilEventsBridge
- (_TtC7SwiftUI18PencilEventsBridge)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4;
- (void)pencilInteraction:(id)a3 didReceiveTap:(id)a4;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  PencilEventsBridge.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  outlined destroy of Any?(v18);
}

- (void)pencilInteraction:(id)a3 didReceiveTap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized PencilEventsBridge.pencilInteraction(_:didReceiveTap:)(v7);
}

- (void)pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized PencilEventsBridge.pencilInteraction(_:didReceiveSqueeze:)(v7);
}

@end