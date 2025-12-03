@interface AVControlItem
+ (id)prominentMediaControlItemWithTitle:(id)title;
- (AVControlItem)initWithTitle:(id)title type:(int64_t)type;
- (AVControlItemDelegate)delegate;
- (id)_formattedTitleString;
- (void)_buttonTouchUpInside:(id)inside;
- (void)_createButton;
- (void)_notifyDelegateOfChangesIfNeeded;
- (void)_updateButton;
- (void)_updateTintColor;
- (void)setAction:(id)action;
- (void)setEnabled:(BOOL)enabled;
- (void)setFirstGenerationControl:(BOOL)control;
- (void)setImage:(id)image;
- (void)setMenu:(id)menu;
- (void)setTintColor:(id)color;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
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
  title = [(AVControlItem *)self title];
  [(AVButton *)button setAccessibilityLabel:title];

  [(AVButton *)self->_button setEnabled:[(AVControlItem *)self isEnabled]];
  v5 = self->_button;
  image = [(AVControlItem *)self image];
  [(AVButton *)v5 setImage:image forState:0];

  image2 = [(AVControlItem *)self image];

  if (image2)
  {
    [(AVButton *)self->_button setAppliesTransformToImageViewWhenHighlighted:1];
  }

  firstGenerationControl = self->_firstGenerationControl;
  image3 = [(AVControlItem *)self image];
  v10 = image3;
  if (firstGenerationControl)
  {
    if (image3)
    {
      title2 = 0;
    }

    else
    {
      title2 = [(AVControlItem *)self title];
    }

    [(AVButton *)self->_button setTitle:title2 forState:0];
  }

  else
  {
    if (image3)
    {
      title2 = 0;
    }

    else
    {
      title2 = [(AVControlItem *)self _formattedTitleString];
    }

    [(AVButton *)self->_button setAttributedTitle:title2 forState:0];
    if (!self->_titleLabelEncapsulated)
    {
      titleLabel = [(AVButton *)self->_button titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:1];
    }
  }

  titleLabel2 = [(AVButton *)self->_button titleLabel];
  titleFont = [(AVControlItem *)self titleFont];
  [titleLabel2 setFont:titleFont];

  [(AVControlItem *)self _notifyDelegateOfChangesIfNeeded];
}

- (void)_notifyDelegateOfChangesIfNeeded
{
  delegate = [(AVControlItem *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(AVControlItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(AVControlItem *)self delegate];
      [delegate3 controlItemDidUpdateVisualConfiguration:self];
    }
  }
}

- (id)_formattedTitleString
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (self->_firstGenerationControl)
  {
    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    title = [(AVControlItem *)self title];
    v5 = [v3 initWithString:title attributes:0];
  }

  else
  {
    if (self->_titleLabelEncapsulated)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69655F0]);
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      title2 = [(AVControlItem *)self title];
      v22[0] = *MEMORY[0x1E69DB648];
      titleFont = [(AVControlItem *)self titleFont];
      v10 = *MEMORY[0x1E69655D0];
      v23[0] = titleFont;
      v23[1] = v6;
      v11 = *MEMORY[0x1E69DB650];
      v22[1] = v10;
      v22[2] = v11;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v23[2] = labelColor;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
      v5 = [v7 initWithString:title2 attributes:v13];
    }

    else
    {
      v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD78] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      title3 = [(AVControlItem *)self title];
      v16 = *MEMORY[0x1E69DB650];
      v20[0] = *MEMORY[0x1E69DB648];
      v20[1] = v16;
      v21[0] = v6;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v21[1] = whiteColor;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v5 = [v14 initWithString:title3 attributes:v18];
    }
  }

  return v5;
}

- (void)_buttonTouchUpInside:(id)inside
{
  action = [(AVControlItem *)self action];
  if (action)
  {
    v4 = action;
    action[2]();
    action = v4;
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

- (void)setFirstGenerationControl:(BOOL)control
{
  if (self->_firstGenerationControl != control)
  {
    self->_firstGenerationControl = control;
    [(AVControlItem *)self _createButton];
  }
}

- (void)_updateTintColor
{
  tintColor = [(AVControlItem *)self tintColor];
  [AVBackdropView applyGlyphTintColor:tintColor toView:self->_button];

  [(AVControlItem *)self _notifyDelegateOfChangesIfNeeded];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    v5 = 20.0;
    if (self->_firstGenerationControl)
    {
      v5 = 12.0;
    }

    fontCopy = [MEMORY[0x1E69DB878] systemFontOfSize:v5];
  }

  obj = fontCopy;
  if (([(UIFont *)self->_titleFont isEqual:fontCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, obj);
    [(AVControlItem *)self _updateButton];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[AVBackdropView secondaryGlyphTintColor];
  }

  p_tintColor = &self->_tintColor;
  if (self->_tintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(p_tintColor, colorCopy);
    p_tintColor = [(AVControlItem *)self _updateTintColor];
    colorCopy = v6;
  }

  MEMORY[0x1EEE66BB8](p_tintColor, colorCopy);
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  menu = [(AVButton *)self->_button menu];

  v5 = menuCopy;
  if (menu != menuCopy)
  {
    [(AVButton *)self->_button setMenu:menuCopy];
    [(AVControlItem *)self _updateShowsMenuAsPrimaryActionStateIfNeeded];
    [(AVControlItem *)self _updateButton];
    v5 = menuCopy;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(AVControlItem *)self _updateButton];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  p_image = &self->_image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_image, image);
    [(AVControlItem *)self _updateButton];
    p_image = [(AVControlItem *)self _updateTintColor];
    imageCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_image, imageCopy);
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    v5 = [title copy];
    title = self->_title;
    self->_title = v5;

    [(AVControlItem *)self _updateButton];

    [(AVControlItem *)self _updateTintColor];
  }
}

- (void)setAction:(id)action
{
  if (self->_action != action)
  {
    v5 = [action copy];
    action = self->_action;
    self->_action = v5;

    [(AVControlItem *)self _updateShowsMenuAsPrimaryActionStateIfNeeded];
  }
}

- (AVControlItem)initWithTitle:(id)title type:(int64_t)type
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = AVControlItem;
  v7 = [(AVControlItem *)&v14 init];
  if (v7)
  {
    v8 = [titleCopy copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_type = type;
    v7->_enabled = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;

    v7->_firstGenerationControl = 0;
    v7->_style = 0;
    [(AVControlItem *)v7 _createButton];
  }

  return v7;
}

+ (id)prominentMediaControlItemWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[AVControlItem alloc] initWithTitle:titleCopy type:2];

  v4->_style = 1;

  return v4;
}

@end