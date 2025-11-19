@interface SFReaderAppearanceThemeSelector
+ (id)themeSelectorWithBlock:(id)a3;
- (BOOL)isSelectedValue:(id)a3;
- (SFReaderAppearanceThemeSelector)initWithFrame:(CGRect)a3;
- (id)_buttonForTheme:(int64_t)a3;
- (id)_imageForTheme:(int64_t)a3 selected:(BOOL)a4;
- (id)_themeButtonImageWithFillColor:(id)a3 strokeColor:(id)a4 selected:(BOOL)a5;
- (id)imageForValue:(id)a3;
- (id)selectedValue;
- (int64_t)_themeForButton:(id)a3;
- (void)_changeSelectionForTheme:(int64_t)a3 selected:(BOOL)a4;
- (void)_createThemeButtons;
- (void)_themeButtonAction:(id)a3;
- (void)_updateSelectedTheme;
- (void)selectValue:(id)a3;
- (void)setSelectedTheme:(int64_t)a3;
@end

@implementation SFReaderAppearanceThemeSelector

+ (id)themeSelectorWithBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  [a1 requiredHeight];
  v7 = [v5 initWithFrame:{0.0, 0.0, 320.0, v6}];
  [v7 setSelectedThemeChangedBlock:v4];

  return v7;
}

- (SFReaderAppearanceThemeSelector)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SFReaderAppearanceThemeSelector;
  v3 = [(SFReaderAppearanceThemeSelector *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFReaderAppearanceThemeSelector *)v3 _createThemeButtons];
    [(SFReaderAppearanceThemeSelector *)v4 _updateSelectedTheme];
    v5 = v4;
  }

  return v4;
}

- (void)setSelectedTheme:(int64_t)a3
{
  if (self->_selectedTheme != a3)
  {
    self->_selectedTheme = a3;
    [(SFReaderAppearanceThemeSelector *)self _updateSelectedTheme];
    selectedThemeChangedBlock = self->_selectedThemeChangedBlock;
    if (selectedThemeChangedBlock)
    {
      v5 = *(selectedThemeChangedBlock + 2);

      v5();
    }
  }
}

- (void)_updateSelectedTheme
{
  v3 = self->_selectedTheme == 0;
  v4 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:0];
  [v4 setSelected:v3];

  v5 = self->_selectedTheme == 1;
  v6 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:1];
  [v6 setSelected:v5];

  v7 = self->_selectedTheme == 2;
  v8 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:2];
  [v8 setSelected:v7];

  v9 = self->_selectedTheme == 3;
  v10 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:3];
  [v10 setSelected:v9];
}

- (void)_changeSelectionForTheme:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:a3];
  [v5 setSelected:v4];
}

- (id)_buttonForTheme:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + *off_1E8492950[a3]);
  }

  return v4;
}

