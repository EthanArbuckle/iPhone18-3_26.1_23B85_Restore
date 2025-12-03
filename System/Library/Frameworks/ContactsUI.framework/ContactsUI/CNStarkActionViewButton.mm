@interface CNStarkActionViewButton
- (CNStarkActionViewButton)init;
- (void)setButtonImage:(id)image;
- (void)setFillColor:(id)color;
- (void)setGlyphColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setShowsStroke:(BOOL)stroke;
- (void)setStrokeColor:(id)color;
- (void)updateConfiguration;
@end

@implementation CNStarkActionViewButton

- (void)updateConfiguration
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC740] _glassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] tintedButtonConfiguration];
  }
  v3 = ;
  buttonImage = [(CNStarkActionViewButton *)self buttonImage];
  [v3 setImage:buttonImage];

  [v3 setBaseForegroundColor:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke;
  v8[3] = &unk_1E74E3DB0;
  v8[4] = self;
  [v3 setImageColorTransformer:v8];
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [clearConfiguration setBackgroundColor:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke_2;
  v7[3] = &unk_1E74E3DB0;
  v7[4] = self;
  [clearConfiguration setBackgroundColorTransformer:v7];
  if ([(CNStarkActionViewButton *)self showsStroke])
  {
    [clearConfiguration setStrokeWidth:2.0];
    [clearConfiguration setStrokeColor:0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke_3;
    v6[3] = &unk_1E74E3DB0;
    v6[4] = self;
    [clearConfiguration setStrokeColorTransformer:v6];
  }

  [(CNStarkActionViewButton *)self shapeCornerRadius];
  [clearConfiguration setCornerRadius:?];
  [v3 setBackground:clearConfiguration];
  [(CNStarkActionViewButton *)self setConfiguration:v3];
}

- (CNStarkActionViewButton)init
{
  v5.receiver = self;
  v5.super_class = CNStarkActionViewButton;
  v2 = [(CNStarkActionViewButton *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CNStarkActionViewButton *)v2 updateConfiguration];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = CNStarkActionViewButton;
  [(CNStarkActionViewButton *)&v4 setSelected:selected];
  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CNStarkActionViewButton;
  [(CNStarkActionViewButton *)&v4 setHighlighted:highlighted];
  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setGlyphColor:(id)color
{
  objc_storeStrong(&self->_glyphColor, color);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setStrokeColor:(id)color
{
  objc_storeStrong(&self->_strokeColor, color);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setShowsStroke:(BOOL)stroke
{
  if (self->_showsStroke != stroke)
  {
    self->_showsStroke = stroke;
    [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)setButtonImage:(id)image
{
  objc_storeStrong(&self->_buttonImage, image);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

@end