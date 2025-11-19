@interface HDSignedClinicalDataIssuerSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDSignedClinicalDataIssuerSyncEntity

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
  v27[2] = sub_21D8;
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
  v20 = [HDSignedClinicalDataIssuerEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v27];

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
      v42 = 2050;
      v43 = v25;
      v44 = 1026;
      v45 = v20;
      _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ generated %{public}lu sync objects, success: %{public}d", buf, 0x26u);
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

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [HDSignedClinicalDataIssuerEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableSignedClinicalDataIssuer alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v11 hk_filter:&stru_105788];
  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v18 = v15;
    v19 = 138544130;
    v20 = a1;
    v21 = 2114;
    v22 = v13;
    v23 = 2050;
    v24 = [v11 count];
    v25 = 2050;
    v26 = [v14 count];
    _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", &v19, 0x2Au);
  }

  v16 = +[HDSignedClinicalDataIssuerEntity insertCodableIssuers:syncProvenance:profile:error:](HDSignedClinicalDataIssuerEntity, "insertCodableIssuers:syncProvenance:profile:error:", v14, [v12 syncProvenance], v13, a7);

  return v16 ^ 1;
}

@end