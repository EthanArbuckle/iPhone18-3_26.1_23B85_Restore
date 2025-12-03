@interface SFPrivacyReportIconView
- (CGSize)intrinsicContentSize;
- (SFPrivacyReportIconView)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateColors;
- (void)_updateSymbolConfiguration;
@end

@implementation SFPrivacyReportIconView

- (SFPrivacyReportIconView)initWithFrame:(CGRect)frame
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SFPrivacyReportIconView;
  v3 = [(SFPrivacyReportIconView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    gradientLayer = [(SFPrivacyReportIconView *)v3 gradientLayer];
    [gradientLayer setStartPoint:{1.0, 0.0}];

    gradientLayer2 = [(SFPrivacyReportIconView *)v3 gradientLayer];
    [gradientLayer2 setEndPoint:{0.0, 1.0}];

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
  systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
  v7[0] = [systemTealColor CGColor];
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  v7[1] = [systemGreenColor CGColor];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  gradientLayer = [(SFPrivacyReportIconView *)self gradientLayer];
  [gradientLayer setColors:v5];
}

- (void)_updateSymbolConfiguration
{
  traitCollection = [(SFPrivacyReportIconView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2 && objc_msgSend(traitCollection, "verticalSizeClass") == 2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 34.0;
  }

  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v3];
  preferredSymbolConfiguration = [(UIImageView *)self->_mask preferredSymbolConfiguration];
  v6 = [v4 isEqualToConfiguration:preferredSymbolConfiguration];

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