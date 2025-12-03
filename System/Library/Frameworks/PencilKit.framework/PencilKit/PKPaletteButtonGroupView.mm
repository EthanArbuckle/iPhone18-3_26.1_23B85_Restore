@interface PKPaletteButtonGroupView
- (NSDirectionalEdgeInsets)additionalContentMargins;
- (PKPaletteButtonGroupView)initWithFrame:(CGRect)frame;
- (int64_t)axis;
- (void)_updateUI;
- (void)addButton:(id)button;
- (void)addButtonsFromArray:(id)array;
- (void)setAdditionalContentMargins:(NSDirectionalEdgeInsets)margins;
- (void)setAxis:(int64_t)axis;
- (void)setButtons:(id)buttons;
- (void)setScalingFactor:(double)factor;
- (void)setUseEqualInterItemSpacing:(BOOL)spacing;
@end

@implementation PKPaletteButtonGroupView

- (PKPaletteButtonGroupView)initWithFrame:(CGRect)frame
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PKPaletteButtonGroupView;
  v3 = [(PKPaletteButtonGroupView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 52) = 0x3FF0000000000000;
    v5 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v3 + 472) = *MEMORY[0x1E69DC5C0];
    *(v3 + 488) = v5;
    v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    buttonStackView = v4->_buttonStackView;
    v4->_buttonStackView = v6;

    [(UIStackView *)v4->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_buttonStackView setAlignment:3];
    [(PKPaletteButtonGroupView *)v4 addSubview:v4->_buttonStackView];
    topAnchor = [(UIStackView *)v4->_buttonStackView topAnchor];
    topAnchor2 = [(PKPaletteButtonGroupView *)v4 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    buttonStackViewTopConstraint = v4->_buttonStackViewTopConstraint;
    v4->_buttonStackViewTopConstraint = v10;

    leadingAnchor = [(UIStackView *)v4->_buttonStackView leadingAnchor];
    leadingAnchor2 = [(PKPaletteButtonGroupView *)v4 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    buttonStackViewLeadingConstraint = v4->_buttonStackViewLeadingConstraint;
    v4->_buttonStackViewLeadingConstraint = v14;

    bottomAnchor = [(UIStackView *)v4->_buttonStackView bottomAnchor];
    bottomAnchor2 = [(PKPaletteButtonGroupView *)v4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    buttonStackViewBottomConstraint = v4->_buttonStackViewBottomConstraint;
    v4->_buttonStackViewBottomConstraint = v18;

    trailingAnchor = [(UIStackView *)v4->_buttonStackView trailingAnchor];
    trailingAnchor2 = [(PKPaletteButtonGroupView *)v4 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    buttonStackViewTrailingConstraint = v4->_buttonStackViewTrailingConstraint;
    v4->_buttonStackViewTrailingConstraint = v22;

    v24 = MEMORY[0x1E696ACD8];
    v28[0] = v4->_buttonStackViewTopConstraint;
    v28[1] = v4->_buttonStackViewLeadingConstraint;
    v28[2] = v4->_buttonStackViewBottomConstraint;
    v28[3] = v4->_buttonStackViewTrailingConstraint;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v24 activateConstraints:v25];

    [(PKPaletteButtonGroupView *)v4 _updateUI];
    [(PKPaletteButtonGroupView *)v4 setShouldGroupAccessibilityChildren:1];
  }

  return v4;
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  buttons = [(PKPaletteButtonGroupView *)self buttons];
  v5 = [buttons arrayByAddingObject:buttonCopy];

  [(PKPaletteButtonGroupView *)self setButtons:v5];
}

- (void)addButtonsFromArray:(id)array
{
  arrayCopy = array;
  buttons = [(PKPaletteButtonGroupView *)self buttons];
  v5 = [buttons arrayByAddingObjectsFromArray:arrayCopy];

  [(PKPaletteButtonGroupView *)self setButtons:v5];
}

- (void)setButtons:(id)buttons
{
  v35 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  v5 = buttonsCopy;
  if (self->_buttons != buttonsCopy)
  {
    v6 = [(NSArray *)buttonsCopy copy];
    buttons = self->_buttons;
    self->_buttons = v6;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    buttonStackView = [(PKPaletteButtonGroupView *)self buttonStackView];
    arrangedSubviews = [buttonStackView arrangedSubviews];
    v10 = [arrangedSubviews copy];

    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          buttonStackView2 = [(PKPaletteButtonGroupView *)self buttonStackView];
          [buttonStackView2 removeArrangedSubview:v15];

          [v15 removeFromSuperview];
          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v5;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          [v23 removeFromSuperview];
          buttonStackView3 = [(PKPaletteButtonGroupView *)self buttonStackView];
          [buttonStackView3 addArrangedSubview:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }

    [(PKPaletteButtonGroupView *)self _updateUI];
  }
}

- (int64_t)axis
{
  buttonStackView = [(PKPaletteButtonGroupView *)self buttonStackView];
  axis = [buttonStackView axis];

  return axis;
}

- (void)setAxis:(int64_t)axis
{
  buttonStackView = [(PKPaletteButtonGroupView *)self buttonStackView];
  [buttonStackView setAxis:axis];
}

- (void)setUseEqualInterItemSpacing:(BOOL)spacing
{
  if (self->_useEqualInterItemSpacing != spacing)
  {
    self->_useEqualInterItemSpacing = spacing;
    [(PKPaletteButtonGroupView *)self _updateUI];
  }
}

- (void)setAdditionalContentMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalContentMargins.top, v3), vceqq_f64(*&self->_additionalContentMargins.bottom, v4)))) & 1) == 0)
  {
    self->_additionalContentMargins = margins;
    [(PKPaletteButtonGroupView *)self _updateUI];
  }
}

