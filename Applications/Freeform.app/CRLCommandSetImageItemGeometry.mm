@interface CRLCommandSetImageItemGeometry
- (NSUUID)id;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)init;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithId:(id)id imageGeometry:(id)geometry maskGeometry:(id)maskGeometry maskPathSource:(id)source;
- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithImageItem:(id)item imageGeometry:(id)geometry maskGeometry:(id)maskGeometry maskPathSource:(id)source;
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

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithId:(id)id imageGeometry:(id)geometry maskGeometry:(id)maskGeometry maskPathSource:(id)source
{
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  geometryCopy = geometry;
  maskGeometryCopy = maskGeometry;
  sourceCopy = source;
  v15 = sub_1008A2CBC(v11, geometry, maskGeometry, source);

  return v15;
}

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)initWithImageItem:(id)item imageGeometry:(id)geometry maskGeometry:(id)maskGeometry maskPathSource:(id)source
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v13);
  itemCopy = item;
  geometryCopy = geometry;
  maskGeometryCopy = maskGeometry;
  sourceCopy = source;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  v21 = [(CRLCommandSetImageItemGeometry *)self initWithId:isa imageGeometry:geometryCopy maskGeometry:maskGeometryCopy maskPathSource:sourceCopy];

  return v21;
}

- (_TtC8Freeform30CRLCommandSetImageItemGeometry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end