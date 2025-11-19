@interface AXCCRoundButton
- (AXCCRoundButton)initWithFrame:(CGRect)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)accessibilityFrame;
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)controlCenterApplyPrimaryContentShadow;
- (void)layoutSubviews;
- (void)setAxis:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setGlyphState:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setPackageName:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateGlyphImageViewVisualStyling;
- (void)updateLabelVisualStyling;
- (void)updatePackageVisualStyling;
- (void)visualStylingProviderDidChange:(id)a3;
@end

@implementation AXCCRoundButton

- (AXCCRoundButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v15 = [MEMORY[0x29EDC7A00] labelColor];
    [(UILabel *)v7->_titleLabel setTextColor:v15];

    [(AXCCRoundButton *)v7 addSubview:v7->_titleLabel];
    v16 = [MEMORY[0x29EDBA068] defaultCenter];
    [v16 addObserver:v7 selector:sel_updateContentSizeCategory name:*MEMORY[0x29EDC8078] object:0];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = AXCCRoundButton;
  v4 = a3;
  [(AXCCRoundButton *)&v8 traitCollectionDidChange:v4];
  v5 = [(AXCCRoundButton *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(AXCCRoundButton *)self updatePackageVisualStyling];
    [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
  }
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];
  [(AXCCRoundButton *)self setAccessibilityLabel:v5];

  [(AXCCRoundButton *)self setNeedsLayout];
}

- (void)setPackageName:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_packageName isEqualToString:?])
  {
    objc_storeStrong(&self->_packageName, a3);
    v5 = MEMORY[0x29EDC0CA0];
    v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v7 = [v5 descriptionForPackageNamed:v8 inBundle:v6];
    [(CCUICAPackageView *)self->_packageView setPackageDescription:v7];

    [(AXCCRoundButton *)self updatePackageVisualStyling];
  }
}

- (void)setGlyphState:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_glyphState isEqualToString:?])
  {
    objc_storeStrong(&self->_glyphState, a3);
    [(CCUICAPackageView *)self->_packageView setStateName:v5];
  }
}

- (void)setImage:(id)a3
{
  v4 = [a3 imageWithRenderingMode:0];
  glyphImage = self->_glyphImage;
  self->_glyphImage = v4;

  [(UIImageView *)self->_glyphImageView setImage:self->_glyphImage];

  [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
}

- (CGRect)imageFrame
{
  v3 = [(AXCCRoundButton *)self contentVerticalAlignment];
  [(AXCCRoundButton *)self bounds];
  if (v3)
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

- (void)setAxis:(int64_t)a3
{
  self->_axis = a3;
  if (a3)
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

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  stylingProvider = self->_stylingProvider;
  if (stylingProvider != v5)
  {
    v7 = v5;
    [(AXCCVisualStylingProvider *)stylingProvider removeObserver:self];
    objc_storeStrong(&self->_stylingProvider, a3);
    [(AXCCVisualStylingProvider *)self->_stylingProvider addObserver:self];
    [(AXCCRoundButton *)self updateLabelVisualStyling];
    [(AXCCRoundButton *)self updatePackageVisualStyling];
    stylingProvider = [(AXCCRoundButton *)self updateGlyphImageViewVisualStyling];
    v5 = v7;
  }

  MEMORY[0x2A1C71028](stylingProvider, v5);
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v6 setHighlighted:?];
  v5 = 0.2;
  if (!v3)
  {
    v5 = 1.0;
  }

  [(CCUICAPackageView *)self->_packageView setAlpha:v5];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v4 setSelected:a3];
  [(AXCCRoundButton *)self updatePackageVisualStyling];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXCCRoundButton;
  [(AXCCRoundButton *)&v4 setEnabled:a3];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AXCCRoundButton *)self imageFrame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)accessibilityLabel
{
  v2 = [(AXCCRoundButton *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(AXCCRoundButton *)self packageView];
  [v2 accessibilityFrame];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if (v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  v6 = [v4 numberOfTapsRequired];

  if (v6 != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)visualStylingProviderDidChange:(id)a3
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

  v5 = [(AXCCRoundButton *)self isEnabled];
  stylingProvider = self->_stylingProvider;
  if ((v5 & 1) == 0)
  {
    [(AXCCVisualStylingProvider *)stylingProvider applyStyle:0 toView:self->_titleLabel];
    titleLabel = self->_titleLabel;
    goto LABEL_12;
  }

  if (!stylingProvider)
  {
LABEL_9:
    v8 = [(AXCCRoundButton *)self isEnabled];
    titleLabel = self->_titleLabel;
    if (v8)
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
  v3 = [(AXCCRoundButton *)self isEnabled];
  v4 = 0.5;
  if (v3)
  {
    v4 = 1.0;
  }

  [(CCUICAPackageView *)self->_packageView setAlpha:v4];
  stylingProvider = self->_stylingProvider;
  if (stylingProvider)
  {
    v6 = [(AXCCVisualStylingProvider *)stylingProvider primaryColor];
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
    v6 = ;
  }

  v7 = v6;
  v8 = [v6 CGColor];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(CCUICAPackageView *)self->_packageView package];
  v10 = [v9 publishedObjectNames];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 hasSuffix:@"-tint-shape"])
        {
          v16 = [(CCUICAPackageView *)self->_packageView package];
          v17 = [v16 publishedObjectWithName:v15];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setFillColor:v8];
          }
        }

        else
        {
          if (![v15 hasSuffix:@"-tint-bg"])
          {
            continue;
          }

          v18 = [(CCUICAPackageView *)self->_packageView package];
          v17 = [v18 publishedObjectWithName:v15];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setBackgroundColor:v8];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)updateGlyphImageViewVisualStyling
{
  v3 = [(AXCCRoundButton *)self isEnabled];
  v4 = 0.5;
  if (v3)
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