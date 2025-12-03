@interface EKUIAutocompleteSearchResultBaseCell
+ (double)cellHeightForResult:(id)result forWidth:(double)width;
+ (double)verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:(id)font;
+ (double)verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:(id)font;
+ (double)verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:(id)font;
+ (id)secondaryTextLabelFont;
- (EKUIAutocompleteSearchResultBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_verticalSpacingBottomToBaselineForBottomLabel;
- (double)verticalSpacingTopToBaselineForBottomLabel;
- (double)verticalSpacingTopToBaselineForTopLabel;
- (double)verticalSpacingTopToColorDot;
- (id)_createLabelWithColor:(id)color;
- (id)createPrimaryLabel;
- (id)createSecondaryLabel;
- (void)_updateContentForSizeCategoryChange:(id)change;
- (void)setLabelFonts;
- (void)setupConstraints;
- (void)updateWithResult:(id)result;
@end

@implementation EKUIAutocompleteSearchResultBaseCell

- (EKUIAutocompleteSearchResultBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKUIAutocompleteSearchResultBaseCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateContentForSizeCategoryChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (id)createPrimaryLabel
{
  primaryTextColor = [objc_opt_class() primaryTextColor];
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)self _createLabelWithColor:primaryTextColor];

  return v4;
}

- (id)createSecondaryLabel
{
  secondaryTextColor = [objc_opt_class() secondaryTextColor];
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)self _createLabelWithColor:secondaryTextColor];

  return v4;
}

+ (id)secondaryTextLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (double)verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:(id)font
{
  [font _scaledValueForValue:1 useLanguageAwareScaling:20.0];

  CalRoundToScreenScale(v3);
  return result;
}

- (double)verticalSpacingTopToBaselineForTopLabel
{
  primaryTextLabelFont = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  [objc_opt_class() verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:primaryTextLabelFont];
  v4 = v3;

  return v4;
}

+ (double)verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:(id)font
{
  [font _scaledValueForValue:1 useLanguageAwareScaling:20.0];

  CalRoundToScreenScale(v3);
  return result;
}

- (double)verticalSpacingTopToBaselineForBottomLabel
{
  secondaryTextLabelFont = [objc_opt_class() secondaryTextLabelFont];
  [objc_opt_class() verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:secondaryTextLabelFont];
  v4 = v3;

  return v4;
}

+ (double)verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:(id)font
{
  [font _scaledValueForValue:1 useLanguageAwareScaling:8.0];

  CalRoundToScreenScale(v3);
  return result;
}

- (double)_verticalSpacingBottomToBaselineForBottomLabel
{
  primaryTextLabelFont = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  [objc_opt_class() verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:primaryTextLabelFont];
  v4 = v3;

  return v4;
}

- (double)verticalSpacingTopToColorDot
{
  primaryTextLabelFont = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  [primaryTextLabelFont _scaledValueForValue:1 useLanguageAwareScaling:9.0];
  v4 = v3;

  return v4;
}

- (id)_createLabelWithColor:(id)color
{
  colorCopy = color;
  v4 = objc_opt_new();
  [v4 setTextColor:colorCopy];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (void)_updateContentForSizeCategoryChange:(id)change
{
  [(EKUIAutocompleteSearchResultBaseCell *)self setLabelFonts];
  [(EKUIAutocompleteSearchResultBaseCell *)self setupConstraints];

  [(EKUIAutocompleteSearchResultBaseCell *)self setNeedsLayout];
}

- (void)updateWithResult:(id)result
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

+ (double)cellHeightForResult:(id)result forWidth:(double)width
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (void)setLabelFonts
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (void)setupConstraints
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

@end