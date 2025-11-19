@interface MFModernAtomView
+ (BOOL)presentationOptions:(unint64_t *)a3 encodedIntoAddress:(id)a4;
+ (CGPoint)defaultBaselinePoint;
+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int64_t)a8;
+ (id)_defaultLabelAttributesWithFont:(id)a3 wrappingEnabled:(BOOL)a4;
+ (id)_defaultLabelAttributesWithWrappingEnabled:(BOOL)a3;
+ (id)defaultFont;
+ (id)primaryAtomFont;
- (BOOL)isWrappingEnabled;
- (BOOL)separatorHidden;
- (CGPoint)baselinePoint;
- (CGRect)selectionFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MFModernAtomView)initWithFrame:(CGRect)a3 presentationOptions:(unint64_t)a4 separatorStyle:(int64_t)a5 wrappingSupported:(BOOL)a6;
- (NSString)description;
- (UIColor)effectiveTintColor;
- (UIEdgeInsets)edgeInsets;
- (UIFont)titleFont;
- (double)_leftPadding;
- (double)_rightInset;
- (double)_rightPadding;
- (double)preferredWidthWithSizeConstraints:(CGSize)a3;
- (id)_centeredTextAttachmentWithImage:(id)a3;
- (id)_chevronTextAttachment;
- (int64_t)_preferredIconVariant;
- (int64_t)separatorStyle;
- (void)_invalidatePresentationOptions;
- (void)_setEffectiveTintColor:(id)a3;
- (void)_setPresentationOption:(unint64_t)a3 enabled:(BOOL)a4;
- (void)_updateActivityIndicator;
- (void)_updateCompositingFilters;
- (void)_updateFontIfNecessary;
- (void)_updateIconViewsSemanticContentAttribute;
- (void)_updateLabelAttributes;
- (void)_updateSubviewsForWrapping;
- (void)layoutSubviews;
- (void)performBuildInAnimationFromTextColor:(id)a3 withDuration:(double)a4;
- (void)setFirstLineIndent:(double)a3;
- (void)setIsPrimaryAddressAtom:(BOOL)a3;
- (void)setPresentationOptions:(unint64_t)a3;
- (void)setScale:(double)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setSeparatorIsLeftAligned:(BOOL)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)tintColorDidChange;
@end

@implementation MFModernAtomView

+ (CGPoint)defaultBaselinePoint
{
  v2 = +[MFModernAtomView defaultFont];
  [v2 mf_baselinePointFromOriginPoint:{0.0, 0.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

+ (id)defaultFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_29 forKey:@"MFModernAtomViewDefaultFont"];

  return v3;
}

id __31__MFModernAtomView_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)primaryAtomFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_35 forKey:@"MFModernAtomViewPrimaryFont"];

  return v3;
}

id __35__MFModernAtomView_primaryAtomFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD48]];
  v1 = [v0 fontDescriptorWithSymbolicTraits:0x8000];

  v2 = [MEMORY[0x1E69DB878] fontWithDescriptor:v1 size:0.0];

  return v2;
}

+ (id)_defaultLabelAttributesWithWrappingEnabled:(BOOL)a3
{
  v3 = a3;
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v5 = v4;
  if (v3)
  {
    [v4 setLineBreakMode:0];
    LODWORD(v6) = 1.0;
    [v5 setHyphenationFactor:v6];
  }

  else
  {
    [v4 setLineBreakMode:4];
  }

  v7 = *MEMORY[0x1E69DB688];
  v14[0] = v5;
  v8 = *MEMORY[0x1E69DB650];
  v13[0] = v7;
  v13[1] = v8;
  v9 = +[MFModernAtomView _defaultTintColor];
  v14[1] = v9;
  v13[2] = *MEMORY[0x1E69DB648];
  v10 = +[MFModernAtomView defaultFont];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

- (void)setFirstLineIndent:(double)a3
{
  self->_firstLineIndent = a3;
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {

    [(MFModernAtomView *)self _updateLabelAttributes];
  }
}

+ (id)_defaultLabelAttributesWithFont:(id)a3 wrappingEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MFModernAtomView _defaultLabelAttributesWithWrappingEnabled:v4];
  v7 = [v6 mutableCopy];

  [v7 setObject:v5 forKey:*MEMORY[0x1E69DB648]];

  return v7;
}

+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int64_t)a8
{
  v9 = a7;
  v13 = a6;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v16 = *a4++;
    v15 = v16;
    if ((v16 & a3) != 0)
    {
      v17 = MFAtomViewIconImageForPresentationOption(v15, v13, a8, v9);
      if (v17)
      {
        [i addObject:v17];
      }
    }
  }

  return i;
}

