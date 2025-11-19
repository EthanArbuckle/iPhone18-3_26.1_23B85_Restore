@interface HDClinicalDeletedAccountSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDClinicalDeletedAccountSyncEntity

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
  v27[2] = sub_4C1A0;
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
  v11 = [HDClinicalDeletedAccountEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableClinicalDeletedAccount alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_4C9AC;
  v52[3] = &unk_107800;
  v46 = a1;
  v52[4] = a1;
  v14 = [v11 hk_filter:v52];
  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v11 count];
    v18 = [v14 count];
    *buf = 138544130;
    v55 = a1;
    v56 = 2114;
    v57 = v13;
    v58 = 2050;
    v59 = v17;
    v60 = 2050;
    v61 = v18;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", buf, 0x2Au);
  }

  v19 = +[HDClinicalDeletedAccountEntity _insertCodableDeletedAccounts:syncProvenance:profile:error:](HDClinicalDeletedAccountEntity, "_insertCodableDeletedAccounts:syncProvenance:profile:error:", v14, [v12 syncProvenance], v13, a7);
  if (v19)
  {
    _HKInitializeLogging();
    v20 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v19 count];
      v23 = [v14 count];
      *buf = 138544130;
      v55 = a1;
      v56 = 2114;
      v57 = v13;
      v58 = 2050;
      v59 = v22;
      v60 = 2050;
      v61 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ applied %{public}lu sync objects out of %{public}lu, will delete associated accounts if necessary", buf, 0x2Au);
    }

    v24 = [v13 healthRecordsExtension];
    v25 = [v24 accountManager];

    if (v25)
    {
      v42 = v14;
      v43 = v13;
      v44 = v12;
      v45 = v11;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = v19;
      v26 = v19;
      v27 = [v26 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v48 + 1) + 8 * i);
            v32 = [v31 syncIdentifier];
            v33 = [NSUUID hk_UUIDWithData:v32];

            v34 = [v31 safeDeletionReason];
            v47 = 0;
            v35 = [v25 deleteAccountWithSyncIdentifier:v33 deletionReason:v34 error:&v47];
            v36 = v47;
            _HKInitializeLogging();
            v37 = HKLogHealthRecords;
            if (v35)
            {
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v55 = v46;
                v56 = 2114;
                v57 = v33;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully deleted account with sync identifier %{public}@ from sync: ", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543874;
              v55 = v46;
              v56 = 2114;
              v57 = v33;
              v58 = 2114;
              v59 = v36;
              _os_log_fault_impl(&dword_0, v37, OS_LOG_TYPE_FAULT, "%{public}@ Failed to delete account with sync identifier %{public}@ from sync: %{public}@", buf, 0x20u);
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v28);
      }

      v12 = v44;
      v11 = v45;
      v14 = v42;
      v13 = v43;
      v19 = v41;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A2C04(v46, v39);
      }
    }

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  return v38;
}

@end