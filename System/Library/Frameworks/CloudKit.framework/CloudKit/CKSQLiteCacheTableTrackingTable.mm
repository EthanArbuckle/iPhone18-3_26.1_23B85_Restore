@interface CKSQLiteCacheTableTrackingTable
- (id)updateEntryOldestExpireDate:(id)date oldestExpirationDate:(id)expirationDate;
@end

@implementation CKSQLiteCacheTableTrackingTable

- (id)updateEntryOldestExpireDate:(id)date oldestExpirationDate:(id)expirationDate
{
  dateCopy = date;
  objc_msgSend_setOldestExpireDate_(dateCopy, v7, expirationDate);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, &unk_1EFA85BA8, dateCopy, off_1EA910B90);

  return v9;
}

@end