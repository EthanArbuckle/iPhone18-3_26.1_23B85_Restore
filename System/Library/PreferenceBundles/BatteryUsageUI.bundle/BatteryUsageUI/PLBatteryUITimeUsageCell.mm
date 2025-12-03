@interface PLBatteryUITimeUsageCell
- (PLBatteryUITimeUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (PLBatteryUITimeUsageTapDelegate)delegate;
- (id)getLabelWithTitle:(id)title withRGB:(id)b withFont:(id)font;
- (id)getLoczlizedHourMinuteStringFromSeconds:(double)seconds;
- (void)fitSize;
- (void)handleGesture:(id)gesture;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation PLBatteryUITimeUsageCell

- (id)getLabelWithTitle:(id)title withRGB:(id)b withFont:(id)font
{
  fontCopy = font;
  bCopy = b;
  titleCopy = title;
  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setFont:fontCopy];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAccessibilityIdentifier:titleCopy];

  [v10 setTextColor:bCopy];
  [v10 setTextAlignment:{+[PLBatteryUIUtilities localizedLeftTextAlignment](PLBatteryUIUtilities, "localizedLeftTextAlignment")}];
  v11 = +[UIColor clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setHidden:0];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];

  return v10;
}

- (void)fitSize
{
  [(UILabel *)self->_screenOnText sizeToFit];
  [(UILabel *)self->_screenOffText sizeToFit];
  [(UILabel *)self->_screenOnTimeText sizeToFit];
  screenOffTimeText = self->_screenOffTimeText;

  [(UILabel *)screenOffTimeText sizeToFit];
}

- (PLBatteryUITimeUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v40.receiver = self;
  v40.super_class = PLBatteryUITimeUsageCell;
  v9 = [(PLBatteryUITimeUsageCell *)&v40 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(PLBatteryUITimeUsageCell *)v9 contentView];
    if (_os_feature_enabled_impl())
    {
      v12 = +[UIColor secondaryLabelColor];
      v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v14 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnText" withRGB:v12 withFont:v13];
      screenOnText = v10->_screenOnText;
      v10->_screenOnText = v14;

      [contentView addSubview:v10->_screenOnText];
      v16 = +[UIColor secondaryLabelColor];
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v18 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffText" withRGB:v16 withFont:v17];
      screenOffText = v10->_screenOffText;
      v10->_screenOffText = v18;

      [contentView addSubview:v10->_screenOffText];
    }

    else
    {
      v20 = +[PLBatteryUIUtilities screenOnColor];
      v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v22 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnText" withRGB:v20 withFont:v21];
      v23 = v10->_screenOnText;
      v10->_screenOnText = v22;

      [contentView addSubview:v10->_screenOnText];
      v24 = +[PLBatteryUIUtilities screenOffColor];
      v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v26 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffText" withRGB:v24 withFont:v25];
      v27 = v10->_screenOffText;
      v10->_screenOffText = v26;
    }

    [contentView addSubview:{v10->_screenOffText, specifierCopy}];
    v28 = +[UIColor _labelColor];
    v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v30 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnTime" withRGB:v28 withFont:v29];
    screenOnTimeText = v10->_screenOnTimeText;
    v10->_screenOnTimeText = v30;

    [contentView addSubview:v10->_screenOnTimeText];
    v32 = +[UIColor _labelColor];
    v33 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v34 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffTime" withRGB:v32 withFont:v33];
    screenOffTimeText = v10->_screenOffTimeText;
    v10->_screenOffTimeText = v34;

    [contentView addSubview:v10->_screenOffTimeText];
    [(PLBatteryUITimeUsageCell *)v10 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v41[0] = v10->_screenOnText;
    v41[1] = v10->_screenOffText;
    v41[2] = v10->_screenOnTimeText;
    v41[3] = v10->_screenOffTimeText;
    v36 = [NSArray arrayWithObjects:v41 count:4];
    [contentView setAccessibilityElements:v36];

    specifierCopy = v39;
    [(PLBatteryUITimeUsageCell *)v10 refreshCellContentsWithSpecifier:v39];
    [(PLBatteryUITimeUsageCell *)v10 setConstraintsAdded:0];
    v37 = +[NSMutableArray array];
    [(PLBatteryUITimeUsageCell *)v10 setBottomMarginConstraints:v37];
  }

  return v10;
}

- (void)layoutSubviews
{
  [(PLBatteryUITimeUsageCell *)self setSeparatorStyle:0];
  v3.receiver = self;
  v3.super_class = PLBatteryUITimeUsageCell;
  [(PLBatteryUITimeUsageCell *)&v3 layoutSubviews];
}

