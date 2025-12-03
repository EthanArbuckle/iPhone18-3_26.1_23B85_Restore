@interface UIImage(INUICrossPlatform)
+ (id)_inui_imageWithLightModeImage:()INUICrossPlatform darkModeImage:;
@end

@implementation UIImage(INUICrossPlatform)

+ (id)_inui_imageWithLightModeImage:()INUICrossPlatform darkModeImage:
{
  v5 = a3;
  v6 = a4;
  imageAsset = [v5 imageAsset];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  [imageAsset registerImage:v6 withTraitCollection:v8];

  return v5;
}

@end