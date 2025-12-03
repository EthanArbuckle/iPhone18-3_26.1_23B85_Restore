@interface MKPlaceSectionItemView
- (MKPlaceSectionItemView)initWithFrame:(CGRect)frame;
- (void)_updateHairlineInsets;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)layoutMarginsDidChange;
- (void)setFullWidthHairline:(BOOL)hairline;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKPlaceSectionItemView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MKPlaceSectionItemView;
  [(MKPlaceSectionItemView *)&v4 didMoveToWindow];
  [(MKPlaceSectionItemView *)self _updateHairlineInsets];
  window = [(MKPlaceSectionItemView *)self window];

  if (window)
  {
    [(MKPlaceSectionItemView *)self infoCardThemeChanged];
  }
}

- (void)setFullWidthHairline:(BOOL)hairline
{
  self->_fullWidthHairline = hairline;
  if (hairline)
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

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(MKPlaceSectionItemView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MKPlaceSectionItemView *)self infoCardThemeChanged];
  }
}

- (void)infoCardThemeChanged
{
  v5.receiver = self;
  v5.super_class = MKPlaceSectionItemView;
  [(UIView *)&v5 infoCardThemeChanged];
  mk_theme = [(UIView *)self mk_theme];
  separatorLineColor = [mk_theme separatorLineColor];
  [(MKViewWithHairline *)self setHairlineColor:separatorLineColor];
}

- (MKPlaceSectionItemView)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MKPlaceSectionItemView;
  v3 = [(MKViewWithHairline *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    mk_theme = [(UIView *)v3 mk_theme];
    separatorLineColor = [mk_theme separatorLineColor];
    [(MKViewWithHairline *)v4 setHairlineColor:separatorLineColor];

    [(MKViewWithHairline *)v4 setTopHairlineHidden:1];
    [(MKViewWithHairline *)v4 setBottomHairlineHidden:1];
    v11[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(MKPlaceSectionItemView *)v4 registerForTraitChanges:v7 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end