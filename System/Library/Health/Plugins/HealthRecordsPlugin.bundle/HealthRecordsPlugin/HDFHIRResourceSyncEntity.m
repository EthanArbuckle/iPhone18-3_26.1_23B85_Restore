@interface HDFHIRResourceSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDFHIRResourceSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a5;
  v29 = a6;
  v12 = [v10 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = [v11 database];
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
  v16 = [v11 database];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_96228;
  v31[3] = &unk_108C90;
  v40 = a1;
  v41 = a4;
  v28 = v10;
  v32 = v28;
  v37 = &v51;
  v17 = v15;
  v33 = v17;
  v18 = v14;
  v34 = v18;
  v19 = v11;
  v35 = v19;
  v38 = &v47;
  v42 = v12;
  v20 = v13;
  v36 = v20;
  v39 = &v43;
  v21 = [HDOriginalFHIRResourceEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v31];

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
        sub_A9924(a1, v52, v22);
      }
    }
  }

  _HKInitializeLogging();
  v23 = HKLogHealthRecords;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    *buf = 138543874;
    v54 = a1;
    v55 = 2050;
    v56 = v24;
    v57 = 1026;
    v58 = v21;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ generated %{public}lu sync objects, success: %{public}d", buf, 0x1Cu);
  }

  if (v21)
  {
    v25 = [v29 sendCodableChange:v20 resultAnchor:*(v52[0] + 24) sequence:0 done:1 error:a7];
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

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a1 _syncObjectsGenerationPredicate];
  v13 = [v10 database];

  v14 = [HDOriginalFHIRResourceEntity nextSyncAnchorWithStartAnchor:a4 predicate:v12 session:v11 healthDatabase:v13 error:a6];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableFHIRResource alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_96AE0;
  v22[3] = &unk_107720;
  v22[4] = a1;
  v22[5] = a2;
  v15 = [v12 hk_filter:v22];
  _HKInitializeLogging();
  v16 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v19 = v16;
    v20 = [v12 count];
    v21 = [v15 count];
    *buf = 138544130;
    v24 = a1;
    v25 = 2114;
    v26 = v14;
    v27 = 2050;
    v28 = v20;
    v29 = 2050;
    v30 = v21;
    _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", buf, 0x2Au);
  }

  v17 = +[HDOriginalFHIRResourceEntity _insertCodableFHIRResources:syncProvenance:profile:error:](HDOriginalFHIRResourceEntity, "_insertCodableFHIRResources:syncProvenance:profile:error:", v15, [v13 syncProvenance], v14, a7);

  return v17 ^ 1;
}

@end