@interface SFReaderAppearanceThemeSelector
+ (id)themeSelectorWithBlock:(id)block;
- (BOOL)isSelectedValue:(id)value;
- (SFReaderAppearanceThemeSelector)initWithFrame:(CGRect)frame;
- (id)_buttonForTheme:(int64_t)theme;
- (id)_imageForTheme:(int64_t)theme selected:(BOOL)selected;
- (id)_themeButtonImageWithFillColor:(id)color strokeColor:(id)strokeColor selected:(BOOL)selected;
- (id)imageForValue:(id)value;
- (id)selectedValue;
- (int64_t)_themeForButton:(id)button;
- (void)_changeSelectionForTheme:(int64_t)theme selected:(BOOL)selected;
- (void)_createThemeButtons;
- (void)_themeButtonAction:(id)action;
- (void)_updateSelectedTheme;
- (void)selectValue:(id)value;
- (void)setSelectedTheme:(int64_t)theme;
@end

@implementation SFReaderAppearanceThemeSelector

+ (id)themeSelectorWithBlock:(id)block
{
  blockCopy = block;
  v5 = [self alloc];
  [self requiredHeight];
  v7 = [v5 initWithFrame:{0.0, 0.0, 320.0, v6}];
  [v7 setSelectedThemeChangedBlock:blockCopy];

  return v7;
}

- (SFReaderAppearanceThemeSelector)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFReaderAppearanceThemeSelector;
  v3 = [(SFReaderAppearanceThemeSelector *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFReaderAppearanceThemeSelector *)v3 _createThemeButtons];
    [(SFReaderAppearanceThemeSelector *)v4 _updateSelectedTheme];
    v5 = v4;
  }

  return v4;
}

- (void)setSelectedTheme:(int64_t)theme
{
  if (self->_selectedTheme != theme)
  {
    self->_selectedTheme = theme;
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

- (void)_changeSelectionForTheme:(int64_t)theme selected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [(SFReaderAppearanceThemeSelector *)self _buttonForTheme:theme];
  [v5 setSelected:selectedCopy];
}

- (id)_buttonForTheme:(int64_t)theme
{
  if (theme > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + *off_1E8492950[theme]);
  }

  return v4;
}

- (int64_t)_themeForButton:(id)button
{
  buttonCopy = button;
  if (self->_whiteButton == buttonCopy)
  {
    v5 = 0;
  }

  else if (self->_sepiaButton == buttonCopy)
  {
    v5 = 1;
  }

  else if (self->_grayButton == buttonCopy)
  {
    v5 = 2;
  }

  else if (self->_nightButton == buttonCopy)
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
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(SFReaderAppearanceThemeSelector *)self centerXAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[0] = v37;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(SFReaderAppearanceThemeSelector *)self topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  v46[1] = v34;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(SFReaderAppearanceThemeSelector *)self leadingAnchor];
  v24 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:17.0];
  v46[2] = v24;
  trailingAnchor = [(SFReaderAppearanceThemeSelector *)self trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_stackView trailingAnchor];
  v27 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:17.0];
  v46[3] = v27;
  bottomAnchor = [(SFReaderAppearanceThemeSelector *)self bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_stackView bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:9.0];
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

- (id)_imageForTheme:(int64_t)theme selected:(BOOL)selected
{
  selectedCopy = selected;
  if (selected)
  {
    [(SFReaderAppearanceThemeSelector *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:theme alpha:{0.0, 0.2}];
  }
  v6 = ;
  v7 = WBSReaderThemeColor();
  v8 = [(SFReaderAppearanceThemeSelector *)self _themeButtonImageWithFillColor:v7 strokeColor:v6 selected:selectedCopy];

  return v8;
}

- (id)_themeButtonImageWithFillColor:(id)color strokeColor:(id)strokeColor selected:(BOOL)selected
{
  selectedCopy = selected;
  v7 = MEMORY[0x1E69DCEB0];
  strokeColorCopy = strokeColor;
  colorCopy = color;
  mainScreen = [v7 mainScreen];
  [mainScreen scale];
  v12 = v11;

  v22.width = 40.0;
  v22.height = 40.0;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 40.0, 40.0}];
  [strokeColorCopy setFill];

  [v13 fill];
  if (selectedCopy)
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
  [colorCopy setFill];

  [v18 fill];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (void)_themeButtonAction:(id)action
{
  v4 = [(SFReaderAppearanceThemeSelector *)self _themeForButton:action];

  [(SFReaderAppearanceThemeSelector *)self setSelectedTheme:v4];
}

- (id)selectedValue
{
  v2 = MEMORY[0x1E696AD98];
  selectedTheme = [(SFReaderAppearanceThemeSelector *)self selectedTheme];

  return [v2 numberWithInteger:selectedTheme];
}

- (id)imageForValue:(id)value
{
  valueCopy = value;
  v5 = [(SFReaderAppearanceThemeSelector *)self isSelectedValue:valueCopy];
  integerValue = [valueCopy integerValue];

  return [(SFReaderAppearanceThemeSelector *)self _imageForTheme:integerValue selected:v5];
}

- (BOOL)isSelectedValue:(id)value
{
  valueCopy = value;
  selectedValue = [(SFReaderAppearanceThemeSelector *)self selectedValue];
  v6 = [selectedValue isEqual:valueCopy];

  return v6;
}

- (void)selectValue:(id)value
{
  integerValue = [value integerValue];

  [(SFReaderAppearanceThemeSelector *)self setSelectedTheme:integerValue];
}

@end