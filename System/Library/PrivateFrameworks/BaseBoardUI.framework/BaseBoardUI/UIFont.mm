@interface UIFont
+ (id)bsui_defaultFont:(void *)a3 forTextStyle:(uint64_t)a4 hiFontStyle:(void *)a5 contentSizeCategory:;
@end

@implementation UIFont

+ (id)bsui_defaultFont:(void *)a3 forTextStyle:(uint64_t)a4 hiFontStyle:(void *)a5 contentSizeCategory:
{
  v8 = a3;
  v9 = a5;
  objc_opt_self();
  if (v9)
  {
    [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v9];
  }

  else
  {
    [MEMORY[0x1E69DD1B8] currentTraitCollection];
  }
  v10 = ;
  if (a4 == 1)
  {
    if (a2)
    {
      [MEMORY[0x1E69DB878] defaultFontForTextStyle:v8];
    }

    else
    {
      [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];
    }
    v13 = ;
  }

  else
  {
    v11 = (a4 << 12) & 0x18000 | (a4 >> 1) & 3;
    if (a2)
    {
      v12 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:v8 addingSymbolicTraits:(a4 << 12) & 0x18000 | (a4 >> 1) & 3 options:0];
    }

    else
    {
      v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v10];
      v15 = [v14 fontDescriptorWithSymbolicTraits:v11];

      v12 = v15;
    }

    v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
  }

  return v13;
}

@end