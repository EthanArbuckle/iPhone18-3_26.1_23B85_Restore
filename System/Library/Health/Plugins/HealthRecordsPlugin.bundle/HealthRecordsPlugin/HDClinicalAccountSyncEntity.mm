@interface HDClinicalAccountSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDClinicalAccountSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v15 = objc_alloc_init(NSMutableArray);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  database = [profileCopy database];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_48694;
  v27[3] = &unk_1068F0;
  selfCopy = self;
  v17 = sessionCopy;
  v33 = var0;
  v34 = var1;
  v28 = v17;
  v31 = &v35;
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
      selfCopy2 = self;
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
    v23 = [handlerCopy sendCodableChange:v19 resultAnchor:v36[3] sequence:0 done:1 error:error];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v35, 8);
  return v23;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  _syncObjectsGenerationPredicate = [self _syncObjectsGenerationPredicate];
  database = [profileCopy database];

  v14 = [HDClinicalAccountEntity nextSyncAnchorWithStartAnchor:anchor predicate:_syncObjectsGenerationPredicate session:sessionCopy healthDatabase:database error:error];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableClinicalAccount alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_48BF8;
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

  v17 = +[HDClinicalAccountEntity _insertCodableAccounts:syncProvenance:profile:error:](HDClinicalAccountEntity, "_insertCodableAccounts:syncProvenance:profile:error:", v15, [storeCopy syncProvenance], profileCopy, error);

  return v17 ^ 1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [NSSet setWithObjects:v3, v4, v5, v6, objc_opt_class(), 0];
}

@end