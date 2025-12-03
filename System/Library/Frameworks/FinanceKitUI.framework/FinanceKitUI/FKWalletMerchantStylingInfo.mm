@interface FKWalletMerchantStylingInfo
+ (id)walletMerchantStylingInfoFrom:(id)from;
@end

@implementation FKWalletMerchantStylingInfo

+ (id)walletMerchantStylingInfoFrom:(id)from
{
  v3 = MEMORY[0x277CD4F80];
  fromCopy = from;
  v5 = [[v3 alloc] initWithStyleAttributes:fromCopy];

  return v5;
}

@end