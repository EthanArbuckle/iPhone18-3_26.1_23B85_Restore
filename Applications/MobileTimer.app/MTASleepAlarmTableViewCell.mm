@interface MTASleepAlarmTableViewCell
+ (id)_clockLabelTextFont;
- (BOOL)_shouldUseRegularLayout;
- (MTASleepAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTASleepAlarmTableViewCellDelegate)delegate;
- (NSArray)accessibilitySizeLayoutConstraints;
- (NSArray)regularLayoutConstraints;
- (double)_changeButtonWidth;
- (double)_viewAvailabelWidth;
- (void)_changeButtonPressed:(id)pressed;
- (void)internalSetBackgroundColor:(id)color;
- (void)refreshWithSleepMetadata:(id)metadata;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setMainLabelWithAlarm:(id)alarm;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setupChangeButton;
- (void)setupConstraints;
- (void)setupSharedLayoutConstraint;
- (void)traitCollectionDidChange:(id)change;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation MTASleepAlarmTableViewCell

- (MTASleepAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v24.receiver = self;
  v24.super_class = MTASleepAlarmTableViewCell;
  v4 = [(MTASleepAlarmTableViewCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MTUIDigitalClockLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    digitalClockLabel = v4->_digitalClockLabel;
    v4->_digitalClockLabel = v9;

    v11 = +[UIFont mtui_thinTimeFont];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setFont:v11];

    v12 = +[UIFont mtui_defaultTimeDesignatorFont];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setTimeDesignatorFont:v12];

    v13 = +[UIColor clearColor];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setBackgroundColor:v13];

    dateLabel = [(MTUIDigitalClockLabel *)v4->_digitalClockLabel dateLabel];
    [dateLabel setLineBreakMode:0];

    dateLabel2 = [(MTUIDigitalClockLabel *)v4->_digitalClockLabel dateLabel];
    [dateLabel2 setNumberOfLines:0];

    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(MTASleepAlarmTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_digitalClockLabel];

    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v17;

    v19 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    [(UILabel *)v4->_detailLabel setFont:v19];

    [(UILabel *)v4->_detailLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_detailLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailLabel setLineBreakMode:0];
    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(MTASleepAlarmTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_detailLabel];

    [(MTASleepAlarmTableViewCell *)v4 setupChangeButton];
    v21 = +[UIColor mtui_cellHighlightColor];
    [(MTASleepAlarmTableViewCell *)v4 setSelectedBackgroundColor:v21];

    [(MTASleepAlarmTableViewCell *)v4 setupSharedLayoutConstraint];
    v22 = v4;
  }

  return v4;
}

- (void)setupSharedLayoutConstraint
{
  v50 = objc_opt_new();
  digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  leadingAnchor = [digitalClockLabel leadingAnchor];
  contentView = [(MTASleepAlarmTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v50 addObject:v8];

  digitalClockLabel2 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  firstBaselineAnchor = [digitalClockLabel2 firstBaselineAnchor];
  contentView2 = [(MTASleepAlarmTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:60.0];
  [(MTASleepAlarmTableViewCell *)self setClockLabelBaselineToTopConstraint:v13];

  clockLabelBaselineToTopConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelBaselineToTopConstraint];
  [v50 addObject:clockLabelBaselineToTopConstraint];

  digitalClockLabel3 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  heightAnchor = [digitalClockLabel3 heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:0.0];
  [(MTASleepAlarmTableViewCell *)self setClockLabelHeightConstraint:v17];

  clockLabelHeightConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelHeightConstraint];
  [v50 addObject:clockLabelHeightConstraint];

  detailLabel = [(MTASleepAlarmTableViewCell *)self detailLabel];
  leadingAnchor3 = [detailLabel leadingAnchor];
  digitalClockLabel4 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  leadingAnchor4 = [digitalClockLabel4 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v50 addObject:v23];

  detailLabel2 = [(MTASleepAlarmTableViewCell *)self detailLabel];
  topAnchor2 = [detailLabel2 topAnchor];
  digitalClockLabel5 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  bottomAnchor = [digitalClockLabel5 bottomAnchor];
  v28 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:0.0];
  [(MTASleepAlarmTableViewCell *)self setClockLabelDetailLabelSpaceConstraint:v28];

  clockLabelDetailLabelSpaceConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelDetailLabelSpaceConstraint];
  [v50 addObject:clockLabelDetailLabelSpaceConstraint];

  detailLabel3 = [(MTASleepAlarmTableViewCell *)self detailLabel];
  trailingAnchor = [detailLabel3 trailingAnchor];
  digitalClockLabel6 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  trailingAnchor2 = [digitalClockLabel6 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v50 addObject:v34];

  changeButton = [(MTASleepAlarmTableViewCell *)self changeButton];
  [changeButton bounds];
  v37 = v36;

  LODWORD(changeButton) = _os_feature_enabled_impl();
  changeButton2 = [(MTASleepAlarmTableViewCell *)self changeButton];
  widthAnchor = [changeButton2 widthAnchor];
  v40 = widthAnchor;
  v41 = v37 + 24.0;
  if (changeButton)
  {
    v41 = v37;
  }

  v42 = [widthAnchor constraintEqualToConstant:v41];
  [v50 addObject:v42];

  changeButton3 = [(MTASleepAlarmTableViewCell *)self changeButton];
  heightAnchor2 = [changeButton3 heightAnchor];
  changeButton4 = [(MTASleepAlarmTableViewCell *)self changeButton];
  titleLabel = [changeButton4 titleLabel];
  font = [titleLabel font];
  [font lineHeight];
  v49 = [heightAnchor2 constraintEqualToConstant:ceil(v48) + 12.0];
  [v50 addObject:v49];

  [NSLayoutConstraint activateConstraints:v50];
}

