@interface CKDiscoveredUserInfo
- (id)displayContact;
- (id)firstName;
- (id)lastName;
- (id)userRecordID;
@end

@implementation CKDiscoveredUserInfo

- (id)userRecordID
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v6 = v3;
    v7 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v7;
    _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKUserIdentity", &v8, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)displayContact
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v6 = v3;
    v7 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v7;
    _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKUserIdentity", &v8, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)firstName
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v6 = v3;
    v7 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v7;
    _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKUserIdentity", &v8, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)lastName
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v6 = v3;
    v7 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v7;
    _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKUserIdentity", &v8, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end