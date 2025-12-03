@interface _ASAccountManagerTipContent
+ (id)_contentForFamilyTip;
+ (id)_contentForGeneralTip;
+ (id)_contentForiCloudKeychainTip;
+ (id)_iCloudKeychainTipImage;
+ (id)_imageForSharingTips;
+ (id)contentForTipType:(int64_t)type;
- (id)_initWithImageName:(id)name image:(id)image hasBorderedImage:(BOOL)borderedImage title:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle declineButtonTitle:(id)declineButtonTitle;
@end

@implementation _ASAccountManagerTipContent

+ (id)contentForTipType:(int64_t)type
{
  switch(type)
  {
    case 3:
      _contentForGeneralTip = [self _contentForGeneralTip];
      break;
    case 2:
      _contentForGeneralTip = [self _contentForFamilyTip];
      break;
    case 1:
      _contentForGeneralTip = [self _contentForiCloudKeychainTip];
      break;
    default:
      _contentForGeneralTip = 0;
      break;
  }

  return _contentForGeneralTip;
}

- (id)_initWithImageName:(id)name image:(id)image hasBorderedImage:(BOOL)borderedImage title:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle declineButtonTitle:(id)declineButtonTitle
{
  nameCopy = name;
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  declineButtonTitleCopy = declineButtonTitle;
  v26.receiver = self;
  v26.super_class = _ASAccountManagerTipContent;
  v18 = [(_ASAccountManagerTipContent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageName, name);
    objc_storeStrong(&v19->_image, image);
    v19->_hasBorderedImage = borderedImage;
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_subtitle, subtitle);
    objc_storeStrong(&v19->_buttonTitle, buttonTitle);
    objc_storeStrong(&v19->_declineButtonTitle, declineButtonTitle);
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
  block[4] = self;
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
  _iCloudKeychainTipImageName = [self _iCloudKeychainTipImageName];
  v4 = [v2 systemImageNamed:_iCloudKeychainTipImageName];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v6 = [v4 imageWithTintColor:labelColor renderingMode:2];

  return v6;
}

+ (id)_contentForFamilyTip
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___ASAccountManagerTipContent__contentForFamilyTip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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
  _imageNameForSharingTips = [self _imageNameForSharingTips];
  v4 = [v2 systemImageNamed:_imageNameForSharingTips];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v6 = [v4 imageWithTintColor:labelColor renderingMode:2];

  return v6;
}

@end