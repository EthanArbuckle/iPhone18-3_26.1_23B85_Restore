@interface CKOperationGroup
+ (void)initialize;
- (CKOperationConfiguration)defaultConfiguration;
- (CKOperationGroup)init;
- (CKOperationGroup)initWithCoder:(NSCoder *)aDecoder;
- (CKOperationGroupSystemImposedInfo)systemImposedInfo;
- (CKOperationGroupTransferSize)expectedReceiveSize;
- (CKOperationGroupTransferSize)expectedSendSize;
- (NSUInteger)quantity;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)approximateReceiveBytes;
- (int64_t)approximateSendBytes;
- (unint64_t)resolvedNetworkServiceTypeForConfig:(id)config;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultConfiguration:(CKOperationConfiguration *)defaultConfiguration;
- (void)setExpectedReceiveSize:(CKOperationGroupTransferSize)expectedReceiveSize;
- (void)setExpectedSendSize:(CKOperationGroupTransferSize)expectedSendSize;
- (void)setQuantity:(NSUInteger)quantity;
- (void)setSystemImposedInfo:(id)info;
@end

@implementation CKOperationGroup

- (CKOperationGroup)init
{
  v8.receiver = self;
  v8.super_class = CKOperationGroup;
  v2 = [(CKOperationGroup *)&v8 init];
  if (v2)
  {
    v3 = CKShortRandomID();
    operationGroupID = v2->_operationGroupID;
    v2->_operationGroupID = v3;

    v5 = objc_opt_new();
    defaultConfiguration = v2->_defaultConfiguration;
    v2->_defaultConfiguration = v5;

    v2->_expectedSendSize = 0;
    v2->_expectedReceiveSize = 0;
  }

  return v2;
}

- (CKOperationConfiguration)defaultConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_defaultConfiguration;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKOperationGroupSystemImposedInfo)systemImposedInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemImposedInfo_locked;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKOperationGroupTransferSize)expectedReceiveSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  expectedReceiveSize = selfCopy->_expectedReceiveSize;
  objc_sync_exit(selfCopy);

  return expectedReceiveSize;
}

- (CKOperationGroupTransferSize)expectedSendSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  expectedSendSize = selfCopy->_expectedSendSize;
  objc_sync_exit(selfCopy);

  return expectedSendSize;
}

- (NSUInteger)quantity
{
  v3 = objc_msgSend_quantityNumber(self, a2, v2);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (void)setSystemImposedInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(infoCopy, v5, v6);
  systemImposedInfo_locked = selfCopy->_systemImposedInfo_locked;
  selfCopy->_systemImposedInfo_locked = v7;

  objc_sync_exit(selfCopy);
}

- (void)setQuantity:(NSUInteger)quantity
{
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, quantity);
  objc_msgSend_setQuantityNumber_(self, v4, v5);
}

- (void)setExpectedSendSize:(CKOperationGroupTransferSize)expectedSendSize
{
  obj = self;
  objc_sync_enter(obj);
  systemImposedInfo_locked = obj->_systemImposedInfo_locked;
  if (systemImposedInfo_locked)
  {
    v7 = objc_msgSend_expectedSendSize(systemImposedInfo_locked, v4, v5);
    if (expectedSendSize == CKOperationGroupTransferSizeUnknown || v7 < expectedSendSize)
    {
      v8 = obj->_systemImposedInfo_locked;
      obj->_systemImposedInfo_locked = 0;
    }
  }

  obj->_expectedSendSize = expectedSendSize;
  objc_sync_exit(obj);
}

- (void)setExpectedReceiveSize:(CKOperationGroupTransferSize)expectedReceiveSize
{
  obj = self;
  objc_sync_enter(obj);
  systemImposedInfo_locked = obj->_systemImposedInfo_locked;
  if (systemImposedInfo_locked)
  {
    v7 = objc_msgSend_expectedReceiveSize(systemImposedInfo_locked, v4, v5);
    if (expectedReceiveSize == CKOperationGroupTransferSizeUnknown || v7 < expectedReceiveSize)
    {
      v8 = obj->_systemImposedInfo_locked;
      obj->_systemImposedInfo_locked = 0;
    }
  }

  obj->_expectedReceiveSize = expectedReceiveSize;
  objc_sync_exit(obj);
}

- (void)setDefaultConfiguration:(CKOperationConfiguration *)defaultConfiguration
{
  v4 = defaultConfiguration;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v10 = v4;
  v7 = objc_msgSend_copy(v4, v5, v6);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy->_defaultConfiguration;
  selfCopy->_defaultConfiguration = v7;

  objc_sync_exit(selfCopy);
}

- (int64_t)approximateSendBytes
{
  v4 = objc_msgSend_expectedSendSize(self, a2, v2);

  return sub_1886194E4(self, v4);
}

- (int64_t)approximateReceiveBytes
{
  v4 = objc_msgSend_expectedReceiveSize(self, a2, v2);

  return sub_1886194E4(self, v4);
}