- (void)updateConstraints
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained propertyForKey:@"PLBatteryUIGraphBatteryBreakdownNotAvailableKey"];
  bOOLValue = [v4 BOOLValue];

  v6 = +[NSMutableArray array];
  [(PLBatteryUITimeUsageCell *)self setSeparatorStyle:0];
  [(PLBatteryUITimeUsageCell *)self fitSize];
  screenOffText = self->_screenOffText;
  v8 = _NSDictionaryOfVariableBindings(@"_screenOnText, _screenOffText, _screenOnTimeText, _screenOffTimeText", self->_screenOnText, screenOffText, self->_screenOnTimeText, self->_screenOffTimeText, 0);
  if (bOOLValue)
  {
    _NSDictionaryOfVariableBindings(@"bottomMargin", &off_1738E0, 0);
  }

  else
  {
    _NSDictionaryOfVariableBindings(@"bottomMargin", &off_1738F8, 0);
  }
  v9 = ;
  if ([(PLBatteryUITimeUsageCell *)self constraintsAdded])
  {
    if (bOOLValue != [(PLBatteryUITimeUsageCell *)self previousBreakdownNotAvailable])
    {
      bottomMarginConstraints = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [NSLayoutConstraint deactivateConstraints:bottomMarginConstraints];

      bottomMarginConstraints2 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [bottomMarginConstraints2 removeAllObjects];

      v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOnText]-2-[_screenOnTimeText]-(bottomMargin)-|", 0, v9, v8);
      v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOffText]-2-[_screenOffTimeText]-(bottomMargin)-|", 0, v9, v8);
      [v6 addObjectsFromArray:v12];
      [v6 addObjectsFromArray:v13];
      bottomMarginConstraints3 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [bottomMarginConstraints3 addObjectsFromArray:v12];

      bottomMarginConstraints4 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [bottomMarginConstraints4 addObjectsFromArray:v13];

      [NSLayoutConstraint activateConstraints:v6];
      [(PLBatteryUITimeUsageCell *)self setPreviousBreakdownNotAvailable:bOOLValue];
    }

    v28.receiver = self;
    v28.super_class = PLBatteryUITimeUsageCell;
    [(PLBatteryUITimeUsageCell *)&v28 updateConstraints];
  }

  else
  {
    [(PLBatteryUITimeUsageCell *)self setPreviousBreakdownNotAvailable:bOOLValue];
    v24 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_screenOnText]-0-[_screenOffText]-15-|", 0, 0, v8);
    v26 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_screenOnTimeText]-0-[_screenOffTimeText]-15-|", 0, 0, v8);
    v23 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOnText]-2-[_screenOnTimeText]-(bottomMargin)-|", 0, v9, v8);
    v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOffText]-2-[_screenOffTimeText]-(bottomMargin)-|", 0, v9, v8);
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_screenOnText(==_screenOffText)]" options:0 metrics:0 views:v8];
    v17 = v25 = v9;
    v18 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_screenOnTimeText(==_screenOffTimeText)]" options:0 metrics:0 views:v8];
    v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_screenOnText(==_screenOffText)]" options:0 metrics:0 views:v8];
    v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_screenOnTimeText(==_screenOffTimeText)]" options:0 metrics:0 views:v8];
    [v6 addObjectsFromArray:v24];
    [v6 addObjectsFromArray:v23];
    [v6 addObjectsFromArray:v26];
    [v6 addObjectsFromArray:v16];
    [v6 addObjectsFromArray:v17];
    [v6 addObjectsFromArray:v18];
    [v6 addObjectsFromArray:v19];
    [v6 addObjectsFromArray:v20];
    [NSLayoutConstraint activateConstraints:v6];
    bottomMarginConstraints5 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
    [bottomMarginConstraints5 addObjectsFromArray:v23];

    bottomMarginConstraints6 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
    [bottomMarginConstraints6 addObjectsFromArray:v16];

    [(PLBatteryUITimeUsageCell *)self setConstraintsAdded:1];
    v27.receiver = self;
    v27.super_class = PLBatteryUITimeUsageCell;
    [(PLBatteryUITimeUsageCell *)&v27 updateConstraints];

    v9 = v25;
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v42.receiver = self;
  v42.super_class = PLBatteryUITimeUsageCell;
  [(PLBatteryUITimeUsageCell *)&v42 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];

  if (v7)
  {
    v8 = [specifierCopy propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
    buiViewController = [v8 buiViewController];
    objc_storeWeak(&self->_delegate, buiViewController);
  }

  v10 = [specifierCopy propertyForKey:@"PLBatteryUIGraphQueryRangeKey"];
  intValue = [v10 intValue];

  v12 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
  v13 = [v12 propertyForKey:@"PLBatteryUIGraphTappedIndexKey"];
  intValue2 = [v13 intValue];

  v15 = [specifierCopy propertyForKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
  intValue3 = [v15 intValue];

  v17 = [specifierCopy propertyForKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
  intValue4 = [v17 intValue];

  if (intValue && (intValue != 1 || intValue2 == -1))
  {
    if (_os_feature_enabled_impl() && +[PLModelingUtilities hasAOD])
    {
      screenOnText = self->_screenOnText;
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v27 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v27 = BatteryUILocalization(@"AVERAGE_SCREEN_ON_USAGE_ALWAYS_ON");
      }

      [(UILabel *)screenOnText setText:v27];

      screenOffText = self->_screenOffText;
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v23 = @"AVERAGE_SCREEN_OFF_USAGE_ALWAYS_ON";
        goto LABEL_34;
      }
    }

    else
    {
      v28 = self->_screenOnText;
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v29 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v29 = BatteryUILocalization(@"AVERAGE_SCREEN_ON_USAGE");
      }

      [(UILabel *)v28 setText:v29];

      screenOffText = self->_screenOffText;
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v23 = @"AVERAGE_SCREEN_OFF_USAGE";
        goto LABEL_34;
      }
    }
  }

  else if (_os_feature_enabled_impl() && +[PLModelingUtilities hasAOD])
  {
    v19 = self->_screenOnText;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v20 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v20 = BatteryUILocalization(@"SCREEN_ON_USAGE_ALWAYS_ON");
    }

    [(UILabel *)v19 setText:v20];

    screenOffText = self->_screenOffText;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v23 = @"SCREEN_OFF_USAGE_ALWAYS_ON";
