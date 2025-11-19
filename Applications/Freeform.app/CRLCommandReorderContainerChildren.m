@interface CRLCommandReorderContainerChildren
- (NSArray)children;
- (NSIndexSet)indices;
- (NSString)actionString;
- (_TtC8Freeform34CRLCommandReorderContainerChildren)init;
- (_TtC8Freeform34CRLCommandReorderContainerChildren)initWithParentContainer:(id)a3 childrenToMove:(id)a4 targetIndices:(id)a5;
- (void)setActionString:(id)a3;
@end

@implementation CRLCommandReorderContainerChildren

- (NSArray)children
{
  type metadata accessor for CRLBoardItem(0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSIndexSet)indices
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_indices, v3, v5);
  IndexSet._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (_TtC8Freeform34CRLCommandReorderContainerChildren)initWithParentContainer:(id)a3 childrenToMove:(id)a4 targetIndices:(id)a5
{
  v6 = type metadata accessor for IndexSet();
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardItem(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10078A058(a3, v9, v8);
}

- (NSString)actionString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setActionString:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_actionString);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC8Freeform34CRLCommandReorderContainerChildren)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end