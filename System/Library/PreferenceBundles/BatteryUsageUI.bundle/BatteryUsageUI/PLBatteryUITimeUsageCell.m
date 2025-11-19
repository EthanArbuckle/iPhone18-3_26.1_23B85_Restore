@interface PLBatteryUITimeUsageCell
- (PLBatteryUITimeUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (PLBatteryUITimeUsageTapDelegate)delegate;
- (id)getLabelWithTitle:(id)a3 withRGB:(id)a4 withFont:(id)a5;
- (id)getLoczlizedHourMinuteStringFromSeconds:(double)a3;
- (void)fitSize;
- (void)handleGesture:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation PLBatteryUITimeUsageCell

- (id)getLabelWithTitle:(id)a3 withRGB:(id)a4 withFont:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setFont:v7];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAccessibilityIdentifier:v9];

  [v10 setTextColor:v8];
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

- (PLBatteryUITimeUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v40.receiver = self;
  v40.super_class = PLBatteryUITimeUsageCell;
  v9 = [(PLBatteryUITimeUsageCell *)&v40 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(PLBatteryUITimeUsageCell *)v9 contentView];
    if (_os_feature_enabled_impl())
    {
      v12 = +[UIColor secondaryLabelColor];
      v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v14 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnText" withRGB:v12 withFont:v13];
      screenOnText = v10->_screenOnText;
      v10->_screenOnText = v14;

      [v11 addSubview:v10->_screenOnText];
      v16 = +[UIColor secondaryLabelColor];
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v18 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffText" withRGB:v16 withFont:v17];
      screenOffText = v10->_screenOffText;
      v10->_screenOffText = v18;

      [v11 addSubview:v10->_screenOffText];
    }

    else
    {
      v20 = +[PLBatteryUIUtilities screenOnColor];
      v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v22 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnText" withRGB:v20 withFont:v21];
      v23 = v10->_screenOnText;
      v10->_screenOnText = v22;

      [v11 addSubview:v10->_screenOnText];
      v24 = +[PLBatteryUIUtilities screenOffColor];
      v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v26 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffText" withRGB:v24 withFont:v25];
      v27 = v10->_screenOffText;
      v10->_screenOffText = v26;
    }

    [v11 addSubview:{v10->_screenOffText, v8}];
    v28 = +[UIColor _labelColor];
    v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v30 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOnTime" withRGB:v28 withFont:v29];
    screenOnTimeText = v10->_screenOnTimeText;
    v10->_screenOnTimeText = v30;

    [v11 addSubview:v10->_screenOnTimeText];
    v32 = +[UIColor _labelColor];
    v33 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v34 = [(PLBatteryUITimeUsageCell *)v10 getLabelWithTitle:@"ScreenOffTime" withRGB:v32 withFont:v33];
    screenOffTimeText = v10->_screenOffTimeText;
    v10->_screenOffTimeText = v34;

    [v11 addSubview:v10->_screenOffTimeText];
    [(PLBatteryUITimeUsageCell *)v10 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v41[0] = v10->_screenOnText;
    v41[1] = v10->_screenOffText;
    v41[2] = v10->_screenOnTimeText;
    v41[3] = v10->_screenOffTimeText;
    v36 = [NSArray arrayWithObjects:v41 count:4];
    [v11 setAccessibilityElements:v36];

    v8 = v39;
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
  v5 = [v4 BOOLValue];

  v6 = +[NSMutableArray array];
  [(PLBatteryUITimeUsageCell *)self setSeparatorStyle:0];
  [(PLBatteryUITimeUsageCell *)self fitSize];
  screenOffText = self->_screenOffText;
  v8 = _NSDictionaryOfVariableBindings(@"_screenOnText, _screenOffText, _screenOnTimeText, _screenOffTimeText", self->_screenOnText, screenOffText, self->_screenOnTimeText, self->_screenOffTimeText, 0);
  if (v5)
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
    if (v5 != [(PLBatteryUITimeUsageCell *)self previousBreakdownNotAvailable])
    {
      v10 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [NSLayoutConstraint deactivateConstraints:v10];

      v11 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [v11 removeAllObjects];

      v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOnText]-2-[_screenOnTimeText]-(bottomMargin)-|", 0, v9, v8);
      v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-15-[_screenOffText]-2-[_screenOffTimeText]-(bottomMargin)-|", 0, v9, v8);
      [v6 addObjectsFromArray:v12];
      [v6 addObjectsFromArray:v13];
      v14 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [v14 addObjectsFromArray:v12];

      v15 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
      [v15 addObjectsFromArray:v13];

      [NSLayoutConstraint activateConstraints:v6];
      [(PLBatteryUITimeUsageCell *)self setPreviousBreakdownNotAvailable:v5];
    }

    v28.receiver = self;
    v28.super_class = PLBatteryUITimeUsageCell;
    [(PLBatteryUITimeUsageCell *)&v28 updateConstraints];
  }

  else
  {
    [(PLBatteryUITimeUsageCell *)self setPreviousBreakdownNotAvailable:v5];
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
    v21 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
    [v21 addObjectsFromArray:v23];

    v22 = [(PLBatteryUITimeUsageCell *)self bottomMarginConstraints];
    [v22 addObjectsFromArray:v16];

    [(PLBatteryUITimeUsageCell *)self setConstraintsAdded:1];
    v27.receiver = self;
    v27.super_class = PLBatteryUITimeUsageCell;
    [(PLBatteryUITimeUsageCell *)&v27 updateConstraints];

    v9 = v25;
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PLBatteryUITimeUsageCell;
  [(PLBatteryUITimeUsageCell *)&v42 refreshCellContentsWithSpecifier:v4];
  v5 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];

  if (v7)
  {
    v8 = [v4 propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
    v9 = [v8 buiViewController];
    objc_storeWeak(&self->_delegate, v9);
  }

  v10 = [v4 propertyForKey:@"PLBatteryUIGraphQueryRangeKey"];
  v11 = [v10 intValue];

  v12 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
  v13 = [v12 propertyForKey:@"PLBatteryUIGraphTappedIndexKey"];
  v14 = [v13 intValue];

  v15 = [v4 propertyForKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
  v16 = [v15 intValue];

  v17 = [v4 propertyForKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
  v18 = [v17 intValue];

  if (v11 && (v11 != 1 || v14 == -1))
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

  v30 = v18 & ~(v18 >> 31);
  v31 = v16 & ~(v16 >> 31);
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

- (id)getLoczlizedHourMinuteStringFromSeconds:(double)a3
{
  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setUnitsStyle:{+[PLBatteryUIUtilities localizedDateComponentsUnitsStyle](PLBatteryUIUtilities, "localizedDateComponentsUnitsStyle")}];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  [v4 setAllowedUnits:96];
  v5 = [v4 stringFromTimeInterval:a3];

  return v5;
}

- (void)handleGesture:(id)a3
{
  v4 = [(PLBatteryUITimeUsageCell *)self delegate];

  if (v4)
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