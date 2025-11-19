@interface CKUserIdentityLookupInfo
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (CKUserIdentityLookupInfo)initWithCoder:(id)a3;
- (CKUserIdentityLookupInfo)initWithEmailAddress:(NSString *)emailAddress;
- (CKUserIdentityLookupInfo)initWithPhoneNumber:(NSString *)phoneNumber;
- (CKUserIdentityLookupInfo)initWithUserRecordID:(CKRecordID *)userRecordID;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (id)ckShortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (id)lookupValue;
- (int64_t)lookupField;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)_stripPersonalInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKUserIdentityLookupInfo

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKUserIdentityLookupInfo;
  return [(CKUserIdentityLookupInfo *)&v3 init];
}

- (CKUserIdentityLookupInfo)initWithEmailAddress:(NSString *)emailAddress
{
  v7 = emailAddress;
  if (!v7)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKUserIdentityLookupInfo.m", 36, @"Invalid parameter not satisfying: %@", @"emailAddress != nil");
  }

  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    v12 = inited->_emailAddress;
    inited->_emailAddress = v11;

    inited->_shouldReportMissingIdentity = 1;
  }

  return inited;
}

- (CKUserIdentityLookupInfo)initWithUserRecordID:(CKRecordID *)userRecordID
{
  v7 = userRecordID;
  if (!v7)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKUserIdentityLookupInfo.m", 45, @"Invalid parameter not satisfying: %@", @"recordID != nil");
  }

  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    v12 = inited->_userRecordID;
    inited->_userRecordID = v11;

    inited->_shouldReportMissingIdentity = 1;
  }

  return inited;
}

- (CKUserIdentityLookupInfo)initWithPhoneNumber:(NSString *)phoneNumber
{
  v7 = phoneNumber;
  if (!v7)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKUserIdentityLookupInfo.m", 54, @"Invalid parameter not satisfying: %@", @"phoneNumber != nil");
  }

  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    v12 = inited->_phoneNumber;
    inited->_phoneNumber = v11;

    inited->_shouldReportMissingIdentity = 1;
  }

  return inited;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_emailAddress(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"emailAddress");

  v10 = objc_msgSend_phoneNumber(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"phoneNumber");

  v14 = objc_msgSend_userRecordID(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"userRecordID");

  v18 = objc_msgSend_properties(v3, v16, v17);

  return v18;
}

- (int64_t)lookupField
{
  v4 = objc_msgSend_emailAddress(self, a2, v2);

  if (v4)
  {
    return 1;
  }

  v8 = objc_msgSend_userRecordID(self, v5, v6);

  if (v8)
  {
    return 2;
  }

  v11 = objc_msgSend_phoneNumber(self, v9, v10);

  if (v11)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)lookupValue
{
  v4 = objc_msgSend_emailAddress(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v9 = objc_msgSend_userRecordID(self, v5, v6);
    v12 = v9;
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v13 = objc_msgSend_phoneNumber(self, v10, v11);
      v8 = v13;
      if (v13)
      {
        v14 = v13;
      }
    }
  }

  return v8;
}

- (void)_stripPersonalInfo
{
  objc_msgSend_setEmailAddress_(self, a2, 0);

  MEMORY[0x1EEE66B58](self, sel_setPhoneNumber_, 0);
}

- (id)ckShortDescription
{
  v4 = objc_msgSend_emailAddress(self, a2, v2);
  v7 = objc_msgSend_phoneNumber(self, v5, v6);
  v10 = objc_msgSend_userRecordID(self, v8, v9);
  if (objc_msgSend_length(v4, v11, v12))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"email=%@", v4);
    v16 = LABEL_7:;
    goto LABEL_8;
  }

  if (objc_msgSend_length(v7, v13, v14))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"phone=%@", v7);
    goto LABEL_7;
  }

  if (v10)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"userID=%@", v10);
    goto LABEL_7;
  }

  v16 = @"empty";
