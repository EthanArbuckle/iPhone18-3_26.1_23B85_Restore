@interface AXCCExpandableButton
+ (double)collapsedHeightWithImageHeight:(double)a3 maximumHeight:(double)a4;
- (AXCCExpandableButton)initWithFrame:(CGRect)a3;
- (AXCCExpandableButtonOption)selectedOption;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)buttonImageSize;
- (CGSize)maximumExpandedSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)initForControlCenter;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)_buttonLayoutAxis;
- (unint64_t)accessibilityTraits;
- (void)_animateGlyphStateSelected:(BOOL)a3;
- (void)_layoutLabels;
- (void)_layoutSelectionView;
- (void)_resetSelectionView;
- (void)_springAnimate:(id)a3;
- (void)_updateButtonsVisiblity;
- (void)_updateSelectionVisiblity;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didTapButton:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAxis:(int64_t)a3;
- (void)setBackgroundView:(id)a3;
- (void)setButtonImageSize:(CGSize)a3;
- (void)setContentVerticalAlignment:(int64_t)a3;
- (void)setDisplayMessage:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOptions:(id)a3;
- (void)setSelectedOptionIndex:(int64_t)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTitle:(id)a3;
- (void)showMessage:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation AXCCExpandableButton

- (id)initForControlCenter
{
  v2 = [(AXCCExpandableButton *)self initWithFrame:*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x29EDC0CC8] controlCenterDarkMaterial];
    [(AXCCExpandableButton *)v2 setBackgroundView:v3];

    [(UILabel *)v2->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(UILabel *)v2->_subtitleLabel controlCenterApplyPrimaryContentShadow];
    [(UILabel *)v2->_messageLabel controlCenterApplyPrimaryContentShadow];
    v2->_isControlCenter = 1;
  }

  return v2;
}

- (AXCCExpandableButton)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = AXCCExpandableButton;
  v3 = [(AXCCExpandableButton *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    buttons = v3->_buttons;
    v3->_buttons = v4;

    v3->_selectedOptionIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(AXCCExpandableButton *)v3 setContentVerticalAlignment:0];
    v6 = objc_alloc(MEMORY[0x29EDC7DA0]);
    v7 = *MEMORY[0x29EDB90E0];
    v8 = *(MEMORY[0x29EDB90E0] + 8);
    v9 = *(MEMORY[0x29EDB90E0] + 16);
    v10 = *(MEMORY[0x29EDB90E0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x29EDB90E0], v8, v9, v10}];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v11;

    v13 = [MEMORY[0x29EDC7A00] systemGroupedBackgroundColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v13];

    [(AXCCExpandableButton *)v3 addSubview:v3->_backgroundView];
    v14 = objc_opt_new();
    clippingView = v3->_clippingView;
    v3->_clippingView = v14;

    [(UIView *)v3->_clippingView setUserInteractionEnabled:0];
    [(UIView *)v3->_clippingView setClipsToBounds:1];
    [(AXCCExpandableButton *)v3 addSubview:v3->_clippingView];
    v16 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v7, v8, v9, v10}];
    selectionView = v3->_selectionView;
    v3->_selectionView = v16;

    [(UIView *)v3->_clippingView addSubview:v3->_selectionView];
    v18 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v7, v8, v9, v10}];
    overlaySelectionView = v3->_overlaySelectionView;
    v3->_overlaySelectionView = v18;

    v20 = [MEMORY[0x29EDC7A00] whiteColor];
    [(UIView *)v3->_overlaySelectionView setBackgroundColor:v20];

    [(UIView *)v3->_overlaySelectionView _setDrawsAsBackdropOverlayWithBlendMode:2];
    [(UIView *)v3->_selectionView addSubview:v3->_overlaySelectionView];
    v21 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v21;

    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    LODWORD(v23) = 1051931443;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v23];
    v24 = [MEMORY[0x29EDC7A00] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v24];

    [(AXCCExpandableButton *)v3 addSubview:v3->_titleLabel];
    v25 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v25;

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    LODWORD(v27) = 1051931443;
    [(UILabel *)v3->_subtitleLabel _setHyphenationFactor:v27];
    v28 = [MEMORY[0x29EDC7A00] labelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v28];

    [(AXCCExpandableButton *)v3 addSubview:v3->_subtitleLabel];
    v29 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{v7, v8, v9, v10}];
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v29;

    [(UILabel *)v3->_messageLabel setNumberOfLines:2];
    [(UILabel *)v3->_messageLabel setTextAlignment:1];
    LODWORD(v31) = 1051931443;
    [(UILabel *)v3->_messageLabel _setHyphenationFactor:v31];
    [(UILabel *)v3->_messageLabel setAlpha:0.0];
    v32 = [MEMORY[0x29EDC7A00] labelColor];
    [(UILabel *)v3->_messageLabel setTextColor:v32];

    [(AXCCExpandableButton *)v3 addSubview:v3->_messageLabel];
    v33 = [objc_alloc(MEMORY[0x29EDC7BD8]) initWithDelegate:v3];
    [(AXCCExpandableButton *)v3 addInteraction:v33];
    v34 = [MEMORY[0x29EDBA068] defaultCenter];
    [v34 addObserver:v3 selector:sel_updateContentSizeCategory name:*MEMORY[0x29EDC8078] object:0];

    [(AXCCExpandableButton *)v3 updateContentSizeCategory];
  }

  return v3;
}

