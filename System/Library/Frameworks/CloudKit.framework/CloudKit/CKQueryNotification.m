@interface CKQueryNotification
+ (void)initialize;
- (CKQueryNotification)initWithCoder:(id)a3;
- (CKQueryNotification)initWithRemoteNotificationDictionary:(id)a3;
- (NSDictionary)recordFields;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setRecordFields:(id)a3;
@end

@implementation CKQueryNotification

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v24.receiver = self;
  v24.super_class = CKQueryNotification;
  v4 = [(CKNotification *)&v24 CKPropertiesDescription];
  NotificationReason = objc_msgSend_queryNotificationReason(self, v5, v6);
  v10 = objc_msgSend_recordFields(self, v8, v9);
  v13 = objc_msgSend_recordID(self, v11, v12);
  v16 = objc_msgSend_ckShortDescription(v13, v14, v15);
  v19 = objc_msgSend_databaseScope(self, v17, v18);
  v20 = CKDatabaseScopeString(v19);
  v22 = objc_msgSend_stringWithFormat_(v3, v21, @"%@, queryNotificationReason=%ld, recordFields=%@, recordID=%@, database=%@", v4, NotificationReason, v10, v16, v20);

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v22.receiver = self;
  v22.super_class = CKQueryNotification;
  [(CKNotification *)&v22 encodeWithCoder:v4];
  NotificationReason = objc_msgSend_queryNotificationReason(self, v6, v7);
  objc_msgSend_encodeInt64_forKey_(v4, v9, NotificationReason, @"Reason");
  v12 = objc_msgSend_recordFields(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"RecordFields");

  v16 = objc_msgSend_recordID(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"RecordID");

  v20 = objc_msgSend_databaseScope(self, v18, v19);
  objc_msgSend_encodeInt64_forKey_(v4, v21, v20, @"DatabaseScope");
  objc_autoreleasePoolPop(v5);
}

- (CKQueryNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CKQueryNotification;
  v5 = [(CKNotification *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_queryNotificationReason = objc_msgSend_decodeInt64ForKey_(v4, v7, @"Reason");
    v8 = CKAcceptableValueClasses();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setByAddingObject_(v8, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"RecordFields");
    recordFields = v5->_recordFields;
    v5->_recordFields = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"RecordID");
    recordID = v5->_recordID;
    v5->_recordID = v17;

    v5->_databaseScope = objc_msgSend_decodeInt64ForKey_(v4, v19, @"DatabaseScope");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (NSDictionary)recordFields
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_recordFields;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRecordFields:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  recordFields = v4->_recordFields;
  v4->_recordFields = v7;

  objc_sync_exit(v4);
}

- (CKQueryNotification)initWithRemoteNotificationDictionary:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CKQueryNotification;
  v5 = [(CKNotification *)&v46 initWithRemoteNotificationDictionary:v4];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setNotificationType_(v5, v6, 1);
    v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"ck");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"qry");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"fo");
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_intValue(v13, v14, v15);
          v18 = 1;
          if (v16 == 2)
          {
            v18 = 2;
          }

          if (v16 == 3)
          {
            objc_msgSend_setQueryNotificationReason_(v7, v17, 3);
          }

          else
          {
            objc_msgSend_setQueryNotificationReason_(v7, v17, v18);
          }
        }

        v45 = v13;
        v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, @"af");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setRecordFields_(v7, v20, v19);
        }

        v21 = objc_msgSend_objectForKeyedSubscript_(v11, v20, @"rid");
        v23 = objc_msgSend_objectForKeyedSubscript_(v11, v22, @"zid");
        v25 = objc_msgSend_objectForKeyedSubscript_(v11, v24, @"zoid");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = CKCurrentProcessLinkCheck908c3403f5370f9fc0f790c790ce4de0669132c0();
              v28 = @"__defaultOwner__";
              if (v27)
              {
                v28 = v25;
              }

              v44 = v28;

              v29 = [CKRecordZoneID alloc];
              v31 = objc_msgSend_initWithZoneName_ownerName_(v29, v30, v23, v44);
              v32 = [CKRecordID alloc];
              v34 = objc_msgSend_initWithRecordName_zoneID_(v32, v33, v21, v31);
              objc_msgSend_setRecordID_(v7, v35, v34);

              v25 = v44;
            }
          }
        }

        v36 = objc_msgSend_objectForKeyedSubscript_(v11, v26, @"dbs");
        if (objc_opt_respondsToSelector())
        {
          v40 = objc_msgSend_intValue(v36, v37, v38) - 1;
          if (v40 > 3)
          {
            objc_msgSend_setDatabaseScope_(v7, v39, 0);
          }

          else
          {
            objc_msgSend_setDatabaseScope_(v7, v39, qword_1886FEA10[v40]);
          }
        }

        v41 = objc_msgSend_objectForKeyedSubscript_(v11, v37, @"sid");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setSubscriptionID_(v7, v42, v41);
        }
      }
    }
  }

  return v7;
}

@end