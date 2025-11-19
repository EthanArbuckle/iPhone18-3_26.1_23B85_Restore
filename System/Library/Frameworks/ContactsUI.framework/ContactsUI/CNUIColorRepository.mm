@interface CNUIColorRepository
+ (UIColor)carPlayQuickActionButtonBackgroundFillColorEnabled;
+ (UIColor)carPlaySiriButtonBackgroundColor;
+ (UIColor)carPlayTableViewBackgroundColor;
+ (UIColor)carPlayTableViewCellBackgroundColor;
+ (UIColor)contactCardBackgroundiPadOverwriteColor;
+ (UIColor)contactCardEditModeBackgroundColor;
+ (UIColor)contactCardLabeledBadgeBackgroundDynamicColor;
+ (UIColor)contactCardRecentBadgeTextColor;
+ (UIColor)contactCardRecentBadgeTextDynamicColor;
+ (UIColor)contactCardStaticHeaderDefaultTaglineDarkTextColor;
+ (UIColor)contactCardStaticHeaderDefaultTaglineTextColor;
+ (UIColor)contactCardStaticHeaderGeminiTextColor;
+ (UIColor)contactListContactCountTextColor;
+ (UIColor)contactStyleDefaultContactHeaderBackgroundColor;
+ (UIColor)contactStyleDefaultContactHeaderDropShadowColor;
+ (UIColor)contactStyleDefaultHeaderBackgroundColor;
+ (UIColor)contactStyleDefaultSelectedCellBackgroundColor;
+ (UIColor)contactStyleWithInsetPlattersDefaultContactHeaderBackgroundColor;
+ (UIColor)contactStyleWithInsetPlattersDefaultContactHeaderDropShadowColor;
+ (UIColor)groupsInsetBackgroundColor;
+ (UIColor)groupsOutlineBackgroundColor;
+ (UIColor)monogrammerBackgroundDarkColor;
+ (UIColor)monogrammerBackgroundLightColor;
+ (UIColor)navigationListCellSubtitleTextColorRegular;
+ (UIColor)navigationListCellTitleTextColorRegular;
+ (UIColor)photoPickerCaptureBackgroundColor;
+ (UIColor)photoPickerSymbolImageBackgroundColor;
+ (UIColor)popoverBackgroundColor;
+ (UIColor)quickActionBackgroundColorRegular;
+ (UIColor)quickActionViewPosterBackgroundColor;
+ (UIColor)quickActionViewRoundedRectBackgroundColor;
+ (UIColor)quickActionViewRoundedRectBorderColor;
@end

@implementation CNUIColorRepository

+ (UIColor)contactStyleWithInsetPlattersDefaultContactHeaderBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactStyleWithInsetPlattersDefaultContactHeaderDropShadowColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactStyleDefaultSelectedCellBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  return v5;
}

+ (UIColor)carPlaySiriButtonBackgroundColor
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] secondarySystemFillColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _carSystemQuaternaryColor];
  }
  v2 = ;

  return v2;
}

+ (UIColor)contactCardRecentBadgeTextDynamicColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__CNUIColorRepository_contactCardRecentBadgeTextDynamicColor__block_invoke;
  v4[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v4[4] = a1;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

+ (UIColor)contactCardLabeledBadgeBackgroundDynamicColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CNUIColorRepository_contactCardLabeledBadgeBackgroundDynamicColor__block_invoke;
  v4[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v4[4] = a1;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

+ (UIColor)carPlayQuickActionButtonBackgroundFillColorEnabled
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _carSystemTertiaryColor];
  }
  v2 = ;

  return v2;
}

+ (UIColor)carPlayTableViewBackgroundColor
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableBackgroundColor];
  }
  v2 = ;

  return v2;
}

+ (UIColor)carPlayTableViewCellBackgroundColor
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableCellPlainBackgroundColor];
  }
  v2 = ;

  return v2;
}

+ (UIColor)groupsInsetBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return v5;
}

+ (UIColor)groupsOutlineBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  return v5;
}

+ (UIColor)monogrammerBackgroundDarkColor
{
  v2 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.649999976];

  return v2;
}

+ (UIColor)monogrammerBackgroundLightColor
{
  v2 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.300000012];

  return v2;
}

+ (UIColor)contactStyleDefaultHeaderBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.95 alpha:1.0];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactStyleDefaultContactHeaderDropShadowColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableSeparatorColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactStyleDefaultContactHeaderBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactCardRecentBadgeTextColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v4 = [v2 colorNamed:@"contactCardRecentBadgeTextColor" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

id __61__CNUIColorRepository_contactCardRecentBadgeTextDynamicColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceIdiom];
  v4 = *(a1 + 32);
  if (v3 == 3)
  {
    [v4 carPlayContactCardRecentBadgeTextColor];
  }

  else
  {
    [v4 contactCardRecentBadgeTextColor];
  }
  v5 = ;

  return v5;
}