LABEL_8:

  return v16;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 1);
  if (v6)
  {
    v11 = objc_msgSend_emailAddress(self, v8, v9);
    v14 = objc_msgSend_phoneNumber(self, v12, v13);
    v17 = objc_msgSend_userRecordID(self, v15, v16);
    if (objc_msgSend_length(v11, v18, v19))
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v20, @"email", v11);
    }

    else if (objc_msgSend_length(v14, v20, v21))
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v22, @"phone", v14);
    }

    else if (v17)
    {
      if (v5)
      {
        v24 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v17, v22, 1, 1, 1);
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v25, @"userID", v24);
      }

      else
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v22, @"userID", v17);
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initInternal(v4, v5, v6);
  v10 = objc_msgSend_emailAddress(self, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);
  v14 = inited[2];
  inited[2] = v13;

  v17 = objc_msgSend_userRecordID(self, v15, v16);
  v20 = objc_msgSend_copy(v17, v18, v19);
  v21 = inited[4];
  inited[4] = v20;

  v24 = objc_msgSend_phoneNumber(self, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);
  v28 = inited[3];
  inited[3] = v27;

  v31 = objc_msgSend_encryptedPersonalInfo(self, v29, v30);
  v34 = objc_msgSend_copy(v31, v32, v33);
  v35 = inited[5];
  inited[5] = v34;

  return inited;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_emailAddress(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_userRecordID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_phoneNumber(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = objc_msgSend_emailAddress(self, v6, v7);
    v11 = objc_msgSend_emailAddress(v5, v9, v10);
    if (CKObjectsAreBothNilOrEqual(v8, v11))
    {
      v14 = objc_msgSend_phoneNumber(self, v12, v13);
      v17 = objc_msgSend_phoneNumber(v5, v15, v16);
      if (CKObjectsAreBothNilOrEqual(v14, v17))
      {
        v20 = objc_msgSend_userRecordID(self, v18, v19);
        v23 = objc_msgSend_userRecordID(v5, v21, v22);
        v24 = CKObjectsAreBothNilOrEqual(v20, v23);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v27 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_phoneNumber(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v27, v8, v7, @"PhoneNumber");

  v11 = objc_msgSend_emailAddress(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v27, v12, v11, @"EmailAddress");

  v15 = objc_msgSend_userRecordID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v27, v16, v15, @"RecordID");

  if ((objc_msgSend_ck_isCodingForCKSQLiteDatabase(v27, v17, v18) & 1) == 0)
  {
    shouldReportMissingIdentity = objc_msgSend_shouldReportMissingIdentity(self, v19, v20);
    objc_msgSend_encodeBool_forKey_(v27, v22, shouldReportMissingIdentity, @"ReportsMissing");
    v25 = objc_msgSend_encryptedPersonalInfo(self, v23, v24);
    objc_msgSend_encodeObject_forKey_(v27, v26, v25, @"EncryptedPersonalInfo");
  }

  objc_autoreleasePoolPop(v4);
}

- (CKUserIdentityLookupInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CKUserIdentityLookupInfo;
  v5 = [(CKUserIdentityLookupInfo *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"EmailAddress");
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"PhoneNumber");
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"RecordID");
    userRecordID = v5->_userRecordID;
    v5->_userRecordID = v16;

    if ((objc_msgSend_ck_isDecodingForCKSQLiteDatabase(v4, v18, v19) & 1) == 0)
    {
      v5->_shouldReportMissingIdentity = objc_msgSend_decodeBoolForKey_(v4, v20, @"ReportsMissing");
      v21 = objc_opt_class();
      v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v21, @"EncryptedPersonalInfo");
      encryptedPersonalInfo = v5->_encryptedPersonalInfo;
      v5->_encryptedPersonalInfo = v23;
    }
  }

  return v5;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_emailAddress(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v8, @"emailAddress", v7, 1);

  v11 = objc_msgSend_phoneNumber(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"phoneNumber", v11, 1);

  v16 = objc_msgSend_userRecordID(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v15, @"userRecordID", v16, 0);
}

@end