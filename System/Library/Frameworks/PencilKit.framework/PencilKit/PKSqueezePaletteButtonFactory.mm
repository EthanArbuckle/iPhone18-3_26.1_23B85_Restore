@interface PKSqueezePaletteButtonFactory
- (PKSqueezePaletteButtonFactory)init;
- (PKSqueezePaletteObjectEraserButton)makeObjectEraserButton;
- (PKSqueezePaletteRoundedButton)makeMoreButton;
- (PKSqueezePaletteRoundedButton)makeRedoButtonIsLTR:(uint64_t)a1;
- (PKSqueezePaletteRoundedButton)makeUndoButtonIsLTR:(uint64_t)a1;
- (double)makeStrokeWeightButtonForTool:(double)a3 withWeight:;
- (id)_preferredButtonConfigurationWithSystemImageName:(uint64_t)a1;
- (id)_preferredButtonConfigurationWithSystemImageName:(void *)a3 baseBackgroundColor:;
- (id)makeBackButton;
- (id)makeColorSwatchButtonWithColor:(uint64_t)a1;
- (id)makeDrawingToolButtonWithTool:(uint64_t)a1;
- (id)makeGearButton;
- (id)makeMulticolorButtonWithColor:(uint64_t)a1;
- (id)makeShapesButton;
- (id)makeSignatureButton;
- (id)makeStickersButton;
- (id)makeTextBoxButton;
- (id)sliderButtonConfigurationIsLTR:(uint64_t)a1;
- (id)undoButtonConfigurationIsLTR:(uint64_t)a1;
@end

@implementation PKSqueezePaletteButtonFactory

- (PKSqueezePaletteButtonFactory)init
{
  v18.receiver = self;
  v18.super_class = PKSqueezePaletteButtonFactory;
  v2 = [(PKSqueezePaletteButtonFactory *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
    preferredFont = v2->_preferredFont;
    v2->_preferredFont = v3;

    v2->_preferredImageScale = 2;
    v5 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_49];
    preferredBaseBackgroundColor = v2->_preferredBaseBackgroundColor;
    v2->_preferredBaseBackgroundColor = v5;

    v7 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_3];
    preferredBaseForegroundColor = v2->_preferredBaseForegroundColor;
    v2->_preferredBaseForegroundColor = v7;

    v9 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_5];
    strokeWeightButtonForegroundColor = v2->_strokeWeightButtonForegroundColor;
    v2->_strokeWeightButtonForegroundColor = v9;

    v11 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_7];
    strokeWeightButtonSelectedForegroundColor = v2->_strokeWeightButtonSelectedForegroundColor;
    v2->_strokeWeightButtonSelectedForegroundColor = v11;

    v13 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_9];
    strokeWeightButtonBackgroundColor = v2->_strokeWeightButtonBackgroundColor;
    v2->_strokeWeightButtonBackgroundColor = v13;

    v15 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_11];
    strokeWeightButtonSelectedBackgroundColor = v2->_strokeWeightButtonSelectedBackgroundColor;
    v2->_strokeWeightButtonSelectedBackgroundColor = v15;
  }

  return v2;
}

- (id)sliderButtonConfigurationIsLTR:(uint64_t)a1
{
  if (a1)
  {
    v2 = [(PKSqueezePaletteButtonFactory *)a1 undoButtonConfigurationIsLTR:a2];
    v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_13];
    [v2 setBaseBackgroundColor:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)undoButtonConfigurationIsLTR:(uint64_t)a1
{
  if (a2)
  {
    v2 = @"arrow.uturn.left";
  }

  else
  {
    v2 = @"arrow.uturn.right";
  }

  v3 = [(PKSqueezePaletteButtonFactory *)a1 _preferredButtonConfigurationWithSystemImageName:v2];

  return v3;
}

- (id)_preferredButtonConfigurationWithSystemImageName:(uint64_t)a1
{
  if (a1)
  {
    a1 = [(PKSqueezePaletteButtonFactory *)a1 _preferredButtonConfigurationWithSystemImageName:a2 baseBackgroundColor:*(a1 + 24)];
    v2 = vars8;
  }

  return a1;
}

- (PKSqueezePaletteRoundedButton)makeUndoButtonIsLTR:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_alloc_init(PKSqueezePaletteRoundedButton);
    v5 = [(PKSqueezePaletteButtonFactory *)a1 undoButtonConfigurationIsLTR:a2];
    [(PKSqueezePaletteRoundedButton *)v4 setConfiguration:v5];

    [(PKSqueezePaletteRoundedButton *)v4 setAccessibilityIdentifier:@"Undo-Button"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKSqueezePaletteRoundedButton)makeRedoButtonIsLTR:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_alloc_init(PKSqueezePaletteRoundedButton);
    if (a2)
    {
      v5 = @"arrow.uturn.right";
    }

    else
    {
      v5 = @"arrow.uturn.left";
    }

    v6 = [(PKSqueezePaletteButtonFactory *)a1 _preferredButtonConfigurationWithSystemImageName:v5];
    [(PKSqueezePaletteRoundedButton *)v4 setConfiguration:v6];

    [(PKSqueezePaletteRoundedButton *)v4 setAccessibilityIdentifier:@"Redo-Button"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)makeDrawingToolButtonWithTool:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [[PKSqueezePaletteDrawingTool alloc] initWithTool:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)makeMulticolorButtonWithColor:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [[PKSqueezePaletteMulticolorSwatchButton alloc] initWithColor:v2];

    [v3 setAccessibilityIdentifier:@"MultiColor-Swatch"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)makeColorSwatchButtonWithColor:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [[PKSqueezePaletteColorSwatchButton alloc] initWithColor:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKSqueezePaletteRoundedButton)makeMoreButton
{
  if (a1)
  {
    v2 = objc_alloc_init(PKSqueezePaletteRoundedButton);
    v3 = [(PKSqueezePaletteButtonFactory *)a1 _preferredButtonConfigurationWithSystemImageName:?];
    [(PKSqueezePaletteRoundedButton *)v2 setConfiguration:v3];

    [(PKSqueezePaletteRoundedButton *)v2 setAccessibilityIdentifier:@"More-Button"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)makeBackButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:v4 baseBackgroundColor:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v5];

  [(PKSqueezePaletteRoundedButton *)v3 setPointerStyleProvider:&__block_literal_global_42];
  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Back-Button"];

  return v3;
}

- (id)_preferredButtonConfigurationWithSystemImageName:(void *)a3 baseBackgroundColor:
{
  if (a1)
  {
    v5 = MEMORY[0x1E69DC740];
    v6 = a3;
    v7 = a2;
    v8 = [v5 filledButtonConfiguration];
    v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:a1[1] scale:a1[2]];
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7 withConfiguration:v9];

    [v8 setImage:v10];
    [v8 setBaseBackgroundColor:v6];

    [v8 setBaseForegroundColor:a1[4]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __47__PKSqueezePaletteButtonFactory_makeBackButton__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E69DD070];
  v6 = a4;
  v7 = a2;
  v8 = [[v5 alloc] initWithView:v7];

  v9 = [MEMORY[0x1E69DCDA8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v6];

  return v10;
}

- (id)makeTextBoxButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v4];

  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Add Text"];

  return v3;
}

