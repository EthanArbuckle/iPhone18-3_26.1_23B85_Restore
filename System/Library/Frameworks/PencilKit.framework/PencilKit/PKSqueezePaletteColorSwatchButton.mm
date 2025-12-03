@interface PKSqueezePaletteColorSwatchButton
- (id)initWithColor:(id *)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKSqueezePaletteColorSwatchButton

- (id)initWithColor:(id *)color
{
  v31[4] = *MEMORY[0x1E69E9840];
  v26 = a2;
  if (color)
  {
    v30.receiver = color;
    v30.super_class = PKSqueezePaletteColorSwatchButton;
    v4 = objc_msgSendSuper2(&v30, sel_init);
    color = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 94, a2);
      v5 = objc_alloc_init(PKPaletteColorSwatch);
      v6 = color[93];
      color[93] = v5;

      [color[93] setSwatchColor:color[94]];
      [color[93] setUserInteractionEnabled:0];
      [color[93] setTranslatesAutoresizingMaskIntoConstraints:0];
      [color addSubview:color[93]];
      v21 = MEMORY[0x1E696ACD8];
      centerXAnchor = [color[93] centerXAnchor];
      centerXAnchor2 = [color centerXAnchor];
      v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v31[0] = v23;
      centerYAnchor = [color[93] centerYAnchor];
      centerYAnchor2 = [color centerYAnchor];
      v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v31[1] = v8;
      widthAnchor = [color[93] widthAnchor];
      widthAnchor2 = [color widthAnchor];
      v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v31[2] = v11;
      heightAnchor = [color[93] heightAnchor];
      heightAnchor2 = [color heightAnchor];
      v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v31[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v21 activateConstraints:v15];

      objc_initWeak(&location, color);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__PKSqueezePaletteColorSwatchButton_initWithColor___block_invoke;
      v27[3] = &unk_1E82D9230;
      objc_copyWeak(&v28, &location);
      [color setPointerStyleProvider:v27];
      v16 = MEMORY[0x1E696AEC0];
      identifier = [v26 identifier];
      v18 = [v16 stringWithFormat:@"MiniPalette-ColorSwatch-%@", identifier];
      [color setAccessibilityIdentifier:v18];

      identifier2 = [v26 identifier];
      [color setAccessibilityLabel:identifier2];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return color;
}

id __51__PKSqueezePaletteColorSwatchButton_initWithColor___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (v9 = WeakRetained, v10 = objc_loadWeakRetained((a1 + 32)), v11 = [v10 isSelected], v10, v9, (v11 & 1) == 0))
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v6];
    v14 = [MEMORY[0x1E69DCDA8] effectWithPreview:v13];
    v12 = [MEMORY[0x1E69DCDD0] styleWithEffect:v14 shape:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteColorSwatchButton;
  [(PKSqueezePaletteColorSwatchButton *)&v4 setSelected:selected];
  [(PKPaletteColorSwatch *)self->_swatch setSelected:[(PKSqueezePaletteColorSwatchButton *)self isSelected]];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = PKSqueezePaletteColorSwatchButton;
  [(PKSqueezePaletteColorSwatchButton *)&v6 setHighlighted:highlighted];
  isHighlighted = [(PKSqueezePaletteColorSwatchButton *)self isHighlighted];
  swatch = self->_swatch;
  if (swatch)
  {
    if (swatch->_showsSelectionHighlight != isHighlighted)
    {
      swatch->_showsSelectionHighlight = isHighlighted;
      [(PKPaletteColorSwatch *)swatch _updateSelectionHighlight];
    }
  }
}

@end