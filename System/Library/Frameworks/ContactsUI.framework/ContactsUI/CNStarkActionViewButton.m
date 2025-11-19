@interface CNStarkActionViewButton
- (CNStarkActionViewButton)init;
- (void)setButtonImage:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setGlyphColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsStroke:(BOOL)a3;
- (void)setStrokeColor:(id)a3;
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
  v4 = [(CNStarkActionViewButton *)self buttonImage];
  [v3 setImage:v4];

  [v3 setBaseForegroundColor:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke;
  v8[3] = &unk_1E74E3DB0;
  v8[4] = self;
  [v3 setImageColorTransformer:v8];
  v5 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [v5 setBackgroundColor:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke_2;
  v7[3] = &unk_1E74E3DB0;
  v7[4] = self;
  [v5 setBackgroundColorTransformer:v7];
  if ([(CNStarkActionViewButton *)self showsStroke])
  {
    [v5 setStrokeWidth:2.0];
    [v5 setStrokeColor:0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__CNStarkActionViewButton_updateConfiguration__block_invoke_3;
    v6[3] = &unk_1E74E3DB0;
    v6[4] = self;
    [v5 setStrokeColorTransformer:v6];
  }

  [(CNStarkActionViewButton *)self shapeCornerRadius];
  [v5 setCornerRadius:?];
  [v3 setBackground:v5];
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

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNStarkActionViewButton;
  [(CNStarkActionViewButton *)&v4 setSelected:a3];
  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNStarkActionViewButton;
  [(CNStarkActionViewButton *)&v4 setHighlighted:a3];
  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setGlyphColor:(id)a3
{
  objc_storeStrong(&self->_glyphColor, a3);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setFillColor:(id)a3
{
  objc_storeStrong(&self->_fillColor, a3);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setStrokeColor:(id)a3
{
  objc_storeStrong(&self->_strokeColor, a3);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

- (void)setShowsStroke:(BOOL)a3
{
  if (self->_showsStroke != a3)
  {
    self->_showsStroke = a3;
    [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)setButtonImage:(id)a3
{
  objc_storeStrong(&self->_buttonImage, a3);

  [(CNStarkActionViewButton *)self setNeedsUpdateConfiguration];
}

@end