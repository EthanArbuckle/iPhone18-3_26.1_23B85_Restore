@interface CRLCommandDeleteBoardItems
- (NSSet)boardItems;
- (NSString)actionString;
- (_TtC8Freeform26CRLCommandDeleteBoardItems)init;
- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemToDelete:(id)a3;
- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemsToDelete:(id)a3;
- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemsToDelete:(id)a3 canDeleteNewlyCreatedItems:(BOOL)a4;
@end

@implementation CRLCommandDeleteBoardItems

- (NSSet)boardItems
{
  type metadata accessor for CRLBoardItem(0);
  sub_100A0CF5C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemsToDelete:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  sub_100A0CF5C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [(CRLCommandDeleteBoardItems *)self initWithBoardItemsToDelete:isa canDeleteNewlyCreatedItems:0];

  return v5;
}

- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemsToDelete:(id)a3 canDeleteNewlyCreatedItems:(BOOL)a4
{
  type metadata accessor for CRLBoardItem(0);
  sub_100A0CF5C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100A0AC3C(v5, a4);
}

- (_TtC8Freeform26CRLCommandDeleteBoardItems)initWithBoardItemToDelete:(id)a3
{
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = a3;
  v6 = a3;
  sub_1005BC5DC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for CRLBoardItem(0);
  sub_100A0CF5C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [(CRLCommandDeleteBoardItems *)self initWithBoardItemsToDelete:isa];

  return v8;
}

- (NSString)actionString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8Freeform26CRLCommandDeleteBoardItems)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end