+ (BOOL)presentationOptions:(unint64_t *)a3 encodedIntoAddress:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?:\\{PO\\:)([0-9]+)(?:\\})" options:0 error:0];
    v7 = [v5 length];
    if ([v6 numberOfMatchesInString:v5 options:0 range:{0, v7}])
    {
      v8 = [v6 firstMatchInString:v5 options:0 range:{0, v7}];
      v9 = [v8 rangeAtIndex:1];
      v11 = v10;

      v12 = [v5 substringWithRange:{v9, v11}];
      v13 = [v12 length];
      v14 = v13 != 0;
      if (v13)
      {
        *a3 = [v12 integerValue];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MFModernAtomView)initWithFrame:(CGRect)a3 presentationOptions:(unint64_t)a4 separatorStyle:(int64_t)a5 wrappingSupported:(BOOL)a6
{
  v43.receiver = self;
  v43.super_class = MFModernAtomView;
  v9 = [(MFModernAtomView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_scalingFactor = 1.0;
    v9->_separatorHidden = 0;
    v9->_presentationOptions = a4;
    v9->_firstLineIndent = 0.0;
    v9->_wrappingSupported = a6;
    v9->_cachedIsWrappingEnabled = [(MFModernAtomView *)v9 isWrappingEnabled];
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v10->_separatorIsLeftAligned = [v11 userInterfaceLayoutDirection] == 1;

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    v17 = [v12 initWithFrame:{*MEMORY[0x1E695F058], v14, v15, v16}];
    titleLabelFillView = v10->_titleLabelFillView;
    v10->_titleLabelFillView = v17;

    [(UIView *)v10->_titleLabelFillView setUserInteractionEnabled:0];
    [(MFModernAtomView *)v10 addSubview:v10->_titleLabelFillView];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MFModernAtomView *)v10 bounds];
    v20 = [v19 initWithFrame:?];
    compositingView = v10->_compositingView;
    v10->_compositingView = v20;

    [(UIView *)v10->_compositingView setAutoresizingMask:2];
    [(UIView *)v10->_compositingView setUserInteractionEnabled:0];
    [(MFModernAtomView *)v10 addSubview:v10->_compositingView];
    v22 = [MFModernAtomBackgroundView alloc];
    [(MFModernAtomView *)v10 bounds];
    v23 = [(MFModernAtomBackgroundView *)v22 initWithFrame:?];
    [(MFModernAtomBackgroundView *)v23 setOpaque:0];
    v24 = [MEMORY[0x1E69DC888] clearColor];
    [(MFModernAtomBackgroundView *)v23 setBackgroundColor:v24];

    [(MFModernAtomBackgroundView *)v23 setUserInteractionEnabled:0];
    [(MFModernAtomBackgroundView *)v23 setAutoresizingMask:18];
    [(MFModernAtomBackgroundView *)v23 setHostAtomView:v10];
    [(MFModernAtomBackgroundView *)v23 setSeparatorStyle:a5];
    [(UIView *)v10->_compositingView addSubview:v23];
    objc_storeStrong(&v10->_background, v23);
    v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
    label = v10->_label;
    v10->_label = v25;

    [(UILabel *)v10->_label setAutoresizingMask:16];
    [(UILabel *)v10->_label setOpaque:0];
    v27 = v10->_label;
    v28 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v27 setBackgroundColor:v28];

    [(UILabel *)v10->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v10->_label setUserInteractionEnabled:0];
    [(UILabel *)v10->_label _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    [(UILabel *)v10->_label _setOverallWritingDirectionFollowsLayoutDirection:1];
    [(UIView *)v10->_compositingView addSubview:v10->_label];
    v29 = [MFModernAtomIconView alloc];
    [(MFModernAtomView *)v10 bounds];
    v30 = [(MFModernAtomIconView *)v29 initWithFrame:?];
    badgeIconView = v10->_badgeIconView;
    v10->_badgeIconView = v30;

    [(MFModernAtomIconView *)v10->_badgeIconView setIconPadding:2.5];
    [(MFModernAtomIconView *)v10->_badgeIconView setAutoresizingMask:16];
    v32 = [MEMORY[0x1E69DC888] clearColor];
    [(MFModernAtomIconView *)v10->_badgeIconView setBackgroundColor:v32];

    [(MFModernAtomIconView *)v10->_badgeIconView setContentMode:3];
    v33 = [MFModernAtomIconView alloc];
    [(MFModernAtomView *)v10 bounds];
    v34 = [(MFModernAtomIconView *)v33 initWithFrame:?];
    accessoryIconView = v10->_accessoryIconView;
    v10->_accessoryIconView = v34;

    [(MFModernAtomIconView *)v10->_accessoryIconView setIconPadding:5.0];
    [(MFModernAtomIconView *)v10->_accessoryIconView setAutoresizingMask:20];
    v36 = [MEMORY[0x1E69DC888] clearColor];
    [(MFModernAtomIconView *)v10->_accessoryIconView setBackgroundColor:v36];

    [(MFModernAtomIconView *)v10->_accessoryIconView setContentMode:3];
    [(MFModernAtomView *)v10 _updateIconViewsSemanticContentAttribute];
    [(MFModernAtomView *)v10 _updateSubviewsForWrapping];
    if ((a4 & 0x204) != 0)
    {
      v37 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:4];
      activityIndicator = v10->_activityIndicator;
      v10->_activityIndicator = v37;
    }

    v10->_disabledPresentationOptions = 0;
    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v10 selector:sel__invalidatePresentationOptions name:*MEMORY[0x1E69DDC48] object:0];

    v40 = [MEMORY[0x1E69DC888] clearColor];
    [(MFModernAtomView *)v10 setBackgroundColor:v40];

    v41 = [objc_opt_class() _defaultTintColor];
    [(MFModernAtomView *)v10 setTintColor:v41];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MFModernAtomView *)self frame];
  v6 = NSStringFromCGRect(v11);
  v7 = [(UILabel *)self->_label text];
  v8 = [v3 stringWithFormat:@"<%@: %x frame = %@; text = '%@'>", v5, self, v6, v7];;

  return v8;
}

