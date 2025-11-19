@interface SFPrivacyReportIconView
- (CGSize)intrinsicContentSize;
- (SFPrivacyReportIconView)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateColors;
- (void)_updateSymbolConfiguration;
@end

@implementation SFPrivacyReportIconView

- (SFPrivacyReportIconView)initWithFrame:(CGRect)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SFPrivacyReportIconView;
  v3 = [(SFPrivacyReportIconView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shield.lefthalf.fill"];
    v6 = [v4 initWithImage:v5];
    mask = v3->_mask;
    v3->_mask = v6;

    [(SFPrivacyReportIconView *)v3 bounds];
    [(UIImageView *)v3->_mask setFrame:?];
    [(UIImageView *)v3->_mask setAutoresizingMask:18];
    [(SFPrivacyReportIconView *)v3 setMaskView:v3->_mask];
    v8 = [(SFPrivacyReportIconView *)v3 gradientLayer];
    [v8 setStartPoint:{1.0, 0.0}];

    v9 = [(SFPrivacyReportIconView *)v3 gradientLayer];
    [v9 setEndPoint:{0.0, 1.0}];

    [(SFPrivacyReportIconView *)v3 _updateColors];
    [(SFPrivacyReportIconView *)v3 _updateSymbolConfiguration];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11 = [(SFPrivacyReportIconView *)v3 registerForTraitChanges:v10 withTarget:v3 action:sel__updateSymbolConfiguration];

    v12 = v3;
  }

  return v3;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = SFPrivacyReportIconView;
  [(SFPrivacyReportIconView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(SFPrivacyReportIconView *)self _updateColors];
}

- (void)_updateColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] systemTealColor];
  v7[0] = [v3 CGColor];
  v4 = [MEMORY[0x1E69DC888] systemGreenColor];
  v7[1] = [v4 CGColor];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v6 = [(SFPrivacyReportIconView *)self gradientLayer];
  [v6 setColors:v5];
}

- (void)_updateSymbolConfiguration
{
  v7 = [(SFPrivacyReportIconView *)self traitCollection];
  if ([v7 horizontalSizeClass] == 2 && objc_msgSend(v7, "verticalSizeClass") == 2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 34.0;
  }

  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v3];
  v5 = [(UIImageView *)self->_mask preferredSymbolConfiguration];
  v6 = [v4 isEqualToConfiguration:v5];

  if ((v6 & 1) == 0)
  {
    [(UIImageView *)self->_mask setPreferredSymbolConfiguration:v4];
    [(SFPrivacyReportIconView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_mask intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end