- (unint64_t)resolvedNetworkServiceTypeForConfig:(id)config
{
  configCopy = config;
  v7 = objc_msgSend_systemImposedInfo(self, v5, v6);
  v10 = objc_msgSend_networkServiceTypePerConfig(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, configCopy);

  if (v12)
  {
    v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  privateCopy = private;
  publicCopy = public;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_msgSend_name(self, v9, v10);
  if (publicCopy)
  {
    v14 = objc_msgSend_operationGroupID(self, v11, v12);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v15, @"operationGroupID", v14);

    v19 = objc_msgSend_quantityNumber(self, v16, v17);
    if (v19)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v18, @"quantity", v19);
    }

    if (!privateCopy && v13)
    {
      if (objc_msgSend_length(v13, v11, v12) <= 0x80)
      {
        v21 = v13;
      }

      else
      {
        v21 = objc_msgSend_substringToIndex_(v13, v20, 128);
      }

      v24 = v21;
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_msgSend_length(v13, v22, v23);
      v28 = &stru_1EFA32970;
      if (v26 > 0x80)
      {
        v28 = @"...";
      }

      v29 = objc_msgSend_stringWithFormat_(v25, v27, @"%@%@", v24, v28);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v30, @"shortened-name", v29);
    }
  }

  if (privateCopy)
  {
    v31 = objc_msgSend_defaultConfiguration(self, v11, v12);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v32, @"defaultConfiguration", v31);

    if (v13)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v33, @"full-name", v13);
    }

    v35 = objc_msgSend_expectedSendSize(self, v33, v34);
    if (v35)
    {
      v38 = CKStringForTransferSize(v35);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v39, @"send-size", v38);
    }

    v40 = objc_msgSend_expectedReceiveSize(self, v36, v37);
    if (v40)
    {
      v43 = CKStringForTransferSize(v40);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v44, @"recv-size", v43);
    }

    v45 = objc_msgSend_systemImposedInfo(self, v41, v42);
    v48 = objc_msgSend_networkServiceTypePerConfig(v45, v46, v47);
    v50 = objc_msgSend_CKMap_(v48, v49, &unk_1EFA2F5E8);

    if (objc_msgSend_count(v50, v51, v52))
    {
      v55 = objc_msgSend_componentsJoinedByString_(v50, v53, @"");;
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v56, @"configs", v55);
    }

    v58 = objc_msgSend_authPromptReason(self, v53, v54);
    if (v58)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v8, v57, @"authPromptReason", v58);
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_operationGroupID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"OperationGroupID");

  v11 = objc_msgSend_defaultConfiguration(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"DefaultConfiguration");

  v15 = objc_msgSend_authPromptReason(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"AuthPromptReason");

  v19 = objc_msgSend_name(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"Name");

  v23 = objc_msgSend_quantityNumber(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"Quantity");

  v27 = objc_msgSend_expectedSendSize(self, v25, v26);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v28, v27, @"ExpectedSendSize");
  v31 = objc_msgSend_expectedReceiveSize(self, v29, v30);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v32, v31, @"ExpectedReceiveSize");
  v35 = objc_msgSend_systemImposedInfo(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"SystemImposedInfo");

  objc_autoreleasePoolPop(v4);
}

- (CKOperationGroup)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v34.receiver = self;
  v34.super_class = CKOperationGroup;
  v5 = [(CKOperationGroup *)&v34 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"OperationGroupID");
    operationGroupID = v5->_operationGroupID;
    v5->_operationGroupID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"DefaultConfiguration");
    defaultConfiguration = v5->_defaultConfiguration;
    v5->_defaultConfiguration = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"AuthPromptReason");
    authPromptReason = v5->_authPromptReason;
    v5->_authPromptReason = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"Name");
    name = v5->_name;
    v5->_name = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"Quantity");
    quantityNumber = v5->_quantityNumber;
    v5->_quantityNumber = v25;

    v5->_expectedSendSize = objc_msgSend_decodeInt64ForKey_(v4, v27, @"ExpectedSendSize");
    v5->_expectedReceiveSize = objc_msgSend_decodeInt64ForKey_(v4, v28, @"ExpectedReceiveSize");
    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v30, v29, @"SystemImposedInfo");
    systemImposedInfo_locked = v5->_systemImposedInfo_locked;
    v5->_systemImposedInfo_locked = v31;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_operationGroupID(self, v10, v11);
    v15 = objc_msgSend_copyWithZone_(v13, v14, zone);
    v16 = v12[5];
    v12[5] = v15;

    v19 = objc_msgSend_defaultConfiguration(self, v17, v18);
    v21 = objc_msgSend_copyWithZone_(v19, v20, zone);
    v22 = v12[4];
    v12[4] = v21;

    v25 = objc_msgSend_authPromptReason(self, v23, v24);
    v27 = objc_msgSend_copyWithZone_(v25, v26, zone);
    v28 = v12[8];
    v12[8] = v27;

    v31 = objc_msgSend_name(self, v29, v30);
    v33 = objc_msgSend_copyWithZone_(v31, v32, zone);
    v34 = v12[6];
    v12[6] = v33;

    v37 = objc_msgSend_quantityNumber(self, v35, v36);
    v39 = objc_msgSend_copyWithZone_(v37, v38, zone);
    v40 = v12[7];
    v12[7] = v39;

    v12[2] = objc_msgSend_expectedSendSize(self, v41, v42);
    v12[3] = objc_msgSend_expectedReceiveSize(self, v43, v44);
    v47 = objc_msgSend_systemImposedInfo(self, v45, v46);
    v49 = objc_msgSend_copyWithZone_(v47, v48, zone);
    v50 = v12[1];
    v12[1] = v49;
  }

  return v12;
}

@end