- (void)layoutSubviews
{
  v74 = *MEMORY[0x29EDCA608];
  v72.receiver = self;
  v72.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v72 layoutSubviews];
  [(AXCCExpandableButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AXCCExpandableButton *)self traitCollection];
  [v11 displayScale];

  axis = self->_axis;
  if (axis)
  {
    if (axis != 1)
    {
      goto LABEL_8;
    }

    v75.origin.x = v4;
    v75.origin.y = v6;
    v75.size.width = v8;
    v75.size.height = v10;
    Width = CGRectGetWidth(v75);
    v76.origin.x = v4;
    v76.origin.y = v6;
    v76.size.width = v8;
    v76.size.height = v10;
    v13 = 0;
    CGRectGetHeight(v76);
    v77.origin.x = v4;
    v77.origin.y = v6;
    v77.size.width = v8;
    v77.size.height = v10;
    CGRectGetHeight(v77);
    UIFloorToScale();
    v15 = v14;
    if ([(NSMutableArray *)self->_buttons count]>= 2)
    {
      [(NSMutableArray *)self->_buttons count];
      [(NSMutableArray *)self->_buttons count];
      UIFloorToScale();
      v13 = v16;
    }

    buttons = self->_buttons;
    v70[0] = MEMORY[0x29EDCA5F8];
    v70[1] = 3221225472;
    v70[2] = sub_29C9406C4;
    v70[3] = &unk_29F335478;
    v70[4] = self;
    *&v70[5] = v4;
    *&v70[6] = v6;
    *&v70[7] = v8;
    *&v70[8] = v10;
    v70[9] = v15;
    v70[10] = v13;
    *&v70[11] = Width;
    v18 = v70;
  }

  else
  {
    v78.origin.x = v4;
    v78.origin.y = v6;
    v78.size.width = v8;
    v78.size.height = v10;
    Height = CGRectGetHeight(v78);
    v79.origin.x = v4;
    v79.origin.y = v6;
    v79.size.width = v8;
    v79.size.height = v10;
    CGRectGetWidth(v79);
    v80.origin.x = v4;
    v80.origin.y = v6;
    v80.size.width = v8;
    v80.size.height = v10;
    CGRectGetWidth(v80);
    UIFloorToScale();
    v21 = v20;
    [(NSArray *)self->_options count];
    UIFloorToScale();
    buttons = self->_buttons;
    v71[0] = MEMORY[0x29EDCA5F8];
    v71[1] = 3221225472;
    v71[2] = sub_29C940680;
    v71[3] = &unk_29F335478;
    v71[4] = self;
    *&v71[5] = v4;
    *&v71[6] = v6;
    *&v71[7] = v8;
    *&v71[8] = v10;
    v71[9] = v21;
    v71[10] = v22;
    *&v71[11] = Height;
    v18 = v71;
  }

  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v18];
