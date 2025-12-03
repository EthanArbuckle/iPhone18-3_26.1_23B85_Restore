@interface CNUIFontRepository
+ (UIFont)contactCardStaticHeaderDefaultNameFont;
+ (UIFont)contactCardStaticHeaderNicknameTaglineFont;
+ (UIFont)contactListBannerFootnoteFontPrimary;
+ (UIFont)contactListBannerTitleFontPrimary;
+ (UIFont)contactListContactCountFont;
+ (UIFont)contactStyleDefaultBoldTextFont;
+ (UIFont)contactStyleDefaultItalicTextFont;
+ (UIFont)groupHeaderWrappedTitleFont;
+ (UIFont)visualIdentityEditorTextFont;
+ (id)boldFontWithFontDescriptor:(id)descriptor;
+ (id)carPlayFontWithBoldWeightStyle:(id)style;
+ (id)carPlayFontWithMediumWeightStyle:(id)style;
+ (id)carPlayFontWithStyle:(id)style;
+ (id)fontWithBoldWeightStyle:(id)style;
@end

@implementation CNUIFontRepository

+ (UIFont)contactListBannerTitleFontPrimary
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  v6 = MEMORY[0x1E69DDD40];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DDDC8];
  }

  v7 = [self fontWithBoldWeightStyle:*v6];

  return v7;
}

+ (UIFont)contactListBannerFootnoteFontPrimary
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:29];

  v5 = MEMORY[0x1E69DDD28];
  if (v4)
  {
    v5 = MEMORY[0x1E69DDD80];
  }

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];

  return v6;
}

+ (UIFont)contactStyleDefaultBoldTextFont
{
  contactStyleDefaultTextFont = [self contactStyleDefaultTextFont];
  fontDescriptor = [contactStyleDefaultTextFont fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v6 = MEMORY[0x1E69DB878];
  contactStyleDefaultTextFont2 = [self contactStyleDefaultTextFont];
  [contactStyleDefaultTextFont2 pointSize];
  v8 = [v6 fontWithDescriptor:v5 size:?];

  return v8;
}

+ (id)carPlayFontWithBoldWeightStyle:(id)style
{
  v3 = MEMORY[0x1E69DB880];
  v4 = MEMORY[0x1E69DCEB0];
  styleCopy = style;
  _carScreen = [v4 _carScreen];
  traitCollection = [_carScreen traitCollection];
  v8 = [v3 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:traitCollection];

  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)carPlayFontWithMediumWeightStyle:(id)style
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB880];
  v4 = MEMORY[0x1E69DCEB0];
  styleCopy = style;
  _carScreen = [v4 _carScreen];
  traitCollection = [_carScreen traitCollection];
  v8 = [v3 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:traitCollection];

  v14 = *MEMORY[0x1E69DB990];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v8 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];

  return v12;
}

+ (id)carPlayFontWithStyle:(id)style
{
  v3 = MEMORY[0x1E69DB880];
  v4 = MEMORY[0x1E69DCEB0];
  styleCopy = style;
  _carScreen = [v4 _carScreen];
  traitCollection = [_carScreen traitCollection];
  v8 = [v3 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:traitCollection];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)boldFontWithFontDescriptor:(id)descriptor
{
  v3 = [descriptor fontDescriptorWithSymbolicTraits:2];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)fontWithBoldWeightStyle:(id)style
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:style];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (UIFont)visualIdentityEditorTextFont
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB980];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:120.0 weight:*MEMORY[0x1E69DB980]];
  fontDescriptor = [v3 fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x1E69DB8D8]];

  v11[0] = *MEMORY[0x1E69DB990];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  v11[1] = *MEMORY[0x1E6965778];
  v12[0] = v6;
  v12[1] = &unk_1F0D4B418;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v8 = [v5 fontDescriptorByAddingAttributes:v7];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (UIFont)groupHeaderWrappedTitleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:32770];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (UIFont)contactCardStaticHeaderNicknameTaglineFont
{
  contactCardStaticHeaderDefaultTaglineFont = [self contactCardStaticHeaderDefaultTaglineFont];
  fontDescriptor = [contactCardStaticHeaderDefaultTaglineFont fontDescriptor];

  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:3];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (UIFont)contactCardStaticHeaderDefaultNameFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (UIFont)contactStyleDefaultItalicTextFont
{
  contactStyleDefaultTextFont = [self contactStyleDefaultTextFont];
  fontDescriptor = [contactStyleDefaultTextFont fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

  v6 = MEMORY[0x1E69DB878];
  contactStyleDefaultTextFont2 = [self contactStyleDefaultTextFont];
  [contactStyleDefaultTextFont2 pointSize];
  v8 = [v6 fontWithDescriptor:v5 size:?];

  return v8;
}

+ (UIFont)contactListContactCountFont
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:16];

  if (v5)
  {
    [self fontWithBoldWeightStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
  }
  v6 = ;

  return v6;
}

@end