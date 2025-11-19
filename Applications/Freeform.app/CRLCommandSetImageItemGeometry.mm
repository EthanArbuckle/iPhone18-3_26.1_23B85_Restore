@interface CRLCommandSetImageItemGeometry
- (NSUUID)id;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)init;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithId:(id)a3 imageGeometry:(id)a4 maskGeometry:(id)a5 maskPathSource:(id)a6;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithImageItem:(id)a3 imageGeometry:(id)a4 maskGeometry:(id)a5 maskPathSource:(id)a6;
@end

@implementation CRLCommandSetImageItemGeometry

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform30CRLCommandSetImageItemGeometry_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithId:(id)a3 imageGeometry:(id)a4 maskGeometry:(id)a5 maskPathSource:(id)a6
{
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = sub_1008A2CBC(v11, a4, a5, a6);

  return v15;
}

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithImageItem:(id)a3 imageGeometry:(id)a4 maskGeometry:(id)a5 maskPathSource:(id)a6
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(a3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v13);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  v21 = [(CRLCommandSetImageItemGeometry *)self initWithId:isa imageGeometry:v17 maskGeometry:v18 maskPathSource:v19];

  return v21;
}

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end