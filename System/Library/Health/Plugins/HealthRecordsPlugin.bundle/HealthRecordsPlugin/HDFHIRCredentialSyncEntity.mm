@interface HDFHIRCredentialSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDFHIRCredentialSyncEntity

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
  v27[2] = sub_22CAC;
  v27[3] = &unk_1068F0;
  v17 = sessionCopy;
  v32 = var0;
  v33 = var1;
  v28 = v17;
  v31 = &v35;
  v18 = profileCopy;
  v29 = v18;
  selfCopy = self;
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
  sessionCopy = session;
  database = [profile database];
  v11 = [HDFHIRCredentialEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableFHIRCredential alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v14 = [objectsCopy hk_filter:&stru_106910];
  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v18 = v15;
    v19 = 138544130;
    selfCopy = self;
    v21 = 2114;
    v22 = profileCopy;
    v23 = 2050;
    v24 = [objectsCopy count];
    v25 = 2050;
    v26 = [v14 count];
    _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %{public}lu sync objects, will upsert %{public}lu", &v19, 0x2Au);
  }

  v16 = +[HDFHIRCredentialEntity insertCodableCredentialsFromSync:syncProvenance:profile:error:](HDFHIRCredentialEntity, "insertCodableCredentialsFromSync:syncProvenance:profile:error:", v14, [storeCopy syncProvenance], profileCopy, error);

  return v16 ^ 1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

@end