LABEL_8:
  v23 = [(NSMutableArray *)self->_buttons firstObject];
  [v23 imageFrame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(NSMutableArray *)self->_buttons firstObject];
  [(AXCCExpandableButton *)self convertRect:v32 fromView:v25, v27, v29, v31];
  x = v33;
  y = v35;
  v38 = v37;
  v40 = v39;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v41 = self->_buttons;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v67;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v66 + 1) + 8 * i);
        [v46 imageFrame];
        [(AXCCExpandableButton *)self convertRect:v46 fromView:?];
        v85.origin.x = v47;
        v85.origin.y = v48;
        v85.size.width = v49;
        v85.size.height = v50;
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = v38;
        v81.size.height = v40;
        v82 = CGRectUnion(v81, v85);
        x = v82.origin.x;
        y = v82.origin.y;
        v38 = v82.size.width;
        v40 = v82.size.height;
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v43);
  }

  [(AXCCExpandableButton *)self bounds];
  UIRectCenteredXInRect();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [(UIView *)self->_backgroundView setFrame:?];
  [(UIView *)self->_clippingView setFrame:v52, v54, v56, v58];
  v83.origin.x = v52;
  v83.origin.y = v54;
  v83.size.width = v56;
  v83.size.height = v58;
  v59 = CGRectGetWidth(v83);
  v84.origin.x = v52;
  v84.origin.y = v54;
  v84.size.width = v56;
  v84.size.height = v58;
  v60 = CGRectGetHeight(v84);
  v61 = v59 == v60;
  if (v59 < v60)
  {
    v60 = v59;
  }

  v62 = v60 * 0.5;
  backgroundView = self->_backgroundView;
  v64 = v60 * 0.5;
  if (v61)
  {
    [(UIView *)backgroundView _setCornerRadius:v64];
    [(UIView *)self->_clippingView _setCornerRadius:v62];
  }

  else
  {
    [(UIView *)backgroundView _setContinuousCornerRadius:v64];
    [(UIView *)self->_clippingView _setContinuousCornerRadius:v62];
  }

  [(AXCCExpandableButton *)self _layoutSelectionView];
  [(AXCCExpandableButton *)self _layoutLabels];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_axis && self->_expanded)
  {
    v5 = self->_maximumExpandedSize.height;
    if (v5 <= 0.0)
    {
      v6 = self->_buttonImageSize.height;
      v5 = v6 * [(NSMutableArray *)self->_buttons count];
    }
  }

  else
  {
    [objc_opt_class() collapsedHeightWithImageHeight:self->_buttonImageSize.height maximumHeight:a3.height];
    v5 = v7 + 0.0;
  }

  if (v5 >= height)
  {
    v8 = height;
  }

  else
  {
    v8 = v5;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)collapsedHeightWithImageHeight:(double)a3 maximumHeight:(double)a4
{
  v5 = a3 + 8.0;
  v6 = [MEMORY[0x29EDC7C40] mainScreen];
  [v6 scale];

  v7 = *MEMORY[0x29EDC8088];
  v8 = [MEMORY[0x29EDC76B0] _preferredFontForTextStyle:*MEMORY[0x29EDC8100] maximumContentSizeCategory:*MEMORY[0x29EDC8088]];
  [v8 lineHeight];
  UICeilToScale();
  v10 = v5 + v9;
  v11 = [MEMORY[0x29EDC76B0] _preferredFontForTextStyle:*MEMORY[0x29EDC80E8] maximumContentSizeCategory:v7];
  [v11 lineHeight];
  UICeilToScale();
  v13 = v10 + v12;
  if (v13 < a4)
  {
    a4 = v13;
  }

  return a4;
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v7 = v5;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    backgroundView = [(AXCCExpandableButton *)self insertSubview:v7 atIndex:0];
    v5 = v7;
  }

  MEMORY[0x2A1C71028](backgroundView, v5);
}

- (void)setStylingProvider:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a3;
  stylingProvider = self->_stylingProvider;
  if (stylingProvider != v5)
  {
    [(AXCCVisualStylingProvider *)stylingProvider removeObserver:self];
    objc_storeStrong(&self->_stylingProvider, a3);
    [(AXCCVisualStylingProvider *)self->_stylingProvider addObserver:self];
    [(AXCCExpandableButton *)self updateVisualStyling];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_buttons;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setStylingProvider:{v5, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];

  [(AXCCExpandableButton *)self setNeedsLayout];
}

