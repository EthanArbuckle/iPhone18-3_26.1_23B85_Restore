@interface FitnessPlusPropertyRecordEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)indicesWithBehavior:(id)behavior;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)init;
- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)initWithPersistentID:(int64_t)d;
@end

@implementation FitnessPlusPropertyRecordEntity

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:6 schemaIdentifier:v3];

  return v4;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  swift_getObjCClassMetadata();
  sessionCopy = session;
  profileCopy = profile;
  swift_unknownObjectRetain();
  static FitnessPlusPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(sessionCopy, var0, var1, profileCopy, handler);
  swift_unknownObjectRelease();

  return 1;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sessionCopy = session;
  profileCopy = profile;
  database = [profileCopy database];
  v14 = [ObjCClassFromMetadata nextSyncAnchorWithStartAnchor:anchor predicate:0 syncEntityClass:ObjCClassFromMetadata session:sessionCopy orderingTerms:0 limit:0 healthDatabase:database error:error];

  return v14;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  sub_38F8(&qword_8EB00, &qword_79B18);
  v8 = sub_75688();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  profileCopy = profile;
  v10 = _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(v8);
  swift_unknownObjectRelease();

  return v10;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
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

+ (id)indicesWithBehavior:(id)behavior
{
  swift_getObjCClassMetadata();
  behaviorCopy = behavior;
  static FitnessPlusPropertyRecordEntity.indices(with:)();

  sub_7688(0, &unk_8F270, HDSQLiteEntityIndex_ptr);
  v5.super.isa = sub_75678().super.isa;

  return v5.super.isa;
}

+ (id)createTableSQLWithBehavior:(id)behavior
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

- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return [(FitnessPlusPropertyRecordEntity *)&v5 initWithPersistentID:d];
}

- (_TtC25FitnessIntelligencePlugin31FitnessPlusPropertyRecordEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return [(FitnessPlusPropertyRecordEntity *)&v3 init];
}

@end