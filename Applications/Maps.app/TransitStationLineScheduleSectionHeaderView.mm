@interface TransitStationLineScheduleSectionHeaderView
+ (id)identifier;
- (TransitStationLineScheduleSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)_addSecondaryView:(id)a3;
- (void)addButtonWithTarget:(id)a3 action:(SEL)a4;
- (void)addButtonWithText:(id)a3 buttonTarget:(id)a4 buttonAction:(SEL)a5;
- (void)addSecondaryLabelWithText:(id)a3;
- (void)prepareForReuse;
- (void)removeSecondaryText;
- (void)setSecondaryText:(id)a3;
@end

@implementation TransitStationLineScheduleSectionHeaderView

- (void)_addSecondaryView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TransitStationLineScheduleSectionHeaderView *)self addSubview:v4];
    v5 = [(TransitStationLineScheduleSectionHeaderView *)self bottomAnchor];
    v6 = [v4 bottomAnchor];
    v18 = [v5 constraintEqualToAnchor:v6];

    v21 = [v4 leadingAnchor];
    v20 = [(UILabel *)self->_titleLabel trailingAnchor];
    v19 = [v21 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v20 multiplier:1.0];
    v22[0] = v19;
    v7 = [v4 trailingAnchor];
    v8 = [(TransitStationLineScheduleSectionHeaderView *)self trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v22[1] = v9;
    v10 = [v4 firstBaselineAnchor];
    v11 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v22[2] = v12;
    v13 = [v4 topAnchor];

    v14 = [(TransitStationLineScheduleSectionHeaderView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v22[3] = v15;
    v22[4] = v18;
    v16 = [NSArray arrayWithObjects:v22 count:5];
    [NSLayoutConstraint activateConstraints:v16];

    LODWORD(v17) = 1132068864;
    [v18 setPriority:v17];
  }
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = TransitStationLineScheduleSectionHeaderView;
  [(TransitStationLineScheduleSectionHeaderView *)&v7 prepareForReuse];
  [(UILabel *)self->_titleLabel setText:0];
  secondaryLabel = self->_secondaryLabel;
  if (secondaryLabel)
  {
    [(UILabel *)secondaryLabel removeFromSuperview];
    v4 = self->_secondaryLabel;
    self->_secondaryLabel = 0;
  }

  button = self->_button;
  if (button)
  {
    [(MapsThemeButton *)button removeFromSuperview];
    v6 = self->_button;
    self->_button = 0;
  }

  [self->_bottomHairlineView setHidden:1];
}

- (void)addButtonWithText:(id)a3 buttonTarget:(id)a4 buttonAction:(SEL)a5
{
  v8 = a3;
  [(TransitStationLineScheduleSectionHeaderView *)self addButtonWithTarget:a4 action:a5];
  [(TransitStationLineScheduleSectionHeaderView *)self setSecondaryText:v8];
}

- (void)addButtonWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    if (!self->_focusGuide)
    {
      v7 = objc_alloc_init(UIFocusGuide);
      focusGuide = self->_focusGuide;
      self->_focusGuide = v7;

      [(TransitStationLineScheduleSectionHeaderView *)self addLayoutGuide:self->_focusGuide];
      [(UIFocusGuide *)self->_focusGuide leadingAnchor];
      v9 = v30 = a4;
      v10 = [(TransitStationLineScheduleSectionHeaderView *)self leadingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v34[0] = v11;
      v12 = [(UIFocusGuide *)self->_focusGuide trailingAnchor];
      v13 = [(TransitStationLineScheduleSectionHeaderView *)self trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v34[1] = v14;
      v15 = [NSArray arrayWithObjects:v34 count:2];
      [NSLayoutConstraint activateConstraints:v15];

      a4 = v30;
    }

    button = self->_button;
    if (!button)
    {
      v17 = objc_alloc_init(MapsThemeButton);
      v18 = self->_button;
      self->_button = v17;

      [(MapsThemeButton *)self->_button titleLabel];
      v19 = v31 = a4;
      [v19 setAdjustsFontForContentSizeCategory:1];

      v20 = MUPlaceSectionHeaderAccessoryButtonFont();
      v21 = [(MapsThemeButton *)self->_button titleLabel];
      [v21 setFont:v20];

      [(MapsThemeButton *)self->_button setTitleColorProvider:&stru_1016309D0];
      [(TransitStationLineScheduleSectionHeaderView *)self _addSecondaryView:self->_button];
      v33 = self->_button;
      v22 = [NSArray arrayWithObjects:&v33 count:1];
      [(UIFocusGuide *)self->_focusGuide setPreferredFocusEnvironments:v22];

      v29 = [(UIFocusGuide *)self->_focusGuide topAnchor];
      v23 = [(MapsThemeButton *)self->_button topAnchor];
      v24 = [v29 constraintEqualToAnchor:v23 constant:-1.0];
      v32[0] = v24;
      v25 = [(UIFocusGuide *)self->_focusGuide bottomAnchor];
      v26 = [(MapsThemeButton *)self->_button bottomAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:1.0];
      v32[1] = v27;
      v28 = [NSArray arrayWithObjects:v32 count:2];
      [NSLayoutConstraint activateConstraints:v28];

      a4 = v31;
      [(MapsThemeButton *)self->_button setAccessibilityIdentifier:@"TransitStationLineScheduleSectionHeaderViewButton"];
      button = self->_button;
    }

    [(MapsThemeButton *)button addTarget:v6 action:a4 forControlEvents:64];
  }
}

- (void)addSecondaryLabelWithText:(id)a3
{
  v4 = a3;
  secondaryLabel = self->_secondaryLabel;
  v10 = v4;
  if (!secondaryLabel)
  {
    v6 = objc_alloc_init(UILabel);
    v7 = self->_secondaryLabel;
    self->_secondaryLabel = v6;

    v8 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_secondaryLabel setTextColor:v8];

    v9 = MUPlaceSectionHeaderAccessoryButtonFont();
    [(UILabel *)self->_secondaryLabel setFont:v9];

    [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(TransitStationLineScheduleSectionHeaderView *)self _addSecondaryView:self->_secondaryLabel];
    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"TransitStationLineScheduleSectionHeaderViewSecondaryLabel"];
    v4 = v10;
    secondaryLabel = self->_secondaryLabel;
  }

  [(UILabel *)secondaryLabel setText:v4];
}