- (int64_t)_themeForButton:(id)a3
{
  v4 = a3;
  if (self->_whiteButton == v4)
  {
    v5 = 0;
  }

  else if (self->_sepiaButton == v4)
  {
    v5 = 1;
  }

  else if (self->_grayButton == v4)
  {
    v5 = 2;
  }

  else if (self->_nightButton == v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createThemeButtons
{
  v48[4] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SFReaderAppearanceThemeSelector__createThemeButtons__block_invoke;
  aBlock[3] = &unk_1E8492930;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = v3[2](v3, 0);
  whiteButton = self->_whiteButton;
  self->_whiteButton = v4;

  v6 = v3[2](v3, 1);
  sepiaButton = self->_sepiaButton;
  self->_sepiaButton = v6;

  v8 = v3[2](v3, 2);
  grayButton = self->_grayButton;
  self->_grayButton = v8;

  [(UIButton *)self->_grayButton setAccessibilityIgnoresInvertColors:1];
  v40 = v3;
  v10 = v3[2](v3, 3);
  nightButton = self->_nightButton;
  self->_nightButton = v10;

  [(UIButton *)self->_nightButton setAccessibilityIgnoresInvertColors:1];
  v12 = self->_sepiaButton;
  v48[0] = self->_whiteButton;
  v48[1] = v12;
  v13 = self->_nightButton;
  v48[2] = self->_grayButton;
  v48[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  v15 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v14];
  stackView = self->_stackView;
  self->_stackView = v15;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setSpacing:17.0];
  [(SFReaderAppearanceThemeSelector *)self addSubview:self->_stackView];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      v21 = 0;
      do
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [MEMORY[0x1E696ACD8] constraintWithItem:*(*(&v41 + 1) + 8 * v21) attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
        [(SFReaderAppearanceThemeSelector *)self addConstraint:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v19);
  }

  v33 = MEMORY[0x1E696ACD8];
  v39 = [(UIStackView *)self->_stackView centerXAnchor];
  v38 = [(SFReaderAppearanceThemeSelector *)self centerXAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v46[0] = v37;
  v36 = [(UIStackView *)self->_stackView topAnchor];
  v35 = [(SFReaderAppearanceThemeSelector *)self topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:9.0];
  v46[1] = v34;
  v32 = [(UIStackView *)self->_stackView leadingAnchor];
  v23 = [(SFReaderAppearanceThemeSelector *)self leadingAnchor];
  v24 = [v32 constraintGreaterThanOrEqualToAnchor:v23 constant:17.0];
  v46[2] = v24;
  v25 = [(SFReaderAppearanceThemeSelector *)self trailingAnchor];
  v26 = [(UIStackView *)self->_stackView trailingAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:17.0];
  v46[3] = v27;
  v28 = [(SFReaderAppearanceThemeSelector *)self bottomAnchor];
  v29 = [(UIStackView *)self->_stackView bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:9.0];
  v46[4] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v33 activateConstraints:v31];
}

id __54__SFReaderAppearanceThemeSelector__createThemeButtons__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [SFReaderThemeButton buttonWithType:0];
  v5 = [*(a1 + 32) _imageForTheme:a2 selected:0];
  [v4 setImage:v5 forState:0];

  v6 = [*(a1 + 32) _imageForTheme:a2 selected:1];
  [v4 setImage:v6 forState:4];

  v7 = WBSReaderThemeLocalizedName();
  [v4 setAccessibilityLabel:v7];

  [v4 setFocusGroupIdentifier:0];
  [v4 addTarget:*(a1 + 32) action:sel__themeButtonAction_ forControlEvents:0x2000];

  return v4;
}

- (id)_imageForTheme:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    [(SFReaderAppearanceThemeSelector *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:a3 alpha:{0.0, 0.2}];
  }
  v6 = ;
  v7 = WBSReaderThemeColor();
  v8 = [(SFReaderAppearanceThemeSelector *)self _themeButtonImageWithFillColor:v7 strokeColor:v6 selected:v4];

  return v8;
}

- (id)_themeButtonImageWithFillColor:(id)a3 strokeColor:(id)a4 selected:(BOOL)a5
{
  v5 = a5;
  v7 = MEMORY[0x1E69DCEB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 mainScreen];
  [v10 scale];
  v12 = v11;

  v22.width = 40.0;
  v22.height = 40.0;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 40.0, 40.0}];
  [v8 setFill];

  [v13 fill];
  if (v5)
  {
    v14 = MEMORY[0x1E69DC728];
    v15 = 36.0;
    v16 = 2.0;
    v17 = 2.0;
  }

  else
  {
    v16 = 1.0 / v12;
    v14 = MEMORY[0x1E69DC728];
    v15 = 1.0 / v12 * -2.0 + 40.0;
    v17 = 1.0 / v12;
  }

  v18 = [v14 bezierPathWithOvalInRect:{v16, v17, v15, v15}];
  [v9 setFill];

  [v18 fill];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (void)_themeButtonAction:(id)a3
{
  v4 = [(SFReaderAppearanceThemeSelector *)self _themeForButton:a3];

  [(SFReaderAppearanceThemeSelector *)self setSelectedTheme:v4];
}

- (id)selectedValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(SFReaderAppearanceThemeSelector *)self selectedTheme];

  return [v2 numberWithInteger:v3];
}

- (id)imageForValue:(id)a3
{
  v4 = a3;
  v5 = [(SFReaderAppearanceThemeSelector *)self isSelectedValue:v4];
  v6 = [v4 integerValue];

  return [(SFReaderAppearanceThemeSelector *)self _imageForTheme:v6 selected:v5];
}

- (BOOL)isSelectedValue:(id)a3
{
  v4 = a3;
  v5 = [(SFReaderAppearanceThemeSelector *)self selectedValue];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (void)selectValue:(id)a3
{
  v4 = [a3 integerValue];

  [(SFReaderAppearanceThemeSelector *)self setSelectedTheme:v4];
}

@end