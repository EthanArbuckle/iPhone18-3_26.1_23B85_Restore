@interface MasterNavigationPaletteView
- (BOOL)focusBannerVisible;
- (BOOL)showsHeader;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MasterNavigationPaletteView)initWithFrame:(CGRect)a3;
- (void)cellTapped;
- (void)focusBannerTableViewCellToggled:(id)a3;
- (void)layoutSubviews;
- (void)setSegmentedControl:(id)a3;
- (void)setShowIdentity:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)updateIdentity:(id)a3;
@end

@implementation MasterNavigationPaletteView

- (BOOL)showsHeader
{
  v2 = [(MasterNavigationPaletteView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 0;

  return v3;
}

- (MasterNavigationPaletteView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MasterNavigationPaletteView;
  v3 = [(MasterNavigationPaletteView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UINavigationBarAppearance);
    v5 = [v4 largeTitleTextAttributes];
    titleAttributes = v3->_titleAttributes;
    v3->_titleAttributes = v5;

    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(MasterNavigationPaletteView *)v3 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (BOOL)focusBannerVisible
{
  v2 = [(MasterNavigationPaletteView *)self delegate];
  v3 = [v2 focusFilterMode];

  result = CalSystemSolariumEnabled();
  if (!v3)
  {
    return 0;
  }

  return result;
}

- (void)layoutSubviews
{
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(MasterNavigationPaletteView *)self safeAreaInsets];
  if (IsLeftToRight)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 16.0;
  v8 = CalInterfaceIsLeftToRight();
  [(MasterNavigationPaletteView *)self safeAreaInsets];
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 16.0;
  if (![(MasterNavigationPaletteView *)self showsHeader])
  {
    [(UILabel *)self->_titleLabel removeFromSuperview];
    [(IdentitySwitcherCell *)self->_identityCell removeFromSuperview];
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell removeFromSuperview];
    v20 = 0.0;
    goto LABEL_29;
  }

  if (self->_showIdentity)
  {
    if (CalInterfaceIsLeftToRight())
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    [(MasterNavigationPaletteView *)self bounds];
    v15 = v14 - (v7 + v12);
    [(IdentitySwitcherCell *)self->_identityCell systemLayoutSizeFittingSize:v15, 0.0];
    v17 = v16;
    v18 = 6.0;
    [(IdentitySwitcherCell *)self->_identityCell setFrame:v13, 6.0, v15, v16];
    v19 = [(IdentitySwitcherCell *)self->_identityCell layer];
    [v19 setCornerRadius:v17 * 0.5];
  }

  else
  {
    MaxY = 0.0;
    if ([(MasterNavigationPaletteView *)self hideTitle])
    {
      goto LABEL_19;
    }

    [(UILabel *)self->_titleLabel frame];
    v15 = v22;
    v17 = v23;
    v13 = v7;
    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      [(MasterNavigationPaletteView *)self bounds];
      v13 = v24 - v7 - v15;
    }

    v18 = 16.0;
    [(UILabel *)self->_titleLabel setFrame:v13, 16.0, v15, v17];
  }

  v49.origin.x = v13;
  v49.origin.y = v18;
  v49.size.width = v15;
  v49.size.height = v17;
  MaxY = CGRectGetMaxY(v49);
LABEL_19:
  v25 = [(MasterNavigationPaletteView *)self focusBannerVisible];
  focusBannerCell = self->_focusBannerCell;
  if (v25)
  {
    v27 = [(EKUIFocusBannerTableViewCell *)focusBannerCell superview];

    if (!v27)
    {
      v28 = self->_focusBannerCell;
      if (!v28)
      {
        v29 = [[EKUIFocusBannerTableViewCell alloc] initWithReuseIdentifier:@"FocusBanner"];
        v30 = self->_focusBannerCell;
        self->_focusBannerCell = v29;

        [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setCustomEdgeInsets:0.0, -7.0, 0.0, 0.0];
        [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setSelectionStyle:0];
        [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setDelegate:self];
        [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell sizeToFit];
        v28 = self->_focusBannerCell;
      }

      [(MasterNavigationPaletteView *)self addSubview:v28];
    }

    v31 = [(MasterNavigationPaletteView *)self delegate];
    -[EKUIFocusBannerTableViewCell setOn:](self->_focusBannerCell, "setOn:", [v31 focusFilterMode] == 1);

    v32 = +[UIBackgroundConfiguration clearConfiguration];
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setBackgroundConfiguration:v32];

    v33 = +[UIColor clearColor];
    v34 = [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell backgroundConfiguration];
    [v34 setBackgroundColor:v33];

    if (CalInterfaceIsLeftToRight())
    {
      v35 = v7;
    }

    else
    {
      v35 = v12;
    }

    [(MasterNavigationPaletteView *)self bounds];
    v37 = v36 - v7 - v12;
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:50.0];
    v39 = v38;
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setFrame:v35, MaxY, v37, v38];
    v50.origin.x = v35;
    v50.origin.y = MaxY;
    v50.size.width = v37;
    v50.size.height = v39;
    v20 = CGRectGetMaxY(v50);
  }

  else
  {
    [(EKUIFocusBannerTableViewCell *)focusBannerCell removeFromSuperview];
    v40 = self->_focusBannerCell;
    self->_focusBannerCell = 0;

    v20 = MaxY + 16.0;
  }

