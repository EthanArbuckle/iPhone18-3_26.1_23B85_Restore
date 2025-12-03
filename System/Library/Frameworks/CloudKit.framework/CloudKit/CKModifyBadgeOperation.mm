@interface CKModifyBadgeOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (CKModifyBadgeOperation)initWithBadgeValue:(NSUInteger)badgeValue;
- (void)_finishOnCallbackQueueWithError:(id)error;
@end

@implementation CKModifyBadgeOperation

- (CKModifyBadgeOperation)initWithBadgeValue:(NSUInteger)badgeValue
{
  v4.receiver = self;
  v4.super_class = CKModifyBadgeOperation;
  return [(CKOperation *)&v4 init];
}

- (BOOL)CKOperationShouldRun:(id *)run
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

    if (!run)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (run)
  {
LABEL_5:
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKInternalErrorDomain", 1017, @"%@ is no longer supported", v6);
  }

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_modifyBadgeCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_modifyBadgeCompletionBlock(self, v8, v9);
    v13 = objc_msgSend_CKClientSuitableError(errorCopy, v11, v12);
    (v10)[2](v10, v13);

    objc_msgSend_setModifyBadgeCompletionBlock_(self, v14, 0);
  }

  v15.receiver = self;
  v15.super_class = CKModifyBadgeOperation;
  [(CKOperation *)&v15 _finishOnCallbackQueueWithError:errorCopy];
}

@end