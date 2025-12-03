@interface UIFont(ABFonts)
+ (BOOL)ab_preferredContentSizeCategoryIsAccessibilityCategory;
+ (id)ab_preferredContentSizeCategoryName;
+ (id)ab_preferredFontForTextStyle:()ABFonts;
+ (id)ab_preferredRowFontForTextStyle:()ABFonts;
- (id)ab_boldFont;
- (id)ab_italicFont;
@end

@implementation UIFont(ABFonts)

+ (BOOL)ab_preferredContentSizeCategoryIsAccessibilityCategory
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v1 = ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC40]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC20]);

  return v1;
}

- (id)ab_italicFont
{
  fontDescriptor = [self fontDescriptor];
  v3 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

  v4 = MEMORY[0x1E69DB878];
  [self pointSize];
  v5 = [v4 fontWithDescriptor:v3 size:?];

  return v5;
}

- (id)ab_boldFont
{
  fontDescriptor = [self fontDescriptor];
  v3 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v4 = MEMORY[0x1E69DB878];
  [self pointSize];
  v5 = [v4 fontWithDescriptor:v3 size:?];

  return v5;
}

+ (id)ab_preferredContentSizeCategoryName
{
  if ([self _shouldUseDefaultFont])
  {
    preferredContentSizeCategory = *MEMORY[0x1E69DDC70];
  }

  else
  {
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  }

  return preferredContentSizeCategory;
}

+ (id)ab_preferredRowFontForTextStyle:()ABFonts
{
  v4 = a3;
  if ([self _shouldUseDefaultFont])
  {
    v5 = [self defaultFontForTextStyle:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:2];

    v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
    v4 = v6;
  }

  return v5;
}

+ (id)ab_preferredFontForTextStyle:()ABFonts
{
  v4 = a3;
  if ([self _shouldUseDefaultFont])
  {
    [self defaultFontForTextStyle:v4];
  }

  else
  {
    [self preferredFontForTextStyle:v4];
  }
  v5 = ;

  return v5;
}

@end