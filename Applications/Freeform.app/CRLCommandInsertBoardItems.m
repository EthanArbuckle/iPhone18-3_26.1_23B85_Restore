@interface CRLCommandInsertBoardItems
- (NSDictionary)boardItemsByIndex;
- (NSString)actionString;
- (_TtC8Freeform26CRLCommandInsertBoardItems)init;
- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItem:(id)a4;
- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItem:(id)a4 index:(int64_t)a5;
- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItems:(id)a4;
- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItems:(id)a4 index:(int64_t)a5;
- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItemsByIndex:(id)a4;
- (void)setActionString:(id)a3;
@end

@implementation CRLCommandInsertBoardItems

- (NSDictionary)boardItemsByIndex
{

  sub_1005B981C(&qword_1019F5740);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItemsByIndex:(id)a4
{
  sub_1005B981C(&qword_1019F5740);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  v6 = sub_100BDF940(a3, v5);
  swift_deallocPartialClassInstance();
  return v6;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItem:(id)a4
{
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = a3;
  v8 = a4;
  *(inited + 32) = NSNotFound.getter();
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = v8;
  *(inited + 40) = v9;
  v10 = sub_100BD4E94(inited);
  swift_setDeallocating();
  v11 = v8;
  sub_100BDFA98(inited + 32);
  v12 = sub_100BDF940(v7, v10);

  swift_deallocPartialClassInstance();
  return v12;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItem:(id)a4 index:(int64_t)a5
{
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a5;
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = a4;
  *(inited + 40) = v9;
  v10 = sub_100BD4E94(inited);
  swift_setDeallocating();
  v11 = a4;
  v12 = a3;
  sub_100BDFA98(inited + 32);
  v13 = sub_100BDF940(v12, v10);

  swift_deallocPartialClassInstance();
  return v13;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItems:(id)a4
{
  type metadata accessor for CRLBoardItem(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = a3;
  *(inited + 32) = NSNotFound.getter();
  *(inited + 40) = v5;
  v8 = sub_100BD4E94(inited);
  swift_setDeallocating();
  sub_100BDFA98(inited + 32);
  v9 = sub_100BDF940(v7, v8);
  swift_deallocPartialClassInstance();
  return v9;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)initWithParentContainer:(id)a3 boardItems:(id)a4 index:(int64_t)a5
{
  type metadata accessor for CRLBoardItem(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a5;
  v9 = inited + 32;
  *(inited + 40) = v7;
  v10 = sub_100BD4E94(inited);
  swift_setDeallocating();
  v11 = a3;
  sub_100BDFA98(v9);
  v12 = sub_100BDF940(v11, v10);
  swift_deallocPartialClassInstance();
  return v12;
}

- (NSString)actionString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setActionString:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_actionString);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC8Freeform26CRLCommandInsertBoardItems)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end