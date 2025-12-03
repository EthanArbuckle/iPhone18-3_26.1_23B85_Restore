@interface CKSyncEngineWillSendChangesEvent
- (CKSyncEngineWillSendChangesEvent)initWithContext:(id)context;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineWillSendChangesEvent

- (CKSyncEngineWillSendChangesEvent)initWithContext:(id)context
{
  contextCopy = context;
  v23 = 0;
  v6 = _CKCheckArgument("context", contextCopy, 0, 0, 0, &v23);
  v7 = v23;
  if ((v6 & 1) == 0)
  {
    v11 = v7;
    v12 = [CKException alloc];
    v15 = objc_msgSend_code(v11, v13, v14);
    v18 = objc_msgSend_localizedDescription(v11, v16, v17);
    v20 = objc_msgSend_initWithCode_format_(v12, v19, v15, @"%@", v18);
    v21 = v20;

    objc_exception_throw(v20);
  }

  v22.receiver = self;
  v22.super_class = CKSyncEngineWillSendChangesEvent;
  initInternal = [(CKSyncEngineEvent *)&v22 initInternal];
  v9 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 1, context);
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v9.receiver = self;
  v9.super_class = CKSyncEngineWillSendChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v9 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_context(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"context", v7, 0);
}

@end