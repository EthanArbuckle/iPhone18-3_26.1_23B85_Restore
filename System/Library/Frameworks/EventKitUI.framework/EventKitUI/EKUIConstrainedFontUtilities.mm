@interface EKUIConstrainedFontUtilities
+ (id)constrainedBodyBoldTextLabelFont;
+ (id)constrainedBodyTextLabelFont;
+ (id)constrainedCaption1TextLabelFont;
+ (id)constrainedFontForTextStyle:(id)a3 maximumContentSizeCategory:(id)a4 addingSymbolicTraits:(unsigned int)a5 traitCollection:(id)a6;
+ (id)constrainedFontForTextStyle:(id)a3 minimumContentSizeCategory:(id)a4 maximumContentSizeCategory:(id)a5 traitCollection:(id)a6;
+ (int64_t)tableViewCellCappedSymbolImageScaleWithScale:(int64_t)a3 traitCollection:(id)a4;
+ (void)clearFontCaches;
+ (void)initialize;
@end

@implementation EKUIConstrainedFontUtilities

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKUIConstrainedFontUtilities_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __42__EKUIConstrainedFontUtilities_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_clearFontCaches name:*MEMORY[0x1E69DDC48] object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_clearFontCaches name:*MEMORY[0x1E695D8F0] object:0];
}

+ (void)clearFontCaches
{
  v2 = __constrainedBodyTextLabelFont;
  __constrainedBodyTextLabelFont = 0;

  v3 = __constrainedCaption1TextLabelFont;
  __constrainedCaption1TextLabelFont = 0;

  v4 = __constrainedBodyBoldTextLabelFont;
  __constrainedBodyBoldTextLabelFont = 0;
}

+ (id)constrainedBodyTextLabelFont
{
  v2 = __constrainedBodyTextLabelFont;
  if (!__constrainedBodyTextLabelFont)
  {
    v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:1];
    v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
    v5 = __constrainedBodyTextLabelFont;
    __constrainedBodyTextLabelFont = v4;

    v2 = __constrainedBodyTextLabelFont;
  }

  return v2;
}

+ (id)constrainedCaption1TextLabelFont
{
  v2 = __constrainedCaption1TextLabelFont;
  if (!__constrainedCaption1TextLabelFont)
  {
    v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] addingSymbolicTraits:0 options:1];
    v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
    v5 = __constrainedCaption1TextLabelFont;
    __constrainedCaption1TextLabelFont = v4;

    v2 = __constrainedCaption1TextLabelFont;
  }

  return v2;
}

+ (id)constrainedBodyBoldTextLabelFont
{
  v2 = __constrainedBodyBoldTextLabelFont;
  if (!__constrainedBodyBoldTextLabelFont)
  {
    v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:2 options:1];
    v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
    v5 = __constrainedBodyBoldTextLabelFont;
    __constrainedBodyBoldTextLabelFont = v4;

    v2 = __constrainedBodyBoldTextLabelFont;
  }

  return v2;
}

+ (id)constrainedFontForTextStyle:(id)a3 minimumContentSizeCategory:(id)a4 maximumContentSizeCategory:(id)a5 traitCollection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 preferredContentSizeCategory];
  }

  else
  {
    v15 = +[EKUIApplicationExtensionOverrides shared];
    v14 = [v15 preferredContentSizeCategoryOrOverride];
  }

  v16 = *MEMORY[0x1E69DDC90];
  if (*MEMORY[0x1E69DDC90] != v10 && UIContentSizeCategoryCompareToCategory(v14, v10) == NSOrderedAscending)
  {
    v17 = v10;

    v14 = v17;
  }

  if (v16 != v11 && UIContentSizeCategoryCompareToCategory(v14, v11) == NSOrderedDescending)
  {
    v18 = v11;

    v14 = v18;
  }

  v19 = MEMORY[0x1E69DB878];
  v20 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v14];
  v21 = [v19 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v20];

  return v21;
}

+ (id)constrainedFontForTextStyle:(id)a3 maximumContentSizeCategory:(id)a4 addingSymbolicTraits:(unsigned int)a5 traitCollection:(id)a6
{
  v7 = *&a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 preferredContentSizeCategory];
  }

  else
  {
    v14 = +[EKUIApplicationExtensionOverrides shared];
    v13 = [v14 preferredContentSizeCategoryOrOverride];
  }

  if (*MEMORY[0x1E69DDC90] != v10 && UIContentSizeCategoryCompareToCategory(v13, v10) == NSOrderedDescending)
  {
    v15 = v10;

    v13 = v15;
  }

  v16 = MEMORY[0x1E69DB880];
  v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v13];
  v18 = [v16 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v17];

  v19 = [v18 fontDescriptorWithSymbolicTraits:v7];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];

  return v21;
}

+ (int64_t)tableViewCellCappedSymbolImageScaleWithScale:(int64_t)a3 traitCollection:(id)a4
{
  v5 = a4;
  v6 = [v5 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x1E69DDC30]);

  if (v7 == NSOrderedAscending)
  {
    v9 = [v5 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(v9, *MEMORY[0x1E69DDC40]);

    v8 = 2;
    if (v10 == NSOrderedAscending)
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 1;
  }

  if (v8 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v8;
  }

  if ((a3 + 1) >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

@end