- (void)setOptions:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_options, a3);
  self->_toggleEnabled = 0;
  [(AXCCExpandableButton *)self setSelectedOptionIndex:0x7FFFFFFFFFFFFFFFLL];
  for (i = -[NSMutableArray count](self->_buttons, "count"); i > [v5 count]; --i)
  {
    v7 = [(NSMutableArray *)self->_buttons lastObject];
    [(NSMutableArray *)self->_buttons removeLastObject];
    [v7 removeFromSuperview];
  }

  v8 = [(NSMutableArray *)self->_buttons count];
  if (v8 < [v5 count])
  {
    v9 = *MEMORY[0x29EDB90E0];
    v10 = *(MEMORY[0x29EDB90E0] + 8);
    v11 = *(MEMORY[0x29EDB90E0] + 16);
    v12 = *(MEMORY[0x29EDB90E0] + 24);
    do
    {
      v13 = [[AXCCRoundButton alloc] initWithFrame:v9, v10, v11, v12];
      [(AXCCRoundButton *)v13 addTarget:self action:sel_didTapButton_ forControlEvents:64];
      [(NSMutableArray *)self->_buttons addObject:v13];
      [(AXCCExpandableButton *)self addSubview:v13];

      ++v8;
    }

    while (v8 < [v5 count]);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C940D04;
  v14[3] = &unk_29F3354A0;
  v14[4] = self;
  [v5 enumerateObjectsUsingBlock:v14];
  [(AXCCExpandableButton *)self _updateButtonsVisiblity];
  [(AXCCExpandableButton *)self updateVisualStyling];
  [(AXCCExpandableButton *)self _updateSelectionVisiblity];
  [(AXCCExpandableButton *)self setNeedsLayout];
}

- (AXCCExpandableButtonOption)selectedOption
{
  selectedOptionIndex = self->_selectedOptionIndex;
  if (selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL || selectedOptionIndex >= [(NSArray *)self->_options count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_options objectAtIndexedSubscript:self->_selectedOptionIndex];
  }

  return v4;
}

- (void)setSelectedOptionIndex:(int64_t)a3
{
  v5 = self->_selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL;
  self->_selectedOptionIndex = a3;
  v6 = [(AXCCExpandableButton *)self selectedOption];
  v7 = [v6 title];
  [(UILabel *)self->_subtitleLabel setText:v7];

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C941050;
  v10[3] = &unk_29F3354C8;
  v10[4] = self;
  v11 = v5;
  [MEMORY[0x29EDC7DA0] performWithoutAnimation:v10];
  [(AXCCExpandableButton *)self _layoutSelectionView];
  [(AXCCExpandableButton *)self _updateSelectionVisiblity];
  [(AXCCExpandableButton *)self _updateButtonsVisiblity];
  v8 = [(AXCCExpandableButton *)self buttons];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C9410A4;
  v9[3] = &unk_29F3354E8;
  v9[4] = a3;
  [v8 enumerateObjectsUsingBlock:v9];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)setAxis:(int64_t)a3
{
  v14 = *MEMORY[0x29EDCA608];
  self->_axis = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAxis:{-[AXCCExpandableButton _buttonLayoutAxis](self, "_buttonLayoutAxis", v9)}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(AXCCExpandableButton *)self setNeedsLayout];
}

- (void)setContentVerticalAlignment:(int64_t)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v13 setContentVerticalAlignment:a3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setContentVerticalAlignment:{-[AXCCExpandableButton contentVerticalAlignment](self, "contentVerticalAlignment", v9)}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setButtonImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16 = *MEMORY[0x29EDCA608];
  self->_buttonImageSize = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_buttons;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setImageSize:{width, height, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(AXCCExpandableButton *)self setNeedsLayout];
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    if (!self->_toggleEnabled)
    {
      self->_expanded = a3;
      if ([MEMORY[0x29EDC7DA0] _isInAnimationBlock])
      {
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 3221225472;
        v6[2] = sub_29C941578;
        v6[3] = &unk_29F335510;
        v6[4] = self;
        [MEMORY[0x29EDC7DA0] animateWithDuration:96 delay:v6 options:0 animations:0.25 completion:0.0];
      }

      else
      {
        [(AXCCExpandableButton *)self _updateButtonsVisiblity];
        [(AXCCExpandableButton *)self updateVisualStyling];
        [(AXCCExpandableButton *)self _updateSelectionVisiblity];
      }

      [(AXCCExpandableButton *)self setNeedsLayout];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v4 setEnabled:a3];
  [(AXCCExpandableButton *)self updateVisualStyling];
  [(AXCCExpandableButton *)self _updateButtonsVisiblity];
  [(AXCCExpandableButton *)self _updateSelectionVisiblity];
  [(AXCCExpandableButton *)self _animateGlyphStateSelected:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v5 setHighlighted:a3];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9416C8;
  v4[3] = &unk_29F335510;
  v4[4] = self;
  [MEMORY[0x29EDC7DA0] animateWithDuration:v4 animations:0.15];
}

