@interface CRLBoardItemSelection
- (BOOL)containsKindOfClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (NSSet)boardItems;
- (NSString)description;
- (_TtC8Freeform21CRLBoardItemSelection)init;
- (_TtC8Freeform21CRLBoardItemSelection)initWithBoardItems:(id)items;
- (id)infosOfClass:(Class)class;
- (int64_t)hash;
- (int64_t)itemCount;
- (void)setBoardItems:(id)items;
@end

@implementation CRLBoardItemSelection

- (NSSet)boardItems
{
  type metadata accessor for CRLBoardItem(0);
  sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);
  *(self + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC8Freeform21CRLBoardItemSelection)initWithBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100616DB8(v3);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100617424(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;

  sub_100616848(v3);

  type metadata accessor for UUID();
  sub_100618384(&qword_1019FB870, 255, &type metadata accessor for UUID);
  v4 = Array<A>.hashValue.getter();

  return v4;
}

- (int64_t)itemCount
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
  if ((v2 & 0xC000000000000001) == 0)
  {
    return *(v2 + 16);
  }

  selfCopy = self;

  v4 = __CocoaSet.count.getter();

  return v4;
}

- (id)infosOfClass:(Class)class
{
  swift_getObjCClassMetadata();

  sub_100617D48(v3);
  type metadata accessor for CRLBoardItem(0);
  sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)containsKindOfClass:(Class)class
{
  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1006177D8();
  v6 = v5;

  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_100617AC4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC8Freeform21CRLBoardItemSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end