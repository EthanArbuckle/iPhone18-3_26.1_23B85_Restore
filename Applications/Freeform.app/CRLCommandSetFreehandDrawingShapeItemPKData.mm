@interface CRLCommandSetFreehandDrawingShapeItemPKData
- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)init;
- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)initWithFreehandDrawingShapeItem:(id)item strokePathCompactData:(id)data maskPath:(id)path;
- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)initWithId:(id)id strokePathCompactData:(id)data maskPath:(id)path;
@end

@implementation CRLCommandSetFreehandDrawingShapeItemPKData

- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)initWithId:(id)id strokePathCompactData:(id)data maskPath:(id)path
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData) = 0;
  v13 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath) = 0;
  (*(v9 + 16))(self + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_id, v11, v8);
  *(&self->super.super.isa + v12) = data;
  *(&self->super.super.isa + v13) = path;
  v14 = type metadata accessor for CRLCommandSetFreehandDrawingShapeItemPKData();
  v19.receiver = self;
  v19.super_class = v14;
  dataCopy = data;
  pathCopy = path;
  v17 = [(CRLCommand *)&v19 init];
  (*(v9 + 8))(v11, v8);
  return v17;
}

- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)initWithFreehandDrawingShapeItem:(id)item strokePathCompactData:(id)data maskPath:(id)path
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v11);
  itemCopy = item;
  dataCopy = data;
  pathCopy = path;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  v18 = [(CRLCommandSetFreehandDrawingShapeItemPKData *)self initWithId:isa strokePathCompactData:dataCopy maskPath:pathCopy];

  return v18;
}

- (_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end