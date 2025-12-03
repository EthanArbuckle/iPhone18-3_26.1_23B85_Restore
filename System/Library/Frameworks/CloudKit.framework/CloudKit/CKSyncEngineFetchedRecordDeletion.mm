@interface CKSyncEngineFetchedRecordDeletion
- (CKSyncEngineFetchedRecordDeletion)initWithRecordID:(id)d recordType:(id)type;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFetchedRecordDeletion

- (CKSyncEngineFetchedRecordDeletion)initWithRecordID:(id)d recordType:(id)type
{
  dCopy = d;
  typeCopy = type;
  v26 = 0;
  v9 = _CKCheckArgument("recordID", dCopy, 0, 0, 0, &v26);
  v10 = v26;
  if ((v9 & 1) == 0)
  {
    v14 = v10;
    v15 = [CKException alloc];
    v18 = objc_msgSend_code(v14, v16, v17);
    v21 = objc_msgSend_localizedDescription(v14, v19, v20);
    v23 = objc_msgSend_initWithCode_format_(v15, v22, v18, @"%@", v21);
    v24 = v23;

    objc_exception_throw(v23);
  }

  v25.receiver = self;
  v25.super_class = CKSyncEngineFetchedRecordDeletion;
  v11 = [(CKSyncEngineFetchedRecordDeletion *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordID, d);
    objc_storeStrong(&v12->_recordType, type);
  }

  return v12;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_recordType(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"recordType", v7, 0);

  v12 = objc_msgSend_recordID(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"recordID", v12, 0);
}

@end