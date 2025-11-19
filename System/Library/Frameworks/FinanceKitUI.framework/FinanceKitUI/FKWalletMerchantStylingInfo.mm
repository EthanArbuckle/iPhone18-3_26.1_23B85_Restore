@interface FKWalletMerchantStylingInfo
+ (id)walletMerchantStylingInfoFrom:(id)a3;
@end

@implementation FKWalletMerchantStylingInfo

+ (id)walletMerchantStylingInfoFrom:(id)a3
{
  v3 = MEMORY[0x277CD4F80];
  v4 = a3;
  v5 = [[v3 alloc] initWithStyleAttributes:v4];

  return v5;
}

@end