@interface SidebarPaletteView
- (BOOL)showsHeader;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SidebarPaletteView)initWithFrame:(CGRect)a3;
- (void)cellTapped;
- (void)layoutSubviews;
- (void)setSegmentedControl:(id)a3;
- (void)setShowIdentity:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)updateIdentity:(id)a3;
@end

@implementation SidebarPaletteView

- (SidebarPaletteView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SidebarPaletteView;
  v3 = [(SidebarPaletteView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UINavigationBarAppearance);
    v5 = [v4 largeTitleTextAttributes];
    titleAttributes = v3->_titleAttributes;
    v3->_titleAttributes = v5;

    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(SidebarPaletteView *)v3 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (BOOL)showsHeader
{
  v2 = [(SidebarPaletteView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 0;

  return v3;
}

- (void)layoutSubviews
{
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(SidebarPaletteView *)self safeAreaInsets];
  if (IsLeftToRight)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = 16.0;
  v8 = v6 + 16.0;
  v9 = CalInterfaceIsLeftToRight();
  [(SidebarPaletteView *)self safeAreaInsets];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 + 16.0;
  if ([(SidebarPaletteView *)self showsHeader])
  {
    if (self->_showIdentity)
    {
      if (CalInterfaceIsLeftToRight())
      {
        v14 = v8;
      }

      else
      {
        v14 = v13;
      }

      [(SidebarPaletteView *)self bounds];
      v16 = v15 - (v8 + v13);
      [(IdentitySwitcherCell *)self->_identityCell systemLayoutSizeFittingSize:v16, 0.0];
      v18 = v17;
      [(IdentitySwitcherCell *)self->_identityCell setFrame:v14, 6.0, v16, v17];
      v33.origin.y = 6.0;
      v33.origin.x = v14;
      v33.size.width = v16;
      v33.size.height = v18;
      v7 = CGRectGetMaxY(v33) + 16.0;
    }

    else
    {
      [(UILabel *)self->_titleLabel frame];
      v20 = v19;
      v22 = v21;
      v23 = v8;
      if ((CalInterfaceIsLeftToRight() & 1) == 0)
      {
        [(SidebarPaletteView *)self bounds];
        v23 = v24 - v8 - v20;
      }

      [(UILabel *)self->_titleLabel setFrame:v23, 16.0, v20, v22];
      v34.origin.y = 16.0;
      v34.origin.x = v23;
      v34.size.width = v20;
      v34.size.height = v22;
      v7 = CGRectGetMaxY(v34) + 16.0;
    }
  }

  else
  {
    [(UILabel *)self->_titleLabel removeFromSuperview];
    [(IdentitySwitcherCell *)self->_identityCell removeFromSuperview];
  }

  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl frame];
    v27 = v26;
    if (CalInterfaceIsLeftToRight())
    {
      v28 = v8;
    }

    else
    {
      v28 = v13;
    }

    [(SidebarPaletteView *)self bounds];
    v29 = self->_segmentedControl;
    v31 = v30 - (v8 + v13);

    [(UISegmentedControl *)v29 setFrame:v28, v7, v31, v27];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(SidebarPaletteView *)self showsHeader])
  {
    if (self->_showIdentity)
    {
      v6 = &OBJC_IVAR___SidebarPaletteView__identityCell;
    }

    else
    {
      v6 = &OBJC_IVAR___SidebarPaletteView__titleLabel;
    }

    [*(&self->super.super.super.isa + *v6) frame];
    height = CGRectGetMaxY(v12);
  }

  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl frame];
    height = CGRectGetMaxY(v13);
  }

  v8 = height + 16.0;
  if (![(SidebarPaletteView *)self showsHeader]&& !self->_segmentedControl)
  {
    v8 = 0.0;
  }

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];
  v4 = [(SidebarPaletteView *)self window];
  v5 = [(SidebarPaletteView *)self traitCollection];
  v6 = paletteTitleFont(v4, v5);
  [(UILabel *)self->_titleLabel setFont:v6];

  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel sizeToFit];
}

- (void)setSegmentedControl:(id)a3
{
  v4 = a3;
  segmentedControl = self->_segmentedControl;
  if (segmentedControl != v4)
  {
    v6 = v4;
    if (segmentedControl)
    {
      segmentedControl = [(UISegmentedControl *)segmentedControl removeFromSuperview];
      v4 = v6;
    }

    self->_segmentedControl = v4;
    if (v4)
    {
      segmentedControl = [(SidebarPaletteView *)self addSubview:v6];
      v4 = v6;
    }
  }

  _objc_release_x1(segmentedControl, v4);
}

- (void)setShowIdentity:(BOOL)a3
{
  v3 = a3;
  self->_showIdentity = a3;
  if ([(SidebarPaletteView *)self showsHeader])
  {
    if (v3)
    {
      v5 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      [(SidebarPaletteView *)self updateIdentity:v5];

      titleLabel = self->_titleLabel;

      [(UILabel *)titleLabel removeFromSuperview];
    }

    else
    {
      [(IdentitySwitcherCell *)self->_identityCell removeFromSuperview];
      v7 = self->_titleLabel;

      [(SidebarPaletteView *)self addSubview:v7];
    }
  }
}

- (void)updateIdentity:(id)a3
{
  identityCell = self->_identityCell;
  v5 = a3;
  [(IdentitySwitcherCell *)identityCell removeFromSuperview];
  v6 = [IdentitySwitcherCell cellForSource:v5 withModel:self->_model inTableView:0];

  v7 = self->_identityCell;
  self->_identityCell = v6;

  [(IdentitySwitcherCell *)self->_identityCell setSelectionStyle:0];
  [(IdentitySwitcherCell *)self->_identityCell setAccessoryType:1];
  v8 = +[UIColor tableCellGroupedBackgroundColor];
  [(IdentitySwitcherCell *)self->_identityCell setBackgroundColor:v8];

  v9 = [(IdentitySwitcherCell *)self->_identityCell layer];
  [v9 setCornerRadius:10.0];

  v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"cellTapped"];
  [(IdentitySwitcherCell *)self->_identityCell addGestureRecognizer:v10];
  [(SidebarPaletteView *)self addSubview:self->_identityCell];
}

- (void)cellTapped
{
  v3 = [(SidebarPaletteView *)self delegate];
  [v3 palette:self identitySwitcherTapped:self->_identityCell];
}

@end