- (void)showMessage:(id)a3
{
  [(UILabel *)self->_messageLabel setText:a3];
  self->_resetTracking = 1;
  [(AXCCExpandableButton *)self _layoutLabels];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C94179C;
  v4[3] = &unk_29F335510;
  v4[4] = self;
  [MEMORY[0x29EDC7DA0] animateKeyframesWithDuration:0 delay:v4 options:0 animations:2.5 completion:0.0];
}

- (void)setDisplayMessage:(BOOL)a3
{
  self->_displayMessage = a3;
  [(AXCCExpandableButton *)self _updateButtonsVisiblity];

  [(AXCCExpandableButton *)self updateVisualStyling];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXCCExpandableButton *)self backgroundView];
  [v6 frame];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  if ([v5 _isPointerTouch])
  {
    v6 = 0;
  }

  else
  {
    axis = self->_axis;
    if (axis)
    {
      [(UIView *)self->_selectionView center];
      v9 = v8;
      [v5 locationInView:self];
    }

    else
    {
      [v5 locationInView:self];
      v9 = v11;
      [(UIView *)self->_selectionView center];
    }

    v12 = v10;
    buttons = self->_buttons;
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 3221225472;
    v37[2] = sub_29C941B98;
    v37[3] = &unk_29F335530;
    *&v37[4] = v9;
    *&v37[5] = v10;
    v14 = [(NSMutableArray *)buttons indexOfObjectPassingTest:v37];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v14;
      selectedOptionIndex = self->_selectedOptionIndex;
      v17 = v14 != selectedOptionIndex;
      v18 = [(NSMutableArray *)self->_buttons count];
      if ((selectedOptionIndex & ~(selectedOptionIndex >> 63)) >= v18 - 1)
      {
        v19 = v18 - 1;
      }

      else
      {
        v19 = selectedOptionIndex & ~(selectedOptionIndex >> 63);
      }

      v20 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v19];
      [v20 center];
      v22 = v21;
      v24 = v23;

      v25 = v12 - v24;
      v28 = MEMORY[0x29EDCA5F8];
      v29 = 3221225472;
      v30 = sub_29C941BD4;
      v31 = &unk_29F335558;
      v32 = self;
      if (!axis)
      {
        v25 = v9 - v22;
      }

      v35 = axis == 0;
      v33 = v25;
      v36 = v17;
      v34 = v15;
      [MEMORY[0x29EDC7DA0] animateWithDuration:&v28 animations:0.1];
      if (v15 != selectedOptionIndex)
      {
        [(AXCCExpandableButton *)self sendActionsForControlEvents:4096, v28, v29, v30, v31, v32];
      }
    }

    resetTracking = self->_resetTracking;
    if (resetTracking)
    {
      [(AXCCExpandableButton *)self _resetSelectionView];
    }

    v6 = !resetTracking;
  }

  return v6;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  [(AXCCExpandableButton *)self _resetSelectionView];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXCCExpandableButton;
  [(AXCCExpandableButton *)&v4 cancelTrackingWithEvent:a3];
  [(AXCCExpandableButton *)self _resetSelectionView];
}

