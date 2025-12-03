@interface CRLCommandSetInfoGeometry
- (_TtC8Freeform25CRLCommandSetInfoGeometry)init;
- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithBoardItem:(id)item geometry:(id)geometry;
- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithId:(id)id geometry:(id)geometry;
@end

@implementation CRLCommandSetInfoGeometry

- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithId:(id)id geometry:(id)geometry
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  geometryCopy = geometry;
  v9 = sub_100FC2990(v7, geometryCopy);

  return v9;
}

- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithBoardItem:(id)item geometry:(id)geometry
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *item) + 0x88))(v9);
  itemCopy = item;
  geometryCopy = geometry;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetInfoGeometry *)self initWithId:isa geometry:geometryCopy];

  return v15;
}

- (_TtC8Freeform25CRLCommandSetInfoGeometry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end