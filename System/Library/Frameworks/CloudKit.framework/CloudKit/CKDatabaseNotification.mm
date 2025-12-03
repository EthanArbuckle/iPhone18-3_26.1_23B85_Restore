@interface CKDatabaseNotification
+ (void)initialize;
- (CKDatabaseNotification)initWithCoder:(id)coder;
- (CKDatabaseNotification)initWithRemoteNotificationDictionary:(id)dictionary;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDatabaseNotification

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
  v18.super_class = CKDatabaseNotification;
  cKPropertiesDescription = [(CKNotification *)&v18 CKPropertiesDescription];
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v8 = CKDatabaseScopeString(v7);
  v11 = objc_msgSend_recordZoneID(self, v9, v10);
  v14 = objc_msgSend_ckShortDescription(v11, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"%@, database=%@, zoneID=%@", cKPropertiesDescription, v8, v14);

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKDatabaseNotification;
  [(CKNotification *)&v10 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_databaseScope(self, v6, v7);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v9, v8, @"DatabaseScope");
  objc_autoreleasePoolPop(v5);
}

- (CKDatabaseNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKDatabaseNotification;
  v5 = [(CKNotification *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_databaseScope = objc_msgSend_decodeInt64ForKey_(coderCopy, v7, @"DatabaseScope");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CKDatabaseNotification)initWithRemoteNotificationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = CKDatabaseNotification;
  v5 = [(CKNotification *)&v35 initWithRemoteNotificationDictionary:dictionaryCopy];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setNotificationType_(v5, v6, 4);
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"ck");
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }

    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"met");
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"dbs");
    if (objc_opt_respondsToSelector())
    {
      v17 = objc_msgSend_intValue(v13, v14, v15) - 1;
      if (v17 > 3)
      {
        objc_msgSend_setDatabaseScope_(v7, v16, 0);
      }

      else
      {
        objc_msgSend_setDatabaseScope_(v7, v16, qword_1886FEA10[v17]);
      }
    }

    v18 = objc_msgSend_objectForKeyedSubscript_(v11, v14, @"sid");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setSubscriptionID_(v7, v19, v18);
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(v11, v19, @"zoid");
    v22 = objc_msgSend_objectForKeyedSubscript_(v11, v21, @"zid");
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_23:

      goto LABEL_24;
    }

    v23 = v22;
    v26 = objc_msgSend_databaseScope(v7, v24, v25);
    v27 = 0;
    if (v26 > 2)
    {
      v28 = v20;
      if (v26 == 3)
      {
        goto LABEL_19;
      }

      if (v26 != 4)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if ((v26 - 1) >= 2)
    {
      v28 = v20;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_19:
      v27 = v28;
      if (v27 && v23)
      {
        v29 = [CKRecordZoneID alloc];
        v34 = v23;
        v31 = objc_msgSend_initWithZoneName_ownerName_(v29, v30, v23, v27);
        objc_msgSend_setRecordZoneID_(v7, v32, v31);

        v23 = v34;
      }

      goto LABEL_22;
    }

    v28 = @"__defaultOwner__";
    goto LABEL_19;
  }

LABEL_26:

  return v7;
}

@end