- (void)_updateUI
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(PKPaletteButtonGroupView *)self useEqualInterItemSpacing])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  buttonStackView = [(PKPaletteButtonGroupView *)self buttonStackView];
  [buttonStackView setDistribution:v3];

  if ([(PKPaletteButtonGroupView *)self useEqualInterItemSpacing])
  {
    v5 = 1.17549435e-38;
  }

  else
  {
    [(PKPaletteButtonGroupView *)self scalingFactor];
    v5 = v6 * 12.0;
  }

  buttonStackView2 = [(PKPaletteButtonGroupView *)self buttonStackView];
  [buttonStackView2 setSpacing:v5];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  buttons = [(PKPaletteButtonGroupView *)self buttons];
  v9 = [buttons countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(buttons);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [(PKPaletteButtonGroupView *)self scalingFactor];
        [v13 setScalingFactor:?];
      }

      v10 = [buttons countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v15 = v14;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v17 = v15 * v16;
  buttonStackViewTopConstraint = [(PKPaletteButtonGroupView *)self buttonStackViewTopConstraint];
  [buttonStackViewTopConstraint setConstant:v17];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v20 = v19;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v22 = v20 * v21;
  buttonStackViewLeadingConstraint = [(PKPaletteButtonGroupView *)self buttonStackViewLeadingConstraint];
  [buttonStackViewLeadingConstraint setConstant:v22];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v25 = v24;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v27 = -(v25 * v26);
  buttonStackViewBottomConstraint = [(PKPaletteButtonGroupView *)self buttonStackViewBottomConstraint];
  [buttonStackViewBottomConstraint setConstant:v27];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v30 = v29;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v32 = -(v30 * v31);
  buttonStackViewTrailingConstraint = [(PKPaletteButtonGroupView *)self buttonStackViewTrailingConstraint];
  [buttonStackViewTrailingConstraint setConstant:v32];
}

- (void)setScalingFactor:(double)factor
{
  if (self->_scalingFactor != factor)
  {
    self->_scalingFactor = factor;
    [(PKPaletteButtonGroupView *)self _updateUI];
  }
}

- (NSDirectionalEdgeInsets)additionalContentMargins
{
  top = self->_additionalContentMargins.top;
  leading = self->_additionalContentMargins.leading;
  bottom = self->_additionalContentMargins.bottom;
  trailing = self->_additionalContentMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end