LABEL_29:
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl frame];
    v43 = v42;
    if (CalInterfaceIsLeftToRight())
    {
      v44 = v7;
    }

    else
    {
      v44 = v12;
    }

    [(MasterNavigationPaletteView *)self bounds];
    v45 = self->_segmentedControl;
    v47 = v46 - (v7 + v12);

    [(UISegmentedControl *)v45 setFrame:v44, v20, v47, v43];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = 0.0;
  if (![(MasterNavigationPaletteView *)self showsHeader:a3.width])
  {
    goto LABEL_9;
  }

  if (self->_showIdentity)
  {
    v6 = &OBJC_IVAR___MasterNavigationPaletteView__identityCell;
  }

  else
  {
    if ([(MasterNavigationPaletteView *)self hideTitle])
    {
      goto LABEL_7;
    }

    v6 = &OBJC_IVAR___MasterNavigationPaletteView__titleLabel;
  }

  [*(&self->super.super.super.isa + *v6) frame];
  v5 = CGRectGetMaxY(v11) + 16.0;
LABEL_7:
  if ([(MasterNavigationPaletteView *)self focusBannerVisible])
  {
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell frame];
    v5 = CGRectGetMaxY(v12) + 16.0;
  }

LABEL_9:
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl frame];
    v5 = CGRectGetMaxY(v13) + 16.0;
  }

  v8 = width;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];
  v4 = [(MasterNavigationPaletteView *)self window];
  v5 = [(MasterNavigationPaletteView *)self traitCollection];
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
      segmentedControl = [(MasterNavigationPaletteView *)self addSubview:v6];
      v4 = v6;
    }
  }

  _objc_release_x1(segmentedControl, v4);
}

- (void)setShowIdentity:(BOOL)a3
{
  v3 = a3;
  self->_showIdentity = a3;
  if ([(MasterNavigationPaletteView *)self showsHeader])
  {
    if (v3)
    {
      v5 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      [(MasterNavigationPaletteView *)self updateIdentity:v5];

      titleLabel = self->_titleLabel;

      [(UILabel *)titleLabel removeFromSuperview];
    }

    else
    {
      [(IdentitySwitcherCell *)self->_identityCell removeFromSuperview];
      v7 = self->_titleLabel;

      [(MasterNavigationPaletteView *)self addSubview:v7];
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
  v8 = +[UIColor tertiarySystemFillColor];
  [(IdentitySwitcherCell *)self->_identityCell setBackgroundColor:v8];

  [(IdentitySwitcherCell *)self->_identityCell frame];
  v10 = v9 * 0.5;
  v11 = [(IdentitySwitcherCell *)self->_identityCell layer];
  [v11 setCornerRadius:v10];

  v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"cellTapped"];
  [(IdentitySwitcherCell *)self->_identityCell addGestureRecognizer:v12];
  [(MasterNavigationPaletteView *)self addSubview:self->_identityCell];
}

- (void)cellTapped
{
  v3 = [(MasterNavigationPaletteView *)self delegate];
  [v3 palette:self identitySwitcherTapped:self->_identityCell];
}

- (void)focusBannerTableViewCellToggled:(id)a3
{
  if ([a3 on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(MasterNavigationPaletteView *)self delegate];
  [v5 setFocusFilterMode:v4];
}

@end