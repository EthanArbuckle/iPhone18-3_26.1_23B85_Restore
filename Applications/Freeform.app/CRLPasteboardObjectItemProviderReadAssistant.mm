@interface CRLPasteboardObjectItemProviderReadAssistant
- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)init;
- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)initWithStore:(id)store context:(id)context;
- (id)readPasteboardObjectFrom:(id)from completion:(id)completion;
@end

@implementation CRLPasteboardObjectItemProviderReadAssistant

- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)initWithStore:(id)store context:(id)context
{
  ObjectType = swift_getObjectType();
  v7 = objc_allocWithZone(ObjectType);
  type metadata accessor for CRLItemProviderReadAssistant();
  v8 = swift_allocObject();
  v8[2] = store;
  v8[3] = context;
  v8[4] = 7;
  *&v7[OBJC_IVAR____TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant_readAssistant] = v8;
  v13.receiver = v7;
  v13.super_class = ObjectType;
  storeCopy = store;
  contextCopy = context;
  v11 = [(CRLPasteboardObjectItemProviderReadAssistant *)&v13 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (id)readPasteboardObjectFrom:(id)from completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  fromCopy = from;
  selfCopy = self;
  v10 = sub_100AF4544(fromCopy, sub_100AF4958, v7);

  return v10;
}

- (_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end