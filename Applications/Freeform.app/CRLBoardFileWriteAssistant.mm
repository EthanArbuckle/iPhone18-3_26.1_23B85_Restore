@interface CRLBoardFileWriteAssistant
- (_TtC8Freeform26CRLBoardFileWriteAssistant)init;
- (void)writeBoard:(_TtC8Freeform8CRLBoard *)board completionHandler:(id)handler;
@end

@implementation CRLBoardFileWriteAssistant

- (void)writeBoard:(_TtC8Freeform8CRLBoard *)board completionHandler:(id)handler
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = board;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_101493898;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014938A0;
  v14[5] = v13;
  boardCopy = board;
  selfCopy = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (_TtC8Freeform26CRLBoardFileWriteAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end