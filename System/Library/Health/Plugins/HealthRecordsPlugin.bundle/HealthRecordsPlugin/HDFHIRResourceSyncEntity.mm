@interface HDFHIRResourceSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDFHIRResourceSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v12 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableDictionary);
  database = [profileCopy database];
  v51 = 0;
  v52[0] = &v51;
  v52[1] = 0x2020000000;
  v52[2] = -1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  database2 = [profileCopy database];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_96228;
  v31[3] = &unk_108C90;
  selfCopy = self;
  rangeCopy = range;
  v28 = sessionCopy;
  v32 = v28;
  v37 = &v51;
  v17 = database;
  v33 = v17;
  v18 = v14;
  v34 = v18;
  v19 = profileCopy;
  v35 = v19;
  v38 = &v47;
  v42 = v12;
  v20 = v13;
  v36 = v20;
  v39 = &v43;
  v21 = [HDOriginalFHIRResourceEntity performReadTransactionWithHealthDatabase:database2 error:error block:v31];

  if (v48[3] > v12)
  {
    if ([v20 count])
    {
      *(v52[0] + 24) = v44[3];
    }

    else
    {
      _HKInitializeLogging();
      v22 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A9924(self, v52, v22);
      }
    }
  }

  _HKInitializeLogging();
  v23 = HKLogHealthRecords;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    *buf = 138543874;
    selfCopy2 = self;
    v55 = 2050;
    v56 = v24;
    v57 = 1026;
    v58 = v21;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ generated %{public}lu sync objects, success: %{public}d", buf, 0x1Cu);
  }

  if (v21)
  {
    v25 = [handlerCopy sendCodableChange:v20 resultAnchor:*(v52[0] + 24) sequence:0 done:1 error:error];
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return v25;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  _syncObjectsGenerationPredicate = [self _syncObjectsGenerationPredicate];
  database = [profileCopy database];

  v14 = [HDOriginalFHIRResourceEntity nextSyncAnchorWithStartAnchor:anchor predicate:_syncObjectsGenerationPredicate session:sessionCopy healthDatabase:database error:error];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableFHIRResource alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_96AE0;
  v22[3] = &unk_107720;
  v22[4] = self;
  v22[5] = a2;
  v15 = [objectsCopy hk_filter:v22];
  _HKInitializeLogging();
  v16 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v19 = v16;
    v20 = [objectsCopy count];
    v21 = [v15 count];
    *buf = 138544130;
    selfCopy = self;
    v25 = 2114;
    v26 = profileCopy;
    v27 = 2050;
    v28 = v20;
    v29 = 2050;
    v30 = v21;
    _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", buf, 0x2Au);
  }

  v17 = +[HDOriginalFHIRResourceEntity _insertCodableFHIRResources:syncProvenance:profile:error:](HDOriginalFHIRResourceEntity, "_insertCodableFHIRResources:syncProvenance:profile:error:", v15, [storeCopy syncProvenance], profileCopy, error);

  return v17 ^ 1;
}

@end