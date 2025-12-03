@interface AXCCRoundButton
- (AXCCRoundButton)initWithFrame:(CGRect)frame;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)accessibilityFrame;
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)controlCenterApplyPrimaryContentShadow;
- (void)layoutSubviews;
- (void)setAxis:(int64_t)axis;
- (void)setEnabled:(BOOL)enabled;
- (void)setGlyphState:(id)state;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setPackageName:(id)name;
- (void)setSelected:(BOOL)selected;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentSizeCategory;
- (void)updateGlyphImageViewVisualStyling;
- (void)updateLabelVisualStyling;
- (void)updatePackageVisualStyling;
- (void)visualStylingProviderDidChange:(id)change;
@end

@implementation AXCCRoundButton

- (AXCCRoundButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18.receiver = self;
  v18.super_class = AXCCRoundButton;
  v7 = [(AXCCRoundButton *)&v18 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x29EDC0CA8]) initWithFrame:{x, y, width, height}];
    packageView = v7->_packageView;
    v7->_packageView = v8;

    [(CCUICAPackageView *)v7->_packageView setUserInteractionEnabled:0];
    [(AXCCRoundButton *)v7 addSubview:v7->_packageView];
    v10 = objc_alloc_init(MEMORY[0x29EDC7AD8]);
    glyphImageView = v7->_glyphImageView;
    v7->_glyphImageView = v10;

    [(UIImageView *)v7->_glyphImageView setContentMode:4];
    [(UIImageView *)v7->_glyphImageView setUserInteractionEnabled:0];
    [(AXCCRoundButton *)v7 addSubview:v7->_glyphImageView];
    v12 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{x, y, width, height}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v12;

    [(UILabel *)v7->_titleLabel setNumberOfLines:3];
    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    LODWORD(v14) = 1051931443;
    [(UILabel *)v7->_titleLabel _setHyphenationFactor:v14];
    labelColor = [MEMORY[0x29EDC7A00] labelColor];
    [(UILabel *)v7->_titleLabel setTextColor:labelColor];

    [(AXCCRoundButton *)v7 addSubview:v7->_titleLabel];
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_updateContentSizeCategory name:*MEMORY[0x29EDC8078] object:0];

    [(AXCCRoundButton *)v7 updateContentSizeCategory];
    [(AXCCRoundButton *)v7 updatePackageVisualStyling];
    [(AXCCRoundButton *)v7 updateLabelVisualStyling];
    [(AXCCRoundButton *)v7 updateGlyphImageViewVisualStyling];
  }

  return v7;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v37 layoutSubviews];
  [(AXCCRoundButton *)self bounds];
  [(AXCCRoundButton *)self imageFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CCUICAPackageView *)self->_packageView setFrame:?];
  [(AXCCRoundButton *)self imageFrame];
  [(UIImageView *)self->_glyphImageView setFrame:?];
  axis = self->_axis;
  if (axis == 1)
  {
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    CGRectGetMaxX(v40);
    UIRectInset();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel sizeThatFits:v29, v31];
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    CGRectGetMinX(v41);
    UIRectCenteredYInRect();
  }

  else
  {
    if (axis)
    {
      return;
    }

    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    CGRectGetMaxY(v38);
    UIRectInset();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel sizeThatFits:v16, v18];
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    CGRectGetMinY(v39);
    UIRectCenteredXInRect();
  }

  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  [(UILabel *)*p_titleLabel setFrame:?];
  [(AXCCShadowView *)self->_shadowView setFrame:v33, v34, v35, v36];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(AXCCRoundButton *)self imageFrame];
  v8 = v6;
  v9 = v7;
  axis = self->_axis;
  if (axis == 1)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width - (v6 + 8.0), height - v7];
    v8 = v8 + AXCCSizeCeilToViewScale(self);
    if (v9 < v13)
    {
      v9 = v13;
    }
  }

  else if (!axis)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width - v6, height - (v7 + 8.0)];
    v11 = AXCCSizeCeilToViewScale(self);
    if (v11 >= v8)
    {
      v8 = v11;
    }

    v9 = v9 + v12;
  }

  if (v8 >= width)
  {
    v14 = width;
  }

  else
  {
    v14 = v8;
  }

  if (v9 >= height)
  {
    v15 = height;
  }

  else
  {
    v15 = v9;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = AXCCRoundButton;
  changeCopy = change;
  [(AXCCRoundButton *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(AXCCRoundButton *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(AXCCRoundButton *)self updatePackageVisualStyling];
    [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];
  [(AXCCRoundButton *)self setAccessibilityLabel:titleCopy];

  [(AXCCRoundButton *)self setNeedsLayout];
}

- (void)setPackageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_packageName isEqualToString:?])
  {
    objc_storeStrong(&self->_packageName, name);
    v5 = MEMORY[0x29EDC0CA0];
    v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v7 = [v5 descriptionForPackageNamed:nameCopy inBundle:v6];
    [(CCUICAPackageView *)self->_packageView setPackageDescription:v7];

    [(AXCCRoundButton *)self updatePackageVisualStyling];
  }
}

