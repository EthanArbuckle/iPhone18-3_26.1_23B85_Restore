@interface HDClinicalGatewaySyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_syncObjectsGenerationPredicate;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDClinicalGatewaySyncEntity

+ (id)_syncObjectsGenerationPredicate
{
  v2 = +[HDClinicalGatewayEntity _predicateForGatewaysWithAccounts];
  v7[0] = v2;
  v3 = +[HDClinicalGatewayEntity predicateForGatewaysForLegacySync];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v4];

  return v5;
}

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
  v27[2] = sub_5619C;
  v27[3] = &unk_1068F0;
  v32 = a1;
  v17 = v13;
  v33 = var0;
  v34 = var1;
  v28 = v17;
  v31 = &v35;
  v18 = v14;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v20 = [HDClinicalGatewayEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v27];

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
  v10 = a5;
  v11 = a3;
  v12 = [a1 _syncObjectsGenerationPredicate];
  v13 = [v10 database];

  v14 = [HDClinicalGatewayEntity nextSyncAnchorWithStartAnchor:a4 predicate:v12 session:v11 healthDatabase:v13 error:a6];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableClinicalGateway alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_566F0;
  v22[3] = &unk_1079D0;
  v24 = a1;
  v25 = a2;
  v14 = a6;
  v23 = v14;
  v15 = [v12 hk_filter:v22];
  _HKInitializeLogging();
  v16 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v19 = v16;
    v20 = [v12 count];
    v21 = [v15 count];
    *buf = 138544130;
    v27 = a1;
    v28 = 2114;
    v29 = v14;
    v30 = 2050;
    v31 = v20;
    v32 = 2050;
    v33 = v21;
    _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", buf, 0x2Au);
  }

  v17 = +[HDClinicalGatewayEntity _insertCodableGateways:syncProvenance:profile:error:](HDClinicalGatewayEntity, "_insertCodableGateways:syncProvenance:profile:error:", v15, [v13 syncProvenance], v14, a7);

  return v17 ^ 1;
}

@end