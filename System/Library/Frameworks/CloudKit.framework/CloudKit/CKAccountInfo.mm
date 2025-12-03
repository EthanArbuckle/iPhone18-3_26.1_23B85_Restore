@interface CKAccountInfo
+ (CKAccountInfo)new;
+ (int64_t)invalidateCachedAccountInfo;
+ (int64_t)validAccountInfoValidationCounterValue;
+ (void)initialize;
+ (void)setValidAccountInfoValidationCounterValue:(int64_t)value;
- (BOOL)isEqual:(id)equal;
- (CKAccountInfo)init;
- (CKAccountInfo)initWithCoder:(id)coder;
- (CKAccountInfo)initWithValidationCounter:(unint64_t)counter accountStatus:(int64_t)status accountPartition:(int64_t)partition hasValidCredentials:(BOOL)credentials bypassPCSEncryption:(BOOL)encryption deviceToDeviceEncryptionAvailability:(int64_t)availability walrusStatus:(int64_t)walrusStatus needsToVerifyTerms:(BOOL)self0 accountAccessAuthorization:(int64_t)self1 identifier:(id)self2;
- (id)CKPropertiesDescription;
- (id)copyWithFakeDeviceToDeviceEncryptionAvailability:(int64_t)availability;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAsCachedAccountInfoForSetupInfoHash:(id)hash;
- (void)setSupportsDeviceToDeviceEncryption:(BOOL)encryption;
@end

@implementation CKAccountInfo

+ (int64_t)validAccountInfoValidationCounterValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1883EF348;
  v4[3] = &unk_1E70BC3D0;
  v4[4] = &v5;
  objc_msgSend_performAtomicDefaultsOperation_(CKUserDefaults, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 8);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_identifier(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"identifier=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_accountStatus(self, v12, v13);
  v15 = CKStringFromAccountStatus(v14);
  v17 = objc_msgSend_stringWithFormat_(v11, v16, @"accountStatus=%@", v15);
  objc_msgSend_addObject_(v3, v18, v17);

  v19 = MEMORY[0x1E696AEC0];
  v22 = objc_msgSend_accountPartition(self, v20, v21);
  v24 = @"Unknown Partition Type";
  if (v22 == 1)
  {
    v24 = @"Prod";
  }

  if (v22 == 2)
  {
    v24 = @"Carry";
  }

  v25 = objc_msgSend_stringWithFormat_(v19, v23, @"accountPartition=%@", v24);
  objc_msgSend_addObject_(v3, v26, v25);

  if (objc_msgSend_bypassPCSEncryption(self, v27, v28))
  {
    objc_msgSend_addObject_(v3, v29, @"deviceToDeviceEncryptionAvailability=(bypassPCSEncryption)");
  }

  else
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_deviceToDeviceEncryptionAvailability(self, v29, v30);
    v35 = CKStringFromDeviceToDeviceEncryptionStatus(v34);
    v37 = objc_msgSend_stringWithFormat_(v33, v36, @"deviceToDeviceEncryptionAvailability=%@", v35);
    objc_msgSend_addObject_(v3, v38, v37);
  }

  v39 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_hasValidCredentials(self, v31, v32))
  {
    objc_msgSend_stringWithFormat_(v39, v40, @"hasValidCredentials=%@", @"true");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v39, v40, @"hasValidCredentials=%@", @"false");
  }
  v41 = ;
  objc_msgSend_addObject_(v3, v42, v41);

  if (objc_msgSend_bypassPCSEncryption(self, v43, v44))
  {
    objc_msgSend_addObject_(v3, v45, @"walrus=bypassPCSEncryption");
  }

  else
  {
    v49 = MEMORY[0x1E696AEC0];
    v50 = objc_msgSend_walrusStatus(self, v45, v46);
    if (v50 > 2)
    {
      objc_msgSend_stringWithFormat_(v49, v51, @"walrus=%@", @"Unknown");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v49, v51, @"walrus=%@", off_1E70BC438[v50]);
    }
    v52 = ;
    objc_msgSend_addObject_(v3, v53, v52);
  }

  v54 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_needsToVerifyTerms(self, v47, v48))
  {
    objc_msgSend_stringWithFormat_(v54, v55, @"needsToVerifyTerms=%@", @"true");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v54, v55, @"needsToVerifyTerms=%@", @"false");
  }
  v56 = ;
  objc_msgSend_addObject_(v3, v57, v56);

  v58 = MEMORY[0x1E696AEC0];
  if (self)
  {
    accountAccessAuthorization = self->_accountAccessAuthorization;
  }

  else
  {
    accountAccessAuthorization = 0;
  }

  v60 = CKTernaryDescription(accountAccessAuthorization);
  v62 = objc_msgSend_stringWithFormat_(v58, v61, @"accountAccessAuthorization=%@", v60);
  objc_msgSend_addObject_(v3, v63, v62);

  if (self)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v64, @"validationCounter=%zu", self->_validationCounter);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v64, @"validationCounter=%zu", 0);
  }
  v65 = ;
  objc_msgSend_addObject_(v3, v66, v65);

  v68 = objc_msgSend_componentsJoinedByString_(v3, v67, @", ");

  return v68;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

