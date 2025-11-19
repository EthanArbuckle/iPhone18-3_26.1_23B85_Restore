@interface PKSqueezePaletteRoundedButton
- (PKSqueezePaletteRoundedButton)init;
- (void)layoutSubviews;
@end

@implementation PKSqueezePaletteRoundedButton

- (PKSqueezePaletteRoundedButton)init
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteRoundedButton;
  v2 = [(PKSqueezePaletteRoundedButton *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(PKSqueezePaletteRoundedButton *)v2 setPointerInteractionEnabled:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKSqueezePaletteRoundedButton;
  [(PKSqueezePaletteRoundedButton *)&v21 layoutSubviews];
  [(PKSqueezePaletteRoundedButton *)self bounds];
  v4 = v3;
  [(PKSqueezePaletteRoundedButton *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  v8 = [(PKSqueezePaletteRoundedButton *)self layer];
  [v8 setCornerRadius:v7];

  v9 = [(PKSqueezePaletteRoundedButton *)self layer];
  [v9 setMasksToBounds:1];

  v10 = [(PKSqueezePaletteRoundedButton *)self layer];
  [v10 setAllowsEdgeAntialiasing:1];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(PKSqueezePaletteRoundedButton *)self layer];
  v12 = [v11 sublayers];

  v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) setAllowsEdgeAntialiasing:1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

@end