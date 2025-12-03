@interface HDOriginalSignedClinicalDataRecordSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDOriginalSignedClinicalDataRecordSyncEntity

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableOriginalSignedClinicalDataRecord alloc] initWithData:dataCopy];

  return v4;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v15 = objc_alloc_init(NSMutableArray);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  database = [profileCopy database];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_6AFF4;
  v27[3] = &unk_105748;
  v17 = sessionCopy;
  v32 = var0;
  v33 = var1;
  v28 = v17;
  v31 = &v34;
  v18 = profileCopy;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v20 = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

  _HKInitializeLogging();
  v21 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v19 count];
      *buf = 138544130;
      selfCopy = self;
      v40 = 2114;
      v41 = v18;
      v42 = 2048;
      v43 = v25;
      v44 = 1026;
      v45 = v20;
      _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ generated %lu sync objects, success: %{public}d", buf, 0x26u);
    }
  }

  if (v20)
  {
    v23 = [handlerCopy sendCodableChange:v19 resultAnchor:v35[3] sequence:0 done:1 error:error];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v34, 8);
  return v23;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  storeCopy = store;
  v12 = [objects hk_filter:&stru_108170];
  syncProvenance = [storeCopy syncProvenance];

  LODWORD(error) = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecordsFromSync:v12 syncProvenance:syncProvenance profile:profileCopy error:error];
  return error ^ 1;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [HDOriginalSignedClinicalDataRecordEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

@end