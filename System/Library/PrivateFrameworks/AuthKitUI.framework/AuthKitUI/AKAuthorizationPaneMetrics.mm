@interface AKAuthorizationPaneMetrics
+ (CGSize)cellIconSize;
+ (CGSize)iconSize;
+ (UIEdgeInsets)paneAdditionSafeAreaInsets;
+ (double)blurryTrayHeight;
+ (double)continueButtonBottomSpacing;
+ (double)continueButtonCornerRadius;
+ (double)continueButtonTopSpacing;
+ (double)iconBottomSpacing;
+ (double)infoLabelBottomSpacing;
+ (double)interBulletSpacing;
+ (double)privacyInfoTopSpacing;
+ (double)privacyLinkTopSpacing;
+ (double)titleBottomSpacing;
+ (double)titleToSmallTitleVerticalSpacing;
+ (double)useOtherAppleIDBottomSpacing;
@end

@implementation AKAuthorizationPaneMetrics

+ (CGSize)iconSize
{
  CGSizeMake_5();
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)cellIconSize
{
  CGSizeMake_5();
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)titleBottomSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v3 = 26.0;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v3 = 24.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v6;
}

+ (double)titleToSmallTitleVerticalSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v3 = 0.0;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v3 = 2.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v6;
}

+ (double)interBulletSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v3 = 16.0;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v3 = 20.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v6;
}

+ (double)privacyLinkTopSpacing
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v3 = 22.0;
  if (userInterfaceIdiom != 1)
  {
    v3 = 10.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  return v6;
}

+ (double)privacyInfoTopSpacing
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v3 = 22.0;
  if (userInterfaceIdiom != 1)
  {
    v3 = 10.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  return v6;
}

+ (double)continueButtonTopSpacing
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v3 = 32.0;
  if (userInterfaceIdiom != 1)
  {
    v3 = 16.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  return v6;
}

+ (double)continueButtonBottomSpacing
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v3 = 32.0;
  if (userInterfaceIdiom != 1)
  {
    v3 = 44.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  return v6;
}

+ (double)continueButtonCornerRadius
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    return 10.0;
  }

  [self continueButtonHeight];
  return v3 / 2.0;
}

+ (UIEdgeInsets)paneAdditionSafeAreaInsets
{
  UIEdgeInsetsMake_3();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)iconBottomSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v3 = 10.0;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v3 = 16.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v6;
}

+ (double)blurryTrayHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v11 = 0;
  v9 = 0;
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v11 = 1;
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    v3 = 88.0;
    if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
    {
      v3 = 100.0;
    }

    v7 = v3;
  }

  else
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v9 = 1;
    isAuthKitSolariumFeatureEnabled2 = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled];
    v5 = 102.0;
    if ((isAuthKitSolariumFeatureEnabled2 & 1) == 0)
    {
      v5 = 120.0;
    }

    v7 = v5;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  MEMORY[0x277D82BD8](currentDevice);
  return v7;
}

+ (double)infoLabelBottomSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v3 = 22.0;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v3 = 24.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v6;
}

+ (double)useOtherAppleIDBottomSpacing
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v3 = 0.0;
  if (userInterfaceIdiom != 1)
  {
    v3 = 12.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  return v6;
}

@end