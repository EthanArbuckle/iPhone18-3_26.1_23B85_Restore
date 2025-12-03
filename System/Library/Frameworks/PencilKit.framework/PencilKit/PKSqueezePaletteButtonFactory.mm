@interface PKSqueezePaletteButtonFactory
- (PKSqueezePaletteButtonFactory)init;
- (PKSqueezePaletteObjectEraserButton)makeObjectEraserButton;
- (PKSqueezePaletteRoundedButton)makeMoreButton;
- (PKSqueezePaletteRoundedButton)makeRedoButtonIsLTR:(uint64_t)r;
- (PKSqueezePaletteRoundedButton)makeUndoButtonIsLTR:(uint64_t)r;
- (double)makeStrokeWeightButtonForTool:(double)tool withWeight:;
- (id)_preferredButtonConfigurationWithSystemImageName:(uint64_t)name;
- (id)_preferredButtonConfigurationWithSystemImageName:(void *)name baseBackgroundColor:;
- (id)makeBackButton;
- (id)makeColorSwatchButtonWithColor:(uint64_t)color;
- (id)makeDrawingToolButtonWithTool:(uint64_t)tool;
- (id)makeGearButton;
- (id)makeMulticolorButtonWithColor:(uint64_t)color;
- (id)makeShapesButton;
- (id)makeSignatureButton;
- (id)makeStickersButton;
- (id)makeTextBoxButton;
- (id)sliderButtonConfigurationIsLTR:(uint64_t)r;
- (id)undoButtonConfigurationIsLTR:(uint64_t)r;
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

- (id)sliderButtonConfigurationIsLTR:(uint64_t)r
{
  if (r)
  {
    v2 = [(PKSqueezePaletteButtonFactory *)r undoButtonConfigurationIsLTR:a2];
    v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_13];
    [v2 setBaseBackgroundColor:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)undoButtonConfigurationIsLTR:(uint64_t)r
{
  if (a2)
  {
    v2 = @"arrow.uturn.left";
  }

  else
  {
    v2 = @"arrow.uturn.right";
  }

  v3 = [(PKSqueezePaletteButtonFactory *)r _preferredButtonConfigurationWithSystemImageName:v2];

  return v3;
}

- (id)_preferredButtonConfigurationWithSystemImageName:(uint64_t)name
{
  if (name)
  {
    name = [(PKSqueezePaletteButtonFactory *)name _preferredButtonConfigurationWithSystemImageName:a2 baseBackgroundColor:*(name + 24)];
    v2 = vars8;
  }

  return name;
}

- (PKSqueezePaletteRoundedButton)makeUndoButtonIsLTR:(uint64_t)r
{
  if (r)
  {
    v4 = objc_alloc_init(PKSqueezePaletteRoundedButton);
    v5 = [(PKSqueezePaletteButtonFactory *)r undoButtonConfigurationIsLTR:a2];
    [(PKSqueezePaletteRoundedButton *)v4 setConfiguration:v5];

    [(PKSqueezePaletteRoundedButton *)v4 setAccessibilityIdentifier:@"Undo-Button"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKSqueezePaletteRoundedButton)makeRedoButtonIsLTR:(uint64_t)r
{
  if (r)
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

    v6 = [(PKSqueezePaletteButtonFactory *)r _preferredButtonConfigurationWithSystemImageName:v5];
    [(PKSqueezePaletteRoundedButton *)v4 setConfiguration:v6];

    [(PKSqueezePaletteRoundedButton *)v4 setAccessibilityIdentifier:@"Redo-Button"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)makeDrawingToolButtonWithTool:(uint64_t)tool
{
  if (tool)
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

- (id)makeMulticolorButtonWithColor:(uint64_t)color
{
  if (color)
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

- (id)makeColorSwatchButtonWithColor:(uint64_t)color
{
  if (color)
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
  if (self)
  {
    v2 = objc_alloc_init(PKSqueezePaletteRoundedButton);
    v3 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:?];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(PKSqueezePaletteButtonFactory *)self _preferredButtonConfigurationWithSystemImageName:clearColor baseBackgroundColor:?];
  [(PKSqueezePaletteRoundedButton *)v3 setConfiguration:v5];

  [(PKSqueezePaletteRoundedButton *)v3 setPointerStyleProvider:&__block_literal_global_42];
  [(PKSqueezePaletteRoundedButton *)v3 setAccessibilityIdentifier:@"Back-Button"];

  return v3;
}

- (id)_preferredButtonConfigurationWithSystemImageName:(void *)name baseBackgroundColor:
{
  if (self)
  {
    v5 = MEMORY[0x1E69DC740];
    nameCopy = name;
    v7 = a2;
    filledButtonConfiguration = [v5 filledButtonConfiguration];
    v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:self[1] scale:self[2]];
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7 withConfiguration:v9];

    [filledButtonConfiguration setImage:v10];
    [filledButtonConfiguration setBaseBackgroundColor:nameCopy];

    [filledButtonConfiguration setBaseForegroundColor:self[4]];
  }

  else
  {
    filledButtonConfiguration = 0;
  }

  return filledButtonConfiguration;
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
  if (self)
  {
    v2 = objc_alloc_init(PKSqueezePaletteObjectEraserButton);
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __55__PKSqueezePaletteButtonFactory_makeObjectEraserButton__block_invoke;
    v11 = &unk_1E82D9CD8;
    objc_copyWeak(&v12, &location);
    [(PKSqueezePaletteObjectEraserButton *)v2 setConfigurationUpdateHandler:&v8];
    tintedButtonConfiguration = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v6 = [v4 imageWithTintColor:blackColor renderingMode:2];
    [tintedButtonConfiguration setImage:v6];

    [(PKSqueezePaletteObjectEraserButton *)v2 setConfiguration:tintedButtonConfiguration];
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

- (double)makeStrokeWeightButtonForTool:(double)tool withWeight:
{
  v5 = a2;
  if (self)
  {
    v6 = [[PKSqueezePaletteStrokeWeightButton alloc] initWithStrokeWeight:tool];
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __74__PKSqueezePaletteButtonFactory_makeStrokeWeightButtonForTool_withWeight___block_invoke;
    v18 = &unk_1E82D9CD8;
    objc_copyWeak(&v19, &location);
    [v6 setConfigurationUpdateHandler:&v15];
    tintedButtonConfiguration = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
    _configuration = [v5 _configuration];
    strokeWeightsToButtonImages = [_configuration strokeWeightsToButtonImages];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:tool];
    v11 = [strokeWeightsToButtonImages objectForKey:v10];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v13 = [v11 imageWithTintColor:blackColor renderingMode:2];
    [tintedButtonConfiguration setImage:v13];

    [v6 setConfiguration:tintedButtonConfiguration];
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