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
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v5 isAuthKitSolariumFeatureEnabled];
  v3 = 26.0;
  if ((v2 & 1) == 0)
  {
    v3 = 24.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)titleToSmallTitleVerticalSpacing
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v5 isAuthKitSolariumFeatureEnabled];
  v3 = 0.0;
  if ((v2 & 1) == 0)
  {
    v3 = 2.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)interBulletSpacing
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v5 isAuthKitSolariumFeatureEnabled];
  v3 = 16.0;
  if ((v2 & 1) == 0)
  {
    v3 = 20.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)privacyLinkTopSpacing
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v5 userInterfaceIdiom];
  v3 = 22.0;
  if (v2 != 1)
  {
    v3 = 10.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)privacyInfoTopSpacing
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v5 userInterfaceIdiom];
  v3 = 22.0;
  if (v2 != 1)
  {
    v3 = 10.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)continueButtonTopSpacing
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v5 userInterfaceIdiom];
  v3 = 32.0;
  if (v2 != 1)
  {
    v3 = 16.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)continueButtonBottomSpacing
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v5 userInterfaceIdiom];
  v3 = 32.0;
  if (v2 != 1)
  {
    v3 = 44.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)continueButtonCornerRadius
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v6 = [v5 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if ((v6 & 1) == 0)
  {
    return 10.0;
  }

  [a1 continueButtonHeight];
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
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v5 isAuthKitSolariumFeatureEnabled];
  v3 = 10.0;
  if ((v2 & 1) == 0)
  {
    v3 = 16.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)blurryTrayHeight
{
  v8 = [MEMORY[0x277D75418] currentDevice];
  v11 = 0;
  v9 = 0;
  if ([v8 userInterfaceIdiom] == 1)
  {
    v12 = [MEMORY[0x277CF0228] sharedManager];
    v11 = 1;
    v2 = [v12 isAuthKitSolariumFeatureEnabled];
    v3 = 88.0;
    if ((v2 & 1) == 0)
    {
      v3 = 100.0;
    }

    v7 = v3;
  }

  else
  {
    v10 = [MEMORY[0x277CF0228] sharedManager];
    v9 = 1;
    v4 = [v10 isAuthKitSolariumFeatureEnabled];
    v5 = 102.0;
    if ((v4 & 1) == 0)
    {
      v5 = 120.0;
    }

    v7 = v5;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](v8);
  return v7;
}

+ (double)infoLabelBottomSpacing
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v5 isAuthKitSolariumFeatureEnabled];
  v3 = 22.0;
  if ((v2 & 1) == 0)
  {
    v3 = 24.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

+ (double)useOtherAppleIDBottomSpacing
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v5 userInterfaceIdiom];
  v3 = 0.0;
  if (v2 != 1)
  {
    v3 = 12.0;
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

@end