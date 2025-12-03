@interface CNSharedProfileBannerStyle
+ (id)defaultActionButtonConfiguration;
+ (id)defaultStyle;
@end

@implementation CNSharedProfileBannerStyle

+ (id)defaultActionButtonConfiguration
{
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration setButtonSize:1];
  [grayButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_41651];

  return grayButtonConfiguration;
}

id __62__CNSharedProfileBannerStyle_defaultActionButtonConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = *MEMORY[0x1E69DB648];
  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

  v6 = [v5 fontDescriptor];
  v7 = [CNUIFontRepository boldFontWithFontDescriptor:v6];
  [v3 setObject:v7 forKeyedSubscript:v4];

  return v3;
}

+ (id)defaultStyle
{
  v3 = objc_alloc_init(CNSharedProfileBannerStyle);
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(CNSharedProfileBannerStyle *)v3 setTitleTextColor:labelColor];

  v5 = +[CNUIColorRepository sharedProfileBannerSubtitleDefaultColor];
  [(CNSharedProfileBannerStyle *)v3 setSubtitleTextColor:v5];

  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(CNSharedProfileBannerStyle *)v3 setTitleFont:v7];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [(CNSharedProfileBannerStyle *)v3 setSubtitleFont:v8];

  defaultActionButtonConfiguration = [self defaultActionButtonConfiguration];
  [(CNSharedProfileBannerStyle *)v3 setActionButtonConfiguration:defaultActionButtonConfiguration];

  v10 = MEMORY[0x1E69DCAD8];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v12 = [v10 configurationWithHierarchicalColor:tertiaryLabelColor];
  [(CNSharedProfileBannerStyle *)v3 setXmarkButtonColorConfiguration:v12];

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(CNSharedProfileBannerStyle *)v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  [(CNSharedProfileBannerStyle *)v3 setLeadingTrailingInset:0.0];

  return v3;
}

@end