@interface UIFont
+ (id)bsui_defaultFont:(void *)font forTextStyle:(uint64_t)style hiFontStyle:(void *)fontStyle contentSizeCategory:;
@end

@implementation UIFont

+ (id)bsui_defaultFont:(void *)font forTextStyle:(uint64_t)style hiFontStyle:(void *)fontStyle contentSizeCategory:
{
  fontCopy = font;
  fontStyleCopy = fontStyle;
  objc_opt_self();
  if (fontStyleCopy)
  {
    [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:fontStyleCopy];
  }

  else
  {
    [MEMORY[0x1E69DD1B8] currentTraitCollection];
  }
  v10 = ;
  if (style == 1)
  {
    if (a2)
    {
      [MEMORY[0x1E69DB878] defaultFontForTextStyle:fontCopy];
    }

    else
    {
      [MEMORY[0x1E69DB878] preferredFontForTextStyle:fontCopy compatibleWithTraitCollection:v10];
    }
    v13 = ;
  }

  else
  {
    v11 = (style << 12) & 0x18000 | (style >> 1) & 3;
    if (a2)
    {
      v12 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:fontCopy addingSymbolicTraits:(style << 12) & 0x18000 | (style >> 1) & 3 options:0];
    }

    else
    {
      v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:fontCopy compatibleWithTraitCollection:v10];
      v15 = [v14 fontDescriptorWithSymbolicTraits:v11];

      v12 = v15;
    }

    v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
  }

  return v13;
}

@end