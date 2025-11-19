@interface PKSqueezePaletteColorSwatchButton
- (id)initWithColor:(id *)a1;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKSqueezePaletteColorSwatchButton

- (id)initWithColor:(id *)a1
{
  v31[4] = *MEMORY[0x1E69E9840];
  v26 = a2;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = PKSqueezePaletteColorSwatchButton;
    v4 = objc_msgSendSuper2(&v30, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 94, a2);
      v5 = objc_alloc_init(PKPaletteColorSwatch);
      v6 = a1[93];
      a1[93] = v5;

      [a1[93] setSwatchColor:a1[94]];
      [a1[93] setUserInteractionEnabled:0];
      [a1[93] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1 addSubview:a1[93]];
      v21 = MEMORY[0x1E696ACD8];
      v25 = [a1[93] centerXAnchor];
      v24 = [a1 centerXAnchor];
      v23 = [v25 constraintEqualToAnchor:v24];
      v31[0] = v23;
      v22 = [a1[93] centerYAnchor];
      v7 = [a1 centerYAnchor];
      v8 = [v22 constraintEqualToAnchor:v7];
      v31[1] = v8;
      v9 = [a1[93] widthAnchor];
      v10 = [a1 widthAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v31[2] = v11;
      v12 = [a1[93] heightAnchor];
      v13 = [a1 heightAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v31[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v21 activateConstraints:v15];

      objc_initWeak(&location, a1);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__PKSqueezePaletteColorSwatchButton_initWithColor___block_invoke;
      v27[3] = &unk_1E82D9230;
      objc_copyWeak(&v28, &location);
      [a1 setPointerStyleProvider:v27];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [v26 identifier];
      v18 = [v16 stringWithFormat:@"MiniPalette-ColorSwatch-%@", v17];
      [a1 setAccessibilityIdentifier:v18];

      v19 = [v26 identifier];
      [a1 setAccessibilityLabel:v19];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return a1;
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

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKSqueezePaletteColorSwatchButton;
  [(PKSqueezePaletteColorSwatchButton *)&v4 setSelected:a3];
  [(PKPaletteColorSwatch *)self->_swatch setSelected:[(PKSqueezePaletteColorSwatchButton *)self isSelected]];
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKSqueezePaletteColorSwatchButton;
  [(PKSqueezePaletteColorSwatchButton *)&v6 setHighlighted:a3];
  v4 = [(PKSqueezePaletteColorSwatchButton *)self isHighlighted];
  swatch = self->_swatch;
  if (swatch)
  {
    if (swatch->_showsSelectionHighlight != v4)
    {
      swatch->_showsSelectionHighlight = v4;
      [(PKPaletteColorSwatch *)swatch _updateSelectionHighlight];
    }
  }
}

@end