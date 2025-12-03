@interface InferenceRecordContainerEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)init;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)d;
@end

@implementation InferenceRecordContainerEntity

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)createTableSQLWithBehavior:(id)behavior
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

- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return [(InferenceRecordContainerEntity *)&v5 initWithPersistentID:d];
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

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  swift_getObjCClassMetadata();
  sessionCopy = session;
  profileCopy = profile;
  swift_unknownObjectRetain();
  static InferenceRecordContainerEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(sessionCopy, var0, var1, profileCopy, handler);
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
  v9 = sub_75688();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  profileCopy = profile;
  v11 = sub_47050(v9, *&version, profileCopy);
  swift_unknownObjectRelease();

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  dataCopy = data;
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