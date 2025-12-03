@interface MTASleepAlarmSetupTableViewCell
- (BOOL)_shouldStackViews;
- (MTASleepAlarmSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTASleepAlarmSetupTableViewCellDelegate)delegate;
- (void)configureSetupButtonWithTitle:(id)title action:(SEL)action;
- (void)setupCell;
- (void)setupConstraints;
@end

@implementation MTASleepAlarmSetupTableViewCell

- (void)setupCell
{
  v3 = objc_opt_new();
  [(MTASleepAlarmSetupTableViewCell *)self setTitleLabel:v3];

  v4 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
  v5 = [v4 localizedStringForKey:@"SLEEP_ALARM_NONE" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
  titleLabel = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [titleLabel setText:v5];

  v7 = +[UIColor mtui_disabledTextColor];
  titleLabel2 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [titleLabel2 setTextColor:v7];

  v9 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  titleLabel3 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [titleLabel3 setFont:v9];

  titleLabel4 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:1];

  titleLabel5 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTASleepAlarmSetupTableViewCell *)self contentView];
  titleLabel6 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel6];
}

- (MTASleepAlarmSetupTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupConstraints
{
  v74 = objc_opt_new();
  titleLabel = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  layoutMarginsGuide = [(MTASleepAlarmSetupTableViewCell *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v74 addObject:v7];

  setupButton = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  [setupButton bounds];
  v10 = v9;

  LODWORD(setupButton) = _os_feature_enabled_impl();
  setupButton2 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  widthAnchor = [setupButton2 widthAnchor];
  v13 = widthAnchor;
  v14 = v10 + 24.0;
  if (setupButton)
  {
    v14 = v10;
  }

  v15 = [widthAnchor constraintEqualToConstant:v14];
  [v74 addObject:v15];

  setupButton3 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  heightAnchor = [setupButton3 heightAnchor];
  setupButton4 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  titleLabel2 = [setupButton4 titleLabel];
  font = [titleLabel2 font];
  [font lineHeight];
  v22 = [heightAnchor constraintEqualToConstant:ceil(v21) + 12.0];
  [v74 addObject:v22];

  if ([(MTASleepAlarmSetupTableViewCell *)self _shouldStackViews])
  {
    setupButton5 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    leadingAnchor3 = [setupButton5 leadingAnchor];
    titleLabel3 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    leadingAnchor4 = [titleLabel3 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v74 addObject:v27];

    titleLabel4 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    topAnchor = [titleLabel4 topAnchor];
    contentView = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    [v74 addObject:v32];

    setupButton6 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    topAnchor3 = [setupButton6 topAnchor];
    titleLabel5 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    bottomAnchor = [titleLabel5 bottomAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:6.0];
    [v74 addObject:v37];

    contentView2 = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    setupButton7 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    bottomAnchor3 = [setupButton7 bottomAnchor];
    [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
  }

  else
  {
    titleLabel6 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    centerYAnchor = [titleLabel6 centerYAnchor];
    contentView3 = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v74 addObject:v46];

    titleLabel7 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    heightAnchor2 = [titleLabel7 heightAnchor];
    titleLabel8 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    font2 = [titleLabel8 font];
    [font2 lineHeight];
    v52 = [heightAnchor2 constraintEqualToConstant:ceil(v51)];
    [v74 addObject:v52];

    setupButton8 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    leadingAnchor5 = [setupButton8 leadingAnchor];
    titleLabel9 = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
    trailingAnchor = [titleLabel9 trailingAnchor];
    v57 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:16.0];
    [v74 addObject:v57];

    setupButton9 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    centerYAnchor3 = [setupButton9 centerYAnchor];
    contentView4 = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    centerYAnchor4 = [contentView4 centerYAnchor];
    v62 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v74 addObject:v62];

    setupButton10 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    topAnchor4 = [setupButton10 topAnchor];
    contentView5 = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    topAnchor5 = [contentView5 topAnchor];
    v67 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:16.0];
    [v74 addObject:v67];

    contentView6 = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    bottomAnchor4 = [contentView6 bottomAnchor];
    setupButton11 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    bottomAnchor5 = [setupButton11 bottomAnchor];
    v72 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:16.0];
    [v74 addObject:v72];

    contentView2 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    bottomAnchor2 = [contentView2 trailingAnchor];
    setupButton7 = [(MTASleepAlarmSetupTableViewCell *)self layoutMarginsGuide];
    bottomAnchor3 = [setupButton7 trailingAnchor];
    [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  }
  v73 = ;
  [v74 addObject:v73];

  [NSLayoutConstraint activateConstraints:v74];
}

