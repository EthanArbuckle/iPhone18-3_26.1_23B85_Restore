@interface HDOriginalSignedClinicalDataRecordSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDOriginalSignedClinicalDataRecordSyncEntity

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableOriginalSignedClinicalDataRecord alloc] initWithData:v3];

  return v4;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(NSMutableArray);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v16 = [v13 database];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_6AFF4;
  v27[3] = &unk_105748;
  v17 = v12;
  v32 = var0;
  v33 = var1;
  v28 = v17;
  v31 = &v34;
  v18 = v13;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v20 = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v27];

  _HKInitializeLogging();
  v21 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v19 count];
      *buf = 138544130;
      v39 = a1;
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
    v23 = [v14 sendCodableChange:v19 resultAnchor:v35[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v34, 8);
  return v23;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = [a3 hk_filter:&stru_108170];
  v13 = [v11 syncProvenance];

  LODWORD(a7) = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecordsFromSync:v12 syncProvenance:v13 profile:v10 error:a7];
  return a7 ^ 1;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [HDOriginalSignedClinicalDataRecordEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

@end