+ (void)setValidAccountInfoValidationCounterValue:(int64_t)value
{
  v4 = geteuid();
  if (v4)
  {
    if (v4 != 501)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1885322B8;
      v6[3] = &unk_1E70BC3A8;
      v6[4] = value;
      objc_msgSend_performAtomicDefaultsOperation_(CKUserDefaults, v5, v6);
    }
  }
}

+ (int64_t)invalidateCachedAccountInfo
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (byte_1EA90C538)
  {
    v2 = objc_opt_class();
    objc_sync_enter(v2);
    v3 = geteuid();
    if (v3 == 501 || !v3)
    {
      v6 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v4, v5);
      v8 = objc_msgSend_objectForKey_(v6, v7, @"CloudKitAccountInfoCache");

      if (v8)
      {
        objc_msgSend_setObject_forKey_(v6, v9, 0, @"CloudKitAccountInfoCache");
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v10 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Cleared account info cache.", v14, 2u);
        }
      }
    }

    v11 = qword_1ED4B60D0;
    qword_1ED4B60D0 = 0;

    objc_sync_exit(v2);
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1885329D8;
    v15[3] = &unk_1E70BC3D0;
    v15[4] = &v16;
    objc_msgSend_performAtomicDefaultsOperation_(CKUserDefaults, a2, v15);
  }

  v12 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v12;
}

