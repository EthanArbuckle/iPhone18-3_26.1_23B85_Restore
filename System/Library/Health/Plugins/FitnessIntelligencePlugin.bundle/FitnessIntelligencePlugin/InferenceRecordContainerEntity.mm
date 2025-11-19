@interface InferenceRecordContainerEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)init;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation InferenceRecordContainerEntity

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)createTableSQLWithBehavior:(id)a3
{
  _s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0();
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

- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return [(InferenceRecordContainerEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return [(InferenceRecordContainerEntity *)&v3 init];
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:2 schemaIdentifier:v3];

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
  static InferenceRecordContainerEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(v12, var0, var1, v13, a6);
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
  v9 = sub_75688();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v10 = a6;
  v11 = sub_47050(v9, *&a4, v10);
  swift_unknownObjectRelease();

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = a3;
  v9 = sub_748C8();
  v11 = v10;

  v12 = _s31InferenceRecordContainerWrapperCMa();
  v13 = objc_allocWithZone(v12);
  v14 = sub_74D78();
  sub_398C(v9, v11);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord);
  sub_74F88();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_477F8(v7, &v13[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord]);
  v15 = &v13[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v15 = v9;
  v15[1] = v11;
  v19.receiver = v13;
  v19.super_class = v12;
  v16 = objc_msgSendSuper2(&v19, "init");

  return v16;
}

@end