@interface CRLPasteboardObjectReadAssistant
+ (id)contentDescriptionFrom:(id)from;
- (_TtC8Freeform32CRLPasteboardObjectReadAssistant)init;
- (_TtC8Freeform32CRLPasteboardObjectReadAssistant)initWithPasteboardNativeDataProvider:(id)provider store:(id)store context:(id)context;
- (void)readPasteboardObjectWithCompletionHandler:(id)handler;
- (void)setPasteboardObject:(id)object;
@end

@implementation CRLPasteboardObjectReadAssistant

- (void)setPasteboardObject:(id)object
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject) = object;
  objectCopy = object;
}

+ (id)contentDescriptionFrom:(id)from
{
  v4 = objc_opt_self();
  fromCopy = from;
  v6 = [v4 contentDescriptionFromPasteboard:fromCopy];
  if (v6)
  {
    v7 = v6;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v8.super.isa = 0;
  }

  return v8.super.isa;
}

- (_TtC8Freeform32CRLPasteboardObjectReadAssistant)initWithPasteboardNativeDataProvider:(id)provider store:(id)store context:(id)context
{
  v5 = sub_1008DE350(provider, store, context, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)readPasteboardObjectWithCompletionHandler:(id)handler
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014864F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  selfCopy = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (_TtC8Freeform32CRLPasteboardObjectReadAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end