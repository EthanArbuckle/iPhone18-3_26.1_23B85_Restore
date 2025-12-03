@interface ASViewServiceInterfaceUtilities
+ (CGSize)cellIconSize;
+ (CGSize)headerBadgeIconSize;
+ (CGSize)headerIconSize;
+ (CGSize)headerSmallBadgeIconSize;
+ (UIColor)continueButtonBackgroundColor;
+ (UIColor)continueButtonHighlightedBackgroundColor;
+ (double)_iconCornerRadiusForSize:(CGSize)size;
+ (double)cellIconCornerRadius;
+ (double)headerBadgeIconCornerRadius;
+ (double)headerIconCornerRadius;
+ (double)headerSmallBadgeIconCornerRadius;
+ (double)iconBorderWidth;
@end

@implementation ASViewServiceInterfaceUtilities

+ (double)iconBorderWidth
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  result = 1.0;
  if (v4 > 0.0)
  {
    return 1.0 / v4;
  }

  return result;
}

+ (CGSize)headerIconSize
{
  v2 = 54.0;
  v3 = 54.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)headerIconCornerRadius
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ASViewServiceInterfaceUtilities_headerIconCornerRadius__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (headerIconCornerRadius_onceToken != -1)
  {
    dispatch_once(&headerIconCornerRadius_onceToken, block);
  }

  return *&headerIconCornerRadius_cornerRadius;
}

uint64_t __57__ASViewServiceInterfaceUtilities_headerIconCornerRadius__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _iconCornerRadiusForSize:{54.0, 54.0}];
  headerIconCornerRadius_cornerRadius = v2;
  return result;
}

+ (CGSize)headerBadgeIconSize
{
  v2 = 34.0;
  v3 = 34.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)headerBadgeIconCornerRadius
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ASViewServiceInterfaceUtilities_headerBadgeIconCornerRadius__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (headerBadgeIconCornerRadius_onceToken != -1)
  {
    dispatch_once(&headerBadgeIconCornerRadius_onceToken, block);
  }

  return *&headerBadgeIconCornerRadius_cornerRadius;
}

uint64_t __62__ASViewServiceInterfaceUtilities_headerBadgeIconCornerRadius__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _iconCornerRadiusForSize:{34.0, 34.0}];
  headerBadgeIconCornerRadius_cornerRadius = v2;
  return result;
}

+ (CGSize)headerSmallBadgeIconSize
{
  v2 = 30.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)headerSmallBadgeIconCornerRadius
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ASViewServiceInterfaceUtilities_headerSmallBadgeIconCornerRadius__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (headerSmallBadgeIconCornerRadius_onceToken != -1)
  {
    dispatch_once(&headerSmallBadgeIconCornerRadius_onceToken, block);
  }

  return *&headerSmallBadgeIconCornerRadius_cornerRadius;
}

uint64_t __67__ASViewServiceInterfaceUtilities_headerSmallBadgeIconCornerRadius__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _iconCornerRadiusForSize:{34.0, 34.0}];
  headerSmallBadgeIconCornerRadius_cornerRadius = v2;
  return result;
}

+ (CGSize)cellIconSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)cellIconCornerRadius
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ASViewServiceInterfaceUtilities_cellIconCornerRadius__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cellIconCornerRadius_onceToken != -1)
  {
    dispatch_once(&cellIconCornerRadius_onceToken, block);
  }

  return *&cellIconCornerRadius_cornerRadius;
}

uint64_t __55__ASViewServiceInterfaceUtilities_cellIconCornerRadius__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _iconCornerRadiusForSize:{36.0, 36.0}];
  cellIconCornerRadius_cornerRadius = v2;
  return result;
}

+ (UIColor)continueButtonBackgroundColor
{
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v4 = [systemBlueColor resolvedColorWithTraitCollection:v3];

  return v4;
}

+ (UIColor)continueButtonHighlightedBackgroundColor
{
  continueButtonBackgroundColor = [self continueButtonBackgroundColor];
  v3 = [continueButtonBackgroundColor colorWithAlphaComponent:0.25];

  return v3;
}

+ (double)_iconCornerRadiusForSize:(CGSize)size
{
  v3 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:size.width scale:{size.height, 1.0}];
  [v3 setShape:1];
  [v3 continuousCornerRadius];
  v5 = v4;

  return v5;
}

@end