- (BOOL)_shouldStackViews
{
  titleLabel = [(MTASleepAlarmSetupTableViewCell *)self titleLabel];
  height = CGSizeZero.height;
  [titleLabel sizeThatFits:{CGSizeZero.width, height}];
  v6 = v5;

  setupButton = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  [setupButton sizeThatFits:{CGSizeZero.width, height}];
  v9 = v8 + 24.0;

  contentView = [(MTASleepAlarmSetupTableViewCell *)self contentView];
  [contentView bounds];
  v11 = CGRectGetWidth(v17) - v9;
  [(MTASleepAlarmSetupTableViewCell *)self layoutMargins];
  v13 = v11 - v12;
  [(MTASleepAlarmSetupTableViewCell *)self layoutMargins];
  v15 = v13 - v14;

  return v15 - v6 <= 16.0;
}

- (MTASleepAlarmSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTASleepAlarmSetupTableViewCell;
  v4 = [(MTASleepAlarmSetupTableViewCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTASleepAlarmSetupTableViewCell *)v4 setupCell];
  }

  return v5;
}

- (void)configureSetupButtonWithTitle:(id)title action:(SEL)action
{
  titleCopy = title;
  setupButton = [(MTASleepAlarmSetupTableViewCell *)self setupButton];

  if (!setupButton)
  {
    if (_os_feature_enabled_impl())
    {
      setupButton6 = [MTAUtilities pillButtonWithTitle:titleCopy];
      [(MTASleepAlarmSetupTableViewCell *)self setSetupButton:setupButton6];
    }

    else
    {
      v8 = objc_opt_new();
      [(MTASleepAlarmSetupTableViewCell *)self setSetupButton:v8];

      v9 = +[UIColor mtui_tintColor];
      setupButton2 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      [setupButton2 setTintColor:v9];

      v11 = +[UIColor mtui_buttonBackgroundColor];
      setupButton3 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      [setupButton3 setBackgroundColor:v11];

      setupButton4 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      [setupButton4 setTitle:titleCopy forState:0];

      setupButton5 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      v15 = +[UIColor mtui_tintColor];
      [setupButton5 setTitleColor:v15 forState:0];

      setupButton6 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      titleLabel = [setupButton6 titleLabel];
      font = [titleLabel font];
      [font lineHeight];
      v19 = ceil(v18) * 0.5 + 6.0;
      setupButton7 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
      layer = [setupButton7 layer];
      [layer setCornerRadius:v19];
    }

    setupButton8 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    [setupButton8 setTranslatesAutoresizingMaskIntoConstraints:0];

    setupButton9 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    delegate = [(MTASleepAlarmSetupTableViewCell *)self delegate];
    [setupButton9 addTarget:delegate action:action forControlEvents:64];

    v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    familyName = [v25 familyName];
    [v25 pointSize];
    v27 = [UIFont fontWithFamilyName:familyName traits:2 size:?];
    setupButton10 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    titleLabel2 = [setupButton10 titleLabel];
    [titleLabel2 setFont:v27];

    contentView = [(MTASleepAlarmSetupTableViewCell *)self contentView];
    setupButton11 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
    [contentView addSubview:setupButton11];
  }

  setupButton12 = [(MTASleepAlarmSetupTableViewCell *)self setupButton];
  [setupButton12 sizeToFit];

  [(MTASleepAlarmSetupTableViewCell *)self setupConstraints];
}

@end