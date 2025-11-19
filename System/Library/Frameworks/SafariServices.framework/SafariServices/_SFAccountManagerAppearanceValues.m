@interface _SFAccountManagerAppearanceValues
+ (CGRect)chicletSize;
+ (CGSize)preferredFormSheetContentSize;
+ (NSDirectionalEdgeInsets)edgeInsetsForTopLevelCells;
+ (id)_excessiveLineHeightCharacterSet;
+ (id)subtitleFontForNarrowCellWithText:(id)a3;
+ (id)subtitleFontForStackViewLabel;
+ (id)titleFontForNarrowCell;
+ (id)titleFontForStackViewLabel;
+ (int64_t)preferencesTableViewStyle;
@end

@implementation _SFAccountManagerAppearanceValues

+ (id)titleFontForNarrowCell
{
  v2 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  v4 = [v2 scaledFontForFont:v3];

  return v4;
}

+ (id)subtitleFontForNarrowCellWithText:(id)a3
{
  v4 = a3;
  v5 = [a1 _excessiveLineHeightCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5];

  v7 = *MEMORY[0x1E69DDCF8];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v7];
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
    v10 = [v8 scaledFontForFont:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  }

  return v10;
}

+ (id)titleFontForStackViewLabel
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:32770];

  v4 = MEMORY[0x1E69DB878];
  [v3 pointSize];
  v5 = [v4 fontWithDescriptor:v3 size:?];

  return v5;
}

+ (id)subtitleFontForStackViewLabel
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  v4 = MEMORY[0x1E69DB878];
  [v3 pointSize];
  v5 = [v4 fontWithDescriptor:v3 size:?];

  return v5;
}

+ (int64_t)preferencesTableViewStyle
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v3 = [v2 view];
  if (PSShouldInsetListView())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (CGRect)chicletSize
{
  v2 = 32.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 32.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (NSDirectionalEdgeInsets)edgeInsetsForTopLevelCells
{
  v2 = 8.0;
  v3 = 0.0;
  v4 = 8.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

+ (id)_excessiveLineHeightCharacterSet
{
  if (_excessiveLineHeightCharacterSet_onceToken != -1)
  {
    +[_SFAccountManagerAppearanceValues _excessiveLineHeightCharacterSet];
  }

  v3 = _excessiveLineHeightCharacterSet_excessiveLineHeightCharacterSet;

  return v3;
}

+ (CGSize)preferredFormSheetContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end