@interface TransitStationLineScheduleSectionHeaderView
+ (id)identifier;
- (TransitStationLineScheduleSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_addSecondaryView:(id)view;
- (void)addButtonWithTarget:(id)target action:(SEL)action;
- (void)addButtonWithText:(id)text buttonTarget:(id)target buttonAction:(SEL)action;
- (void)addSecondaryLabelWithText:(id)text;
- (void)prepareForReuse;
- (void)removeSecondaryText;
- (void)setSecondaryText:(id)text;
@end

@implementation TransitStationLineScheduleSectionHeaderView

- (void)_addSecondaryView:(id)view
{
  if (view)
  {
    viewCopy = view;
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TransitStationLineScheduleSectionHeaderView *)self addSubview:viewCopy];
    bottomAnchor = [(TransitStationLineScheduleSectionHeaderView *)self bottomAnchor];
    bottomAnchor2 = [viewCopy bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    leadingAnchor = [viewCopy leadingAnchor];
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    v19 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v22[0] = v19;
    trailingAnchor2 = [viewCopy trailingAnchor];
    trailingAnchor3 = [(TransitStationLineScheduleSectionHeaderView *)self trailingAnchor];
    v9 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v22[1] = v9;
    firstBaselineAnchor = [viewCopy firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v12 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v22[2] = v12;
    topAnchor = [viewCopy topAnchor];

    topAnchor2 = [(TransitStationLineScheduleSectionHeaderView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
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

- (void)addButtonWithText:(id)text buttonTarget:(id)target buttonAction:(SEL)action
{
  textCopy = text;
  [(TransitStationLineScheduleSectionHeaderView *)self addButtonWithTarget:target action:action];
  [(TransitStationLineScheduleSectionHeaderView *)self setSecondaryText:textCopy];
}

- (void)addButtonWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (targetCopy && action)
  {
    if (!self->_focusGuide)
    {
      v7 = objc_alloc_init(UIFocusGuide);
      focusGuide = self->_focusGuide;
      self->_focusGuide = v7;

      [(TransitStationLineScheduleSectionHeaderView *)self addLayoutGuide:self->_focusGuide];
      [(UIFocusGuide *)self->_focusGuide leadingAnchor];
      v9 = v30 = action;
      leadingAnchor = [(TransitStationLineScheduleSectionHeaderView *)self leadingAnchor];
      v11 = [v9 constraintEqualToAnchor:leadingAnchor];
      v34[0] = v11;
      trailingAnchor = [(UIFocusGuide *)self->_focusGuide trailingAnchor];
      trailingAnchor2 = [(TransitStationLineScheduleSectionHeaderView *)self trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v34[1] = v14;
      v15 = [NSArray arrayWithObjects:v34 count:2];
      [NSLayoutConstraint activateConstraints:v15];

      action = v30;
    }

    button = self->_button;
    if (!button)
    {
      v17 = objc_alloc_init(MapsThemeButton);
      v18 = self->_button;
      self->_button = v17;

      [(MapsThemeButton *)self->_button titleLabel];
      v19 = v31 = action;
      [v19 setAdjustsFontForContentSizeCategory:1];

      v20 = MUPlaceSectionHeaderAccessoryButtonFont();
      titleLabel = [(MapsThemeButton *)self->_button titleLabel];
      [titleLabel setFont:v20];

      [(MapsThemeButton *)self->_button setTitleColorProvider:&stru_1016309D0];
      [(TransitStationLineScheduleSectionHeaderView *)self _addSecondaryView:self->_button];
      v33 = self->_button;
      v22 = [NSArray arrayWithObjects:&v33 count:1];
      [(UIFocusGuide *)self->_focusGuide setPreferredFocusEnvironments:v22];

      topAnchor = [(UIFocusGuide *)self->_focusGuide topAnchor];
      topAnchor2 = [(MapsThemeButton *)self->_button topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-1.0];
      v32[0] = v24;
      bottomAnchor = [(UIFocusGuide *)self->_focusGuide bottomAnchor];
      bottomAnchor2 = [(MapsThemeButton *)self->_button bottomAnchor];
      v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:1.0];
      v32[1] = v27;
      v28 = [NSArray arrayWithObjects:v32 count:2];
      [NSLayoutConstraint activateConstraints:v28];

      action = v31;
      [(MapsThemeButton *)self->_button setAccessibilityIdentifier:@"TransitStationLineScheduleSectionHeaderViewButton"];
      button = self->_button;
    }

    [(MapsThemeButton *)button addTarget:targetCopy action:action forControlEvents:64];
  }
}

- (void)addSecondaryLabelWithText:(id)text
{
  textCopy = text;
  secondaryLabel = self->_secondaryLabel;
  v10 = textCopy;
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
    textCopy = v10;
    secondaryLabel = self->_secondaryLabel;
  }

  [(UILabel *)secondaryLabel setText:textCopy];
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

- (void)setSecondaryText:(id)text
{
  if (self->_button)
  {
    [(MapsThemeButton *)self->_button setTitle:text forState:0];
  }

  else
  {
    [(TransitStationLineScheduleSectionHeaderView *)self addSecondaryLabelWithText:text];
  }
}

- (TransitStationLineScheduleSectionHeaderView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = TransitStationLineScheduleSectionHeaderView;
  v3 = [(TransitStationLineScheduleSectionHeaderView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [(TransitStationLineScheduleSectionHeaderView *)v3 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v21;
    bottomAnchor = [(TransitStationLineScheduleSectionHeaderView *)v3 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[1] = v11;
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(TransitStationLineScheduleSectionHeaderView *)v3 leadingAnchor];
    MUPlaceSectionHeaderLeadingSpacingForInitialOffset();
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v25[2] = v14;
    trailingAnchor = [(TransitStationLineScheduleSectionHeaderView *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v17 = [trailingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
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