- (int64_t)_preferredIconVariant
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MFModernUIContentSizeCategoryOrdering();
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v7;
      v7 += v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * v10) isEqualToString:{v5, v14}])
        {
          v7 = v11;
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(MFModernAtomView *)self scale];
  if (v12 > 1.0)
  {
    if (v7 + 3 >= [v6 count])
    {
      v7 = 6;
    }

    else
    {
      v7 += 3;
    }
  }

  return v7;
}

- (void)_updateIconViewsSemanticContentAttribute
{
  if (self->_separatorIsLeftAligned)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(MFModernAtomIconView *)self->_accessoryIconView setSemanticContentAttribute:v3];
  badgeIconView = self->_badgeIconView;

  [(MFModernAtomIconView *)badgeIconView setSemanticContentAttribute:v3];
}

- (void)_updateSubviewsForWrapping
{
  v3 = [(MFModernAtomView *)self isWrappingEnabled];
  [(UILabel *)self->_label setNumberOfLines:!v3];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(UILabel *)self->_label setLineBreakMode:v4];
  v5 = [(MFModernAtomView *)self separatorStyle];
  v6 = [(MFModernAtomView *)self backgroundView];
  [v6 setSeparatorStyle:2];

  v7 = [(MFModernAtomView *)self backgroundView];
  [v7 setSeparatorStyle:v5];

  if (v3)
  {
    [(MFModernAtomIconView *)self->_badgeIconView removeFromSuperview];
    accessoryIconView = self->_accessoryIconView;

    [(MFModernAtomIconView *)accessoryIconView removeFromSuperview];
  }

  else
  {
    [(UIView *)self->_compositingView addSubview:self->_badgeIconView];
    [(UIView *)self->_compositingView addSubview:self->_accessoryIconView];
    [(MFModernAtomIconView *)self->_badgeIconView setNeedsDisplay];
    v9 = self->_accessoryIconView;

    [(MFModernAtomIconView *)v9 setNeedsDisplay];
  }
}

- (id)_centeredTextAttachmentWithImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MFCenteredTextAttachment);
  [v4 size];
  v7 = v6;
  [v4 size];
  v9 = v8;
  [v4 size];
  v11 = v10;
  [v4 size];
  v13 = v12;
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
  v16 = v15;
  v20.width = v11 + 3.0;
  v20.height = v13;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v16);

  [v4 drawInRect:{3.0, 0.0, v7, v9}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(UIFont *)self->_titleFont capHeight];
  [(MFCenteredTextAttachment *)v5 setHeight:?];
  [(MFCenteredTextAttachment *)v5 setImage:v17];

  return v5;
}

- (id)_chevronTextAttachment
{
  v3 = objc_alloc_init(MFCenteredTextAttachment);
  if (_chevronTextAttachment_onceToken != -1)
  {
    [MFModernAtomView _chevronTextAttachment];
  }

  v4 = [(MFModernAtomView *)self _preferredIconVariant];
  v5 = [(MFModernAtomView *)self isPrimaryAddressAtom];
  v6 = v4 < 6 && v5;
  v7 = _MFAtomViewIconImageVariantNameForGlyphType(@"chevron", v4 + v6);
  v8 = [_chevronTextAttachment__chevronImageCache objectForKeyedSubscript:v7];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DCAB8];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v9 imageNamed:v7 inBundle:v10];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    v13 = [v11 _flatImageWithColor:v12];

    [v13 size];
    v15 = v14;
    [v13 size];
    v17 = v16;
    [v13 size];
    v19 = v18;
    [v13 size];
    v21 = v20;
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v22 scale];
    v24 = v23;
    v30.width = v19 + 9.0;
    v30.height = v21;
    UIGraphicsBeginImageContextWithOptions(v30, 0, v24);

    [v13 drawInRect:{3.0, 0.0, v15, v17}];
    v8 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_chevronTextAttachment__chevronImageCache setObject:v8 forKeyedSubscript:v7];
  }

  if ([(MFModernAtomView *)self separatorIsLeftAligned])
  {
    v25 = MEMORY[0x1E69DCAB8];
    v26 = [v8 CGImage];
    [v8 scale];
    v27 = [v25 imageWithCGImage:v26 scale:4 orientation:?];

    v8 = v27;
  }

  [(UIFont *)self->_titleFont capHeight];
  [(MFCenteredTextAttachment *)v3 setHeight:?];
  [(MFCenteredTextAttachment *)v3 setImage:v8];

  return v3;
}

void __42__MFModernAtomView__chevronTextAttachment__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _chevronTextAttachment__chevronImageCache;
  _chevronTextAttachment__chevronImageCache = v0;
}

- (BOOL)isWrappingEnabled
{
  if (!self->_wrappingSupported)
  {
    return 0;
  }

  v2 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  return IsAccessibilityCategory;
}

