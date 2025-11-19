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
  v7 = [MEMORY[0x277CF0228] sharedManager];
  v8 = [v7 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{2, v2}];
  }

  else
  {
    v5 = [MEMORY[0x277CF0228] sharedManager];
    v6 = [v5 isLisbonAvailable];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v6)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v7 = [MEMORY[0x277CF0228] sharedManager];
  v8 = [v7 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v9 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{0, v2}];
  }

  else
  {
    v5 = [MEMORY[0x277CF0228] sharedManager];
    v6 = [v5 isLisbonAvailable];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v6)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
  }

  return v6;
}

+ (UIColor)paneBackgroundColor
{
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v6 = 0;
  v5 = 0;
  if ([v4 isLisbonAvailable])
  {
    v7 = [MEMORY[0x277CF0228] sharedManager];
    v6 = 1;
    v5 = [v7 isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v8 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] clearColor];
  }

  return v8;
}

+ (int64_t)paneBlurEffectStyle
{
  v3 = [MEMORY[0x277CF0228] sharedManager];
  v4 = [v3 isLisbonAvailable];
  MEMORY[0x277D82BD8](v3);
  if (v4)
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
  v3 = [MEMORY[0x277CF0228] sharedManager];
  v4 = [v3 isLisbonAvailable];
  MEMORY[0x277D82BD8](v3);
  if (v4)
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
  v3 = [MEMORY[0x277CF0228] sharedManager];
  v4 = [v3 isLisbonAvailable];
  MEMORY[0x277D82BD8](v3);
  if (v4)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
  }

  return v6;
}

+ (UIColor)editScopeInfoLabelTextColor
{
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  return v6;
}

+ (UIFont)editScopeInfoLabelFont
{
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.48 blue:1.0 alpha:?];
  }

  return v6;
}

+ (UIColor)continueButtonDisabledColor
{
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] systemGray3Color];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  }

  return v6;
}

+ (UIColor)continueButtonHighlightedColor
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v6 = [v5 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [MEMORY[0x277D75348] systemBlueColor];
    v7 = [v4 colorWithAlphaComponent:0.25];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.48 blue:1.0 alpha:0.25];
  }

  return v7;
}

+ (UIFont)continueButtonFont
{
  v4 = [MEMORY[0x277CF0228] sharedManager];
  v5 = [v4 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
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
  v3 = [MEMORY[0x277CF0228] sharedManager];
  v4 = [v3 isLisbonAvailable];
  MEMORY[0x277D82BD8](v3);
  if (v4)
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
  v13[2] = a1;
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
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  [v13[0] setBaseForegroundColor:?];
  v11 = [MEMORY[0x277D75348] systemGray2Color];
  [v13[0] setBaseBackgroundColor:?];
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

+ (UIButtonConfiguration)clearButtonConfiguration
{
  v13[2] = a1;
  v13[1] = a2;
  v13[0] = [MEMORY[0x277D75230] tintedButtonConfiguration];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v13[0] setImage:?];
  [v13[0] setCornerStyle:{4, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:-1 scale:10.0];
  [v13[0] setPreferredSymbolConfigurationForImage:?];
  v11 = [MEMORY[0x277CF0228] sharedManager];
  v12 = [v11 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [v13[0] setBaseForegroundColor:?];
    v8 = [MEMORY[0x277D75348] systemGray2Color];
    [v13[0] setBaseBackgroundColor:?];
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemGray5Color];
    [v13[0] setBaseForegroundColor:?];
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v13[0] setBaseBackgroundColor:?];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v4;
}

@end