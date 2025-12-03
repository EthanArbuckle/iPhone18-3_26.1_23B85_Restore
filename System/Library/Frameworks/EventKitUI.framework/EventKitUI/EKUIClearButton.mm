@interface EKUIClearButton
- (EKUIClearButton)initWithColor:(id)color;
- (id)_clearImageSymbolConfig;
@end

@implementation EKUIClearButton

- (EKUIClearButton)initWithColor:(id)color
{
  v23[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v22.receiver = self;
  v22.super_class = EKUIClearButton;
  v5 = [(EKUIClearButton *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    _clearImageSymbolConfig = [(EKUIClearButton *)v5 _clearImageSymbolConfig];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setImage:v6];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:_clearImageSymbolConfig];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __33__EKUIClearButton_initWithColor___block_invoke;
    v20[3] = &unk_1E8441A40;
    v21 = colorCopy;
    [plainButtonConfiguration setImageColorTransformer:v20];
    background = [plainButtonConfiguration background];
    [background setCornerRadius:0.0];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(EKUIClearButton *)v5 setConfiguration:plainButtonConfiguration];
    [(EKUIClearButton *)v5 _setTouchInsets:-20.0, -20.0, -20.0, -20.0];
    LODWORD(v10) = 1148846080;
    [(EKUIClearButton *)v5 setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(EKUIClearButton *)v5 setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(EKUIClearButton *)v5 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(EKUIClearButton *)v5 setContentHuggingPriority:1 forAxis:v13];
    objc_initWeak(&location, v5);
    v23[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __33__EKUIClearButton_initWithColor___block_invoke_2;
    v17[3] = &unk_1E843EBE8;
    objc_copyWeak(&v18, &location);
    v15 = [(EKUIClearButton *)v5 registerForTraitChanges:v14 withHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __33__EKUIClearButton_initWithColor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained configuration];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 _clearImageSymbolConfig];
  [v6 setPreferredSymbolConfigurationForImage:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setConfiguration:v6];
}

- (id)_clearImageSymbolConfig
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = *MEMORY[0x1E69DDCF8];
  traitCollection = [(EKUIClearButton *)self traitCollection];
  v5 = [v2 configurationWithTextStyle:v3 scale:{+[EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:traitCollection:](EKUIConstrainedFontUtilities, "tableViewCellCappedSymbolImageScaleWithScale:traitCollection:", 2, traitCollection)}];

  return v5;
}

@end