- (void)setGlyphState:(id)state
{
  stateCopy = state;
  if (![(NSString *)self->_glyphState isEqualToString:?])
  {
    objc_storeStrong(&self->_glyphState, state);
    [(CCUICAPackageView *)self->_packageView setStateName:stateCopy];
  }
}

- (void)setImage:(id)image
{
  v4 = [image imageWithRenderingMode:0];
  glyphImage = self->_glyphImage;
  self->_glyphImage = v4;

  [(UIImageView *)self->_glyphImageView setImage:self->_glyphImage];

  [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
}

- (CGRect)imageFrame
{
  contentVerticalAlignment = [(AXCCRoundButton *)self contentVerticalAlignment];
  [(AXCCRoundButton *)self bounds];
  if (contentVerticalAlignment)
  {
    UIRectCenteredXInRect();
  }

  else
  {
    UIRectCenteredIntegralRect();
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setAxis:(int64_t)axis
{
  self->_axis = axis;
  if (axis)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v4];

  [(AXCCRoundButton *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  stylingProvider = self->_stylingProvider;
  if (stylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(AXCCVisualStylingProvider *)stylingProvider removeObserver:self];
    objc_storeStrong(&self->_stylingProvider, provider);
    [(AXCCVisualStylingProvider *)self->_stylingProvider addObserver:self];
    [(AXCCRoundButton *)self updateLabelVisualStyling];
    [(AXCCRoundButton *)self updatePackageVisualStyling];
    stylingProvider = [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
    providerCopy = v7;
  }

  MEMORY[0x2A1C71028](stylingProvider, providerCopy);
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v6 setHighlighted:?];
  v5 = 0.2;
  if (!highlightedCopy)
  {
    v5 = 1.0;
  }

  [(CCUICAPackageView *)self->_packageView setAlpha:v5];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v4 setSelected:selected];
  [(AXCCRoundButton *)self updatePackageVisualStyling];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v4 setEnabled:enabled];
  [(AXCCRoundButton *)self updateLabelVisualStyling];
  [(AXCCRoundButton *)self updatePackageVisualStyling];
  [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
}

- (void)controlCenterApplyPrimaryContentShadow
{
  if (!self->_shadowView)
  {
    v3 = objc_alloc_init(AXCCShadowView);
    shadowView = self->_shadowView;
    self->_shadowView = v3;

    [(AXCCShadowView *)self->_shadowView controlCenterApplyPrimaryContentShadow];

    MEMORY[0x2A1C70FE8](self, sel_insertSubview_below_);
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(AXCCRoundButton *)self imageFrame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)accessibilityLabel
{
  titleLabel = [(AXCCRoundButton *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  packageView = [(AXCCRoundButton *)self packageView];
  [packageView accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AXCCRoundButton;
  return (*MEMORY[0x29EDC7F70] | [(AXCCRoundButton *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FA8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)visualStylingProviderDidChange:(id)change
{
  [(AXCCRoundButton *)self updateLabelVisualStyling];
  [(AXCCRoundButton *)self updatePackageVisualStyling];

  [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
}

- (void)updateLabelVisualStyling
{
  if (self->_labelHidden)
  {
    titleLabel = self->_titleLabel;
    v4 = 0.0;
LABEL_13:

    [(UILabel *)titleLabel setAlpha:v4];
    return;
  }

  if (!self->_stylingProvider)
  {
    goto LABEL_9;
  }

  isEnabled = [(AXCCRoundButton *)self isEnabled];
  stylingProvider = self->_stylingProvider;
  if ((isEnabled & 1) == 0)
  {
    [(AXCCVisualStylingProvider *)stylingProvider applyStyle:0 toView:self->_titleLabel];
    titleLabel = self->_titleLabel;
    goto LABEL_12;
  }

  if (!stylingProvider)
  {
LABEL_9:
    isEnabled2 = [(AXCCRoundButton *)self isEnabled];
    titleLabel = self->_titleLabel;
    if (isEnabled2)
    {
      v4 = 1.0;
      goto LABEL_13;
    }

LABEL_12:
    v4 = 0.5;
    goto LABEL_13;
  }

  v7 = self->_titleLabel;

  [(AXCCVisualStylingProvider *)stylingProvider applyStyle:0 toView:v7];
}

- (void)updatePackageVisualStyling
{
  v24 = *MEMORY[0x29EDCA608];
  isEnabled = [(AXCCRoundButton *)self isEnabled];
  v4 = 0.5;
  if (isEnabled)
  {
    v4 = 1.0;
  }

  [(CCUICAPackageView *)self->_packageView setAlpha:v4];
  stylingProvider = self->_stylingProvider;
  if (stylingProvider)
  {
    primaryColor = [(AXCCVisualStylingProvider *)stylingProvider primaryColor];
  }

  else
  {
    if (([(AXCCRoundButton *)self isSelected]& 1) != 0)
    {
      [MEMORY[0x29EDC7A00] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x29EDC7A00] systemGrayColor];
    }
    primaryColor = ;
  }

  v7 = primaryColor;
  cGColor = [primaryColor CGColor];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  package = [(CCUICAPackageView *)self->_packageView package];
  publishedObjectNames = [package publishedObjectNames];

  v11 = [publishedObjectNames countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(publishedObjectNames);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 hasSuffix:@"-tint-shape"])
        {
          package2 = [(CCUICAPackageView *)self->_packageView package];
          v17 = [package2 publishedObjectWithName:v15];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setFillColor:cGColor];
          }
        }

        else
        {
          if (![v15 hasSuffix:@"-tint-bg"])
          {
            continue;
          }

          package3 = [(CCUICAPackageView *)self->_packageView package];
          v17 = [package3 publishedObjectWithName:v15];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setBackgroundColor:cGColor];
          }
        }
      }

      v12 = [publishedObjectNames countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)updateGlyphImageViewVisualStyling
{
  isEnabled = [(AXCCRoundButton *)self isEnabled];
  v4 = 0.5;
  if (isEnabled)
  {
    v4 = 1.0;
  }

  [(UIImageView *)self->_glyphImageView setAlpha:v4];
  if (([(AXCCRoundButton *)self isSelected]& 1) != 0)
  {
    [MEMORY[0x29EDC7A00] systemDarkGrayColor];
  }

  else
  {
    [MEMORY[0x29EDC7A00] systemWhiteColor];
  }
  v5 = ;
  [(UIImageView *)self->_glyphImageView setTintColor:v5];
  [(UIImageView *)self->_glyphImageView controlCenterApplyPrimaryContentShadow];
}

- (void)updateContentSizeCategory
{
  v5 = [MEMORY[0x29EDC76B0] _preferredFontForTextStyle:*MEMORY[0x29EDC8100] maximumContentSizeCategory:*MEMORY[0x29EDC8088]];
  v3 = MEMORY[0x29EDC76B0];
  [v5 pointSize];
  v4 = [v3 boldSystemFontOfSize:?];
  [(UILabel *)self->_titleLabel setFont:v4];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end