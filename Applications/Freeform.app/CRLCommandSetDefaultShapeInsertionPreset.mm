@interface CRLCommandSetDefaultShapeInsertionPreset
- (_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset)init;
- (_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset)initWithShapeItem:(id)item shapeType:(int64_t)type;
@end

@implementation CRLCommandSetDefaultShapeInsertionPreset

- (_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset)initWithShapeItem:(id)item shapeType:(int64_t)type
{
  itemCopy = item;
  sub_1010A07F0(itemCopy, 0, __src);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__src, v6);
  v7 = type metadata accessor for CRLCommandSetDefaultShapeInsertionPreset();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_actionString;
  if (qword_1019F1298 != -1)
  {
    swift_once();
  }

  v10 = &v8[v9];
  v11 = unk_1019F4A10;
  *v10 = qword_1019F4A08;
  *(v10 + 1) = v11;
  memcpy(&v8[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeStyle], __src, 0x370uLL);
  *&v8[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeType] = type;
  v14.receiver = v8;
  v14.super_class = v7;

  v12 = [(CRLCommand *)&v14 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end