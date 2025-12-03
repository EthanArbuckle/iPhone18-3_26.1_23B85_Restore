@interface CRLCommandSetFreehandDrawingShapeItemSnappedShapeType
- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)init;
- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)initWithFreehandDrawingShapeItem:(id)item snappedShapeType:(int64_t)type;
- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)initWithId:(id)id snappedShapeType:(int64_t)type;
@end

@implementation CRLCommandSetFreehandDrawingShapeItemSnappedShapeType

- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)initWithId:(id)id snappedShapeType:(int64_t)type
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 16))(self + OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_id, v9, v6);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType_snappedShapeType) = type;
  v10 = type metadata accessor for CRLCommandSetFreehandDrawingShapeItemSnappedShapeType();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(CRLCommand *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)initWithFreehandDrawingShapeItem:(id)item snappedShapeType:(int64_t)type
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v14 = [(CRLCommandSetFreehandDrawingShapeItemSnappedShapeType *)self initWithId:isa snappedShapeType:type];

  return v14;
}

- (_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end