@interface CRLFreehandDrawingShapeItem
+ (id)crlaxDescriptionFor:(id)for;
- (BOOL)canSnapToShape;
- (BOOL)hasSnappedToShape;
- (BOOL)isFreehandDrawingShape;
- (BOOL)shouldPreventDragAndDropWithItem:(id)item;
- (CRLBezierPath)maskPath;
- (CRLCanvasInfoGeometry)geometry;
- (CRLPKStrokePathCompactData)pencilKitStrokePathCompactData;
- (CRLPathSource)pathSource;
- (CRLStroke)stroke;
- (NSString)localizedName;
- (NSUUID)renderGroupID;
- (id)commandsToUpdateModelToMatch:(id)match;
- (int64_t)snappedShapeType;
- (void)setGeometry:(id)geometry;
- (void)setMaskPath:(id)path;
- (void)setPathSource:(id)source;
- (void)setPencilKitStrokePathCompactData:(id)data;
- (void)setSnappedShapeType:(int64_t)type;
- (void)setStroke:(id)stroke;
@end

@implementation CRLFreehandDrawingShapeItem

- (BOOL)shouldPreventDragAndDropWithItem:(id)item
{
  if (!item)
  {
    return 1;
  }

  type metadata accessor for CRLFreehandDrawingShapeItem();
  return swift_dynamicCastClass() == 0;
}

- (BOOL)isFreehandDrawingShape
{
  selfCopy = self;
  sub_100EA9414();

  return 1;
}

- (NSString)localizedName
{
  selfCopy = self;
  sub_100EA9A2C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CRLCanvasInfoGeometry)geometry
{
  v2 = *(**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  selfCopy = self;
  sub_100EADEC0(geometryCopy);
}

- (CRLStroke)stroke
{
  selfCopy = self;
  v3 = sub_100EAE0D4();

  return v3;
}

- (void)setStroke:(id)stroke
{
  strokeCopy = stroke;
  selfCopy = self;
  sub_100EAE318(stroke);
}

- (CRLPathSource)pathSource
{
  v3 = **&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);
    selfCopy = self;

    v8 = v5(v7);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setPathSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_100EAE550(sourceCopy);
}

- (NSUUID)renderGroupID
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_100EAE818(v5);

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (CRLPKStrokePathCompactData)pencilKitStrokePathCompactData
{
  selfCopy = self;
  sub_100EAEB0C();
  v4 = v3;

  return v4;
}

- (void)setPencilKitStrokePathCompactData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_100EAEE34(data);
}

- (CRLBezierPath)maskPath
{
  selfCopy = self;
  sub_100EAF3B0();
  v4 = v3;

  return v4;
}

- (void)setMaskPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  sub_100EAF710(path);
}

- (BOOL)canSnapToShape
{
  selfCopy = self;
  sub_100EAFCDC();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)hasSnappedToShape
{
  v3 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  if (*v10 == &off_1019FAE60)
  {
    v11 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v10 + v11, v9, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v9, &unk_101A0F400);
    v12 = v5[*(v3 + 28) + 8];
    sub_100EB6578(v5, type metadata accessor for CRLShapeItemParentAffinity);
    return v12 != 255;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)snappedShapeType
{
  selfCopy = self;
  sub_100EB00C4();
  v4 = v3;

  return v4;
}

- (void)setSnappedShapeType:(int64_t)type
{
  selfCopy = self;
  sub_100EB02F4(type);
}

- (id)commandsToUpdateModelToMatch:(id)match
{
  matchCopy = match;
  selfCopy = self;
  v6 = sub_100EB058C(matchCopy);

  return v6;
}

+ (id)crlaxDescriptionFor:(id)for
{
  type metadata accessor for CRLFreehandDrawingShapeItem();
  sub_100EB64C8(&qword_101A21DC8, type metadata accessor for CRLFreehandDrawingShapeItem);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = _swiftEmptyDictionarySingleton;
  sub_100EA8A5C(v3, &v9);

  v5 = sub_100EA87FC(v4, &v9);

  v6 = sub_1006400C4(v5);

  sub_100B2D7F0(v6);

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

@end