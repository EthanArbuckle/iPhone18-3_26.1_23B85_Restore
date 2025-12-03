@interface EKUILargeTextUtilities
+ (double)contentSizeCategoryScaledValueForDefaultValue:(double)value maximumValue:(double)maximumValue shouldScaleForSmallerSizes:(BOOL)sizes;
+ (double)contentSizeCategoryScaledValueFromContentSizeCategory:(id)category correspondingValue:(double)value maximumValue:(double)maximumValue;
+ (void)clearCache;
@end

@implementation EKUILargeTextUtilities

+ (void)clearCache
{
  v2 = __fontForScaling;
  __fontForScaling = 0;
}

+ (double)contentSizeCategoryScaledValueForDefaultValue:(double)value maximumValue:(double)maximumValue shouldScaleForSmallerSizes:(BOOL)sizes
{
  v6 = __fontForScaling;
  if (!__fontForScaling)
  {
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v8 = __fontForScaling;
    __fontForScaling = v7;

    v6 = __fontForScaling;
  }

  [v6 _scaledValueForValue:value];

  CUIKRoundToScreenScale();
  return result;
}

+ (double)contentSizeCategoryScaledValueFromContentSizeCategory:(id)category correspondingValue:(double)value maximumValue:(double)maximumValue
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:category];
  v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [v9 _bodyLeading];
  [v8 _bodyLeading];

  CUIKRoundToScreenScale();
  v11 = v10;

  return v11;
}

@end