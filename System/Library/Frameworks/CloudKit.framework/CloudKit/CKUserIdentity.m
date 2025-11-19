@interface CKUserIdentity
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToUserIdentity:(id)a3;
- (BOOL)isEquivalentToUserIdentityOrPublicKey:(id)a3;
- (BOOL)isOutOfNetwork;
- (CKUserIdentity)initWithCoder:(id)a3;
- (CKUserIdentity)initWithUserRecordID:(id)a3;
- (CKUserIdentityLookupInfo)lookupInfo;
- (NSArray)contactIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContactIdentifiers:(id)a3;
- (void)setLookupInfo:(id)a3;
@end

@implementation CKUserIdentity

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = CKUserIdentity;
  v2 = [(CKUserIdentity *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_hasiCloudAccount = 1;
    v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    nameComponents = v3->_nameComponents;
    v3->_nameComponents = v4;

    v3->_publicKeyVersion = 2;
  }

  return v3;
}

- (CKUserIdentity)initWithUserRecordID:(id)a3
{
  v4 = a3;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    userRecordID = inited->_userRecordID;
    inited->_userRecordID = v10;

    inited->_publicKeyVersion = 2;
  }

  return inited;
}

- (CKUserIdentityLookupInfo)lookupInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lookupInfo;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLookupInfo:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v9 = objc_msgSend_userRecordID(v18, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_userRecordID(v4, v7, v8);

    if (!v10)
    {
      v11 = objc_msgSend_userRecordID(v18, v7, v8);
      v14 = objc_msgSend_copy(v11, v12, v13);
      objc_msgSend_setUserRecordID_(v4, v15, v14);
    }
  }

  v16 = objc_msgSend_copy(v18, v7, v8);
  lookupInfo = v4->_lookupInfo;
  v4->_lookupInfo = v16;

  objc_sync_exit(v4);
}