- (void)setIsPrimaryAddressAtom:(BOOL)a3
{
  if (self->_isPrimaryAddressAtom != a3)
  {
    self->_isPrimaryAddressAtom = a3;
    if (a3)
    {
      +[MFModernAtomView primaryAtomFont];
    }

    else
    {
      +[MFModernAtomView defaultFont];
    }
    v4 = ;
    [(MFModernAtomView *)self setTitleFont:v4];
  }
}

- (UIColor)effectiveTintColor
{
  effectiveTintColor = self->_effectiveTintColor;
  if (effectiveTintColor)
  {
    v3 = effectiveTintColor;
  }

  else
  {
    v3 = [(MFModernAtomView *)self tintColor];
  }

  return v3;
}

- (void)_setEffectiveTintColor:(id)a3
{
  v5 = a3;
  if (self->_effectiveTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_effectiveTintColor, a3);
    [(UILabel *)self->_label setTextColor:v7];
    v6 = [(MFModernAtomView *)self backgroundView];
    [v6 setTintColor:v7];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)tintColorDidChange
{
  if (!self->_effectiveTintColor || (-[MFModernAtomView effectiveTintColor](self, "effectiveTintColor"), v3 = objc_claimAutoreleasedReturnValue(), -[MFModernAtomView tintColor](self, "tintColor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v3 isEqual:v4], v4, v3, (v5 & 1) == 0))
  {
    v6 = [(MFModernAtomView *)self tintColor];
    [(MFModernAtomView *)self _setEffectiveTintColor:v6];

    [(MFModernAtomView *)self _invalidatePresentationOptions];
  }
}

- (UIFont)titleFont
{
  titleFont = self->_titleFont;
  if (!titleFont)
  {
    v4 = +[MFModernAtomView defaultFont];
    v5 = self->_titleFont;
    self->_titleFont = v4;

    titleFont = self->_titleFont;
  }

  return titleFont;
}

- (void)setTitleFont:(id)a3
{
  v10 = a3;
  if (([(UIFont *)self->_titleFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, a3);
    v5 = [(UILabel *)self->_label attributedText];
    v6 = [v5 length];

    v7 = [(UILabel *)self->_label attributedText];
    v8 = [v7 mutableCopy];

    v9 = *MEMORY[0x1E69DB648];
    [v8 removeAttribute:*MEMORY[0x1E69DB648] range:{0, v6}];
    [v8 addAttribute:v9 value:self->_titleFont range:{0, v6}];
    [(UILabel *)self->_label setAttributedText:v8];
    [(MFModernAtomView *)self _invalidatePresentationOptions];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  title = self->_title;
  self->_title = v4;

  [(MFModernAtomView *)self _updateLabelAttributes];
}

- (void)_updateLabelAttributes
{
  v3 = [(MFModernAtomView *)self title];
  v4 = [v3 length];

  if (!v4)
  {
    return;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁠"];
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    v6 = [(MFModernAtomView *)self titleFont];
    v7 = [MFModernAtomView _defaultLabelAttributesWithFont:v6 wrappingEnabled:1];
    v8 = [v7 mutableCopy];

    v9 = [(MFModernAtomView *)self effectiveTintColor];
    v10 = *MEMORY[0x1E69DB650];
    [v8 setObject:v9 forKey:*MEMORY[0x1E69DB650]];

    v11 = [v8 objectForKey:*MEMORY[0x1E69DB688]];
    [v11 setFirstLineHeadIndent:self->_firstLineIndent];
    v37 = v8;
    v36 = [MEMORY[0x1E696AD60] stringWithString:self->_title];
    [v36 insertString:@"​" atIndex:0];
    v39 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v36 attributes:v8];
    v12 = [(MFModernAtomView *)self separatorStyle];
    if (v12 == 1)
    {
      v21 = MEMORY[0x1E696AD40];
      v13 = [(MFModernAtomView *)self _chevronTextAttachment];
      v38 = [v21 attributedStringWithAttachment:v13];
    }

    else
    {
      if (v12)
      {
        v38 = 0;
LABEL_11:
        v22 = [(MFModernAtomIconView *)self->_accessoryIconView iconImages];
        v23 = [(MFModernAtomIconView *)self->_badgeIconView iconImages];
        for (i = 0; [v23 count] > i; ++i)
        {
          v25 = [v23 objectAtIndex:i];
          v26 = MEMORY[0x1E696AAB0];
          v27 = [(MFModernAtomView *)self _centeredTextAttachmentWithImage:v25];
          v28 = [v26 attributedStringWithAttachment:v27];

          [v39 insertAttributedString:v5 atIndex:1];
          [v39 insertAttributedString:v28 atIndex:1];
        }

        for (j = 0; [v22 count] > j; ++j)
        {
          v30 = [v22 objectAtIndex:j];
          v31 = MEMORY[0x1E696AAB0];
          v32 = [(MFModernAtomView *)self _centeredTextAttachmentWithImage:v30];
          v33 = [v31 attributedStringWithAttachment:v32];

          [v39 insertAttributedString:v5 atIndex:{objc_msgSend(v39, "length")}];
          [v39 insertAttributedString:v33 atIndex:{objc_msgSend(v39, "length")}];
        }

        if (v38 && !self->_separatorHidden)
        {
          [v39 insertAttributedString:v5 atIndex:{objc_msgSend(v39, "length")}];
          [v39 insertAttributedString:v38 atIndex:{objc_msgSend(v39, "length")}];
        }

        v20 = v37;
        goto LABEL_21;
      }

      v13 = [MEMORY[0x1E695DF90] dictionary];
      v14 = [(MFModernAtomView *)self titleFont];
      [v13 setObject:v14 forKey:*MEMORY[0x1E69DB648]];

      v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
      [v13 setObject:v15 forKey:v10];

      v16 = objc_alloc(MEMORY[0x1E696AD40]);
      v17 = MFLocalizedAddressSeparator();
      v38 = [v16 initWithString:v17 attributes:v13];
    }

    goto LABEL_11;
  }

  v18 = objc_alloc(MEMORY[0x1E696AD40]);
  title = self->_title;
  v20 = [(MFModernAtomView *)self titleFont];
  v11 = [MFModernAtomView _defaultLabelAttributesWithFont:v20 wrappingEnabled:0];
  v39 = [v18 initWithString:title attributes:v11];
LABEL_21:

  [(UILabel *)self->_label setAttributedText:v39];
  label = self->_label;
  v35 = [(MFModernAtomView *)self effectiveTintColor];
  [(UILabel *)label setTextColor:v35];

  [(UILabel *)self->_label sizeToFit];
  [(MFModernAtomView *)self sizeToFit];
  [(MFModernAtomView *)self setNeedsLayout];
}

- (void)_invalidatePresentationOptions
{
  [(MFModernAtomView *)self invalidateIntrinsicContentSize];
  v3 = [(MFModernAtomView *)self tintColor];
  if ([(MFModernAtomView *)self tintAdjustmentMode]== 2)
  {
    goto LABEL_10;
  }

  if (([(MFModernAtomView *)self presentationOptions]& 1) != 0)
  {
    v4 = +[MFModernAtomView _failureTintColor];
  }

  else
  {
    if (([(MFModernAtomView *)self presentationOptions]& 2) == 0)
    {
      goto LABEL_7;
    }

    v4 = +[MFModernAtomView _SMSTintColor];
  }

  v5 = v4;

  v3 = v5;
LABEL_7:
  if (v3)
  {
    [(MFModernAtomView *)self _setEffectiveTintColor:v3];
  }

  else
  {
    v12 = [(MFModernAtomView *)self tintColor];
    [(MFModernAtomView *)self _setEffectiveTintColor:?];

    v3 = 0;
  }

LABEL_10:
  v6 = [(MFModernAtomView *)self presentationOptions];
  v7 = [(MFModernAtomView *)self _preferredIconVariant];
  v13 = v3;
  v8 = [(MFModernAtomView *)self isPrimaryAddressAtom];
  v9 = [MFModernAtomView _badgeImagesForPresentationOptions:v6 iconOrder:&_badgeStyleOrder orderingLength:5 tintColor:v13 large:v8 variant:v7];
  [(MFModernAtomIconView *)self->_badgeIconView setIconImages:v9];
  v10 = [MFModernAtomView _badgeImagesForPresentationOptions:v6 iconOrder:&_accessoryStyleOrder orderingLength:4 tintColor:v13 large:v8 variant:v7];
  [(MFModernAtomIconView *)self->_accessoryIconView setIconImages:v10];
  [(MFModernAtomView *)self _updateActivityIndicator];
  [(MFModernAtomView *)self setNeedsLayout];
  cachedIsWrappingEnabled = self->_cachedIsWrappingEnabled;
  if (cachedIsWrappingEnabled == [(MFModernAtomView *)self isWrappingEnabled])
  {
    [(MFModernAtomIconView *)self->_badgeIconView setNeedsDisplay];
    [(MFModernAtomIconView *)self->_accessoryIconView setNeedsDisplay];
  }

  else
  {
    self->_cachedIsWrappingEnabled = [(MFModernAtomView *)self isWrappingEnabled];
    [(MFModernAtomView *)self _updateSubviewsForWrapping];
    [(MFModernAtomView *)self _updateLabelAttributes];
  }

  [(MFModernAtomBackgroundView *)self->_background invalidateIntrinsicContentSize];
  [(MFModernAtomBackgroundView *)self->_background setNeedsLayout];
}

- (void)setPresentationOptions:(unint64_t)a3
{
  if (self->_presentationOptions != a3)
  {
    self->_presentationOptions = a3;
    [(MFModernAtomView *)self _invalidatePresentationOptions];
  }
}

- (void)_setPresentationOption:(unint64_t)a3 enabled:(BOOL)a4
{
  if (a4)
  {
    v4 = self->_disabledPresentationOptions & ~a3;
  }

  else
  {
    v4 = self->_disabledPresentationOptions | a3;
  }

  self->_disabledPresentationOptions = v4;
  [(MFModernAtomView *)self _invalidatePresentationOptions];
}

- (void)setSeparatorHidden:(BOOL)a3
{
  v3 = a3;
  self->_separatorHidden = a3;
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    [(MFModernAtomView *)self _updateLabelAttributes];
  }

  else
  {
    v5 = [(MFModernAtomView *)self backgroundView];
    v6 = [v5 separatorView];
    [v6 setHidden:v3];
  }

  [(MFModernAtomView *)self invalidateIntrinsicContentSize];
}

- (BOOL)separatorHidden
{
  if (self->_separatorHidden)
  {
    return 1;
  }

  v3 = [(MFModernAtomView *)self backgroundView];
  v2 = [v3 separatorStyle] == 2;

  return v2;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v5 = [(MFModernAtomView *)self backgroundView];
  [v5 setSeparatorStyle:a3];

  if ([(MFModernAtomView *)self isWrappingEnabled])
  {

    [(MFModernAtomView *)self _updateLabelAttributes];
  }

  else
  {

    [(MFModernAtomView *)self sizeToFit];
  }
}

- (int64_t)separatorStyle
{
  v2 = [(MFModernAtomView *)self backgroundView];
  v3 = [v2 separatorStyle];

  return v3;
}

- (void)setSeparatorIsLeftAligned:(BOOL)a3
{
  if (self->_separatorIsLeftAligned != a3)
  {
    self->_separatorIsLeftAligned = a3;
    [(MFModernAtomView *)self _updateIconViewsSemanticContentAttribute];
    v4 = [(MFModernAtomView *)self backgroundView];
    [v4 layoutSubviews];

    [(MFModernAtomView *)self layoutSubviews];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(MFModernAtomView *)self backgroundView];
  [v9 setSelected:v7 animated:v6 style:a5];

  if (self->_selected != v7)
  {
    self->_selected = v7;
    [(MFModernAtomView *)self _updateActivityIndicator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__MFModernAtomView_setSelected_animated_style___block_invoke;
    v13[3] = &unk_1E806CDA8;
    v13[4] = self;
    v14 = v7;
    v10 = _Block_copy(v13);
    v11 = v10;
    if (v6)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.15];
      if (!v7)
      {
        UIAnimationDragCoefficient();
        [(MFModernAtomView *)self performSelector:sel__updateCompositingFilters withObject:0 afterDelay:v12 * 0.15];
LABEL_7:

        return;
      }
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    [(MFModernAtomView *)self _updateCompositingFilters];
    goto LABEL_7;
  }
}

void __47__MFModernAtomView_setSelected_animated_style___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v2 = ;
  [*(*(a1 + 32) + 472) setBackgroundColor:v2];
}

- (void)_updateCompositingFilters
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_selected)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
  }

  else
  {
    v3 = 0;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = self->_badgeIconView;
  v9[1] = self->_accessoryIconView;
  v9[2] = self->_label;
  v4 = [(MFModernAtomView *)self backgroundView];
  v10 = [v4 separatorView];

  for (i = 0; i != 4; ++i)
  {
    v6 = v9[i];
    v7 = [v6 layer];
    [v7 setCompositingFilter:v3];
  }

  for (j = 3; j != -1; --j)
  {
  }
}

