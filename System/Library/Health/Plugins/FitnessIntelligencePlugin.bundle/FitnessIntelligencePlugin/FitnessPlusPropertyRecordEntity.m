@interface FitnessPlusPropertyRecordEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)indicesWithBehavior:(id)a3;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)init;
- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation FitnessPlusPropertyRecordEntity

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:6 schemaIdentifier:v3];

  return v4;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = a5;
  swift_unknownObjectRetain();
  static FitnessPlusPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(v12, var0, var1, v13, a6);
  swift_unknownObjectRelease();

  return 1;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a3;
  v12 = a5;
  v13 = [v12 database];
  v14 = [ObjCClassFromMetadata nextSyncAnchorWithStartAnchor:a4 predicate:0 syncEntityClass:ObjCClassFromMetadata session:v11 orderingTerms:0 limit:0 healthDatabase:v13 error:a6];

  return v14;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  sub_38F8(&qword_8EB00, &qword_79B18);
  v8 = sub_75688();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v9 = a6;
  v10 = _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(v8);
  swift_unknownObjectRelease();

  return v10;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = sub_748C8();
  v6 = v5;

  v7 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
  *v9 = v4;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, "init");

  return v10;
}

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)indicesWithBehavior:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static FitnessPlusPropertyRecordEntity.indices(with:)();

  sub_7688(0, &unk_8F270, HDSQLiteEntityIndex_ptr);
  v5.super.isa = sub_75678().super.isa;

  return v5.super.isa;
}

+ (id)createTableSQLWithBehavior:(id)a3
{
  _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0();
  if (v3)
  {
    v4 = sub_75598();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)propertyForSyncProvenance
{
  v2 = sub_75598();

  return v2;
}

+ (id)propertyForSyncIdentity
{
  v2 = sub_75598();

  return v2;
}

- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return [(FitnessPlusPropertyRecordEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return [(FitnessPlusPropertyRecordEntity *)&v3 init];
}

@end