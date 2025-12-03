@interface MKWalletMerchantLookupBankMerchantInfo
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MKWalletMerchantLookupBankMerchantInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_bankMerchantId copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_bankMerchantDoingBizAsName copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_bankMerchantEnhancedName copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_bankMerchantCity copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSString *)self->_bankMerchantRawCity copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSString *)self->_bankMerchantState copy];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [(NSString *)self->_bankMerchantRawState copy];
  v18 = v4[7];
  v4[7] = v17;

  v19 = [(NSString *)self->_bankMerchantZip copy];
  v20 = v4[8];
  v4[8] = v19;

  v21 = [(NSString *)self->_bankMerchantAddress copy];
  v22 = v4[9];
  v4[9] = v21;

  v23 = [(NSString *)self->_bankMerchantRawAddress copy];
  v24 = v4[10];
  v4[10] = v23;

  v25 = [(NSString *)self->_bankMerchantCountryCode copy];
  v26 = v4[11];
  v4[11] = v25;

  v27 = [(NSString *)self->_bankMerchantType copy];
  v28 = v4[12];
  v4[12] = v27;

  v29 = [(NSNumber *)self->_bankMerchantCleanConfidenceLevel copy];
  v30 = v4[13];
  v4[13] = v29;

  v31 = [(NSString *)self->_bankMerchantAdditionalData copy];
  v32 = v4[14];
  v4[14] = v31;

  v33 = [(NSString *)self->_bankMerchantCanl copy];
  v34 = v4[15];
  v4[15] = v33;

  return v4;
}

@end