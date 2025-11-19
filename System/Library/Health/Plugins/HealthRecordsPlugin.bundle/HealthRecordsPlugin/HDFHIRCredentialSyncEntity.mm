@interface HDFHIRCredentialSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDFHIRCredentialSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v13 = a3;
  v14 = a5;
  v26 = a6;
  v15 = objc_alloc_init(NSMutableArray);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v16 = [v14 database];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_22CAC;
  v27[3] = &unk_1068F0;
  v17 = v13;
  v32 = var0;
  v33 = var1;
  v28 = v17;
  v31 = &v35;
  v18 = v14;
  v29 = v18;
  v34 = a1;
  v19 = v15;
  v30 = v19;
  v20 = [HDClinicalAccountEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v27];

  _HKInitializeLogging();
  v21 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v19 count];
      *buf = 138544130;
      v40 = a1;
      v41 = 2114;
      v42 = v18;
      v43 = 2050;
      v44 = v25;
      v45 = 1026;
      v46 = v20;
      _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ generated %{public}lu sync objects, success: %{public}d", buf, 0x26u);
    }
  }

  if (v20)
  {
    v23 = [v26 sendCodableChange:v19 resultAnchor:v36[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v35, 8);
  return v23;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [HDFHIRCredentialEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableFHIRCredential alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v11 hk_filter:&stru_106910];
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

  v16 = +[HDFHIRCredentialEntity insertCodableCredentialsFromSync:syncProvenance:profile:error:](HDFHIRCredentialEntity, "insertCodableCredentialsFromSync:syncProvenance:profile:error:", v14, [v12 syncProvenance], v13, a7);

  return v16 ^ 1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

@end