- (void)didTapButton:(id)a3
{
  v4 = [(NSMutableArray *)self->_buttons indexOfObject:a3];
  if (self->_toggleEnabled)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C941E84;
    v6[3] = &unk_29F335580;
    v6[4] = self;
    v6[5] = v4;
    [MEMORY[0x29EDC7DA0] animateWithDuration:v6 animations:0.25];
LABEL_3:
    [(AXCCExpandableButton *)self _animateGlyphStateSelected:1];
    [(AXCCExpandableButton *)self sendActionsForControlEvents:4096];
    return;
  }

  if (self->_expanded && self->_selectedOptionIndex != v4)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = sub_29C941E94;
    v5[3] = &unk_29F335580;
    v5[4] = self;
    v5[5] = v4;
    [(AXCCExpandableButton *)self _springAnimate:v5];
    goto LABEL_3;
  }

  [(AXCCExpandableButton *)self sendActionsForControlEvents:64];
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  buttons = self->_buttons;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = sub_29C9420A4;
  v24[3] = &unk_29F3355A8;
  v8 = v6;
  v25 = v8;
  v9 = [(NSMutableArray *)buttons indexOfObjectPassingTest:v24];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    v12 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v9];
    [v12 imageFrame];
    [(AXCCExpandableButton *)self convertRect:v12 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = MEMORY[0x29EDC7BE8];
    v22 = [MEMORY[0x29EDBA070] numberWithInteger:v11];
    v10 = [v21 regionWithRect:v22 identifier:{v14, v16, v18, v20}];
  }

  return v10;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  v7 = [v6 integerValue];

  if (self->_toggleEnabled || !self->_expanded)
  {
    v15 = MEMORY[0x29EDC7948];
    [v5 rect];
    v8 = [v15 bezierPathWithOvalInRect:?];
    v9 = objc_alloc_init(MEMORY[0x29EDC7C18]);
    [v9 setShadowPath:v8];
    v13 = [objc_alloc(MEMORY[0x29EDC7D30]) initWithView:self parameters:v9];
    v16 = [MEMORY[0x29EDC7BE0] effectWithPreview:v13];
    v17 = [MEMORY[0x29EDC7BF0] shapeWithPath:v8];
    v14 = [MEMORY[0x29EDC7BF8] styleWithEffect:v16 shape:v17];
  }

  else
  {
    if (v7 == self->_selectedOptionIndex)
    {
      v8 = [objc_alloc(MEMORY[0x29EDC7D30]) initWithView:self->_selectionView];
      v9 = [MEMORY[0x29EDC7BE0] effectWithPreview:v8];
      v10 = MEMORY[0x29EDC7BF0];
      v11 = MEMORY[0x29EDC7948];
      [(UIView *)self->_selectionView bounds];
      v12 = [v11 bezierPathWithOvalInRect:?];
      v13 = [v10 shapeWithPath:v12];

      v14 = [MEMORY[0x29EDC7BF8] styleWithEffect:v9 shape:v13];
      goto LABEL_7;
    }

    v8 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v7];
    v19 = MEMORY[0x29EDC7948];
    [v8 imageFrame];
    v9 = [v19 bezierPathWithOvalInRect:?];
    v13 = objc_alloc_init(MEMORY[0x29EDC7C18]);
    [v13 setShadowPath:v9];
    v16 = [objc_alloc(MEMORY[0x29EDC7D30]) initWithView:v8 parameters:v13];
    v17 = [MEMORY[0x29EDC7BD0] effectWithPreview:v16];
    v20 = [MEMORY[0x29EDC7BF0] shapeWithPath:v9];
    v14 = [MEMORY[0x29EDC7BF8] styleWithEffect:v17 shape:v20];
  }

LABEL_7:

  return v14;
}

- (void)_updateButtonsVisiblity
{
  buttons = self->_buttons;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C942470;
  v3[3] = &unk_29F3355D0;
  v3[4] = self;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v3];
}

