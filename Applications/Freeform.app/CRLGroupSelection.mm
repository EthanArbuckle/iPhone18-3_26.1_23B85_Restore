@interface CRLGroupSelection
- (BOOL)isCrossContainerSelection;
- (BOOL)isEqual:(id)a3;
- (NSArray)containerGroups;
- (NSString)description;
- (_TtC8Freeform17CRLGroupSelection)initWithBoardItems:(id)a3;
- (_TtC8Freeform17CRLGroupSelection)initWithContainerGroups:(id)a3 hasSelectedItemsInNonGroupContainer:(BOOL)a4;
- (_TtC8Freeform17CRLGroupSelection)initWithGroupItem:(id)a3;
@end

@implementation CRLGroupSelection

- (_TtC8Freeform17CRLGroupSelection)initWithGroupItem:(id)a3
{
  self->_TtC8Freeform21CRLBoardItemSelection_opaque[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer] = 0;
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = a3;
  v5 = a3;
  sub_1005BC5DC(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = sub_100616DB8(v7);

  return v8;
}

- (_TtC8Freeform17CRLGroupSelection)initWithContainerGroups:(id)a3 hasSelectedItemsInNonGroupContainer:(BOOL)a4
{
  type metadata accessor for CRLGroupItem();
  sub_100A5E238(&qword_101A0E4D0, 255, type metadata accessor for CRLGroupItem);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  self->_TtC8Freeform21CRLBoardItemSelection_opaque[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer] = a4;
  sub_1012E3BE0(v6);
  v8 = v7;

  return sub_100616DB8(v8);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100A5DBCC(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

- (NSArray)containerGroups
{
  v2 = self;

  sub_100A5D724(v3);

  type metadata accessor for CRLGroupItem();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)isCrossContainerSelection
{
  v2 = self;

  v4 = sub_100A5D724(v3);

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= 1)
  {
    v6 = v2->_TtC8Freeform21CRLBoardItemSelection_opaque[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_100A5DFC0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC8Freeform17CRLGroupSelection)initWithBoardItems:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end