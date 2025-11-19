@interface CRLCommandFreehandDrawingProhibitClustering
- (NSUUID)id;
- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)init;
- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)initWithFreehandDrawingItem:(id)a3 prohibitsClustering:(BOOL)a4;
- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)initWithId:(id)a3 prohibitsClustering:(BOOL)a4;
@end

@implementation CRLCommandFreehandDrawingProhibitClustering

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)initWithId:(id)a3 prohibitsClustering:(BOOL)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 16))(self + OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_id, v9, v6);
  *(self + OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_prohibitsClustering) = a4;
  v10 = type metadata accessor for CRLCommandFreehandDrawingProhibitClustering();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(CRLCommand *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)initWithFreehandDrawingItem:(id)a3 prohibitsClustering:(BOOL)a4
{
  v4 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(a3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  v12 = a3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v14 = [(CRLCommandFreehandDrawingProhibitClustering *)self initWithId:isa prohibitsClustering:v4];

  return v14;
}

- (_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end