@interface CKSyncEngineSendChangesContext
- (CKSyncEngineSendChangesContext)init;
- (CKSyncEngineSendChangesContext)initWithReason:(int64_t)reason options:(id)options;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineSendChangesContext

- (CKSyncEngineSendChangesContext)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"[%@ init] is unavailable", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKSyncEngineSendChangesContext)initWithReason:(int64_t)reason options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = CKSyncEngineSendChangesContext;
  v8 = [(CKSyncEngineSendChangesContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_reason = reason;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_reason(self, v5, v6);
  v9 = @"Unknown";
  if (v7 == 1)
  {
    v9 = @"Manual";
  }

  if (v7)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"reason", v9, 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"reason", @"Scheduled", 0);
  }

  v13 = objc_msgSend_options(self, v10, v11);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"options", v13, 0);
}

@end