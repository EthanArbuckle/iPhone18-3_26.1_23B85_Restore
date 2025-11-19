@interface CKSyncEnginePendingZoneSave
- (CKSyncEnginePendingZoneSave)initWithCoder:(id)a3;
- (CKSyncEnginePendingZoneSave)initWithZone:(CKRecordZone *)zone;
- (id)oppositeTypeChange;
- (id)zoneID;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSyncEnginePendingZoneSave

- (CKSyncEnginePendingZoneSave)initWithZone:(CKRecordZone *)zone
{
  v4 = zone;
  v7 = objc_msgSend_zoneID(v4, v5, v6);
  v14.receiver = self;
  v14.super_class = CKSyncEnginePendingZoneSave;
  v8 = [(CKSyncEnginePendingDatabaseChange *)&v14 initWithZoneID:v7 type:0];

  if (v8)
  {
    v11 = objc_msgSend_copy(v4, v9, v10);
    v12 = v8->_zone;
    v8->_zone = v11;
  }

  return v8;
}

- (id)zoneID
{
  v3 = objc_msgSend_zone(self, a2, v2);
  v6 = objc_msgSend_zoneID(v3, v4, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKSyncEnginePendingZoneSave;
  v4 = a3;
  [(CKSyncEnginePendingDatabaseChange *)&v8 encodeWithCoder:v4];
  zone = self->_zone;
  v6 = NSStringFromSelector(sel_zone);
  objc_msgSend_encodeObject_forKey_(v4, v7, zone, v6, v8.receiver, v8.super_class);
}

- (CKSyncEnginePendingZoneSave)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKSyncEnginePendingZoneSave;
  v5 = [(CKSyncEnginePendingDatabaseChange *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_zone);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
    zone = v5->_zone;
    v5->_zone = v9;
  }

  return v5;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKSyncEnginePendingZoneSave;
  v4 = a3;
  [(CKSyncEnginePendingDatabaseChange *)&v9 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_zone(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"zone", v7, 0);
}

- (id)oppositeTypeChange
{
  v3 = [CKSyncEnginePendingZoneDelete alloc];
  v6 = objc_msgSend_zoneID(self, v4, v5);
  v8 = objc_msgSend_initWithZoneID_(v3, v7, v6);

  return v8;
}

@end