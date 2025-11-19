@interface CRLCommandSetDefaultTableInsertionPreset
- (_TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset)init;
- (_TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset)initWithTableItem:(id)a3;
@end

@implementation CRLCommandSetDefaultTableInsertionPreset

- (_TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset)initWithTableItem:(id)a3
{
  v3 = a3;
  sub_101211FF0(v3, __src);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__src, v4);
  v5 = type metadata accessor for CRLCommandSetDefaultTableInsertionPreset();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_actionString;
  if (qword_1019F1298 != -1)
  {
    swift_once();
  }

  v8 = &v6[v7];
  v9 = unk_1019F4A10;
  *v8 = qword_1019F4A08;
  *(v8 + 1) = v9;
  memcpy(&v6[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_tableStyle], __src, 0x178uLL);
  v12.receiver = v6;
  v12.super_class = v5;

  v10 = [(CRLCommand *)&v12 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (_TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end