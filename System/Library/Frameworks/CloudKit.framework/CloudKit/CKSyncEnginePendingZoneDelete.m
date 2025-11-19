@interface CKSyncEnginePendingZoneDelete
- (CKSyncEnginePendingZoneDelete)initWithZoneID:(CKRecordZoneID *)zoneID;
- (id)oppositeTypeChange;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEnginePendingZoneDelete

- (CKSyncEnginePendingZoneDelete)initWithZoneID:(CKRecordZoneID *)zoneID
{
  v4.receiver = self;
  v4.super_class = CKSyncEnginePendingZoneDelete;
  return [(CKSyncEnginePendingDatabaseChange *)&v4 initWithZoneID:zoneID type:1];
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKSyncEnginePendingZoneDelete;
  v4 = a3;
  [(CKSyncEnginePendingDatabaseChange *)&v9 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_zoneID(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"zoneID", v7, 0);
}

- (id)oppositeTypeChange
{
  v3 = [CKSyncEnginePendingZoneSave alloc];
  v4 = [CKRecordZone alloc];
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v9 = objc_msgSend_initWithZoneID_(v4, v8, v7);
  v11 = objc_msgSend_initWithZone_(v3, v10, v9);

  return v11;
}

@end