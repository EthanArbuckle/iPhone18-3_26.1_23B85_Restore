@interface CKSyncEngineFetchedZoneDeletion
- (CKSyncEngineFetchedZoneDeletion)initWithZoneID:(id)d reason:(int64_t)reason;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFetchedZoneDeletion

- (CKSyncEngineFetchedZoneDeletion)initWithZoneID:(id)d reason:(int64_t)reason
{
  dCopy = d;
  v25 = 0;
  v8 = _CKCheckArgument("zoneID", dCopy, 0, 0, 0, &v25);
  v9 = v25;
  if ((v8 & 1) == 0)
  {
    v13 = v9;
    v14 = [CKException alloc];
    v17 = objc_msgSend_code(v13, v15, v16);
    v20 = objc_msgSend_localizedDescription(v13, v18, v19);
    v22 = objc_msgSend_initWithCode_format_(v14, v21, v17, @"%@", v20);
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24.receiver = self;
  v24.super_class = CKSyncEngineFetchedZoneDeletion;
  v10 = [(CKSyncEngineFetchedZoneDeletion *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_zoneID, d);
    v11->_reason = reason;
  }

  return v11;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_reason(self, v5, v6);
  if (v7 > 2)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"reason", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"reason", off_1E70C0320[v7], 0);
  }

  v12 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"zoneID", v12, 0);
}

@end