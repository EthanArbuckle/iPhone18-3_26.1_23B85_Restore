@interface CRLPasteboardObjectItemProviderWriteAssistant
- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)init;
- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)initWithStore:(id)store context:(id)context;
- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)object to:(NSItemProvider *)to completionHandler:(id)handler;
@end

@implementation CRLPasteboardObjectItemProviderWriteAssistant

- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)initWithStore:(id)store context:(id)context
{
  storeCopy = store;
  contextCopy = context;
  v7 = sub_1006913E4(storeCopy, contextCopy);

  return v7;
}

- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)object to:(NSItemProvider *)to completionHandler:(id)handler
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = object;
  v13[3] = to;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_101470860;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1014938A0;
  v16[5] = v15;
  objectCopy = object;
  toCopy = to;
  selfCopy = self;
  sub_10119D67C(0, 0, v11, &unk_101470870, v16);
}

- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end