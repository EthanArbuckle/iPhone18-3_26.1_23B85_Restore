@interface AKAuthorizationAppearance
+ (UIButtonConfiguration)clearButtonConfiguration;
+ (UIButtonConfiguration)dismissButtonConfiguration;
+ (UIColor)continueButtonDefaultColor;
+ (UIColor)continueButtonDisabledColor;
+ (UIColor)continueButtonHighlightedColor;
+ (UIColor)editScopeInfoLabelTextColor;
+ (UIColor)editScopeRowBackgroundColor;
+ (UIColor)paneBackgroundColor;
+ (UIColor)scopeRowBackgroundColor;
+ (UIFont)captionFont;
+ (UIFont)continueButtonFont;
+ (UIFont)editScopeInfoLabelFont;
+ (UIFont)messageFont;
+ (UIFont)scopeSelectionTitleFont;
+ (UIFont)scopeSubtitleFont;
+ (UIFont)scopeTitleFont;
+ (UIFont)smallTitleFont;
+ (UIFont)subtitleFont;
+ (UIFont)titleFont;
+ (UIImageSymbolConfiguration)emailSelectionSymbolConfiguration;
+ (int64_t)editingDoneButtonStyle;
+ (int64_t)paneBlurEffectStyle;
+ (int64_t)tableViewStyle;
@end

@implementation AKAuthorizationAppearance

+ (UIFont)titleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{2, v2}];
  }

  else
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
    *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
    if (isLisbonAvailable)
    {
      v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{32770, v3}];
    }

    else
    {
      v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A08] traits:{32770, v3}];
    }
  }

  return v9;
}

+ (UIFont)subtitleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76988] traits:{0, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:15.0 weight:*MEMORY[0x277D74420]];
  }

  return v6;
}

+ (UIFont)smallTitleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{0, v2}];
  }

  else
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
    *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
    if (isLisbonAvailable)
    {
      v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76988] traits:{0, v3}];
    }

    else
    {
      v9 = [MEMORY[0x277D74300] ak_preferredFontForSize:15.0 weight:*MEMORY[0x277D74410]];
    }
  }

  return v9;
}

+ (UIFont)captionFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76940] traits:{0, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:11.0 weight:*MEMORY[0x277D74420]];
  }

  return v6;
}

+ (UIFont)messageFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D769D0] traits:{0, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:15.0 weight:*MEMORY[0x277D74418]];
  }

  return v6;
}

+ (UIFont)scopeTitleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:{0x8000, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:15.0 weight:*MEMORY[0x277D74418]];
  }

  return v6;
}

+ (UIColor)scopeRowBackgroundColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] clearColor];
  }

  return secondarySystemGroupedBackgroundColor;
}

+ (UIColor)paneBackgroundColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v6 = 0;
  v5 = 0;
  if ([mEMORY[0x277CF0228] isLisbonAvailable])
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v6 = 1;
    v5 = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (v5)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] clearColor];
  }

  return systemGroupedBackgroundColor;
}

+ (int64_t)paneBlurEffectStyle
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isLisbonAvailable)
  {
    return 9;
  }

  else
  {
    return 4;
  }
}

+ (int64_t)tableViewStyle
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isLisbonAvailable)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)editingDoneButtonStyle
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isLisbonAvailable)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (UIFont)scopeSelectionTitleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D769D0] traits:{0, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:15.0 weight:*MEMORY[0x277D74418]];
  }

  return v6;
}

+ (UIFont)scopeSubtitleFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76968] traits:{0x8000, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_preferredFontForSize:13.0 weight:*MEMORY[0x277D74418]];
  }

  return v6;
}

+ (UIColor)editScopeRowBackgroundColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] clearColor];
  }

  return secondarySystemGroupedBackgroundColor;
}

+ (UIColor)editScopeInfoLabelTextColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  return labelColor;
}

+ (UIFont)editScopeInfoLabelFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:{2, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76968] traits:{0, v2}];
  }

  return v6;
}

+ (UIColor)continueButtonDefaultColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.48 blue:1.0 alpha:?];
  }

  return systemBlueColor;
}

+ (UIColor)continueButtonDisabledColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
  }

  else
  {
    systemGray3Color = [MEMORY[0x277D75348] colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  }

  return systemGray3Color;
}

+ (UIColor)continueButtonHighlightedColor
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v7 = [systemBlueColor colorWithAlphaComponent:0.25];
    MEMORY[0x277D82BD8](systemBlueColor);
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.48 blue:1.0 alpha:0.25];
  }

  return v7;
}

+ (UIFont)continueButtonFont
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    v6 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76920] traits:{2, v2}];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] maximumContentSizeCategory:{*MEMORY[0x277D767F8], v2}];
  }

  return v6;
}

+ (UIImageSymbolConfiguration)emailSelectionSymbolConfiguration
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isLisbonAvailable)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (UIButtonConfiguration)dismissButtonConfiguration
{
  v13[2] = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x277D75230] tintedButtonConfiguration];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v13[0] setImage:?];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v13[0] setCornerStyle:{4, v2}];
  v9 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:2 scale:15.0];
  [v13[0] setPreferredSymbolConfigurationForImage:?];
  MEMORY[0x277D82BD8](v9);
  NSDirectionalEdgeInsetsMake_1();
  [v13[0] setContentInsets:{v3, v4, v5, v6}];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v13[0] setBaseForegroundColor:?];
  systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
  [v13[0] setBaseBackgroundColor:?];
  MEMORY[0x277D82BD8](systemGray2Color);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

+ (UIButtonConfiguration)clearButtonConfiguration
{
  v13[2] = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x277D75230] tintedButtonConfiguration];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v13[0] setImage:?];
  [v13[0] setCornerStyle:{4, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:-1 scale:10.0];
  [v13[0] setPreferredSymbolConfigurationForImage:?];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228] isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isLisbonAvailable)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v13[0] setBaseForegroundColor:?];
    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    [v13[0] setBaseBackgroundColor:?];
    MEMORY[0x277D82BD8](systemGray2Color);
  }

  else
  {
    systemGray5Color = [MEMORY[0x277D75348] systemGray5Color];
    [v13[0] setBaseForegroundColor:?];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v13[0] setBaseBackgroundColor:?];
    MEMORY[0x277D82BD8](secondaryLabelColor);
  }

  v4 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v4;
}

@end