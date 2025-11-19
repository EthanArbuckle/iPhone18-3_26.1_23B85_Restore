@interface CKAccountInfoBuilder
- (CKAccountInfoBuilder)init;
- (id)build;
- (void)setAccountStatus:(int64_t)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation CKAccountInfoBuilder

- (CKAccountInfoBuilder)init
{
  v9.receiver = self;
  v9.super_class = CKAccountInfoBuilder;
  v2 = [(CKAccountInfoBuilder *)&v9 init];
  v3 = v2;
  if (v2)
  {
    if ((byte_1EA90C538 & 1) == 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_188442DC0;
      v7[3] = &unk_1E70BC3F8;
      v8 = v2;
      objc_msgSend_performAtomicDefaultsOperation_(CKUserDefaults, v4, v7);
    }

    *&v3->_accountStatus = xmmword_1886F8030;
    *&v3->_hasValidCredentials = 0;
    v3->_needsToVerifyTerms = 0;
    v3->_deviceToDeviceEncryptionAvailability = 0;
    v3->_walrusStatus = 0;
    identifier = v3->_identifier;
    v3->_accountAccessAuthorization = 0;
    v3->_identifier = 0;
  }

  return v3;
}

- (id)build
{
  v34 = [CKAccountInfo alloc];
  if (self)
  {
    validationCounter = self->_validationCounter;
  }

  else
  {
    validationCounter = 0;
  }

  v6 = objc_msgSend_accountStatus(self, v3, v4);
  v9 = objc_msgSend_accountPartition(self, v7, v8);
  hasValidCredentials = objc_msgSend_hasValidCredentials(self, v10, v11);
  v15 = objc_msgSend_bypassPCSEncryption(self, v13, v14);
  v18 = objc_msgSend_deviceToDeviceEncryptionAvailability(self, v16, v17);
  v21 = objc_msgSend_walrusStatus(self, v19, v20);
  v24 = objc_msgSend_needsToVerifyTerms(self, v22, v23);
  v27 = objc_msgSend_accountAccessAuthorization(self, v25, v26);
  v30 = objc_msgSend_identifier(self, v28, v29);
  hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier = objc_msgSend_initWithValidationCounter_accountStatus_accountPartition_hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier_(v34, v31, validationCounter, v6, v9, hasValidCredentials, v15, v18, v21, v24, v27, v30);

  return hasValidCredentials_bypassPCSEncryption_deviceToDeviceEncryptionAvailability_walrusStatus_needsToVerifyTerms_accountAccessAuthorization_identifier;
}

- (void)setAccountStatus:(int64_t)a3
{
  self->_accountStatus = a3;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    identifier = self->_identifier;
    self->_identifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIdentifier:(id)a3
{
  v12 = a3;
  if (objc_msgSend_accountStatus(self, v4, v5) == 3 || objc_msgSend_accountStatus(self, v6, v7) == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_copy(v12, v8, v9);
  }

  identifier = self->_identifier;
  self->_identifier = v10;
}

@end