@interface SCATATVMenuPageControl
- (SCATATVMenuPageControl)initWithFrame:(CGRect)a3;
- (void)_updateAppearanceForStyle:(unint64_t)a3;
- (void)didUpdateScatMenuItemStyle;
@end

@implementation SCATATVMenuPageControl

- (SCATATVMenuPageControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SCATATVMenuPageControl;
  v3 = [(SCATATVMenuPageControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATATVMenuPageControl *)v3 _updateAppearanceForStyle:1];
  }

  return v4;
}

- (void)_updateAppearanceForStyle:(unint64_t)a3
{
  v5 = +[SCATStyleProvider sharedStyleProvider];
  v12 = v5;
  if (a3 == 2)
  {
    v6 = [v5 atvMenuFocusedItemColor];
    v7 = [v6 colorWithAlphaComponent:0.75];
    [(SCATATVMenuPageControl *)self setPageIndicatorTintColor:v7];

    v8 = +[SCATStyleProvider sharedStyleProvider];
    v9 = [v8 atvMenuFocusedItemColor];
    [(SCATATVMenuPageControl *)self setCurrentPageIndicatorTintColor:v9];

    [(SCATATVMenuPageControl *)self _setDrawsAsBackdropOverlay:0];

    [(SCATATVMenuPageControl *)self setAlpha:1.0];
  }

  else
  {
    v10 = [v5 menuKnockoutColor];
    [(SCATATVMenuPageControl *)self setPageIndicatorTintColor:v10];

    v11 = [v12 menuKnockoutColor];
    [(SCATATVMenuPageControl *)self setCurrentPageIndicatorTintColor:v11];

    -[SCATATVMenuPageControl _setDrawsAsBackdropOverlayWithBlendMode:](self, "_setDrawsAsBackdropOverlayWithBlendMode:", [v12 menuKnockoutBorderOverlayBlendMode]);
    [v12 menuKnockoutBorderOpacity];
    [(SCATATVMenuPageControl *)self setAlpha:?];
  }
}

- (void)didUpdateScatMenuItemStyle
{
  v3 = [(SCATATVMenuPageControl *)self scatMenuItemStyle];

  [(SCATATVMenuPageControl *)self _updateAppearanceForStyle:v3];
}

@end