- (void)setupChangeButton
{
  if (_os_feature_enabled_impl())
  {
    changeButton6 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v4 = [changeButton6 localizedStringForKey:@"SLEEP_ALARM_CHANGE" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
    v5 = [MTAUtilities pillButtonWithTitle:v4];
    [(MTASleepAlarmTableViewCell *)self setChangeButton:v5];
  }

  else
  {
    v6 = objc_opt_new();
    [(MTASleepAlarmTableViewCell *)self setChangeButton:v6];

    changeButton = [(MTASleepAlarmTableViewCell *)self changeButton];
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v9 = [v8 localizedStringForKey:@"SLEEP_ALARM_CHANGE" value:&stru_1000AEF10 table:@"MobileTimerUI_Burrito"];
    [changeButton setTitle:v9 forState:0];

    v10 = +[UIColor mtui_buttonBackgroundColor];
    changeButton2 = [(MTASleepAlarmTableViewCell *)self changeButton];
    [changeButton2 setTintColor:v10];

    v12 = +[UIColor mtui_buttonBackgroundColor];
    changeButton3 = [(MTASleepAlarmTableViewCell *)self changeButton];
    [changeButton3 setBackgroundColor:v12];

    changeButton4 = [(MTASleepAlarmTableViewCell *)self changeButton];
    titleLabel = [changeButton4 titleLabel];
    font = [titleLabel font];
    [font lineHeight];
    v18 = ceil(v17) * 0.5 + 6.0;
    changeButton5 = [(MTASleepAlarmTableViewCell *)self changeButton];
    layer = [changeButton5 layer];
    [layer setCornerRadius:v18];

    changeButton6 = [(MTASleepAlarmTableViewCell *)self changeButton];
    v4 = +[UIColor mtui_tintColor];
    [changeButton6 setTitleColor:v4 forState:0];
  }

  changeButton7 = [(MTASleepAlarmTableViewCell *)self changeButton];
  [changeButton7 setTranslatesAutoresizingMaskIntoConstraints:0];

  changeButton8 = [(MTASleepAlarmTableViewCell *)self changeButton];
  [changeButton8 addTarget:self action:"_changeButtonPressed:" forControlEvents:64];

  v29 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  familyName = [v29 familyName];
  [v29 pointSize];
  v24 = [UIFont fontWithFamilyName:familyName traits:2 size:?];
  changeButton9 = [(MTASleepAlarmTableViewCell *)self changeButton];
  titleLabel2 = [changeButton9 titleLabel];
  [titleLabel2 setFont:v24];

  changeButton10 = [(MTASleepAlarmTableViewCell *)self changeButton];
  [changeButton10 sizeToFit];

  contentView = [(MTASleepAlarmTableViewCell *)self contentView];
  [contentView addSubview:self->_changeButton];
}

- (void)setupConstraints
{
  if ([(MTASleepAlarmTableViewCell *)self _shouldUseRegularLayout])
  {
    [(MTASleepAlarmTableViewCell *)self regularLayoutConstraints];
  }

  else
  {
    [(MTASleepAlarmTableViewCell *)self accessibilitySizeLayoutConstraints];
  }
  obj = ;
  _shouldUseRegularLayout = [(MTASleepAlarmTableViewCell *)self _shouldUseRegularLayout];
  [(MTASleepAlarmTableViewCell *)self _viewAvailabelWidth];
  v5 = v4;
  if (_shouldUseRegularLayout)
  {
    [(MTASleepAlarmTableViewCell *)self _changeButtonWidth];
    v5 = v5 - v6 + -16.0;
  }

  digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  [digitalClockLabel sizeThatFits:{v5, 0.0}];
  v9 = ceil(v8);
  clockLabelHeightConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelHeightConstraint];
  [clockLabelHeightConstraint setConstant:v9];

  currentConstraints = [(MTASleepAlarmTableViewCell *)self currentConstraints];

  v12 = obj;
  if (currentConstraints != obj)
  {
    currentConstraints2 = [(MTASleepAlarmTableViewCell *)self currentConstraints];

    if (currentConstraints2)
    {
      currentConstraints3 = [(MTASleepAlarmTableViewCell *)self currentConstraints];
      [NSLayoutConstraint deactivateConstraints:currentConstraints3];
    }

    objc_storeStrong(&self->_currentConstraints, obj);
    currentConstraints4 = [(MTASleepAlarmTableViewCell *)self currentConstraints];
    [NSLayoutConstraint activateConstraints:currentConstraints4];

    v12 = obj;
  }
}

