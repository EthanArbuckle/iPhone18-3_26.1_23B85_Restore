@interface EKUITableViewCellWithPrimaryAndSecondaryFonts
+ (id)primaryTextLabelFontForWidth:(double)width;
+ (id)timeLabelsFont;
+ (void)initialize;
- (UIEdgeInsets)layoutMargins;
- (id)primaryTextLabelFont;
- (id)secondaryTextLabelFont;
- (id)timeLabelsFont;
@end

@implementation EKUITableViewCellWithPrimaryAndSecondaryFonts

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKUITableViewCellWithPrimaryAndSecondaryFonts_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_1 != -1)
  {
    dispatch_once(&initialize_onceToken_1, block);
  }
}

void __59__EKUITableViewCellWithPrimaryAndSecondaryFonts_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__clearFontCaches name:*MEMORY[0x1E69DDC48] object:0];
}

- (id)timeLabelsFont
{
  v2 = objc_opt_class();

  return [v2 timeLabelsFont];
}

+ (id)timeLabelsFont
{
  v2 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC28] traitCollection:0];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v4 = [v3 monospacedDigitSystemFontOfSize:? weight:?];

  return v4;
}

- (id)primaryTextLabelFont
{
  v3 = objc_opt_class();
  contentView = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self contentView];
  [contentView frame];
  v6 = [v3 primaryTextLabelFontForWidth:v5];

  return v6;
}

+ (id)primaryTextLabelFontForWidth:(double)width
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDD40], width}];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)secondaryTextLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (UIEdgeInsets)layoutMargins
{
  [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self bounds];

  v3 = EKUILayoutMarginsForFullscreenLayoutRectWithSize(0, v2);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end