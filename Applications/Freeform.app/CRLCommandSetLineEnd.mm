@interface CRLCommandSetLineEnd
- (NSUUID)id;
- (_TtC8Freeform20CRLCommandSetLineEnd)init;
- (_TtC8Freeform20CRLCommandSetLineEnd)initWithId:(id)id lineEnd:(id)end chirality:(int64_t)chirality;
- (_TtC8Freeform20CRLCommandSetLineEnd)initWithShapeItem:(id)item lineEnd:(id)end chirality:(int64_t)chirality;
@end

@implementation CRLCommandSetLineEnd

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_id, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (_TtC8Freeform20CRLCommandSetLineEnd)initWithId:(id)id lineEnd:(id)end chirality:(int64_t)chirality
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  endCopy = end;
  v11 = sub_1005E38C8(v9, end, chirality);

  return v11;
}

- (_TtC8Freeform20CRLCommandSetLineEnd)initWithShapeItem:(id)item lineEnd:(id)end chirality:(int64_t)chirality
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v11);
  itemCopy = item;
  endCopy = end;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  v17 = [(CRLCommandSetLineEnd *)self initWithId:isa lineEnd:endCopy chirality:chirality];

  return v17;
}

- (_TtC8Freeform20CRLCommandSetLineEnd)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end