@interface CRLPasteboardObjectItemProviderWriteAssistant
- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)init;
- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)initWithStore:(id)a3 context:(id)a4;
- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)a3 to:(NSItemProvider *)a4 completionHandler:(id)a5;
@end

@implementation CRLPasteboardObjectItemProviderWriteAssistant

- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)initWithStore:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1006913E4(v5, v6);

  return v7;
}

- (void)writePasteboardObject:(_TtC8Freeform19CRLPasteboardObject *)a3 to:(NSItemProvider *)a4 completionHandler:(id)a5
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10119D67C(0, 0, v11, &unk_101470870, v16);
}

- (_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end