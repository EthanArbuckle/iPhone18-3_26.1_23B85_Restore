@interface GEOPDMerchantInformation(MKWalletMerchantLookupBankMerchantInfo)
- (id)initWithMKMerchantInfo:()MKWalletMerchantLookupBankMerchantInfo;
@end

@implementation GEOPDMerchantInformation(MKWalletMerchantLookupBankMerchantInfo)

- (id)initWithMKMerchantInfo:()MKWalletMerchantLookupBankMerchantInfo
{
  v4 = a3;
  v23.receiver = a1;
  v23.super_class = &off_1F16CA038;
  v5 = objc_msgSendSuper2(&v23, sel_init);
  if (v5)
  {
    v6 = [v4 bankMerchantId];
    [v5 setMerchantId:v6];

    v7 = [v4 bankMerchantDoingBizAsName];
    [v5 setMerchantDoingBusinessAsName:v7];

    v8 = [v4 bankMerchantEnhancedName];
    [v5 setMerchantEnhancedName:v8];

    v9 = [v4 bankMerchantCity];
    [v5 setMerchantCity:v9];

    v10 = [v4 bankMerchantRawCity];
    [v5 setMerchantRawCity:v10];

    v11 = [v4 bankMerchantState];
    [v5 setMerchantState:v11];

    v12 = [v4 bankMerchantRawState];
    [v5 setMerchantRawState:v12];

    v13 = [v4 bankMerchantZip];
    [v5 setMerchantZip:v13];

    v14 = [v4 bankMerchantAddress];
    [v5 setMerchantAddress:v14];

    v15 = [v4 bankMerchantRawAddress];
    [v5 setMerchantRawAddress:v15];

    v16 = [v4 bankMerchantCountryCode];
    [v5 setMerchantCountryCode:v16];

    v17 = [v4 bankMerchantType];
    [v5 setMerchantType:v17];

    v18 = [v4 bankMerchantCleanConfidenceLevel];

    if (v18)
    {
      v19 = [v4 bankMerchantCleanConfidenceLevel];
      [v5 setMerchantCleanConfidenceLevel:{objc_msgSend(v19, "intValue")}];
    }

    v20 = [v4 bankMerchantAdditionalData];
    [v5 setMerchantAdditionalData:v20];

    v21 = [v4 bankMerchantCanl];
    [v5 setMerchantCanl:v21];
  }

  return v5;
}

@end