@interface CKSQLiteCacheTableTrackingTable
- (id)updateEntryOldestExpireDate:(id)a3 oldestExpirationDate:(id)a4;
@end

@implementation CKSQLiteCacheTableTrackingTable

- (id)updateEntryOldestExpireDate:(id)a3 oldestExpirationDate:(id)a4
{
  v6 = a3;
  objc_msgSend_setOldestExpireDate_(v6, v7, a4);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, &unk_1EFA85BA8, v6, off_1EA910B90);

  return v9;
}

@end