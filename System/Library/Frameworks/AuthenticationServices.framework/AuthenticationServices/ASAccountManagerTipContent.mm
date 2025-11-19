@interface ASAccountManagerTipContent
@end

@implementation ASAccountManagerTipContent

void __59___ASAccountManagerTipContent__contentForiCloudKeychainTip__block_invoke(uint64_t a1)
{
  v2 = [_ASAccountManagerTipContent alloc];
  v11 = [*(a1 + 32) _iCloudKeychainTipImageName];
  v3 = [*(a1 + 32) _iCloudKeychainTipImage];
  v4 = [*(a1 + 32) _iCloudKeychainTipHasBorderedImage];
  v5 = [*(a1 + 32) _iCloudKeychainTipTitle];
  v6 = [*(a1 + 32) _iCloudKeychainTipSubtitle];
  v7 = [*(a1 + 32) _iCloudKeychainTipButtonTitle];
  v8 = [*(a1 + 32) _iCloudKeychainTipDeclineButtonTitle];
  v9 = [(_ASAccountManagerTipContent *)v2 _initWithImageName:v11 image:v3 hasBorderedImage:v4 title:v5 subtitle:v6 buttonTitle:v7 declineButtonTitle:v8];
  v10 = _contentForiCloudKeychainTip_iCloudKeychainTipContent;
  _contentForiCloudKeychainTip_iCloudKeychainTipContent = v9;
}

void __51___ASAccountManagerTipContent__contentForFamilyTip__block_invoke(uint64_t a1)
{
  v2 = [_ASAccountManagerTipContent alloc];
  v11 = [*(a1 + 32) _imageNameForSharingTips];
  v3 = [*(a1 + 32) _imageForSharingTips];
  v4 = [*(a1 + 32) _familySharingTipHasBorderedImage];
  v5 = [*(a1 + 32) _familySharingTipTitle];
  v6 = [*(a1 + 32) _familySharingTipSubtitle];
  v7 = [*(a1 + 32) _familySharingTipButtonTitle];
  v8 = [*(a1 + 32) _familySharingTipDeclineButtonTitle];
  v9 = [(_ASAccountManagerTipContent *)v2 _initWithImageName:v11 image:v3 hasBorderedImage:v4 title:v5 subtitle:v6 buttonTitle:v7 declineButtonTitle:v8];
  v10 = _contentForFamilyTip_familyTipContent;
  _contentForFamilyTip_familyTipContent = v9;
}

void __52___ASAccountManagerTipContent__contentForGeneralTip__block_invoke(uint64_t a1)
{
  v2 = [_ASAccountManagerTipContent alloc];
  v11 = [*(a1 + 32) _imageNameForSharingTips];
  v3 = [*(a1 + 32) _imageForSharingTips];
  v4 = [*(a1 + 32) _generalSharingTipHasBorderedImage];
  v5 = [*(a1 + 32) _generalSharingTipTitle];
  v6 = [*(a1 + 32) _generalSharingTipSubtitle];
  v7 = [*(a1 + 32) _generalSharingTipButtonTitle];
  v8 = [*(a1 + 32) _generalSharingTipDeclineButtonTitle];
  v9 = [(_ASAccountManagerTipContent *)v2 _initWithImageName:v11 image:v3 hasBorderedImage:v4 title:v5 subtitle:v6 buttonTitle:v7 declineButtonTitle:v8];
  v10 = _contentForGeneralTip_generalTipContent;
  _contentForGeneralTip_generalTipContent = v9;
}

@end