- (double)_changeButtonWidth
{
  changeButton = [(MTASleepAlarmTableViewCell *)self changeButton];
  [changeButton sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v4 = v3 + 24.0;

  return v4;
}

- (double)_viewAvailabelWidth
{
  contentView = [(MTASleepAlarmTableViewCell *)self contentView];
  [contentView frame];
  v3 = CGRectGetWidth(v5) + -32.0;

  return v3;
}

- (BOOL)_shouldUseRegularLayout
{
  traitCollection = [(MTASleepAlarmTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraLarge);

  if (v5 == NSOrderedAscending)
  {
    return 1;
  }

  digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  height = CGSizeZero.height;
  [digitalClockLabel sizeThatFits:{CGSizeZero.width, height}];
  v9 = v8;

  detailLabel = [(MTASleepAlarmTableViewCell *)self detailLabel];
  [detailLabel sizeThatFits:{CGSizeZero.width, height}];
  v12 = v11;

  [(MTASleepAlarmTableViewCell *)self _viewAvailabelWidth];
  v14 = v13;
  [(MTASleepAlarmTableViewCell *)self _changeButtonWidth];
  v16 = v14 - v15;
  return v16 - v12 > 16.0 && v16 - v9 > 16.0;
}

- (NSArray)regularLayoutConstraints
{
  regularLayoutConstraints = self->_regularLayoutConstraints;
  if (!regularLayoutConstraints)
  {
    v4 = objc_opt_new();
    changeButton = [(MTASleepAlarmTableViewCell *)self changeButton];
    leadingAnchor = [changeButton leadingAnchor];
    digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
    trailingAnchor = [digitalClockLabel trailingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
    [(NSArray *)v4 addObject:v9];

    contentView = [(MTASleepAlarmTableViewCell *)self contentView];
    bottomAnchor = [contentView bottomAnchor];
    detailLabel = [(MTASleepAlarmTableViewCell *)self detailLabel];
    lastBaselineAnchor = [detailLabel lastBaselineAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:16.0];
    [(NSArray *)v4 addObject:v14];

    changeButton2 = [(MTASleepAlarmTableViewCell *)self changeButton];
    trailingAnchor2 = [changeButton2 trailingAnchor];
    contentView2 = [(MTASleepAlarmTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [(NSArray *)v4 addObject:v20];

    changeButton3 = [(MTASleepAlarmTableViewCell *)self changeButton];
    centerYAnchor = [changeButton3 centerYAnchor];
    contentView3 = [(MTASleepAlarmTableViewCell *)self contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(NSArray *)v4 addObject:v25];

    v26 = self->_regularLayoutConstraints;
    self->_regularLayoutConstraints = v4;

    regularLayoutConstraints = self->_regularLayoutConstraints;
  }

  return regularLayoutConstraints;
}

- (NSArray)accessibilitySizeLayoutConstraints
{
  accessibilitySizeLayoutConstraints = self->_accessibilitySizeLayoutConstraints;
  if (!accessibilitySizeLayoutConstraints)
  {
    v4 = objc_opt_new();
    digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
    trailingAnchor = [digitalClockLabel trailingAnchor];
    contentView = [(MTASleepAlarmTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSArray *)v4 addObject:v10];

    changeButton = [(MTASleepAlarmTableViewCell *)self changeButton];
    topAnchor = [changeButton topAnchor];
    detailLabel = [(MTASleepAlarmTableViewCell *)self detailLabel];
    bottomAnchor = [detailLabel bottomAnchor];
    v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
    [(NSArray *)v4 addObject:v15];

    changeButton2 = [(MTASleepAlarmTableViewCell *)self changeButton];
    leadingAnchor = [changeButton2 leadingAnchor];
    contentView2 = [(MTASleepAlarmTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSArray *)v4 addObject:v21];

    contentView3 = [(MTASleepAlarmTableViewCell *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    changeButton3 = [(MTASleepAlarmTableViewCell *)self changeButton];
    bottomAnchor3 = [changeButton3 bottomAnchor];
    v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
    [(NSArray *)v4 addObject:v26];

    v27 = self->_accessibilitySizeLayoutConstraints;
    self->_accessibilitySizeLayoutConstraints = v4;

    accessibilitySizeLayoutConstraints = self->_accessibilitySizeLayoutConstraints;
  }

  return accessibilitySizeLayoutConstraints;
}

- (void)internalSetBackgroundColor:(id)color
{
  v3.receiver = self;
  v3.super_class = MTASleepAlarmTableViewCell;
  [(MTASleepAlarmTableViewCell *)&v3 setBackgroundColor:color];
}

- (void)refreshWithSleepMetadata:(id)metadata
{
  metadataCopy = metadata;
  displaysTime = [metadataCopy displaysTime];
  clockLabelBaselineToTopConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelBaselineToTopConstraint];
  v6 = clockLabelBaselineToTopConstraint;
  if (displaysTime)
  {
    [clockLabelBaselineToTopConstraint setConstant:60.0];

    clockLabelDetailLabelSpaceConstraint = [(MTASleepAlarmTableViewCell *)self clockLabelDetailLabelSpaceConstraint];
    [clockLabelDetailLabelSpaceConstraint setConstant:-3.0];

    v8 = +[UIFont mtui_thinTimeFont];
    [(MTUIDigitalClockLabel *)self->_digitalClockLabel setFont:v8];

    digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
    alarmComponents = [metadataCopy alarmComponents];
    hour = [alarmComponents hour];
    alarmComponents2 = [metadataCopy alarmComponents];
    [digitalClockLabel setHour:hour minute:{objc_msgSend(alarmComponents2, "minute")}];
  }

  else
  {
    [clockLabelBaselineToTopConstraint setConstant:48.0];

    clockLabelDetailLabelSpaceConstraint2 = [(MTASleepAlarmTableViewCell *)self clockLabelDetailLabelSpaceConstraint];
    [clockLabelDetailLabelSpaceConstraint2 setConstant:0.0];

    v14 = +[MTASleepAlarmTableViewCell _clockLabelTextFont];
    [(MTUIDigitalClockLabel *)self->_digitalClockLabel setFont:v14];

    digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
    alarmComponents = [metadataCopy mainDescription];
    [digitalClockLabel setTimeLabelText:alarmComponents];
  }

  if ([metadataCopy displaysTime])
  {
    +[UIColor mtui_primaryTextColor];
  }

  else
  {
    +[UIColor mtui_disabledTextColor];
  }
  v15 = ;
  digitalClockLabel2 = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  [digitalClockLabel2 setTextColor:v15];

  detailedDescription = [metadataCopy detailedDescription];
  detailLabel = [(MTASleepAlarmTableViewCell *)self detailLabel];
  [detailLabel setText:detailedDescription];

  detailLabel2 = [(MTASleepAlarmTableViewCell *)self detailLabel];
  [detailLabel2 setTextColor:v15];

  detailLabel3 = [(MTASleepAlarmTableViewCell *)self detailLabel];
  [detailLabel3 sizeToFit];

  [(MTASleepAlarmTableViewCell *)self setupConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = MTASleepAlarmTableViewCell;
  [(MTASleepAlarmTableViewCell *)&v3 traitCollectionDidChange:change];
}

- (void)setMainLabelWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  digitalClockLabel = [(MTASleepAlarmTableViewCell *)self digitalClockLabel];
  hour = [alarmCopy hour];
  minute = [alarmCopy minute];

  [digitalClockLabel setHour:hour minute:minute];
}

- (void)_changeButtonPressed:(id)pressed
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Change button pressed %{public}@", &v6, 0xCu);
  }

  delegate = [(MTASleepAlarmTableViewCell *)self delegate];
  [delegate changeButtonPressed];
}

- (void)willTransitionToState:(unint64_t)state
{
  v4.receiver = self;
  v4.super_class = MTASleepAlarmTableViewCell;
  [(MTASleepAlarmTableViewCell *)&v4 willTransitionToState:state];
  [(MTASleepAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MTASleepAlarmTableViewCell;
  [(MTASleepAlarmTableViewCell *)&v5 setSelected:selected animated:animated];
  [(MTASleepAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MTASleepAlarmTableViewCell;
  [(MTASleepAlarmTableViewCell *)&v5 setHighlighted:highlighted animated:animated];
  [(MTASleepAlarmTableViewCell *)self setNeedsLayout];
}

+ (id)_clockLabelTextFont
{
  if (qword_1000D2A88 != -1)
  {
    sub_1000738D4();
  }

  v3 = qword_1000D2A80;

  return v3;
}

- (MTASleepAlarmTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end