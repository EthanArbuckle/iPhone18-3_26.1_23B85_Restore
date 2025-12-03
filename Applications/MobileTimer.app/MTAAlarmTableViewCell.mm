@interface MTAAlarmTableViewCell
- (BOOL)_shouldUseRegularLayout;
- (MTAAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTAAlarmTableViewCellDelegate)delegate;
- (NSArray)accessibilitySizeLayoutConstraints;
- (NSArray)regularLayoutConstraints;
- (void)_alarmActiveChanged:(id)changed;
- (void)internalSetBackgroundColor:(id)color;
- (void)refreshUI:(id)i animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setupConstraints;
- (void)setupSharedLayoutConstraint;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation MTAAlarmTableViewCell

- (MTAAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38.receiver = self;
  v38.super_class = MTAAlarmTableViewCell;
  v4 = [(MTAAlarmTableViewCell *)&v38 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    [(MTAAlarmTableViewCell *)v4 setDeadZone:v5];

    deadZone = [(MTAAlarmTableViewCell *)v4 deadZone];
    [deadZone setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(MTAAlarmTableViewCell *)v4 contentView];
    deadZone2 = [(MTAAlarmTableViewCell *)v4 deadZone];
    [contentView addSubview:deadZone2];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:0];
    [(MTAAlarmTableViewCell *)v4 setRecognizer:v9];

    deadZone3 = [(MTAAlarmTableViewCell *)v4 deadZone];
    recognizer = [(MTAAlarmTableViewCell *)v4 recognizer];
    [deadZone3 addGestureRecognizer:recognizer];

    [(MTAAlarmTableViewCell *)v4 setEditingAccessoryType:1];
    v12 = objc_opt_new();
    [(MTAAlarmTableViewCell *)v4 setEnabledSwitch:v12];

    v13 = +[UIColor systemGreenColor];
    enabledSwitch = [(MTAAlarmTableViewCell *)v4 enabledSwitch];
    [enabledSwitch setOnTintColor:v13];

    v15 = +[UIColor mtui_switchTintColor];
    enabledSwitch2 = [(MTAAlarmTableViewCell *)v4 enabledSwitch];
    [enabledSwitch2 setTintColor:v15];

    enabledSwitch3 = [(MTAAlarmTableViewCell *)v4 enabledSwitch];
    [enabledSwitch3 setTranslatesAutoresizingMaskIntoConstraints:0];

    enabledSwitch4 = [(MTAAlarmTableViewCell *)v4 enabledSwitch];
    [enabledSwitch4 addTarget:v4 action:"_alarmActiveChanged:" forControlEvents:4096];

    contentView2 = [(MTAAlarmTableViewCell *)v4 contentView];
    enabledSwitch5 = [(MTAAlarmTableViewCell *)v4 enabledSwitch];
    [contentView2 addSubview:enabledSwitch5];

    v21 = [MTUIDigitalClockLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v25 = [v21 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    digitalClockLabel = v4->_digitalClockLabel;
    v4->_digitalClockLabel = v25;

    v27 = +[UIFont mtui_thinTimeFont];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setFont:v27];

    v28 = +[UIFont mtui_defaultTimeDesignatorFont];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setTimeDesignatorFont:v28];

    v29 = +[UIColor clearColor];
    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setBackgroundColor:v29];

    [(MTUIDigitalClockLabel *)v4->_digitalClockLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(MTAAlarmTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_digitalClockLabel];

    v31 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v31;

    v33 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    [(UILabel *)v4->_detailLabel setFont:v33];

    [(UILabel *)v4->_detailLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_detailLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailLabel setLineBreakMode:0];
    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(MTAAlarmTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_detailLabel];

    v35 = +[UIColor mtui_cellHighlightColor];
    [(MTAAlarmTableViewCell *)v4 setSelectedBackgroundColor:v35];

    [(MTAAlarmTableViewCell *)v4 setupSharedLayoutConstraint];
    v36 = v4;
  }

  return v4;
}