id __68__CNUIColorRepository_contactCardLabeledBadgeBackgroundDynamicColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceIdiom];
  v4 = *(a1 + 32);
  if (v3 == 3)
  {
    [v4 carPlayContactCardLabeledBadgeBackgroundColor];
  }

  else
  {
    [v4 contactCardLabeledBadgeBackgroundColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)quickActionViewPosterBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

+ (UIColor)quickActionViewRoundedRectBorderColor
{
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 runningInContactsAppOniPad];

  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = v4;
  v6 = 0.08;
  if (v3)
  {
    v6 = 0.01;
  }

  v7 = [v4 colorWithAlphaComponent:v6];

  return v7;
}

+ (UIColor)quickActionViewRoundedRectBackgroundColor
{
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 runningInContactsAppOniPad];

  if (v3)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  }
  v4 = ;

  return v4;
}

+ (UIColor)quickActionBackgroundColorRegular
{
  v2 = [MEMORY[0x1E69DC888] _secondarySystemGroupedBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.75];

  return v3;
}

+ (UIColor)photoPickerSymbolImageBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.15];

  return v3;
}

+ (UIColor)photoPickerCaptureBackgroundColor
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v9[0] = v2;
  v4 = [objc_opt_class() photoPickerCaptureLightBackgroundColor];
  v9[1] = v3;
  v10[0] = v4;
  v5 = [objc_opt_class() photoPickerCaptureDarkBackgroundColor];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v6];

  return v7;
}

+ (UIColor)contactCardStaticHeaderDefaultTaglineDarkTextColor
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

+ (UIColor)contactCardStaticHeaderDefaultTaglineTextColor
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.75];

  return v3;
}

+ (UIColor)contactCardStaticHeaderGeminiTextColor
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [v2 colorWithAlphaComponent:1.0];

  return v3;
}

+ (UIColor)contactCardEditModeBackgroundColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableBackgroundColor];
  }
  v5 = ;

  return v5;
}

+ (UIColor)contactCardBackgroundiPadOverwriteColor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  if (v4)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v5 = ;

  return v5;
}

id __51__CNUIColorRepository_contactPickerBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemGray6Color];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }
  v2 = ;

  return v2;
}

+ (UIColor)contactListContactCountTextColor
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:16];

  if (v5)
  {
    [a1 contactStyleDefaultTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] grayColor];
  }
  v6 = ;

  return v6;
}

+ (UIColor)navigationListCellSubtitleTextColorRegular
{
  if (navigationListCellSubtitleTextColorRegular_cn_once_token_2 != -1)
  {
    dispatch_once(&navigationListCellSubtitleTextColorRegular_cn_once_token_2, &__block_literal_global_4_46792);
  }

  v3 = navigationListCellSubtitleTextColorRegular_cn_once_object_2;

  return v3;
}

uint64_t __65__CNUIColorRepository_navigationListCellSubtitleTextColorRegular__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] _secondaryLabelColor];
  v1 = navigationListCellSubtitleTextColorRegular_cn_once_object_2;
  navigationListCellSubtitleTextColorRegular_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (UIColor)navigationListCellTitleTextColorRegular
{
  if (navigationListCellTitleTextColorRegular_cn_once_token_1 != -1)
  {
    dispatch_once(&navigationListCellTitleTextColorRegular_cn_once_token_1, &__block_literal_global_46794);
  }

  v3 = navigationListCellTitleTextColorRegular_cn_once_object_1;

  return v3;
}

uint64_t __62__CNUIColorRepository_navigationListCellTitleTextColorRegular__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] _labelColor];
  v1 = navigationListCellTitleTextColorRegular_cn_once_object_1;
  navigationListCellTitleTextColorRegular_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (UIColor)popoverBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  v3 = popoverBackgroundColor_shouldUseGreenPopoverTestBackground;
  if (popoverBackgroundColor_shouldUseGreenPopoverTestBackground == -1)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    popoverBackgroundColor_shouldUseGreenPopoverTestBackground = [v4 BOOLForKey:@"ShouldUseGreenPopoverTestBackground"];

    v3 = popoverBackgroundColor_shouldUseGreenPopoverTestBackground;
  }

  if (v3 == 1)
  {
    v5 = [MEMORY[0x1E69DC888] greenColor];

    v2 = v5;
  }

  return v2;
}

@end