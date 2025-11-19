@interface CKDiscoverUserInfosOperation
- (BOOL)CKOperationShouldRun:(id *)a3;
- (CKDiscoverUserInfosOperation)initWithEmailAddresses:(id)a3 userRecordIDs:(id)a4;
@end

@implementation CKDiscoverUserInfosOperation

- (CKDiscoverUserInfosOperation)initWithEmailAddresses:(id)a3 userRecordIDs:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKDiscoverUserInfosOperation;
  return [(CKOperation *)&v5 init:a3];
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v10 = v4;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543362;
    v14 = v12;
    _os_log_fault_impl(&dword_1883EA000, v10, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.", buf, 0xCu);

    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKInternalErrorDomain", 1001, @"%@ is deprecated, and will be removed in a future release.", v6);
  }

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

@end