- (void)setAsCachedAccountInfoForSetupInfoHash:(id)hash
{
  v35 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  if (byte_1EA90C538 == 1)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v32 = 0;
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, self, 1, &v32);
    v10 = v32;
    if (v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = v10;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Failed to archive account info cache: %@", buf, 0xCu);
      }
    }

    else
    {
      v31 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v8, v9);
      v13 = objc_msgSend_objectForKey_(v31, v12, @"CloudKitAccountInfoCache");
      v17 = objc_msgSend_mutableCopy(v13, v14, v15);
      if (!v17)
      {
        v17 = objc_opt_new();
      }

      objc_msgSend_setObject_forKey_(v17, v16, v7, hashCopy);
      v18 = v17;
      objc_opt_self();
      v19 = objc_opt_class();
      objc_sync_enter(v19);
      v22 = objc_msgSend_copy(v18, v20, v21);
      v23 = qword_1ED4B60D0;
      qword_1ED4B60D0 = v22;

      v24 = geteuid();
      if (v24 == 501 || !v24)
      {
        v27 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v25, v26);
        objc_msgSend_setObject_forKey_(v27, v28, qword_1ED4B60D0, @"CloudKitAccountInfoCache");
      }

      objc_sync_exit(v19);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1883EA000, v29, OS_LOG_TYPE_INFO, "Set cached account info: %@", buf, 0xCu);
      }
    }

    objc_sync_exit(v5);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (CKAccountInfo)initWithValidationCounter:(unint64_t)counter accountStatus:(int64_t)status accountPartition:(int64_t)partition hasValidCredentials:(BOOL)credentials bypassPCSEncryption:(BOOL)encryption deviceToDeviceEncryptionAvailability:(int64_t)availability walrusStatus:(int64_t)walrusStatus needsToVerifyTerms:(BOOL)self0 accountAccessAuthorization:(int64_t)self1 identifier:(id)self2
{
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = CKAccountInfo;
  v20 = [(CKAccountInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_hasValidCredentials = credentials;
    v20->_accountPartition = partition;
    v20->_deviceToDeviceEncryptionAvailability = availability;
    v20->_bypassPCSEncryption = encryption;
    v20->_needsToVerifyTerms = terms;
    v20->_walrusStatus = walrusStatus;
    v20->_accountAccessAuthorization = authorization;
    v20->_validationCounter = counter;
    v20->_accountStatus = status;
    objc_storeStrong(&v20->_identifier, identifier);
  }

  return v21;
}

- (id)copyWithFakeDeviceToDeviceEncryptionAvailability:(int64_t)availability
{
  v7 = objc_alloc(objc_opt_class());
  if (self)
  {
    validationCounter = self->_validationCounter;
  }

  else
  {
    validationCounter = 0;
  }

  v9 = objc_msgSend_accountStatus(self, v5, v6);
  v12 = objc_msgSend_accountPartition(self, v10, v11);
  hasValidCredentials = objc_msgSend_hasValidCredentials(self, v13, v14);
  v18 = objc_msgSend_walrusStatus(self, v16, v17);
  v23 = objc_msgSend_needsToVerifyTerms(self, v19, v20);
  if (self)
  {
    accountAccessAuthorization = self->_accountAccessAuthorization;
  }

  else
  {
    accountAccessAuthorization = 0;
  }

  v25 = objc_msgSend_identifier(self, v21, v22);
  hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier = objc_msgSend_initWithValidationCounter_accountStatus_accountPartition_hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier_(v7, v26, validationCounter, v9, v12, hasValidCredentials, 0, availability, v18, v23, accountAccessAuthorization, v25);

  return hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier;
}

- (CKAccountInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CKAccountInfo;
  v6 = [(CKAccountInfo *)&v20 init];
  if (v6)
  {
    v6->_accountStatus = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"AccountStatus");
    v6->_accountPartition = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"AccountPartition");
    v6->_bypassPCSEncryption = objc_msgSend_decodeBoolForKey_(coderCopy, v8, @"BypassPCSEncryption");
    v6->_deviceToDeviceEncryptionAvailability = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"DeviceToDeviceEncryptionAvailability");
    v6->_hasValidCredentials = objc_msgSend_decodeBoolForKey_(coderCopy, v10, @"HasValidCredentials");
    v6->_validationCounter = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, @"AccountInfoValidationCounter");
    v6->_walrusStatus = objc_msgSend_decodeIntegerForKey_(coderCopy, v12, @"WalrusStatus");
    v6->_accountAccessAuthorization = objc_msgSend_decodeIntegerForKey_(coderCopy, v13, @"AccountAccessAuthorization");
    if (!v6->_accountPartition)
    {
      v6->_accountPartition = 1;
    }

    v6->_needsToVerifyTerms = objc_msgSend_decodeBoolForKey_(coderCopy, v14, @"NeedsToVerifyTerms");
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"Identifier");
    identifier = v6->_identifier;
    v6->_identifier = v17;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_accountStatus(self, v4, v5);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, v6, @"AccountStatus");
  v10 = objc_msgSend_accountPartition(self, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, v10, @"AccountPartition");
  v14 = objc_msgSend_bypassPCSEncryption(self, v12, v13);
  objc_msgSend_encodeBool_forKey_(coderCopy, v15, v14, @"BypassPCSEncryption");
  v18 = objc_msgSend_deviceToDeviceEncryptionAvailability(self, v16, v17);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v19, v18, @"DeviceToDeviceEncryptionAvailability");
  hasValidCredentials = objc_msgSend_hasValidCredentials(self, v20, v21);
  objc_msgSend_encodeBool_forKey_(coderCopy, v23, hasValidCredentials, @"HasValidCredentials");
  if (self)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v24, self->_validationCounter, @"AccountInfoValidationCounter");
    v27 = objc_msgSend_walrusStatus(self, v25, v26);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v28, v27, @"WalrusStatus");
    v31 = objc_msgSend_needsToVerifyTerms(self, v29, v30);
    objc_msgSend_encodeBool_forKey_(coderCopy, v32, v31, @"NeedsToVerifyTerms");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v33, self->_accountAccessAuthorization, @"AccountAccessAuthorization");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v24, 0, @"AccountInfoValidationCounter");
    v43 = objc_msgSend_walrusStatus(0, v41, v42);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v44, v43, @"WalrusStatus");
    v47 = objc_msgSend_needsToVerifyTerms(0, v45, v46);
    objc_msgSend_encodeBool_forKey_(coderCopy, v48, v47, @"NeedsToVerifyTerms");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v49, 0, @"AccountAccessAuthorization");
  }

  v36 = objc_msgSend_identifier(self, v34, v35);

  if (v36)
  {
    v39 = objc_msgSend_identifier(self, v37, v38);
    objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"Identifier");
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v9 = objc_msgSend_accountStatus(self, v7, v8);
      if (v9 != objc_msgSend_accountStatus(v6, v10, v11))
      {
        goto LABEL_20;
      }

      v14 = objc_msgSend_accountPartition(self, v12, v13);
      if (v14 != objc_msgSend_accountPartition(v6, v15, v16))
      {
        goto LABEL_20;
      }

      v19 = objc_msgSend_bypassPCSEncryption(self, v17, v18);
      if (v19 != objc_msgSend_bypassPCSEncryption(v6, v20, v21))
      {
        goto LABEL_20;
      }

      v24 = objc_msgSend_deviceToDeviceEncryptionAvailability(self, v22, v23);
      if (v24 != objc_msgSend_deviceToDeviceEncryptionAvailability(v6, v25, v26))
      {
        goto LABEL_20;
      }

      hasValidCredentials = objc_msgSend_hasValidCredentials(self, v27, v28);
      if (hasValidCredentials != objc_msgSend_hasValidCredentials(v6, v30, v31))
      {
        goto LABEL_20;
      }

      v34 = objc_msgSend_walrusStatus(self, v32, v33);
      if (v34 != objc_msgSend_walrusStatus(v6, v35, v36))
      {
        goto LABEL_20;
      }

      v39 = objc_msgSend_needsToVerifyTerms(self, v37, v38);
      if (v39 != objc_msgSend_needsToVerifyTerms(v6, v40, v41))
      {
        goto LABEL_20;
      }

      if (self)
      {
        accountAccessAuthorization = self->_accountAccessAuthorization;
        if (v6)
        {
LABEL_12:
          v45 = v6->_accountAccessAuthorization;
          goto LABEL_13;
        }
      }

      else
      {
        accountAccessAuthorization = 0;
        if (v6)
        {
          goto LABEL_12;
        }
      }

      v45 = 0;
