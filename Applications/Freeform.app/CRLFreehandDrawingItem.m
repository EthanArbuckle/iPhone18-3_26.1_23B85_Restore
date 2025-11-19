@interface CRLFreehandDrawingItem
+ (id)makePKDrawingFrom:(id)a3;
- (BOOL)canMakeEquivalentPKDrawing;
- (BOOL)isItemAllowed:(id)a3;
- (BOOL)prohibitsClustering;
- (BOOL)shouldBeTreatedAsBoxForConnectionLinesForPerf;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (_TtC8Freeform22CRLFreehandDrawingItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5;
- (void)setProhibitsClustering:(BOOL)a3;
@end

@implementation CRLFreehandDrawingItem

- (BOOL)prohibitsClustering
{
  v2 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLFreehandItemData(0);
  v5 = swift_dynamicCastClassUnconditional();
  v6 = qword_101AD9588;
  swift_beginAccess();
  sub_100B47F20(v5 + v6, v4, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_100B47F88(v4, type metadata accessor for CRLFreehandDrawingCRDTData);
  return v8[7];
}

- (void)setProhibitsClustering:(BOOL)a3
{
  v3 = self;
  if (sub_1011255D0(v3))
  {
    type metadata accessor for CRLFreehandItemData(0);
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    type metadata accessor for CRLFreehandDrawingCRDTData(0);

    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
  }
}

- (BOOL)shouldBeTreatedAsBoxForConnectionLinesForPerf
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *&self->super._TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v5 = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *&self->super._TtC8Freeform16CRLContainerItem_opaque[v3];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 > 500;
}

- (BOOL)canMakeEquivalentPKDrawing
{
  v2 = self;
  v3 = sub_100B433C0();

  return v3 & 1;
}

+ (id)makePKDrawingFrom:(id)a3
{
  v3 = type metadata accessor for PKDrawing();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLFreehandDrawingItem();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100B434D0(v7);

  v8.super.isa = PKDrawing._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (Class)layoutClass
{
  sub_100006370(0, &qword_101A03810);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_101A12080);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A12078);

  return swift_getObjCClassFromMetadata();
}

- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v19[-v13];
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  v15 = a4;
  v16 = self;
  v17 = sub_100B43C84(v14, v15);
  sub_10000CAAC(v14, &qword_1019F6990);

  return v17;
}

- (BOOL)isItemAllowed:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100B47B18(v4);

  return v6 & 1;
}

- (_TtC8Freeform22CRLFreehandDrawingItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a5;
  return sub_100B46D4C(v10, v9, a5);
}

@end