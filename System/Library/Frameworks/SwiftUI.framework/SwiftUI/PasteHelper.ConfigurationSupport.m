@interface PasteHelper.ConfigurationSupport
- (BOOL)canPasteItemProviders:(id)a3;
- (_TtCV7SwiftUI11PasteHelper20ConfigurationSupport)init;
- (void)pasteItemProviders:(id)a3;
- (void)setPasteConfiguration:(id)a3;
@end

@implementation PasteHelper.ConfigurationSupport

- (void)setPasteConfiguration:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration);
  *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = a3;
  v3 = a3;
}

- (BOOL)canPasteItemProviders:(id)a3
{
  type metadata accessor for NSItemProvider();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  if (v5)
  {
    v6 = v4;
    v7 = self;
    outlined copy of PasteHelper?(v5);
    v10.value._rawValue = v6;
    v10.is_nil = v5;
    v8 = PasteHelper.canPaste(_:)(v10);

    LOBYTE(v4) = v8;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (void)pasteItemProviders:(id)a3
{
  type metadata accessor for NSItemProvider();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper))
  {
    v5 = v4;
    v6 = *(&self->pasteConfiguration + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
    v9 = self;

    v7 = v6(v5);

    if (v7)
    {
      v7(v8);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtCV7SwiftUI11PasteHelper20ConfigurationSupport)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PasteHelper.ConfigurationSupport *)&v6 init];
}

@end