- (void)updateVisualStyling
{
  v3 = [(AXCCExpandableButton *)self isEnabled];
  v4 = 0.5;
  if (v3)
  {
    v4 = 1.0;
  }

  [(UIView *)self->_backgroundView setAlpha:v4];
  stylingProvider = self->_stylingProvider;
  if (stylingProvider)
  {
    if (self->_displayMessage)
    {
      [(UILabel *)self->_titleLabel setAlpha:0.0];
      [(UILabel *)self->_subtitleLabel setAlpha:0.0];
      v6 = self->_stylingProvider;
      messageLabel = self->_messageLabel;

      [(AXCCVisualStylingProvider *)v6 applyStyle:0 toView:messageLabel];
      return;
    }

    if (self->_expanded)
    {
      goto LABEL_13;
    }

    v10 = [(AXCCExpandableButton *)self isEnabled];
    stylingProvider = self->_stylingProvider;
    if ((v10 & 1) == 0)
    {
      [(AXCCVisualStylingProvider *)stylingProvider applyStyle:0 toView:self->_titleLabel];
      [(AXCCVisualStylingProvider *)self->_stylingProvider applyStyle:0 toView:self->_subtitleLabel];
      [(UILabel *)self->_titleLabel setAlpha:0.5];
      subtitleLabel = self->_subtitleLabel;
      v12 = 0.5;
      goto LABEL_19;
    }

    if (stylingProvider)
    {
LABEL_13:
      if (!self->_expanded)
      {
        [(AXCCVisualStylingProvider *)stylingProvider applyStyle:0 toView:self->_titleLabel];
        [(AXCCVisualStylingProvider *)self->_stylingProvider applyStyle:0 toView:self->_subtitleLabel];
LABEL_20:
        v8 = self->_messageLabel;
        v9 = 0.0;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!self->_expanded)
    {
      [(UILabel *)self->_titleLabel setAlpha:1.0];
      subtitleLabel = self->_subtitleLabel;
      v12 = 1.0;
      goto LABEL_19;
    }

LABEL_16:
    [(UILabel *)self->_titleLabel setAlpha:0.0];
    subtitleLabel = self->_subtitleLabel;
    v12 = 0.0;
LABEL_19:
    [(UILabel *)subtitleLabel setAlpha:v12];
    goto LABEL_20;
  }

  if (!self->_displayMessage)
  {
    goto LABEL_15;
  }

  [(UILabel *)self->_titleLabel setAlpha:0.0];
  [(UILabel *)self->_subtitleLabel setAlpha:0.0];
  v8 = self->_messageLabel;
  v9 = 1.0;
LABEL_21:

  [(UILabel *)v8 setAlpha:v9];
}

- (void)_updateSelectionVisiblity
{
  v3 = [(AXCCExpandableButton *)self selectedOption];
  v7 = [v3 selectedBackgroundColor];

  if (v7 && [(AXCCExpandableButton *)self isEnabled])
  {
    [(UIView *)self->_selectionView setBackgroundColor:v7];
LABEL_7:
    v5 = 0.0;
    goto LABEL_8;
  }

  if (!self->_expanded || self->_selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x29EDC7A00] clearColor];
    [(UIView *)self->_selectionView setBackgroundColor:v4];

    goto LABEL_7;
  }

  v6 = [MEMORY[0x29EDC7A00] clearColor];
  [(UIView *)self->_selectionView setBackgroundColor:v6];

  v5 = 0.2;
LABEL_8:
  [(UIView *)self->_overlaySelectionView setAlpha:v5];
}

- (void)_layoutLabels
{
  [(AXCCExpandableButton *)self bounds];
  v3 = [(AXCCExpandableButton *)self backgroundView];
  [v3 frame];
  CGRectGetMaxY(v30);
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel sizeThatFits:v9, v11];
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  CGRectGetMinY(v31);
  UIRectCenteredXInRect();
  v27 = v13;
  v28 = v12;
  v15 = v14;
  v17 = v16;
  [(UILabel *)self->_titleLabel setFrame:?];
  [(UILabel *)self->_messageLabel sizeThatFits:v9, v11];
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  CGRectGetMinY(v32);
  UIRectCenteredXInRect();
  [(UILabel *)self->_messageLabel setFrame:?];
  v33.origin.y = v27;
  v33.origin.x = v28;
  v33.size.width = v15;
  v33.size.height = v17;
  CGRectGetHeight(v33);
  UIRectInset();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v22, v24];
  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  CGRectGetMinY(v34);
  UIRectCenteredXInRect();
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setFrame:?];
}

