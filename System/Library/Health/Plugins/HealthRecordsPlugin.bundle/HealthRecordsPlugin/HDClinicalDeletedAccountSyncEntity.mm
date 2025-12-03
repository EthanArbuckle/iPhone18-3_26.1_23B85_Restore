@interface HDClinicalDeletedAccountSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDClinicalDeletedAccountSyncEntity

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
  v27[2] = sub_4C1A0;
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
  v20 = [HDClinicalAccountEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

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
      v42 = 2050;
      v43 = v25;
      v44 = 1026;
      v45 = v20;
      _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ generated %{public}lu sync objects, success: %{public}d", buf, 0x26u);
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

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [HDClinicalDeletedAccountEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableClinicalDeletedAccount alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_4C9AC;
  v52[3] = &unk_107800;
  selfCopy = self;
  v52[4] = self;
  v14 = [objectsCopy hk_filter:v52];
  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [objectsCopy count];
    v18 = [v14 count];
    *buf = 138544130;
    selfCopy3 = self;
    v56 = 2114;
    v57 = profileCopy;
    v58 = 2050;
    v59 = v17;
    v60 = 2050;
    v61 = v18;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", buf, 0x2Au);
  }

  v19 = +[HDClinicalDeletedAccountEntity _insertCodableDeletedAccounts:syncProvenance:profile:error:](HDClinicalDeletedAccountEntity, "_insertCodableDeletedAccounts:syncProvenance:profile:error:", v14, [storeCopy syncProvenance], profileCopy, error);
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
      selfCopy3 = self;
      v56 = 2114;
      v57 = profileCopy;
      v58 = 2050;
      v59 = v22;
      v60 = 2050;
      v61 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ applied %{public}lu sync objects out of %{public}lu, will delete associated accounts if necessary", buf, 0x2Au);
    }

    healthRecordsExtension = [profileCopy healthRecordsExtension];
    accountManager = [healthRecordsExtension accountManager];

    if (accountManager)
    {
      v42 = v14;
      v43 = profileCopy;
      v44 = storeCopy;
      v45 = objectsCopy;
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
            syncIdentifier = [v31 syncIdentifier];
            v33 = [NSUUID hk_UUIDWithData:syncIdentifier];

            safeDeletionReason = [v31 safeDeletionReason];
            v47 = 0;
            v35 = [accountManager deleteAccountWithSyncIdentifier:v33 deletionReason:safeDeletionReason error:&v47];
            v36 = v47;
            _HKInitializeLogging();
            v37 = HKLogHealthRecords;
            if (v35)
            {
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                selfCopy3 = selfCopy;
                v56 = 2114;
                v57 = v33;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully deleted account with sync identifier %{public}@ from sync: ", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543874;
              selfCopy3 = selfCopy;
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

      storeCopy = v44;
      objectsCopy = v45;
      v14 = v42;
      profileCopy = v43;
      v19 = v41;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A2C04(selfCopy, v39);
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