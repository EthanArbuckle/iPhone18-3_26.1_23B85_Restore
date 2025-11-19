@interface PropertyRecordCheckpointEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)indicesWithBehavior:(id)a3;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)init;
- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation PropertyRecordCheckpointEntity

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:3 schemaIdentifier:v3];

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
  static PropertyRecordCheckpointEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(v12, var0, var1, v13, a6);
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

+ (id)decodeSyncObjectWithData:(id)a3
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = a3;
  v9 = sub_748C8();
  v11 = v10;

  v12 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
  v13 = objc_allocWithZone(v12);
  v14 = sub_751D8();
  sub_398C(v9, v11);
  sub_39E0();
  sub_74F88();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_3A38(v7, &v13[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
  v15 = &v13[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v15 = v9;
  v15[1] = v11;
  v19.receiver = v13;
  v19.super_class = v12;
  v16 = objc_msgSendSuper2(&v19, "init");

  return v16;
}

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)createTableSQLWithBehavior:(id)a3
{
  _s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0();
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

+ (id)indicesWithBehavior:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static PropertyRecordCheckpointEntity.indices(with:)();

  sub_7688(0, &unk_8F270, HDSQLiteEntityIndex_ptr);
  v5.super.isa = sub_75678().super.isa;

  return v5.super.isa;
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

- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return [(PropertyRecordCheckpointEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return [(PropertyRecordCheckpointEntity *)&v3 init];
}

@end