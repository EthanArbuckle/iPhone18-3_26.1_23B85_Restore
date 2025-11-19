@interface CKModifyRecordZonesOperationInfo
- (CKModifyRecordZonesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKModifyRecordZonesOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v26.receiver = self;
  v26.super_class = CKModifyRecordZonesOperationInfo;
  [(CKDatabaseOperationInfo *)&v26 encodeWithCoder:v4];
  v8 = objc_msgSend_recordZonesToSave(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"recordZones");

  v12 = objc_msgSend_recordZoneIDsToDelete(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"recordZoneIDs");

  v16 = objc_msgSend_markZonesAsUserPurged(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(v4, v17, v16, @"userPurge");
  v20 = objc_msgSend_maxZoneSaveAttempts(self, v18, v19);
  objc_msgSend_encodeInteger_forKey_(v4, v21, v20, @"maxZoneSaveAttempts");
  v24 = objc_msgSend_dontFetchFromServer(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, v24, @"dontFetchFromServer");
  objc_autoreleasePoolPop(v5);
}

- (CKModifyRecordZonesOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CKModifyRecordZonesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"recordZones");
    recordZonesToSave = v5->_recordZonesToSave;
    v5->_recordZonesToSave = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"recordZoneIDs");
    recordZoneIDsToDelete = v5->_recordZoneIDsToDelete;
    v5->_recordZoneIDsToDelete = v21;

    v5->_markZonesAsUserPurged = objc_msgSend_decodeBoolForKey_(v4, v23, @"userPurge");
    v5->_maxZoneSaveAttempts = objc_msgSend_decodeIntegerForKey_(v4, v24, @"maxZoneSaveAttempts");
    v5->_dontFetchFromServer = objc_msgSend_decodeBoolForKey_(v4, v25, @"dontFetchFromServer");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end