LABEL_13:
      if (accountAccessAuthorization == v45)
      {
        v48 = objc_msgSend_identifier(self, v42, v43);
        if (v48 || (objc_msgSend_identifier(v6, v46, v47), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v49 = objc_msgSend_identifier(self, v46, v47);
          v52 = objc_msgSend_identifier(v6, v50, v51);
          isEqual = objc_msgSend_isEqual_(v49, v53, v52);

          if (v48)
          {
LABEL_25:

            goto LABEL_21;
          }
        }

        else
        {
          isEqual = 1;
        }

        goto LABEL_25;
      }

LABEL_20:
      isEqual = 0;
LABEL_21:

      goto LABEL_22;
    }

    isEqual = 0;
  }

LABEL_22:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_accountStatus(self, a2, v2);
  v7 = objc_msgSend_accountPartition(self, v5, v6);
  hasValidCredentials = objc_msgSend_hasValidCredentials(self, v8, v9);
  v13 = objc_msgSend_deviceToDeviceEncryptionAvailability(self, v11, v12);
  v16 = objc_msgSend_walrusStatus(self, v14, v15);
  v19 = objc_msgSend_needsToVerifyTerms(self, v17, v18);
  if (self)
  {
    v22 = self->_accountAccessAuthorization << 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = 16;
  if (!hasValidCredentials)
  {
    v23 = 0;
  }

  v24 = v4 ^ (4 * v7) ^ v23 ^ (32 * v13) ^ (v16 << 6);
  v25 = 128;
  if (!v19)
  {
    v25 = 0;
  }

  v26 = v25 ^ v22;
  v27 = objc_msgSend_bypassPCSEncryption(self, v20, v21);
  v30 = 512;
  if (!v27)
  {
    v30 = 0;
  }

  v31 = v24 ^ v26 ^ v30;
  v32 = objc_msgSend_identifier(self, v28, v29);
  v35 = v31 ^ (objc_msgSend_hash(v32, v33, v34) << 10);

  return v35;
}

- (CKAccountInfo)init
{
  v2 = objc_opt_new();
  v5 = v2;
  if (v2)
  {
    v34 = v2[8];
  }

  else
  {
    v34 = 0;
  }

  v6 = objc_msgSend_accountStatus(v2, v3, v4);
  v9 = objc_msgSend_accountPartition(v5, v7, v8);
  hasValidCredentials = objc_msgSend_hasValidCredentials(v5, v10, v11);
  v15 = objc_msgSend_bypassPCSEncryption(v5, v13, v14);
  v18 = objc_msgSend_deviceToDeviceEncryptionAvailability(v5, v16, v17);
  v21 = objc_msgSend_walrusStatus(v5, v19, v20);
  v24 = objc_msgSend_needsToVerifyTerms(v5, v22, v23);
  v27 = objc_msgSend_accountAccessAuthorization(v5, v25, v26);
  v30 = objc_msgSend_identifier(v5, v28, v29);
  hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier = objc_msgSend_initWithValidationCounter_accountStatus_accountPartition_hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier_(self, v31, v34, v6, v9, hasValidCredentials, v15, v18, v21, v24, v27, v30);

  return hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier;
}

+ (CKAccountInfo)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CKAccountInfo;
  return objc_msgSendSuper2(&v3, "new");
}

- (void)setSupportsDeviceToDeviceEncryption:(BOOL)encryption
{
  if (encryption)
  {
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(self, a2, 3);
  }

  else
  {
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(self, a2, 0);
  }

  objc_msgSend_setBypassPCSEncryption_(self, v4, 0);
}

@end