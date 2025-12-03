@interface CRLCommandReparentBoardItems
- (NSArray)boardItems;
- (_TtC8Freeform28CRLCommandReparentBoardItems)init;
- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItem:(id)item;
- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItem:(id)item index:(int64_t)index;
- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItems:(id)items;
- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItems:(id)items index:(int64_t)index;
@end

@implementation CRLCommandReparentBoardItems

- (NSArray)boardItems
{
  type metadata accessor for CRLBoardItem(0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = type metadata accessor for CRLCommandReparentBoardItems();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v5;
  *&v7[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = container;
  v8 = &v7[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
  *v8 = 0;
  v8[8] = 1;
  v12.receiver = v7;
  v12.super_class = v6;
  containerCopy = container;
  v10 = [(CRLCommand *)&v12 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItems:(id)items index:(int64_t)index
{
  type metadata accessor for CRLBoardItem(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = type metadata accessor for CRLCommandReparentBoardItems();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v7;
  *&v9[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = container;
  v10 = &v9[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
  *v10 = index;
  v10[8] = 0;
  v14.receiver = v9;
  v14.super_class = v8;
  containerCopy = container;
  v12 = [(CRLCommand *)&v14 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItem:(id)item
{
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  *(v6 + 32) = item;
  v7 = type metadata accessor for CRLCommandReparentBoardItems();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v6;
  *&v8[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = container;
  v9 = &v8[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
  *v9 = 0;
  v9[8] = 1;
  v14.receiver = v8;
  v14.super_class = v7;
  containerCopy = container;
  itemCopy = item;
  v12 = [(CRLCommand *)&v14 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (_TtC8Freeform28CRLCommandReparentBoardItems)initWithDestinationContainer:(id)container boardItem:(id)item index:(int64_t)index
{
  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = item;
  v9 = type metadata accessor for CRLCommandReparentBoardItems();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v8;
  *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = container;
  v11 = &v10[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
  *v11 = index;
  v11[8] = 0;
  v16.receiver = v10;
  v16.super_class = v9;
  containerCopy = container;
  itemCopy = item;
  v14 = [(CRLCommand *)&v16 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (_TtC8Freeform28CRLCommandReparentBoardItems)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end