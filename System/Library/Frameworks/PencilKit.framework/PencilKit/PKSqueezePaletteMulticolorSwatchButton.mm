@interface PKSqueezePaletteMulticolorSwatchButton
- (id)initWithColor:(id *)color;
- (void)_updateSwatchColor;
- (void)_updateUI;
- (void)setColor:(uint64_t)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKSqueezePaletteMulticolorSwatchButton

- (id)initWithColor:(id *)color
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (color)
  {
    v24.receiver = color;
    v24.super_class = PKSqueezePaletteMulticolorSwatchButton;
    v5 = objc_msgSendSuper2(&v24, sel_init);
    color = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 94, a2);
      v6 = [(PKPaletteColorSwatch *)[PKPaletteMulticolorSwatch alloc] initWithSelectionRingInset:7.0 bulletInset:?];
      v7 = color[93];
      color[93] = v6;

      [color[93] setUserInteractionEnabled:0];
      [color[93] setTranslatesAutoresizingMaskIntoConstraints:0];
      [color addSubview:color[93]];
      v18 = MEMORY[0x1E696ACD8];
      centerXAnchor = [color[93] centerXAnchor];
      centerXAnchor2 = [color centerXAnchor];
      v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v25[0] = v21;
      centerYAnchor = [color[93] centerYAnchor];
      centerYAnchor2 = [color centerYAnchor];
      v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v25[1] = v8;
      widthAnchor = [color[93] widthAnchor];
      widthAnchor2 = [color widthAnchor];
      v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v25[2] = v11;
      heightAnchor = [color[93] heightAnchor];
      heightAnchor2 = [color heightAnchor];
      v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v25[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [v18 activateConstraints:v15];

      [(PKSqueezePaletteMulticolorSwatchButton *)color _updateSwatchColor];
      [(PKSqueezePaletteMulticolorSwatchButton *)color _updateUI];
      accessibilityIdentifier = [color[93] accessibilityIdentifier];
      [color setAccessibilityIdentifier:accessibilityIdentifier];
    }
  }

  return color;
}

- (void)_updateSwatchColor
{
  if (self)
  {
    v2 = *(self + 752);
    if (v2)
    {
      v4 = [PKSwatchColor swatchColor:v2 identifier:@"multi"];
      [*(self + 744) setSwatchColor:v4];
    }

    else
    {
      v3 = *(self + 744);

      [v3 setSwatchColor:0];
    }
  }
}

- (void)_updateUI
{
  if (self)
  {
    [*(self + 744) setSelected:*(self + 752) != 0];
    isHighlighted = [self isHighlighted];
    v3 = *(self + 744);
    if (v3 && v3[409] != isHighlighted)
    {
      v3[409] = isHighlighted;
      [(PKPaletteColorSwatch *)v3 _updateSelectionHighlight];
      v3 = *(self + 744);
    }

    v4 = *(self + 760);

    [(PKPaletteColorSwatch *)v3 setColorUserInterfaceStyle:v4];
  }
}

- (void)setColor:(uint64_t)color
{
  v4 = a2;
  if (color && *(color + 752) != v4)
  {
    v5 = v4;
    objc_storeStrong((color + 752), a2);
    [(PKSqueezePaletteMulticolorSwatchButton *)color _updateSwatchColor];
    [(PKSqueezePaletteMulticolorSwatchButton *)color _updateUI];
    v4 = v5;
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteMulticolorSwatchButton;
  [(PKSqueezePaletteMulticolorSwatchButton *)&v4 setSelected:selected];
  [(PKSqueezePaletteMulticolorSwatchButton *)self _updateUI];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteMulticolorSwatchButton;
  [(PKSqueezePaletteMulticolorSwatchButton *)&v4 setHighlighted:highlighted];
  [(PKSqueezePaletteMulticolorSwatchButton *)self _updateUI];
}

@end