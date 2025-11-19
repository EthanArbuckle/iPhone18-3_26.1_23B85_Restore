@interface CRLCommandSetInfoGeometry
- (_TtC8Freeform25CRLCommandSetInfoGeometry)init;
- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithBoardItem:(id)a3 geometry:(id)a4;
- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithId:(id)a3 geometry:(id)a4;
@end

@implementation CRLCommandSetInfoGeometry

- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithId:(id)a3 geometry:(id)a4
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = sub_100FC2990(v7, v8);

  return v9;
}

- (_TtC8Freeform25CRLCommandSetInfoGeometry)initWithBoardItem:(id)a3 geometry:(id)a4
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a3) + 0x88))(v9);
  v12 = a3;
  v13 = a4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetInfoGeometry *)self initWithId:isa geometry:v13];

  return v15;
}

- (_TtC8Freeform25CRLCommandSetInfoGeometry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end