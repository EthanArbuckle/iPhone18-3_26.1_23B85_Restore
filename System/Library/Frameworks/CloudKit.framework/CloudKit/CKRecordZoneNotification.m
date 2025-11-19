@interface CKRecordZoneNotification
+ (void)initialize;
- (CKRecordZoneNotification)initWithCoder:(id)a3;
- (CKRecordZoneNotification)initWithRemoteNotificationDictionary:(id)a3;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKRecordZoneNotification

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = CKRecordZoneNotification;
  v4 = [(CKNotification *)&v18 CKPropertiesDescription];
  v7 = objc_msgSend_recordZoneID(self, v5, v6);
  v10 = objc_msgSend_ckShortDescription(v7, v8, v9);
  v13 = objc_msgSend_databaseScope(self, v11, v12);
  v14 = CKDatabaseScopeString(v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"%@, recordZoneID=%@, database=%@", v4, v10, v14);

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKRecordZoneNotification;
  [(CKNotification *)&v14 encodeWithCoder:v4];
  v8 = objc_msgSend_recordZoneID(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"RecordZoneID");

  v12 = objc_msgSend_databaseScope(self, v10, v11);
  objc_msgSend_encodeInt64_forKey_(v4, v13, v12, @"DatabaseScope");
  objc_autoreleasePoolPop(v5);
}

- (CKRecordZoneNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKRecordZoneNotification;
  v5 = [(CKNotification *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"RecordZoneID");
    recordZoneID = v5->_recordZoneID;
    v5->_recordZoneID = v9;

    v5->_databaseScope = objc_msgSend_decodeInt64ForKey_(v4, v11, @"DatabaseScope");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CKRecordZoneNotification)initWithRemoteNotificationDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CKRecordZoneNotification;
  v5 = [(CKNotification *)&v32 initWithRemoteNotificationDictionary:v4];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setNotificationType_(v5, v6, 2);
    v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"ck");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"fet");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"zid");
        v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, @"zoid");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = CKCurrentProcessLinkCheck908c3403f5370f9fc0f790c790ce4de0669132c0();
            v18 = @"__defaultOwner__";
            if (v17)
            {
              v18 = v15;
            }

            v19 = v18;

            v20 = [CKRecordZoneID alloc];
            v22 = objc_msgSend_initWithZoneName_ownerName_(v20, v21, v13, v19);
            objc_msgSend_setRecordZoneID_(v7, v23, v22);

            v15 = v19;
          }
        }

        v24 = objc_msgSend_objectForKeyedSubscript_(v11, v16, @"dbs");
        if (objc_opt_respondsToSelector())
        {
          v28 = objc_msgSend_intValue(v24, v25, v26) - 1;
          if (v28 > 3)
          {
            objc_msgSend_setDatabaseScope_(v7, v27, 0);
          }

          else
          {
            objc_msgSend_setDatabaseScope_(v7, v27, qword_1886FEA10[v28]);
          }
        }

        v29 = objc_msgSend_objectForKeyedSubscript_(v11, v25, @"sid");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setSubscriptionID_(v7, v30, v29);
        }
      }
    }
  }

  return v7;
}

@end