LABEL_34:
      v22 = BatteryUILocalization(v23);
    }
  }

  else
  {
    v24 = self->_screenOnText;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v25 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v25 = BatteryUILocalization(@"SCREEN_ON_USAGE");
    }

    [(UILabel *)v24 setText:v25];

    screenOffText = self->_screenOffText;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v23 = @"SCREEN_OFF_USAGE";
      goto LABEL_34;
    }
  }

  [(UILabel *)screenOffText setText:v22];

  v30 = intValue4 & ~(intValue4 >> 31);
  v31 = intValue3 & ~(intValue3 >> 31);
  screenOnTimeText = self->_screenOnTimeText;
  v33 = [(PLBatteryUITimeUsageCell *)self getLoczlizedHourMinuteStringFromSeconds:v31];
  [(UILabel *)screenOnTimeText setText:v33];

  screenOffTimeText = self->_screenOffTimeText;
  v35 = [(PLBatteryUITimeUsageCell *)self getLoczlizedHourMinuteStringFromSeconds:v30];
  [(UILabel *)screenOffTimeText setText:v35];

  v36 = [UIView alloc];
  [(PLBatteryUITimeUsageCell *)self frame];
  v38 = v37;
  [(PLBatteryUITimeUsageCell *)self frame];
  v39 = [v36 initWithFrame:{0.0, 0.0, v38}];
  v40 = +[UIColor clearColor];
  [v39 setBackgroundColor:v40];

  [v39 setUserInteractionEnabled:1];
  v41 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleGesture:"];
  [v41 setNumberOfTapsRequired:1];
  [v39 addGestureRecognizer:v41];
  [(PLBatteryUITimeUsageCell *)self addSubview:v39];
  [(PLBatteryUITimeUsageCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUITimeUsageCell *)self setNeedsDisplay];
}

- (id)getLoczlizedHourMinuteStringFromSeconds:(double)seconds
{
  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setUnitsStyle:{+[PLBatteryUIUtilities localizedDateComponentsUnitsStyle](PLBatteryUIUtilities, "localizedDateComponentsUnitsStyle")}];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  [v4 setAllowedUnits:96];
  v5 = [v4 stringFromTimeInterval:seconds];

  return v5;
}

- (void)handleGesture:(id)gesture
{
  delegate = [(PLBatteryUITimeUsageCell *)self delegate];

  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didTappedBar:&off_173910];
  }
}

- (PLBatteryUITimeUsageTapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end