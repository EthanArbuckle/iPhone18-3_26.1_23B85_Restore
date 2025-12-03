@interface CRLCommandSetPathSource
- (_TtC8Freeform23CRLCommandSetPathSource)init;
- (_TtC8Freeform23CRLCommandSetPathSource)initWithId:(id)id pathSource:(id)source;
- (_TtC8Freeform23CRLCommandSetPathSource)initWithShapeItem:(id)item pathSource:(id)source;
@end

@implementation CRLCommandSetPathSource

- (_TtC8Freeform23CRLCommandSetPathSource)initWithId:(id)id pathSource:(id)source
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sourceCopy = source;
  v9 = sub_100D2E2EC(v7, sourceCopy);

  return v9;
}

- (_TtC8Freeform23CRLCommandSetPathSource)initWithShapeItem:(id)item pathSource:(id)source
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  sourceCopy = source;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetPathSource *)self initWithId:isa pathSource:sourceCopy];

  return v15;
}

- (_TtC8Freeform23CRLCommandSetPathSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end