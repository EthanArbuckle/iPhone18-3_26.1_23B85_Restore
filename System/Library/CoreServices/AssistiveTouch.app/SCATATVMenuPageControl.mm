@interface SCATATVMenuPageControl
- (SCATATVMenuPageControl)initWithFrame:(CGRect)frame;
- (void)_updateAppearanceForStyle:(unint64_t)style;
- (void)didUpdateScatMenuItemStyle;
@end

@implementation SCATATVMenuPageControl

- (SCATATVMenuPageControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SCATATVMenuPageControl;
  v3 = [(SCATATVMenuPageControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATATVMenuPageControl *)v3 _updateAppearanceForStyle:1];
  }

  return v4;
}

- (void)_updateAppearanceForStyle:(unint64_t)style
{
  v5 = +[SCATStyleProvider sharedStyleProvider];
  v12 = v5;
  if (style == 2)
  {
    atvMenuFocusedItemColor = [v5 atvMenuFocusedItemColor];
    v7 = [atvMenuFocusedItemColor colorWithAlphaComponent:0.75];
    [(SCATATVMenuPageControl *)self setPageIndicatorTintColor:v7];

    v8 = +[SCATStyleProvider sharedStyleProvider];
    atvMenuFocusedItemColor2 = [v8 atvMenuFocusedItemColor];
    [(SCATATVMenuPageControl *)self setCurrentPageIndicatorTintColor:atvMenuFocusedItemColor2];

    [(SCATATVMenuPageControl *)self _setDrawsAsBackdropOverlay:0];

    [(SCATATVMenuPageControl *)self setAlpha:1.0];
  }

  else
  {
    menuKnockoutColor = [v5 menuKnockoutColor];
    [(SCATATVMenuPageControl *)self setPageIndicatorTintColor:menuKnockoutColor];

    menuKnockoutColor2 = [v12 menuKnockoutColor];
    [(SCATATVMenuPageControl *)self setCurrentPageIndicatorTintColor:menuKnockoutColor2];

    -[SCATATVMenuPageControl _setDrawsAsBackdropOverlayWithBlendMode:](self, "_setDrawsAsBackdropOverlayWithBlendMode:", [v12 menuKnockoutBorderOverlayBlendMode]);
    [v12 menuKnockoutBorderOpacity];
    [(SCATATVMenuPageControl *)self setAlpha:?];
  }
}

- (void)didUpdateScatMenuItemStyle
{
  scatMenuItemStyle = [(SCATATVMenuPageControl *)self scatMenuItemStyle];

  [(SCATATVMenuPageControl *)self _updateAppearanceForStyle:scatMenuItemStyle];
}

@end