@interface UINavigationController
@end

@implementation UINavigationController

void __86__UINavigationController_MFMailComposeRemoteService__mf_keyPathsMapForUICustomization__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"navigationBar.tintColor";
  v8[0] = objc_opt_class();
  v7[1] = @"navigationBar.barStyle";
  v8[1] = objc_opt_class();
  v7[2] = @"navigationBar.titleTextAttributes";
  v5[0] = *MEMORY[0x1E69DB648];
  v0 = +[(_MFValueTransformer *)_MFFontToFontDescriptorTransformer];
  v6[0] = v0;
  v5[1] = *MEMORY[0x1E69DB650];
  v6[1] = objc_opt_class();
  v5[2] = *MEMORY[0x1E69DB6A8];
  v1 = +[(_MFValueTransformer *)_MFNSShadowTransformer];
  v6[2] = v1;
  v5[3] = *MEMORY[0x1E69DE3E8];
  v6[3] = objc_opt_class();
  v5[4] = *MEMORY[0x1E69DE3F0];
  v6[4] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = mf_keyPathsMapForUICustomization_keyPathsMap;
  mf_keyPathsMapForUICustomization_keyPathsMap = v3;
}

void __84__UINavigationController_MFUtilities__mf_viewControllerOfClass_startFromTopOfStack___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end