- (id)makeSignatureButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v4];

  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Add Signature"];

  return v3;
}

- (id)makeShapesButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v4];

  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Add Shape"];

  return v3;
}

- (id)makeStickersButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v4];

  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Add Sticker"];

  return v3;
}

- (id)makeGearButton
{
  v3 = objc_alloc_init(PKSqueezePaletteRoundedButton);
  v4 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v4];

  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Settings-Button"];

  return v3;
}

- (PKSqueezePaletteObjectEraserButton)makeObjectEraserButton
{
  if (a1)
  {
    v2 = objc_alloc_init(PKSqueezePaletteObjectEraserButton);
    objc_initWeak(&location, a1);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __55__PKSqueezePaletteButtonFactory_makeObjectEraserButton__block_invoke;
    v11 = &unk_1E82D9CD8;
    objc_copyWeak(&v12, &location);
    [(PKSqueezePaletteObjectEraserButton *)v2 setConfigurationUpdateHandler:&v8];
    v3 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v6 = [v4 imageWithTintColor:v5 renderingMode:2];
    [v3 setImage:v6];

    [(PKSqueezePaletteObjectEraserButton *)v2 setConfiguration:v3];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __55__PKSqueezePaletteButtonFactory_makeObjectEraserButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 configuration];
  v5 = [v3 isSelected];
  v6 = 56;
  if (v5)
  {
    v6 = 64;
  }

  [v4 setBaseBackgroundColor:*&WeakRetained[v6]];
  v7 = [v3 isSelected];
  v8 = 40;
  if (v7)
  {
    v8 = 48;
  }

  [v4 setBaseForegroundColor:*&WeakRetained[v8]];
  [v3 setConfiguration:v4];
}

- (double)makeStrokeWeightButtonForTool:(double)a3 withWeight:
{
  v5 = a2;
  if (a1)
  {
    v6 = [[PKSqueezePaletteStrokeWeightButton alloc] initWithStrokeWeight:a3];
    objc_initWeak(&location, a1);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __74__PKSqueezePaletteButtonFactory_makeStrokeWeightButtonForTool_withWeight___block_invoke;
    v18 = &unk_1E82D9CD8;
    objc_copyWeak(&v19, &location);
    [v6 setConfigurationUpdateHandler:&v15];
    v7 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
    v8 = [v5 _configuration];
    v9 = [v8 strokeWeightsToButtonImages];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v11 = [v9 objectForKey:v10];
    v12 = [MEMORY[0x1E69DC888] blackColor];
    v13 = [v11 imageWithTintColor:v12 renderingMode:2];
    [v7 setImage:v13];

    [v6 setConfiguration:v7];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__PKSqueezePaletteButtonFactory_makeStrokeWeightButtonForTool_withWeight___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v9 configuration];
    v5 = [v9 isSelected];
    v6 = 56;
    if (v5)
    {
      v6 = 64;
    }

    [v4 setBaseBackgroundColor:*&WeakRetained[v6]];
    v7 = [v9 isSelected];
    v8 = 40;
    if (v7)
    {
      v8 = 48;
    }

    [v4 setBaseForegroundColor:*&WeakRetained[v8]];
    [v9 setConfiguration:v4];
  }
}

@end