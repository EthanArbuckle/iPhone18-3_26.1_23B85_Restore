@interface AKRoundedButton
+ (id)roundedButton;
- (UIEdgeInsets)_signInButtonEdgeInsets;
- (void)_updateColor;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AKRoundedButton

+ (id)roundedButton
{
  v21[2] = a1;
  v21[1] = a2;
  v21[0] = [AKRoundedButton buttonWithType:0];
  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D74420]];
  v14 = [v21[0] titleLabel];
  [v14 setFont:v15];
  MEMORY[0x277D82BD8](v14);
  v16 = [v21[0] titleLabel];
  [v16 setAdjustsFontForContentSizeCategory:1];
  v17 = [MEMORY[0x277CF0228] sharedManager];
  v18 = [v17 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    v20 = [MEMORY[0x277D75230] filledButtonConfiguration];
    [v20 setCornerStyle:4];
    [v21[0] setConfiguration:v20];
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v11 = [MEMORY[0x277D75348] whiteColor];
    v19 = [v11 colorWithAlphaComponent:0.75];
    *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    [v21[0] setTitleColor:v19 forState:{4, v3}];
    [v21[0] setTitleColor:v19 forState:1];
    [v21[0] setTitleColor:v19 forState:5];
    [v21[0] _signInButtonEdgeInsets];
    [v21[0] setContentEdgeInsets:{v4, v5, v6, v7}];
    v12 = [v21[0] layer];
    [v12 setCornerRadius:10.0];
    *&v8 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [v21[0] layer];
    [v13 setMasksToBounds:1];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v19, 0);
  }

  [v21[0] sizeToFit];
  v10 = MEMORY[0x277D82BE0](v21[0]);
  objc_storeStrong(v21, 0);

  return v10;
}

- (UIEdgeInsets)_signInButtonEdgeInsets
{
  UIEdgeInsetsMake_1();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKRoundedButton;
  [(AKRoundedButton *)&v3 setHighlighted:a3];
  [(AKRoundedButton *)v6 _updateColor];
}

- (void)_updateColor
{
  v8[2] = self;
  v8[1] = a2;
  v2 = MEMORY[0x277D75D18];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __31__AKRoundedButton__updateColor__block_invoke;
  v7 = &unk_2784A5C90;
  v8[0] = MEMORY[0x277D82BE0](self);
  [v2 animateWithDuration:0.150000006 animations:?];
  objc_storeStrong(v8, 0);
}

double __31__AKRoundedButton__updateColor__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) backgroundColor];
  v1 = [*(a1 + 32) isHighlighted];
  v2 = 0.5;
  if ((v1 & 1) == 0)
  {
    v2 = 1.0;
  }

  v5 = [v6 colorWithAlphaComponent:v2];
  [*(a1 + 32) setBackgroundColor:?];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

@end