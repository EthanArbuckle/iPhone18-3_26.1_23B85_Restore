@interface CKSyncEngineFetchChangesContext
- (CKSyncEngineFetchChangesContext)init;
- (CKSyncEngineFetchChangesContext)initWithReason:(int64_t)a3 options:(id)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineFetchChangesContext

- (CKSyncEngineFetchChangesContext)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"[%@ init] is unavailable", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKSyncEngineFetchChangesContext)initWithReason:(int64_t)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKSyncEngineFetchChangesContext;
  v8 = [(CKSyncEngineFetchChangesContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_reason = a3;
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_reason(self, v5, v6);
  v9 = @"Unknown";
  if (v7 == 1)
  {
    v9 = @"Manual";
  }

  if (v7)
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"reason", v9, 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"reason", @"Scheduled", 0);
  }

  v13 = objc_msgSend_options(self, v10, v11);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v12, @"options", v13, 0);
}

@end