- (void)_updateActivityIndicator
{
  v3 = [(MFModernAtomView *)self presentationOptions]& 0x204;
  if ([(MFModernAtomView *)self isSelected])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  activityIndicator = self->_activityIndicator;
  if (v3)
  {
    if (activityIndicator)
    {
      if ([(UIActivityIndicatorView *)activityIndicator activityIndicatorViewStyle]== v4)
      {
        return;
      }

      [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
      v6 = self->_activityIndicator;
      self->_activityIndicator = 0;
    }

    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:v4];
    v8 = self->_activityIndicator;
    self->_activityIndicator = v7;

    [(MFModernAtomView *)self addSubview:self->_activityIndicator];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    [(MFModernAtomView *)self setNeedsLayout];

    [(MFModernAtomView *)self invalidateIntrinsicContentSize];
  }

  else if (activityIndicator)
  {
    [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
    v9 = self->_activityIndicator;
    self->_activityIndicator = 0;
  }
}

- (void)_updateFontIfNecessary
{
  if ([(MFModernAtomView *)self isPrimaryAddressAtom])
  {
    v5 = [objc_opt_class() primaryAtomFont];
    [(MFModernAtomView *)self setTitleFont:?];
  }

  else
  {
    titleFont = self->_titleFont;
    if (titleFont)
    {
      v6 = [objc_opt_class() primaryAtomFont];
      v4 = [(UIFont *)titleFont isEqual:?];

      if (!v4)
      {
        return;
      }
    }

    v5 = [objc_opt_class() defaultFont];
    [(MFModernAtomView *)self setTitleFont:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    [(MFModernAtomView *)self _leftPadding];
    v7 = v6;
    [(MFModernAtomView *)self _rightPadding];
    label = self->_label;
    v10 = fmax(width - (v7 + v8), 0.0);

    [(UILabel *)label sizeThatFits:v10, 1.79769313e308];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MFModernAtomView;
    [(MFModernAtomView *)&v13 sizeThatFits:width, height];
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (double)preferredWidthWithSizeConstraints:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MFModernAtomView *)self _leftPadding];
  v7 = v6;
  [(MFModernAtomView *)self _rightPadding];
  v9 = fmax(width - (v7 + v8), 0.0);
  v10 = [(UILabel *)self->_label attributedText];
  [v10 boundingRectWithSize:1 options:0 context:{v9, height}];
  v12 = ceil(v11);

  [(MFModernAtomView *)self _leftPadding];
  v14 = v12 + v13;
  [(MFModernAtomView *)self _rightPadding];
  result = fmax(v14 + v15, 25.0);
  if (width < result && width > 0.0)
  {
    return width;
  }

  return result;
}

- (void)layoutSubviews
{
  [(MFModernAtomView *)self _updateFontIfNecessary];
  [(MFModernAtomView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_compositingView setFrame:?];
  rect = v8;
  [(MFModernAtomView *)self preferredWidthWithSizeConstraints:v8, v10];
  v12 = v11;
  [(UILabel *)self->_label bounds];
  v14 = v13;
  v15 = [(UILabel *)self->_label font];
  [v15 lineHeight];
  v17 = round(v14 / v16);

  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    v18 = [(MFModernAtomView *)self titleLabel];
    [v18 frame];
    v12 = v19 + 4.0;

    if (v17 == 1.0)
    {
      firstLineIndent = self->_firstLineIndent;
      v12 = v12 - firstLineIndent;
      v21 = firstLineIndent + 0.0;
    }

    else
    {
      v21 = 0.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (![(MFModernAtomView *)self separatorHidden]&& ![(MFModernAtomView *)self separatorStyle])
    {
      v22 = [(MFModernAtomView *)self backgroundView];
      [v22 separatorWidth];
      v12 = v12 - v23;
    }
  }

  [(MFModernAtomBackgroundView *)self->_background setFrame:v21, 0.0, v12, v10];
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    label = self->_label;
    [(MFModernAtomView *)self bounds];
    [(UILabel *)label sizeThatFits:v25, v26];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    [(MFModernAtomView *)self _leftPadding];
    [(MFModernAtomView *)self _rightPadding];
    [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v30 = v31;
    UIRoundToViewScale();
    v28 = v32;
  }

  [(MFModernAtomView *)self _leftPadding];
  v34 = v33;
  separatorIsLeftAligned = self->_separatorIsLeftAligned;
  if (separatorIsLeftAligned)
  {
    v36 = *(MEMORY[0x1E695F058] + 8);
    v73.origin.x = v4;
    v73.origin.y = v6;
    v73.size.width = rect;
    v73.size.height = v10;
    MaxX = CGRectGetMaxX(v73);
    v74.origin.x = v34;
    v74.origin.y = v36;
    v74.size.width = v28;
    v74.size.height = v30;
    v38 = MaxX - CGRectGetWidth(v74);
    [(MFModernAtomView *)self _leftPadding];
    v34 = v38 - v39;
  }

  v40 = round(v10 * 0.5 - v30 * 0.5);
  [(UILabel *)self->_label setFrame:v34, v40, v28, v30];
  v41 = [(MFModernAtomView *)self isWrappingEnabled];
  if (v17 != 1.0 || !v41)
  {
    titleLabelFillView = self->_titleLabelFillView;
    v44 = v34;
    v47 = v40;
    v45 = v28;
  }

  else
  {
    v43 = self->_firstLineIndent;
    v44 = v34 + v43;
    v45 = v28 - v43;
    titleLabelFillView = self->_titleLabelFillView;
    v47 = v40;
  }

  [(UIView *)titleLabelFillView setFrame:v44, v47, v45, v30];
  [(MFModernAtomIconView *)self->_badgeIconView preferredWidth];
  v49 = v48;
  [(MFModernAtomIconView *)self->_accessoryIconView preferredWidth];
  v51 = v50;
  [(MFModernAtomView *)self _leftInset];
  if (separatorIsLeftAligned)
  {
    v53 = rect - v49 - v52;
    v75.origin.x = v34;
    v75.origin.y = v40;
    v75.size.width = v28;
    v75.size.height = v30;
    v54 = CGRectGetMinX(v75) + -5.0 - v51;
  }

  else
  {
    v53 = v52 + self->_firstLineIndent;
    v76.origin.x = v34;
    v76.origin.y = v40;
    v76.size.width = v28;
    v76.size.height = v30;
    v54 = CGRectGetMaxX(v76) + 5.0;
  }

  [(MFModernAtomIconView *)self->_badgeIconView setFrame:v53, 0.0, v49, v10];
  [(MFModernAtomIconView *)self->_accessoryIconView setFrame:v54, 0.0, v51, v10];
  [(MFModernAtomView *)self baselinePoint];
  v56 = v55;
  [(MFModernAtomIconView *)self->_accessoryIconView setDrawingOffset:0.0];
  [(MFModernAtomIconView *)self->_badgeIconView setDrawingOffset:0.0, v56];
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    v59 = v58;
    v61 = v60;
    UIRoundToViewScale();
    v63 = v62;
    v64 = (self->_presentationOptions >> 9) & 1 ^ separatorIsLeftAligned;
    v65 = [(MFModernAtomView *)self separatorHidden]|| [(MFModernAtomView *)self separatorStyle]!= 0;
    if (v64)
    {
      if (separatorIsLeftAligned)
      {
        v66 = 7.0;
      }

      else
      {
        v66 = 5.0;
      }

      if (v65 || !separatorIsLeftAligned)
      {
        goto LABEL_37;
      }

      v67 = [(MFModernAtomView *)self backgroundView];
      [v67 separatorWidth];
      v66 = v66 + v68;
    }

    else
    {
      v69 = 7.0;
      if (separatorIsLeftAligned)
      {
        v69 = 5.0;
      }

      v66 = rect - v69 - v59;
      if (separatorIsLeftAligned || v65)
      {
        goto LABEL_37;
      }

      v67 = [(MFModernAtomView *)self backgroundView];
      [v67 separatorWidth];
      v66 = v66 - v70;
    }

LABEL_37:
    [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v66, v63, v59, v61];
  }

  v72.receiver = self;
  v72.super_class = MFModernAtomView;
  [(MFModernAtomView *)&v72 layoutSubviews];
}

- (CGRect)selectionFrame
{
  v3 = [(MFModernAtomBackgroundView *)self->_background selectedView];
  [v3 frame];
  [(MFModernAtomView *)self convertRect:self->_background fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  [(MFModernAtomView *)self _leftInset];
  v4 = v3;
  [(MFModernAtomView *)self _rightInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.right = v6;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (double)_rightInset
{
  v3 = 3.0;
  if (![(MFModernAtomView *)self separatorHidden])
  {
    v4 = [(MFModernAtomView *)self backgroundView];
    [v4 separatorWidth];
    v3 = v5 + 5.0;
  }

  result = 0.0;
  if (self->_separatorIsLeftAligned)
  {
    return v3;
  }

  return result;
}

- (double)_rightPadding
{
  v3 = [(MFModernAtomView *)self separatorHidden];
  if ([(MFModernAtomView *)self isWrappingEnabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MFModernAtomIconView *)self->_accessoryIconView iconImages];
    v4 = [v5 count] == 0;
  }

  v6 = 4.0;
  if (!v3 || !v4)
  {
    v6 = 2.0;
    if (!v3)
    {
      v7 = [(MFModernAtomView *)self backgroundView];
      [v7 separatorWidth];
      v9 = v8 + 2.0;

      v6 = v9 + 2.0;
    }

    if (!v4)
    {
      [(MFModernAtomIconView *)self->_accessoryIconView preferredWidth];
      v6 = v6 + -2.0 + v10 + 5.0;
    }
  }

  activityIndicator = self->_activityIndicator;
  if (activityIndicator && (self->_presentationOptions & 4) != 0)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    v6 = v6 + CGRectGetWidth(v13) + 5.0;
  }

  return v6 * self->_scalingFactor;
}

- (double)_leftPadding
{
  v3 = 4.0;
  if (![(MFModernAtomView *)self isWrappingEnabled])
  {
    [(MFModernAtomIconView *)self->_badgeIconView preferredWidth];
    v3 = v4 + 4.0;
  }

  activityIndicator = self->_activityIndicator;
  if (activityIndicator && (self->_presentationOptions & 0x200) != 0)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    return v3 + CGRectGetWidth(v7) + 5.0;
  }

  return v3;
}

- (void)setScale:(double)a3
{
  if (self->_scalingFactor != a3)
  {
    self->_scalingFactor = a3;
    v8 = [(MFModernAtomView *)self backgroundView];
    [v8 setScalingFactor:a3];

    v5 = [(MFModernAtomView *)self titleFont];
    v6 = v5;
    if (a3 != 1.0)
    {
      v9 = v5;
      v7 = [v5 _fontScaledByScaleFactor:self->_scalingFactor];

      v6 = v7;
    }

    v10 = v6;
    [(MFModernAtomView *)self setTitleFont:v6];
    [(MFModernAtomView *)self setNeedsLayout];
  }
}

- (CGPoint)baselinePoint
{
  [(UILabel *)self->_label frame];
  v4 = v3;
  [(UILabel *)self->_label _firstLineBaseline];
  v6 = v4 + v5;
  v7 = 0.0;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MFModernAtomView *)self preferredWidth];
  v4 = v3;
  [(UILabel *)self->_label intrinsicContentSize];
  v6 = v5 + 6.0;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)performBuildInAnimationFromTextColor:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [(UILabel *)self->_label attributedText];
  [v8 setAttributedText:v9];

  [(UILabel *)self->_label frame];
  [v8 setFrame:?];
  [v8 setTextColor:v6];
  [(MFModernAtomView *)self addSubview:v8];
  [(MFModernAtomBackgroundView *)self->_background setAlpha:0.0];
  [(UILabel *)self->_label setAlpha:0.0];
  v10 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__MFModernAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke;
  v14[3] = &unk_1E806C520;
  v14[4] = self;
  v15 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MFModernAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke_2;
  v12[3] = &unk_1E806D6F0;
  v11 = v15;
  v13 = v11;
  [v10 animateWithDuration:v14 animations:v12 completion:a4];
}

uint64_t __70__MFModernAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setAlpha:1.0];
  [*(*(a1 + 32) + 480) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __70__MFModernAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

@end