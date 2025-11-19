@interface PKSqueezePaletteMulticolorSwatchButton
- (id)initWithColor:(id *)a1;
- (void)_updateSwatchColor;
- (void)_updateUI;
- (void)setColor:(uint64_t)a1;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKSqueezePaletteMulticolorSwatchButton

- (id)initWithColor:(id *)a1
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = PKSqueezePaletteMulticolorSwatchButton;
    v5 = objc_msgSendSuper2(&v24, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 94, a2);
      v6 = [(PKPaletteColorSwatch *)[PKPaletteMulticolorSwatch alloc] initWithSelectionRingInset:7.0 bulletInset:?];
      v7 = a1[93];
      a1[93] = v6;

      [a1[93] setUserInteractionEnabled:0];
      [a1[93] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1 addSubview:a1[93]];
      v18 = MEMORY[0x1E696ACD8];
      v23 = [a1[93] centerXAnchor];
      v22 = [a1 centerXAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v25[0] = v21;
      v20 = [a1[93] centerYAnchor];
      v19 = [a1 centerYAnchor];
      v8 = [v20 constraintEqualToAnchor:v19];
      v25[1] = v8;
      v9 = [a1[93] widthAnchor];
      v10 = [a1 widthAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v25[2] = v11;
      v12 = [a1[93] heightAnchor];
      v13 = [a1 heightAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v25[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [v18 activateConstraints:v15];

      [(PKSqueezePaletteMulticolorSwatchButton *)a1 _updateSwatchColor];
      [(PKSqueezePaletteMulticolorSwatchButton *)a1 _updateUI];
      v16 = [a1[93] accessibilityIdentifier];
      [a1 setAccessibilityIdentifier:v16];
    }
  }

  return a1;
}

- (void)_updateSwatchColor
{
  if (a1)
  {
    v2 = *(a1 + 752);
    if (v2)
    {
      v4 = [PKSwatchColor swatchColor:v2 identifier:@"multi"];
      [*(a1 + 744) setSwatchColor:v4];
    }

    else
    {
      v3 = *(a1 + 744);

      [v3 setSwatchColor:0];
    }
  }
}

- (void)_updateUI
{
  if (a1)
  {
    [*(a1 + 744) setSelected:*(a1 + 752) != 0];
    v2 = [a1 isHighlighted];
    v3 = *(a1 + 744);
    if (v3 && v3[409] != v2)
    {
      v3[409] = v2;
      [(PKPaletteColorSwatch *)v3 _updateSelectionHighlight];
      v3 = *(a1 + 744);
    }

    v4 = *(a1 + 760);

    [(PKPaletteColorSwatch *)v3 setColorUserInterfaceStyle:v4];
  }
}

- (void)setColor:(uint64_t)a1
{
  v4 = a2;
  if (a1 && *(a1 + 752) != v4)
  {
    v5 = v4;
    objc_storeStrong((a1 + 752), a2);
    [(PKSqueezePaletteMulticolorSwatchButton *)a1 _updateSwatchColor];
    [(PKSqueezePaletteMulticolorSwatchButton *)a1 _updateUI];
    v4 = v5;
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteMulticolorSwatchButton;
  [(PKSqueezePaletteMulticolorSwatchButton *)&v4 setSelected:a3];
  [(PKSqueezePaletteMulticolorSwatchButton *)self _updateUI];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteMulticolorSwatchButton;
  [(PKSqueezePaletteMulticolorSwatchButton *)&v4 setHighlighted:a3];
  [(PKSqueezePaletteMulticolorSwatchButton *)self _updateUI];
}

@end