- (void)removeSecondaryText
{
  p_button = &self->_button;
  button = self->_button;
  if (button || (p_button = &self->_secondaryLabel, (button = self->_secondaryLabel) != 0))
  {
    [button removeFromSuperview];
    v5 = *p_button;
    *p_button = 0;
  }
}

- (void)setSecondaryText:(id)a3
{
  if (self->_button)
  {
    [(MapsThemeButton *)self->_button setTitle:a3 forState:0];
  }

  else
  {
    [(TransitStationLineScheduleSectionHeaderView *)self addSecondaryLabelWithText:a3];
  }
}

- (TransitStationLineScheduleSectionHeaderView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = TransitStationLineScheduleSectionHeaderView;
  v3 = [(TransitStationLineScheduleSectionHeaderView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v6];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v7 = MUPlaceSectionHeaderFont();
    [(UILabel *)v3->_titleLabel setFont:v7];

    [(TransitStationLineScheduleSectionHeaderView *)v3 addSubview:v3->_titleLabel];
    v8 = [(TransitStationLineScheduleSectionHeaderView *)v3 _maps_addHairlineAtBottomWithMargin:0.0];
    bottomHairlineView = v3->_bottomHairlineView;
    v3->_bottomHairlineView = v8;

    [v3->_bottomHairlineView setHidden:1];
    [(TransitStationLineScheduleSectionHeaderView *)v3 setAccessibilityIdentifier:@"TransitStationLineScheduleSectionHeaderView"];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"TransitStationLineScheduleSectionHeaderViewTitleLabel"];
    v23 = [(UILabel *)v3->_titleLabel topAnchor];
    v22 = [(TransitStationLineScheduleSectionHeaderView *)v3 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(TransitStationLineScheduleSectionHeaderView *)v3 bottomAnchor];
    v10 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v11 = [v20 constraintEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v13 = [(TransitStationLineScheduleSectionHeaderView *)v3 leadingAnchor];
    MUPlaceSectionHeaderLeadingSpacingForInitialOffset();
    v14 = [v12 constraintEqualToAnchor:v13 constant:?];
    v25[2] = v14;
    v15 = [(TransitStationLineScheduleSectionHeaderView *)v3 trailingAnchor];
    v16 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v17 = [v15 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
    v25[3] = v17;
    v18 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v3;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end