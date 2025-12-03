@interface GEOPDMerchantInformation(MKWalletMerchantLookupBankMerchantInfo)
- (id)initWithMKMerchantInfo:()MKWalletMerchantLookupBankMerchantInfo;
@end

@implementation GEOPDMerchantInformation(MKWalletMerchantLookupBankMerchantInfo)

- (id)initWithMKMerchantInfo:()MKWalletMerchantLookupBankMerchantInfo
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = &off_1F16CA038;
  v5 = objc_msgSendSuper2(&v23, sel_init);
  if (v5)
  {
    bankMerchantId = [v4 bankMerchantId];
    [v5 setMerchantId:bankMerchantId];

    bankMerchantDoingBizAsName = [v4 bankMerchantDoingBizAsName];
    [v5 setMerchantDoingBusinessAsName:bankMerchantDoingBizAsName];

    bankMerchantEnhancedName = [v4 bankMerchantEnhancedName];
    [v5 setMerchantEnhancedName:bankMerchantEnhancedName];

    bankMerchantCity = [v4 bankMerchantCity];
    [v5 setMerchantCity:bankMerchantCity];

    bankMerchantRawCity = [v4 bankMerchantRawCity];
    [v5 setMerchantRawCity:bankMerchantRawCity];

    bankMerchantState = [v4 bankMerchantState];
    [v5 setMerchantState:bankMerchantState];

    bankMerchantRawState = [v4 bankMerchantRawState];
    [v5 setMerchantRawState:bankMerchantRawState];

    bankMerchantZip = [v4 bankMerchantZip];
    [v5 setMerchantZip:bankMerchantZip];

    bankMerchantAddress = [v4 bankMerchantAddress];
    [v5 setMerchantAddress:bankMerchantAddress];

    bankMerchantRawAddress = [v4 bankMerchantRawAddress];
    [v5 setMerchantRawAddress:bankMerchantRawAddress];

    bankMerchantCountryCode = [v4 bankMerchantCountryCode];
    [v5 setMerchantCountryCode:bankMerchantCountryCode];

    bankMerchantType = [v4 bankMerchantType];
    [v5 setMerchantType:bankMerchantType];

    bankMerchantCleanConfidenceLevel = [v4 bankMerchantCleanConfidenceLevel];

    if (bankMerchantCleanConfidenceLevel)
    {
      bankMerchantCleanConfidenceLevel2 = [v4 bankMerchantCleanConfidenceLevel];
      [v5 setMerchantCleanConfidenceLevel:{objc_msgSend(bankMerchantCleanConfidenceLevel2, "intValue")}];
    }

    bankMerchantAdditionalData = [v4 bankMerchantAdditionalData];
    [v5 setMerchantAdditionalData:bankMerchantAdditionalData];

    bankMerchantCanl = [v4 bankMerchantCanl];
    [v5 setMerchantCanl:bankMerchantCanl];
  }

  return v5;
}

@end