- (void)_layoutSelectionView
{
  if (self->_selectedOptionIndex != 0x7FFFFFFFFFFFFFFFLL && [(NSMutableArray *)self->_buttons count]&& [(NSMutableArray *)self->_buttons count]> self->_selectedOptionIndex)
  {
    v16 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:?];
    backgroundView = self->_backgroundView;
    [v16 imageFrame];
    [(UIView *)backgroundView convertRect:v16 fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (self->_expanded)
    {
      v12 = [(AXCCExpandableButton *)self isHighlighted];
      v13 = 4.0;
      v14 = 2.0;
      if (!v12)
      {
        v14 = 4.0;
      }

      v5 = v5 + v14;
      v7 = v7 + v14;
      if (!v12)
      {
        v13 = 8.0;
      }

      v9 = v9 - v13;
      v11 = v11 - v13;
    }

    UIRectCenteredAboutPoint();
    [(UIView *)self->_selectionView setBounds:?];
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    MidX = CGRectGetMidX(v18);
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    [(UIView *)self->_selectionView setCenter:MidX, CGRectGetMidY(v19)];
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    [(UIView *)self->_selectionView _setCornerRadius:CGRectGetHeight(v20) * 0.5];
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    [(UIView *)self->_overlaySelectionView _setCornerRadius:CGRectGetHeight(v21) * 0.5];
    [(UIView *)self->_selectionView bounds];
    [(UIView *)self->_overlaySelectionView setFrame:?];
  }
}

- (void)_springAnimate:(id)a3
{
  v3 = MEMORY[0x29EDC7DB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDampingRatio:0.8165 response:0.51302];
  [MEMORY[0x29EDC7DA0] _animateUsingSpringBehavior:v5 tracking:0 animations:v4 completion:0];
}

- (void)_animateGlyphStateSelected:(BOOL)a3
{
  v3 = a3;
  if (-[AXCCExpandableButton isEnabled](self, "isEnabled") && self->_animating && (-[AXCCExpandableButton selectedOption](self, "selectedOption"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsAnimation], v5, (v6 & 1) != 0))
  {
    v7 = @"animating";
  }

  else
  {
    v8 = [(AXCCExpandableButton *)self isEnabled];
    v7 = @"on";
    if ((v8 & v3) == 0)
    {
      v7 = 0;
    }
  }

  buttons = self->_buttons;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C942EB8;
  v10[3] = &unk_29F3355F8;
  v10[4] = self;
  v11 = v7;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v10];
}

- (void)_resetSelectionView
{
  self->_resetTracking = 0;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C942F5C;
  v2[3] = &unk_29F335510;
  v2[4] = self;
  [(AXCCExpandableButton *)self _springAnimate:v2];
}

- (int64_t)_buttonLayoutAxis
{
  if (self->_toggleEnabled)
  {
    return 0;
  }

  else
  {
    return self->_axis;
  }
}

- (void)updateContentSizeCategory
{
  v3 = *MEMORY[0x29EDC8088];
  v5 = [MEMORY[0x29EDC76B0] _preferredFontForTextStyle:*MEMORY[0x29EDC8100] maximumContentSizeCategory:*MEMORY[0x29EDC8088]];
  v4 = [MEMORY[0x29EDC76B0] _preferredFontForTextStyle:*MEMORY[0x29EDC80E8] maximumContentSizeCategory:v3];
  [(UILabel *)self->_titleLabel setFont:v5];
  [(UILabel *)self->_subtitleLabel setFont:v4];
  [(UILabel *)self->_messageLabel setFont:v5];
}

- (id)accessibilityLabel
{
  v2 = [(AXCCExpandableButton *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(AXCCExpandableButton *)self subtitleLabel];
  v4 = [v3 accessibilityLabel];

  v5 = [(AXCCExpandableButton *)self messageLabel];
  v6 = [v5 accessibilityLabel];

  if ([v4 length])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if ([v6 length])
  {
    if ([v7 length])
    {
      v8 = [v7 stringByAppendingString:{@", "}];

      v9 = [v8 stringByAppendingString:v6];
      v7 = v8;
    }

    else
    {
      v9 = v6;
    }

    v7 = v9;
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(AXCCExpandableButton *)self toggleEnabled];
  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (CGSize)maximumExpandedSize
{
  width = self->_maximumExpandedSize.width;
  height = self->_maximumExpandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)buttonImageSize
{
  width = self->_buttonImageSize.width;
  height = self->_buttonImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end