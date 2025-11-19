@interface CRLPasteboardObjectItemProviderReadAssistant
- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)init;
- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)initWithStore:(id)a3 context:(id)a4;
- (id)readPasteboardObjectFrom:(id)a3 completion:(id)a4;
@end

@implementation CRLPasteboardObjectItemProviderReadAssistant

- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)initWithStore:(id)a3 context:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = objc_allocWithZone(ObjectType);
  type metadata accessor for CRLItemProviderReadAssistant();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = 7;
  *&v7[OBJC_IVAR____TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant_readAssistant] = v8;
  v13.receiver = v7;
  v13.super_class = ObjectType;
  v9 = a3;
  v10 = a4;
  v11 = [(CRLPasteboardObjectItemProviderReadAssistant *)&v13 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (id)readPasteboardObjectFrom:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_100AF4544(v8, sub_100AF4958, v7);

  return v10;
}

- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end