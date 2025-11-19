@interface CRLPasteboardObjectWriteAssistant
- (_TtC8Freeform33CRLPasteboardObjectWriteAssistant)init;
- (_TtC8Freeform33CRLPasteboardObjectWriteAssistant)initWithPasteboard:(id)a3 store:(id)a4 context:(id)a5;
- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)a3 completionHandler:(id)a4;
@end

@implementation CRLPasteboardObjectWriteAssistant

- (_TtC8Freeform33CRLPasteboardObjectWriteAssistant)initWithPasteboard:(id)a3 store:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = sub_100D3B2EC(v7, [v7 pasteboardItemMaxSize], a4, a5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014AE1B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014938A0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (_TtC8Freeform33CRLPasteboardObjectWriteAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end