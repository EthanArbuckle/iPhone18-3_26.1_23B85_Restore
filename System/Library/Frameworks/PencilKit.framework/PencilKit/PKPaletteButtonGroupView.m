@interface PKPaletteButtonGroupView
- (NSDirectionalEdgeInsets)additionalContentMargins;
- (PKPaletteButtonGroupView)initWithFrame:(CGRect)a3;
- (int64_t)axis;
- (void)_updateUI;
- (void)addButton:(id)a3;
- (void)addButtonsFromArray:(id)a3;
- (void)setAdditionalContentMargins:(NSDirectionalEdgeInsets)a3;
- (void)setAxis:(int64_t)a3;
- (void)setButtons:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setUseEqualInterItemSpacing:(BOOL)a3;
@end

@implementation PKPaletteButtonGroupView

- (PKPaletteButtonGroupView)initWithFrame:(CGRect)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PKPaletteButtonGroupView;
  v3 = [(PKPaletteButtonGroupView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UIStackView *)v4->_buttonStackView topAnchor];
    v9 = [(PKPaletteButtonGroupView *)v4 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    buttonStackViewTopConstraint = v4->_buttonStackViewTopConstraint;
    v4->_buttonStackViewTopConstraint = v10;

    v12 = [(UIStackView *)v4->_buttonStackView leadingAnchor];
    v13 = [(PKPaletteButtonGroupView *)v4 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    buttonStackViewLeadingConstraint = v4->_buttonStackViewLeadingConstraint;
    v4->_buttonStackViewLeadingConstraint = v14;

    v16 = [(UIStackView *)v4->_buttonStackView bottomAnchor];
    v17 = [(PKPaletteButtonGroupView *)v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    buttonStackViewBottomConstraint = v4->_buttonStackViewBottomConstraint;
    v4->_buttonStackViewBottomConstraint = v18;

    v20 = [(UIStackView *)v4->_buttonStackView trailingAnchor];
    v21 = [(PKPaletteButtonGroupView *)v4 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
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

- (void)addButton:(id)a3
{
  v4 = a3;
  v6 = [(PKPaletteButtonGroupView *)self buttons];
  v5 = [v6 arrayByAddingObject:v4];

  [(PKPaletteButtonGroupView *)self setButtons:v5];
}

- (void)addButtonsFromArray:(id)a3
{
  v4 = a3;
  v6 = [(PKPaletteButtonGroupView *)self buttons];
  v5 = [v6 arrayByAddingObjectsFromArray:v4];

  [(PKPaletteButtonGroupView *)self setButtons:v5];
}

- (void)setButtons:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_buttons != v4)
  {
    v6 = [(NSArray *)v4 copy];
    buttons = self->_buttons;
    self->_buttons = v6;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(PKPaletteButtonGroupView *)self buttonStackView];
    v9 = [v8 arrangedSubviews];
    v10 = [v9 copy];

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
          v17 = [(PKPaletteButtonGroupView *)self buttonStackView];
          [v17 removeArrangedSubview:v15];

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
          v24 = [(PKPaletteButtonGroupView *)self buttonStackView];
          [v24 addArrangedSubview:v23];
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
  v2 = [(PKPaletteButtonGroupView *)self buttonStackView];
  v3 = [v2 axis];

  return v3;
}

- (void)setAxis:(int64_t)a3
{
  v4 = [(PKPaletteButtonGroupView *)self buttonStackView];
  [v4 setAxis:a3];
}

- (void)setUseEqualInterItemSpacing:(BOOL)a3
{
  if (self->_useEqualInterItemSpacing != a3)
  {
    self->_useEqualInterItemSpacing = a3;
    [(PKPaletteButtonGroupView *)self _updateUI];
  }
}

- (void)setAdditionalContentMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalContentMargins.top, v3), vceqq_f64(*&self->_additionalContentMargins.bottom, v4)))) & 1) == 0)
  {
    self->_additionalContentMargins = a3;
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

  v4 = [(PKPaletteButtonGroupView *)self buttonStackView];
  [v4 setDistribution:v3];

  if ([(PKPaletteButtonGroupView *)self useEqualInterItemSpacing])
  {
    v5 = 1.17549435e-38;
  }

  else
  {
    [(PKPaletteButtonGroupView *)self scalingFactor];
    v5 = v6 * 12.0;
  }

  v7 = [(PKPaletteButtonGroupView *)self buttonStackView];
  [v7 setSpacing:v5];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(PKPaletteButtonGroupView *)self buttons];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [(PKPaletteButtonGroupView *)self scalingFactor];
        [v13 setScalingFactor:?];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v15 = v14;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v17 = v15 * v16;
  v18 = [(PKPaletteButtonGroupView *)self buttonStackViewTopConstraint];
  [v18 setConstant:v17];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v20 = v19;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v22 = v20 * v21;
  v23 = [(PKPaletteButtonGroupView *)self buttonStackViewLeadingConstraint];
  [v23 setConstant:v22];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v25 = v24;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v27 = -(v25 * v26);
  v28 = [(PKPaletteButtonGroupView *)self buttonStackViewBottomConstraint];
  [v28 setConstant:v27];

  [(PKPaletteButtonGroupView *)self additionalContentMargins];
  v30 = v29;
  [(PKPaletteButtonGroupView *)self scalingFactor];
  v32 = -(v30 * v31);
  v33 = [(PKPaletteButtonGroupView *)self buttonStackViewTrailingConstraint];
  [v33 setConstant:v32];
}

- (void)setScalingFactor:(double)a3
{
  if (self->_scalingFactor != a3)
  {
    self->_scalingFactor = a3;
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