- (BOOL)isOutOfNetwork
{
  if (!objc_msgSend_hasiCloudAccount(self, a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_publicSharingKey(self, v4, v5);
  v7 = v6 == 0;

  return v7;
}

- (NSArray)contactIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  contactIdentifiers = v2->_contactIdentifiers;
  if (!contactIdentifiers)
  {
    contactIdentifiers = MEMORY[0x1E695E0F0];
  }

  v4 = contactIdentifiers;
  objc_sync_exit(v2);

  return v4;
}

- (void)setContactIdentifiers:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  contactIdentifiers = v4->_contactIdentifiers;
  v4->_contactIdentifiers = v7;

  objc_sync_exit(v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = objc_msgSend_userRecordID(self, v6, v7);
    v11 = objc_msgSend_userRecordID(v5, v9, v10);
    if (CKObjectsAreBothNilOrEqual(v8, v11))
    {
      v14 = objc_msgSend_nameComponents(self, v12, v13);
      v17 = objc_msgSend_nameComponents(v5, v15, v16);
      if (CKObjectsAreBothNilOrEqual(v14, v17))
      {
        v20 = objc_msgSend_publicSharingKey(self, v18, v19);
        v23 = objc_msgSend_publicSharingKey(v5, v21, v22);
        if (CKObjectsAreBothNilOrEqual(v20, v23))
        {
          v26 = objc_msgSend_outOfNetworkPrivateKey(self, v24, v25);
          v29 = objc_msgSend_outOfNetworkPrivateKey(v5, v27, v28);
          v40 = v26;
          v30 = v26;
          v31 = v29;
          if (CKObjectsAreBothNilOrEqual(v30, v29))
          {
            v39 = objc_msgSend_lookupInfo(self, v32, v33);
            v38 = objc_msgSend_lookupInfo(v5, v34, v35);
            v36 = CKObjectsAreBothNilOrEqual(v39, v38);
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_userRecordID(self, v5, v6);
  v9 = objc_msgSend_initWithUserRecordID_(v4, v8, v7);

  v12 = objc_msgSend_lookupInfo(self, v10, v11);
  v15 = objc_msgSend_copy(v12, v13, v14);
  v16 = *(v9 + 16);
  *(v9 + 16) = v15;

  v19 = objc_msgSend_nameComponents(self, v17, v18);
  v22 = objc_msgSend_copy(v19, v20, v21);
  v23 = *(v9 + 40);
  *(v9 + 40) = v22;

  v26 = objc_msgSend_userRecordID(self, v24, v25);
  v29 = objc_msgSend_copy(v26, v27, v28);
  v30 = *(v9 + 32);
  *(v9 + 32) = v29;

  v33 = objc_msgSend_contactIdentifiers(self, v31, v32);
  v36 = objc_msgSend_CKDeepCopy(v33, v34, v35);
  v37 = *(v9 + 24);
  *(v9 + 24) = v36;

  *(v9 + 8) = objc_msgSend_hasiCloudAccount(self, v38, v39);
  *(v9 + 9) = objc_msgSend_isCached(self, v40, v41);
  v44 = objc_msgSend_publicSharingKey(self, v42, v43);
  v47 = objc_msgSend_copy(v44, v45, v46);
  v48 = *(v9 + 48);
  *(v9 + 48) = v47;

  v51 = objc_msgSend_outOfNetworkPrivateKey(self, v49, v50);
  v54 = objc_msgSend_copy(v51, v52, v53);
  v55 = *(v9 + 64);
  *(v9 + 64) = v54;

  v58 = objc_msgSend_encryptedPersonalInfo(self, v56, v57);
  v61 = objc_msgSend_copy(v58, v59, v60);
  v62 = *(v9 + 72);
  *(v9 + 72) = v61;

  *(v9 + 56) = objc_msgSend_publicKeyVersion(self, v63, v64);
  return v9;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_nameComponents(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_userRecordID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEquivalentToUserIdentity:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_userRecordID(self, v5, v6);
  v10 = objc_msgSend_userRecordID(v4, v8, v9);
  isEqual = objc_msgSend_isEqual_(v7, v11, v10);

  if (isEqual)
  {
    v15 = 1;
  }

  else
  {
    v16 = objc_msgSend_lookupInfo(self, v13, v14);
    v19 = objc_msgSend_lookupInfo(v4, v17, v18);
    v15 = objc_msgSend_isEqual_(v16, v20, v19);
  }

  return v15;
}

- (BOOL)isEquivalentToUserIdentityOrPublicKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_publicSharingKey(self, v5, v6);
  v10 = objc_msgSend_publicSharingKey(v4, v8, v9);
  isEqual = objc_msgSend_isEqual_(v7, v11, v10);

  if (isEqual)
  {
    isEquivalentToUserIdentity = 1;
  }

  else
  {
    isEquivalentToUserIdentity = objc_msgSend_isEquivalentToUserIdentity_(self, v13, v4);
  }

  return isEquivalentToUserIdentity;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v41 = a3;
  v6 = objc_msgSend_userRecordID(self, v4, v5);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v41, v7, @"userID", v6, 0);

  v10 = objc_msgSend_nameComponents(self, v8, v9);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v41, v11, @"nameComponents", v10, 1);

  v14 = objc_msgSend_contactIdentifiers(self, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_contactIdentifiers(self, v18, v19);
    objc_msgSend_addProperty_value_shouldRedact_(v41, v21, @"contactIdentifiers", v20, 0);
  }

  v22 = objc_msgSend_lookupInfo(self, v18, v19);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v41, v23, @"lookupInfo", v22, 0);

  if (objc_msgSend_isCached(self, v24, v25))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v41, v26, @"cached", @"true", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v41, v26, @"cached", @"false", 0);
  }

  v29 = MEMORY[0x1E696AD98];
  v30 = objc_msgSend_publicKeyVersion(self, v27, v28);
  v32 = objc_msgSend_numberWithUnsignedInteger_(v29, v31, v30);
  objc_msgSend_addProperty_value_shouldRedact_(v41, v33, @"publicKeyVersion", v32, 0);

  v36 = objc_msgSend_publicSharingKey(self, v34, v35);
  objc_msgSend_addProperty_value_shouldRedact_(v41, v37, @"publicSharingKey", v36, 1);

  if (objc_msgSend_hasiCloudAccount(self, v38, v39))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v41, v40, @"hasiCloudAccount", @"true", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v41, v40, @"hasiCloudAccount", @"false", 0);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v45 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_userRecordID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v45, v8, v7, @"UserRecordID");

  v11 = objc_msgSend_nameComponents(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v45, v12, v11, @"NameComponents");

  v15 = objc_msgSend_lookupInfo(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v45, v16, v15, @"LookupInfo");

  v19 = objc_msgSend_contactIdentifiers(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v45, v20, v19, @"ContactIdentifiers");

  v23 = objc_msgSend_publicSharingKey(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v45, v24, v23, @"ProtectionData");

  v27 = objc_msgSend_outOfNetworkPrivateKey(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(v45, v28, v27, @"OONProtectionData");

  isCached = objc_msgSend_isCached(self, v29, v30);
  objc_msgSend_encodeBool_forKey_(v45, v32, isCached, @"IsCached");
  v35 = objc_msgSend_hasiCloudAccount(self, v33, v34);
  objc_msgSend_encodeBool_forKey_(v45, v36, v35, @"HasICloudAccount");
  v39 = objc_msgSend_encryptedPersonalInfo(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(v45, v40, v39, @"EncryptedPersonalInfo");

  v43 = objc_msgSend_publicKeyVersion(self, v41, v42);
  objc_msgSend_encodeInt64_forKey_(v45, v44, v43, @"PublicKeyVersion");
  objc_autoreleasePoolPop(v4);
}

- (CKUserIdentity)initWithCoder:(id)a3
{
  v46[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v9, @"UserRecordID");
    userRecordID = inited->_userRecordID;
    inited->_userRecordID = v11;

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"NameComponents");
    nameComponents = inited->_nameComponents;
    inited->_nameComponents = v15;

    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"LookupInfo");
    lookupInfo = inited->_lookupInfo;
    inited->_lookupInfo = v19;

    v21 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v46, 2);
    v25 = objc_msgSend_setWithArray_(v21, v24, v23);
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v26, v25, @"ContactIdentifiers");
    contactIdentifiers = inited->_contactIdentifiers;
    inited->_contactIdentifiers = v27;

    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v30, v29, @"ProtectionData");
    publicSharingKey = inited->_publicSharingKey;
    inited->_publicSharingKey = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v33, @"OONProtectionData");
    outOfNetworkPrivateKey = inited->_outOfNetworkPrivateKey;
    inited->_outOfNetworkPrivateKey = v35;

    inited->_isCached = objc_msgSend_decodeBoolForKey_(v4, v37, @"IsCached");
    inited->_hasiCloudAccount = objc_msgSend_decodeBoolForKey_(v4, v38, @"HasICloudAccount");
    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v40, v39, @"EncryptedPersonalInfo");
    encryptedPersonalInfo = inited->_encryptedPersonalInfo;
    inited->_encryptedPersonalInfo = v41;

    inited->_publicKeyVersion = objc_msgSend_decodeInt64ForKey_(v4, v43, @"PublicKeyVersion");
    objc_autoreleasePoolPop(v8);
  }

  v44 = *MEMORY[0x1E69E9840];
  return inited;
}

@end