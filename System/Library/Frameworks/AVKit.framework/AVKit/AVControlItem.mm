@interface AVControlItem
+ (id)prominentMediaControlItemWithTitle:(id)a3;
- (AVControlItem)initWithTitle:(id)a3 type:(int64_t)a4;
- (AVControlItemDelegate)delegate;
- (id)_formattedTitleString;
- (void)_buttonTouchUpInside:(id)a3;
- (void)_createButton;
- (void)_notifyDelegateOfChangesIfNeeded;
- (void)_updateButton;
- (void)_updateTintColor;
- (void)setAction:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFirstGenerationControl:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setMenu:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
@end

@implementation AVControlItem

- (AVControlItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateButton
{
  button = self->_button;
  v4 = [(AVControlItem *)self title];
  [(AVButton *)button setAccessibilityLabel:v4];

  [(AVButton *)self->_button setEnabled:[(AVControlItem *)self isEnabled]];
  v5 = self->_button;
  v6 = [(AVControlItem *)self image];
  [(AVButton *)v5 setImage:v6 forState:0];

  v7 = [(AVControlItem *)self image];

  if (v7)
  {
    [(AVButton *)self->_button setAppliesTransformToImageViewWhenHighlighted:1];
  }

  firstGenerationControl = self->_firstGenerationControl;
  v9 = [(AVControlItem *)self image];
  v10 = v9;
  if (firstGenerationControl)
  {
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(AVControlItem *)self title];
    }

    [(AVButton *)self->_button setTitle:v11 forState:0];
  }

  else
  {
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(AVControlItem *)self _formattedTitleString];
    }

    [(AVButton *)self->_button setAttributedTitle:v11 forState:0];
    if (!self->_titleLabelEncapsulated)
    {
      v12 = [(AVButton *)self->_button titleLabel];
      [v12 setAdjustsFontSizeToFitWidth:1];
    }
  }

  v13 = [(AVButton *)self->_button titleLabel];
  v14 = [(AVControlItem *)self titleFont];
  [v13 setFont:v14];

  [(AVControlItem *)self _notifyDelegateOfChangesIfNeeded];
}

- (void)_notifyDelegateOfChangesIfNeeded
{
  v3 = [(AVControlItem *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(AVControlItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(AVControlItem *)self delegate];
      [v7 controlItemDidUpdateVisualConfiguration:self];
    }
  }
}

- (id)_formattedTitleString
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (self->_firstGenerationControl)
  {
    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    v4 = [(AVControlItem *)self title];
    v5 = [v3 initWithString:v4 attributes:0];
  }

  else
  {
    if (self->_titleLabelEncapsulated)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69655F0]);
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = [(AVControlItem *)self title];
      v22[0] = *MEMORY[0x1E69DB648];
      v9 = [(AVControlItem *)self titleFont];
      v10 = *MEMORY[0x1E69655D0];
      v23[0] = v9;
      v23[1] = v6;
      v11 = *MEMORY[0x1E69DB650];
      v22[1] = v10;
      v22[2] = v11;
      v12 = [MEMORY[0x1E69DC888] labelColor];
      v23[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
      v5 = [v7 initWithString:v8 attributes:v13];
    }

    else
    {
      v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD78] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      v15 = [(AVControlItem *)self title];
      v16 = *MEMORY[0x1E69DB650];
      v20[0] = *MEMORY[0x1E69DB648];
      v20[1] = v16;
      v21[0] = v6;
      v17 = [MEMORY[0x1E69DC888] whiteColor];
      v21[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v5 = [v14 initWithString:v15 attributes:v18];
    }
  }

  return v5;
}

- (void)_buttonTouchUpInside:(id)a3
{
  v3 = [(AVControlItem *)self action];
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)_createButton
{
  button = self->_button;
  if (button)
  {
    self->_button = 0;
  }

  v4 = self->_firstGenerationControl && self->_type == 2;
  v5 = [AVButton buttonWithAccessibilityIdentifier:self->_title isFirstGeneration:?];
  v6 = self->_button;
  self->_button = v5;

  [(AVButton *)self->_button addTarget:self action:sel__buttonTouchUpInside_ forControlEvents:64];
  [(AVButton *)self->_button setUsesBackgroundEffectViewForTextOnlyButtons:v4];
  [(AVControlItem *)self setTitleFont:0];
  [(AVControlItem *)self setTintColor:0];

  [(AVControlItem *)self _updateButton];
}

- (void)setFirstGenerationControl:(BOOL)a3
{
  if (self->_firstGenerationControl != a3)
  {
    self->_firstGenerationControl = a3;
    [(AVControlItem *)self _createButton];
  }
}

- (void)_updateTintColor
{
  v3 = [(AVControlItem *)self tintColor];
  [AVBackdropView applyGlyphTintColor:v3 toView:self->_button];

  [(AVControlItem *)self _notifyDelegateOfChangesIfNeeded];
}

- (void)setTitleFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 20.0;
    if (self->_firstGenerationControl)
    {
      v5 = 12.0;
    }

    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:v5];
  }

  obj = v4;
  if (([(UIFont *)self->_titleFont isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, obj);
    [(AVControlItem *)self _updateButton];
  }
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AVBackdropView secondaryGlyphTintColor];
  }

  p_tintColor = &self->_tintColor;
  if (self->_tintColor != v4)
  {
    v6 = v4;
    objc_storeStrong(p_tintColor, v4);
    p_tintColor = [(AVControlItem *)self _updateTintColor];
    v4 = v6;
  }

  MEMORY[0x1EEE66BB8](p_tintColor, v4);
}

- (void)setMenu:(id)a3
{
  v6 = a3;
  v4 = [(AVButton *)self->_button menu];

  v5 = v6;
  if (v4 != v6)
  {
    [(AVButton *)self->_button setMenu:v6];
    [(AVControlItem *)self _updateShowsMenuAsPrimaryActionStateIfNeeded];
    [(AVControlItem *)self _updateButton];
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVControlItem *)self _updateButton];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  p_image = &self->_image;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(p_image, a3);
    [(AVControlItem *)self _updateButton];
    p_image = [(AVControlItem *)self _updateTintColor];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_image, v5);
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v5 = [a3 copy];
    title = self->_title;
    self->_title = v5;

    [(AVControlItem *)self _updateButton];

    [(AVControlItem *)self _updateTintColor];
  }
}

- (void)setAction:(id)a3
{
  if (self->_action != a3)
  {
    v5 = [a3 copy];
    action = self->_action;
    self->_action = v5;

    [(AVControlItem *)self _updateShowsMenuAsPrimaryActionStateIfNeeded];
  }
}

- (AVControlItem)initWithTitle:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = AVControlItem;
  v7 = [(AVControlItem *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_type = a4;
    v7->_enabled = 1;
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v11;

    v7->_firstGenerationControl = 0;
    v7->_style = 0;
    [(AVControlItem *)v7 _createButton];
  }

  return v7;
}

+ (id)prominentMediaControlItemWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[AVControlItem alloc] initWithTitle:v3 type:2];

  v4->_style = 1;

  return v4;
}

@end