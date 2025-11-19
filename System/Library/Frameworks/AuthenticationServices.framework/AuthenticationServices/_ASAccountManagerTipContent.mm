@interface _ASAccountManagerTipContent
+ (id)_contentForFamilyTip;
+ (id)_contentForGeneralTip;
+ (id)_contentForiCloudKeychainTip;
+ (id)_iCloudKeychainTipImage;
+ (id)_imageForSharingTips;
+ (id)contentForTipType:(int64_t)a3;
- (id)_initWithImageName:(id)a3 image:(id)a4 hasBorderedImage:(BOOL)a5 title:(id)a6 subtitle:(id)a7 buttonTitle:(id)a8 declineButtonTitle:(id)a9;
@end

@implementation _ASAccountManagerTipContent

+ (id)contentForTipType:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [a1 _contentForGeneralTip];
      break;
    case 2:
      v3 = [a1 _contentForFamilyTip];
      break;
    case 1:
      v3 = [a1 _contentForiCloudKeychainTip];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)_initWithImageName:(id)a3 image:(id)a4 hasBorderedImage:(BOOL)a5 title:(id)a6 subtitle:(id)a7 buttonTitle:(id)a8 declineButtonTitle:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = _ASAccountManagerTipContent;
  v18 = [(_ASAccountManagerTipContent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageName, a3);
    objc_storeStrong(&v19->_image, a4);
    v19->_hasBorderedImage = a5;
    objc_storeStrong(&v19->_title, a6);
    objc_storeStrong(&v19->_subtitle, a7);
    objc_storeStrong(&v19->_buttonTitle, a8);
    objc_storeStrong(&v19->_declineButtonTitle, a9);
    v20 = v19;
  }

  return v19;
}

+ (id)_contentForiCloudKeychainTip
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___ASAccountManagerTipContent__contentForiCloudKeychainTip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_contentForiCloudKeychainTip_onceToken != -1)
  {
    dispatch_once(&_contentForiCloudKeychainTip_onceToken, block);
  }

  v2 = _contentForiCloudKeychainTip_iCloudKeychainTipContent;

  return v2;
}

+ (id)_iCloudKeychainTipImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 _iCloudKeychainTipImageName];
  v4 = [v2 systemImageNamed:v3];
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:2];

  return v6;
}

+ (id)_contentForFamilyTip
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___ASAccountManagerTipContent__contentForFamilyTip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_contentForFamilyTip_onceToken != -1)
  {
    dispatch_once(&_contentForFamilyTip_onceToken, block);
  }

  v2 = _contentForFamilyTip_familyTipContent;

  return v2;
}

+ (id)_contentForGeneralTip
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___ASAccountManagerTipContent__contentForGeneralTip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_contentForGeneralTip_onceToken != -1)
  {
    dispatch_once(&_contentForGeneralTip_onceToken, block);
  }

  v2 = _contentForGeneralTip_generalTipContent;

  return v2;
}

+ (id)_imageForSharingTips
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 _imageNameForSharingTips];
  v4 = [v2 systemImageNamed:v3];
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:2];

  return v6;
}

@end