- (void)setupSharedLayoutConstraint
{
  v29 = objc_opt_new();
  digitalClockLabel = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  leadingAnchor = [digitalClockLabel leadingAnchor];
  contentView = [(MTAAlarmTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v29 addObject:v8];

  digitalClockLabel2 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  firstBaselineAnchor = [digitalClockLabel2 firstBaselineAnchor];
  contentView2 = [(MTAAlarmTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:60.0];
  [v29 addObject:v13];

  detailLabel = [(MTAAlarmTableViewCell *)self detailLabel];
  leadingAnchor3 = [detailLabel leadingAnchor];
  digitalClockLabel3 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  leadingAnchor4 = [digitalClockLabel3 leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v29 addObject:v18];

  detailLabel2 = [(MTAAlarmTableViewCell *)self detailLabel];
  topAnchor2 = [detailLabel2 topAnchor];
  digitalClockLabel4 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  bottomAnchor = [digitalClockLabel4 bottomAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:-3.0];
  [v29 addObject:v23];

  detailLabel3 = [(MTAAlarmTableViewCell *)self detailLabel];
  trailingAnchor = [detailLabel3 trailingAnchor];
  digitalClockLabel5 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  trailingAnchor2 = [digitalClockLabel5 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v29 addObject:v28];

  [NSLayoutConstraint activateConstraints:v29];
}

- (void)internalSetBackgroundColor:(id)color
{
  v3.receiver = self;
  v3.super_class = MTAAlarmTableViewCell;
  [(MTAAlarmTableViewCell *)&v3 setBackgroundColor:color];
}

- (void)setupConstraints
{
  if ([(MTAAlarmTableViewCell *)self _shouldUseRegularLayout])
  {
    [(MTAAlarmTableViewCell *)self regularLayoutConstraints];
  }

  else
  {
    [(MTAAlarmTableViewCell *)self accessibilitySizeLayoutConstraints];
  }
  obj = ;
  currentConstraints = [(MTAAlarmTableViewCell *)self currentConstraints];

  v4 = obj;
  if (currentConstraints != obj)
  {
    currentConstraints2 = [(MTAAlarmTableViewCell *)self currentConstraints];

    if (currentConstraints2)
    {
      currentConstraints3 = [(MTAAlarmTableViewCell *)self currentConstraints];
      [NSLayoutConstraint deactivateConstraints:currentConstraints3];
    }

    objc_storeStrong(&self->_currentConstraints, obj);
    currentConstraints4 = [(MTAAlarmTableViewCell *)self currentConstraints];
    [NSLayoutConstraint activateConstraints:currentConstraints4];

    v4 = obj;
  }
}

- (BOOL)_shouldUseRegularLayout
{
  traitCollection = [(MTAAlarmTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    return 1;
  }

  detailLabel = [(MTAAlarmTableViewCell *)self detailLabel];
  [detailLabel sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v8 = v7;

  enabledSwitch = [(MTAAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch intrinsicContentSize];
  v11 = v10;

  contentView = [(MTAAlarmTableViewCell *)self contentView];
  [contentView bounds];
  v13 = CGRectGetWidth(v19) - v11;
  [(MTAAlarmTableViewCell *)self layoutMargins];
  v15 = v14;
  [(MTAAlarmTableViewCell *)self layoutMargins];
  v17 = v13 + (v15 + v16) * -2.0;

  return v17 - v8 > 16.0;
}

- (NSArray)regularLayoutConstraints
{
  regularLayoutConstraints = self->_regularLayoutConstraints;
  if (!regularLayoutConstraints)
  {
    v4 = objc_opt_new();
    deadZone = [(MTAAlarmTableViewCell *)self deadZone];
    leadingAnchor = [deadZone leadingAnchor];
    digitalClockLabel = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    trailingAnchor = [digitalClockLabel trailingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    [(NSArray *)v4 addObject:v9];

    deadZone2 = [(MTAAlarmTableViewCell *)self deadZone];
    trailingAnchor2 = [deadZone2 trailingAnchor];
    contentView = [(MTAAlarmTableViewCell *)self contentView];
    trailingAnchor3 = [contentView trailingAnchor];
    v14 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
    [(NSArray *)v4 addObject:v14];

    deadZone3 = [(MTAAlarmTableViewCell *)self deadZone];
    heightAnchor = [deadZone3 heightAnchor];
    contentView2 = [(MTAAlarmTableViewCell *)self contentView];
    heightAnchor2 = [contentView2 heightAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [(NSArray *)v4 addObject:v19];

    enabledSwitch = [(MTAAlarmTableViewCell *)self enabledSwitch];
    leadingAnchor2 = [enabledSwitch leadingAnchor];
    digitalClockLabel2 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    trailingAnchor4 = [digitalClockLabel2 trailingAnchor];
    v24 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
    [(NSArray *)v4 addObject:v24];

    contentView3 = [(MTAAlarmTableViewCell *)self contentView];
    bottomAnchor = [contentView3 bottomAnchor];
    detailLabel = [(MTAAlarmTableViewCell *)self detailLabel];
    lastBaselineAnchor = [detailLabel lastBaselineAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:16.0];
    [(NSArray *)v4 addObject:v29];

    enabledSwitch2 = [(MTAAlarmTableViewCell *)self enabledSwitch];
    trailingAnchor5 = [enabledSwitch2 trailingAnchor];
    contentView4 = [(MTAAlarmTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide trailingAnchor];
    v35 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [(NSArray *)v4 addObject:v35];

    enabledSwitch3 = [(MTAAlarmTableViewCell *)self enabledSwitch];
    bottomAnchor2 = [enabledSwitch3 bottomAnchor];
    digitalClockLabel3 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    firstBaselineAnchor = [digitalClockLabel3 firstBaselineAnchor];
    v40 = [bottomAnchor2 constraintEqualToAnchor:firstBaselineAnchor];
    [(NSArray *)v4 addObject:v40];

    v41 = self->_regularLayoutConstraints;
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
    digitalClockLabel = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    trailingAnchor = [digitalClockLabel trailingAnchor];
    contentView = [(MTAAlarmTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSArray *)v4 addObject:v10];

    enabledSwitch = [(MTAAlarmTableViewCell *)self enabledSwitch];
    topAnchor = [enabledSwitch topAnchor];
    detailLabel = [(MTAAlarmTableViewCell *)self detailLabel];
    bottomAnchor = [detailLabel bottomAnchor];
    v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
    [(NSArray *)v4 addObject:v15];

    enabledSwitch2 = [(MTAAlarmTableViewCell *)self enabledSwitch];
    leadingAnchor = [enabledSwitch2 leadingAnchor];
    contentView2 = [(MTAAlarmTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSArray *)v4 addObject:v21];

    contentView3 = [(MTAAlarmTableViewCell *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    enabledSwitch3 = [(MTAAlarmTableViewCell *)self enabledSwitch];
    bottomAnchor3 = [enabledSwitch3 bottomAnchor];
    v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
    [(NSArray *)v4 addObject:v26];

    v27 = self->_accessibilitySizeLayoutConstraints;
    self->_accessibilitySizeLayoutConstraints = v4;

    accessibilitySizeLayoutConstraints = self->_accessibilitySizeLayoutConstraints;
  }

  return accessibilitySizeLayoutConstraints;
}

- (void)refreshUI:(id)i animated:(BOOL)animated
{
  animatedCopy = animated;
  iCopy = i;
  isSleepAlarm = [iCopy isSleepAlarm];
  [iCopy repeatSchedule];
  if (isSleepAlarm)
  {
    DateMaskToString();
  }

  else
  {
    DetailDateMaskToString();
  }
  v7 = ;
  digitalClockLabel = [(MTAAlarmTableViewCell *)self digitalClockLabel];
  [digitalClockLabel setHour:objc_msgSend(iCopy minute:{"hour"), objc_msgSend(iCopy, "minute")}];

  if ([iCopy isSleepAlarm])
  {
    displayTitle = 0;
  }

  else
  {
    displayTitle = [iCopy displayTitle];
  }

  v10 = displayTitle;
  if ([v10 length])
  {
    v11 = v10;
    if (![v7 length])
    {
      goto LABEL_12;
    }

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ALARM_DETAIL_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];

    v11 = [[NSString alloc] initWithFormat:v13, v10, v7];
  }

  else
  {
    v11 = v7;
    v13 = v10;
  }

LABEL_12:
  -[MTAAlarmTableViewCell setIsSleepAlarm:](self, "setIsSleepAlarm:", [iCopy isSleepAlarm]);
  isSleepAlarm2 = [iCopy isSleepAlarm];
  isEnabled = [iCopy isEnabled];
  sleepSchedule = isEnabled;
  if (isSleepAlarm2)
  {
    if (!isEnabled)
    {
      enabledSwitch = [(MTAAlarmTableViewCell *)self enabledSwitch];
      [enabledSwitch setOn:0 animated:0];

      goto LABEL_18;
    }

    sleepSchedule = [iCopy sleepSchedule];
  }

  enabledSwitch2 = [(MTAAlarmTableViewCell *)self enabledSwitch];
  [enabledSwitch2 setOn:sleepSchedule animated:0];

  if (sleepSchedule)
  {
    v18 = +[UIColor mtui_primaryTextColor];
    v19 = +[UIColor mtui_primaryTextColor];
    goto LABEL_19;
  }

LABEL_18:
  v18 = +[UIColor mtui_disabledTextColor];
  v19 = +[UIColor mtui_disabledTextColor];
LABEL_19:
  v21 = v19;
  v22 = +[UIColor mtui_backgroundColor];
  if (animatedCopy)
  {
    [UIView beginAnimations:@"RefreshAlarmTableViewCell" context:0];
    digitalClockLabel2 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    [digitalClockLabel2 setTextColor:v18];

    detailLabel = [(MTAAlarmTableViewCell *)self detailLabel];
    [detailLabel setText:v11];

    detailLabel2 = [(MTAAlarmTableViewCell *)self detailLabel];
    [detailLabel2 setTextColor:v21];

    [(MTAAlarmTableViewCell *)self internalSetBackgroundColor:v22];
    +[UIView commitAnimations];
  }

  else
  {
    digitalClockLabel3 = [(MTAAlarmTableViewCell *)self digitalClockLabel];
    [digitalClockLabel3 setTextColor:v18];

    detailLabel3 = [(MTAAlarmTableViewCell *)self detailLabel];
    [detailLabel3 setText:v11];

    detailLabel4 = [(MTAAlarmTableViewCell *)self detailLabel];
    [detailLabel4 setTextColor:v21];

    [(MTAAlarmTableViewCell *)self internalSetBackgroundColor:v22];
  }

  [(MTAAlarmTableViewCell *)self setupConstraints];
}

- (void)_alarmActiveChanged:(id)changed
{
  isOn = [changed isOn];
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = isOn;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TableViewCell: alarm active toggled to %d", v7, 8u);
  }

  delegate = [(MTAAlarmTableViewCell *)self delegate];
  [delegate setAlarmEnabled:isOn forCell:self];
}

- (void)willTransitionToState:(unint64_t)state
{
  v4.receiver = self;
  v4.super_class = MTAAlarmTableViewCell;
  [(MTAAlarmTableViewCell *)&v4 willTransitionToState:state];
  [(MTAAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewCell;
  [(MTAAlarmTableViewCell *)&v5 setSelected:selected animated:animated];
  [(MTAAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MTAAlarmTableViewCell;
  [(MTAAlarmTableViewCell *)&v5 setHighlighted:highlighted animated:animated];
  [(MTAAlarmTableViewCell *)self setNeedsLayout];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (![(MTAAlarmTableViewCell *)self isSleepAlarm])
  {
    if (animatedCopy)
    {
      [UIView beginAnimations:@"EditingAlarmTableViewCell" context:0];
      enabledSwitch = [(MTAAlarmTableViewCell *)self enabledSwitch];
      v8 = enabledSwitch;
      v9 = 1.0;
      if (editingCopy)
      {
        v9 = 0.0;
      }

      [enabledSwitch setAlpha:v9];

      recognizer = [(MTAAlarmTableViewCell *)self recognizer];
      [recognizer setEnabled:editingCopy ^ 1];

      +[UIView commitAnimations];
    }

    else
    {
      enabledSwitch2 = [(MTAAlarmTableViewCell *)self enabledSwitch];
      v12 = enabledSwitch2;
      v13 = 1.0;
      if (editingCopy)
      {
        v13 = 0.0;
      }

      [enabledSwitch2 setAlpha:v13];

      recognizer2 = [(MTAAlarmTableViewCell *)self recognizer];
      [recognizer2 setEnabled:editingCopy ^ 1];
    }
  }

  v15.receiver = self;
  v15.super_class = MTAAlarmTableViewCell;
  [(MTAAlarmTableViewCell *)&v15 setEditing:editingCopy animated:animatedCopy];
}

- (MTAAlarmTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end