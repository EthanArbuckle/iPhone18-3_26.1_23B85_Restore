@interface CRLTableItem
+ (CGSize)defaultTableCellSize;
+ (CGSize)defaultTableSize;
- (BOOL)hasRoundedCorners;
- (BOOL)isCellAutogrowOn;
- (BOOL)isRTL;
- (CRLFill)colorFill;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)childInfos;
- (_TtC8Freeform12CRLTableItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5;
- (double)columnWidthAt:(int64_t)a3;
- (double)rowHeightAt:(int64_t)a3;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5;
- (id)cellFillWithColumnIndex:(int64_t)a3 rowIndex:(int64_t)a4;
- (id)strokeForRenderingTable;
- (int64_t)columnCount;
- (int64_t)columnEndIndex;
- (int64_t)rowCount;
- (int64_t)rowEndIndex;
@end

@implementation CRLTableItem

- (id)strokeForRenderingTable
{
  v1 = a1;
  v2 = sub_1011DCEDC();

  return v2;
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
  v17 = sub_1011DBBE4(v14, v15);
  sub_10000CAAC(v14, &qword_1019F6990);

  return v17;
}

- (NSArray)childInfos
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v5 = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v3];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10067F2E8(v6);

  v7 = sub_1011E328C();
  v8 = sub_10067F2E8(v7);

  sub_10079AD4C(v8);

  sub_1005B981C(&qword_1019F5720);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (BOOL)hasRoundedCorners
{
  v2 = self;
  v3 = sub_1011DD1DC();

  return v3 & 1;
}

- (BOOL)isCellAutogrowOn
{
  v2 = self;
  v3 = sub_1011DD484();

  return v3 & 1;
}

- (BOOL)isRTL
{
  v2 = self;
  v3 = sub_1011DD72C();

  return v3 & 1;
}

- (CRLFill)colorFill
{
  v2 = self;
  v3 = sub_1011DD9E4();

  return v3;
}

- (id)cellFillWithColumnIndex:(int64_t)a3 rowIndex:(int64_t)a4
{
  v6 = self;
  v7 = sub_1011E2E68(a3, a4);

  return v7;
}

- (int64_t)rowCount
{
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v10 + v11, v3);
  v12 = self;
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1005B981C(&unk_101A2C7D0);
  v13 = CROrderedDictionary.count.getter();

  sub_1011F0B80(v9, _s15CapsuleDatabaseVMa);
  return v13;
}

- (int64_t)rowEndIndex
{
  v2 = self;
  v3 = sub_1011E3A8C();

  return v3;
}

- (double)rowHeightAt:(int64_t)a3
{
  v4 = self;
  v5 = sub_1011E3F2C(a3);

  return v5;
}

- (int64_t)columnCount
{
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v10 + v11, v3);
  v12 = self;
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1005B981C(&unk_101A2D830);
  v13 = CROrderedDictionary.count.getter();

  sub_1011F0B80(v9, _s15CapsuleDatabaseVMa);
  return v13;
}

- (int64_t)columnEndIndex
{
  v2 = self;
  v3 = sub_1011E560C();

  return v3;
}

- (double)columnWidthAt:(int64_t)a3
{
  v4 = self;
  v5 = sub_1011E5BDC(a3);

  return v5;
}

- (Class)repClass
{
  type metadata accessor for CRLTableRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)layoutClass
{
  type metadata accessor for CRLTableLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLTableEditor();

  return swift_getObjCClassFromMetadata();
}

+ (CGSize)defaultTableCellSize
{
  v2 = 320.0;
  v3 = 240.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultTableSize
{
  v2 = 640.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform12CRLTableItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a5;
  v12 = sub_1011EEF84(v10, v9, a5);

  return v12;
}

@end