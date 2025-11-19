@interface MKPlaceSectionItemView
- (MKPlaceSectionItemView)initWithFrame:(CGRect)a3;
- (void)_updateHairlineInsets;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)layoutMarginsDidChange;
- (void)setFullWidthHairline:(BOOL)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKPlaceSectionItemView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MKPlaceSectionItemView;
  [(MKPlaceSectionItemView *)&v4 didMoveToWindow];
  [(MKPlaceSectionItemView *)self _updateHairlineInsets];
  v3 = [(MKPlaceSectionItemView *)self window];

  if (v3)
  {
    [(MKPlaceSectionItemView *)self infoCardThemeChanged];
  }
}

- (void)setFullWidthHairline:(BOOL)a3
{
  self->_fullWidthHairline = a3;
  if (a3)
  {
    [(MKViewWithHairline *)self setLeftHairlineInset:0.0];

    [(MKViewWithHairline *)self setRightHairlineInset:0.0];
  }

  else
  {

    [(MKPlaceSectionItemView *)self _updateHairlineInsets];
  }
}

- (void)_updateHairlineInsets
{
  if (!self->_fullWidthHairline)
  {
    v14 = v6;
    v15 = v3;
    v16 = v2;
    IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
    [(MKPlaceSectionItemView *)self layoutMargins];
    if (IsRightToLeft)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (IsRightToLeft)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    [(MKViewWithHairline *)self setLeftHairlineInset:v12, v7, v14, v15, v16, v4];

    [(MKViewWithHairline *)self setRightHairlineInset:v13];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MKPlaceSectionItemView;
  [(MKPlaceSectionItemView *)&v3 layoutMarginsDidChange];
  [(MKPlaceSectionItemView *)self _updateHairlineInsets];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(MKPlaceSectionItemView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {

    [(MKPlaceSectionItemView *)self infoCardThemeChanged];
  }
}

- (void)infoCardThemeChanged
{
  v5.receiver = self;
  v5.super_class = MKPlaceSectionItemView;
  [(UIView *)&v5 infoCardThemeChanged];
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 separatorLineColor];
  [(MKViewWithHairline *)self setHairlineColor:v4];
}

- (MKPlaceSectionItemView)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MKPlaceSectionItemView;
  v3 = [(MKViewWithHairline *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 mk_theme];
    v6 = [v5 separatorLineColor];
    [(MKViewWithHairline *)v4 setHairlineColor:v6];

    [(MKViewWithHairline *)v4 setTopHairlineHidden:1];
    [(MKViewWithHairline *)v4 setBottomHairlineHidden:1];
    v11[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(MKPlaceSectionItemView *)v4 registerForTraitChanges:v7 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end