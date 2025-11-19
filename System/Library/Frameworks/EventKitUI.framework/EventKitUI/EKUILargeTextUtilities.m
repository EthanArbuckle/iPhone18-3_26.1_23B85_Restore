@interface EKUILargeTextUtilities
+ (double)contentSizeCategoryScaledValueForDefaultValue:(double)a3 maximumValue:(double)a4 shouldScaleForSmallerSizes:(BOOL)a5;
+ (double)contentSizeCategoryScaledValueFromContentSizeCategory:(id)a3 correspondingValue:(double)a4 maximumValue:(double)a5;
+ (void)clearCache;
@end

@implementation EKUILargeTextUtilities

+ (void)clearCache
{
  v2 = __fontForScaling;
  __fontForScaling = 0;
}

+ (double)contentSizeCategoryScaledValueForDefaultValue:(double)a3 maximumValue:(double)a4 shouldScaleForSmallerSizes:(BOOL)a5
{
  v6 = __fontForScaling;
  if (!__fontForScaling)
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v8 = __fontForScaling;
    __fontForScaling = v7;

    v6 = __fontForScaling;
  }

  [v6 _scaledValueForValue:a3];

  CUIKRoundToScreenScale();
  return result;
}

+ (double)contentSizeCategoryScaledValueFromContentSizeCategory:(id)a3 correspondingValue:(double)a4 maximumValue:(double)a5
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:a3];
  v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [v9 _bodyLeading];
  [v8 _bodyLeading];

  CUIKRoundToScreenScale();
  v11 = v10;

  return v11;
}

@end