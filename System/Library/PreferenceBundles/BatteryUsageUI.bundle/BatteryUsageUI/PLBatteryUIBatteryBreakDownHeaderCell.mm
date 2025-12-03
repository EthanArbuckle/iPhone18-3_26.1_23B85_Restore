@interface PLBatteryUIBatteryBreakDownHeaderCell
- (PLBatteryUIBatteryBreakDownHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (PLBatteryUITimeUsageCellDelegate)delegate;
- (void)buttonAction:(id)action;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateButton;
- (void)updateConstraints;
@end

@implementation PLBatteryUIBatteryBreakDownHeaderCell

- (PLBatteryUIBatteryBreakDownHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v51.receiver = self;
  v51.super_class = PLBatteryUIBatteryBreakDownHeaderCell;
  v9 = [(PLBatteryUIBatteryBreakDownHeaderCell *)&v51 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(PLBatteryUIBatteryBreakDownHeaderCell *)v9 contentView];
    v12 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 setBreakdownTitleLabel:v16];

    breakdownTitleLabel = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel setAccessibilityIdentifier:@"TitleLabel"];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    breakdownTitleLabel2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel2 setFont:v18];

    breakdownTitleLabel3 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = +[UIColor _secondaryLabelColor];
    breakdownTitleLabel4 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel4 setTextColor:v21];

    v23 = +[PLBatteryUIUtilities localizedLeftTextAlignment];
    breakdownTitleLabel5 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel5 setTextAlignment:v23];

    v25 = +[UIColor clearColor];
    breakdownTitleLabel6 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel6 setBackgroundColor:v25];

    breakdownTitleLabel7 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel7 setNumberOfLines:0];

    breakdownTitleLabel8 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [breakdownTitleLabel8 setLineBreakMode:0];

    breakdownTitleLabel9 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    [contentView addSubview:breakdownTitleLabel9];

    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 setBreakdownToggleButton:v30];

    breakdownToggleButton = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton setAccessibilityIdentifier:@"ToggleButton"];

    breakdownToggleButton2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = +[UIColor systemBlueColor];
    breakdownToggleButton3 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton3 setTextColor:v33];

    breakdownToggleButton4 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton4 setEnabled:1];

    breakdownToggleButton5 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton5 setHidden:0];

    v37 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    breakdownToggleButton6 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton6 setFont:v37];

    breakdownToggleButton7 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton7 setNumberOfLines:0];

    v40 = +[PLBatteryUIUtilities localizedRightTextAlignment];
    breakdownToggleButton8 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton8 setTextAlignment:v40];

    breakdownToggleButton9 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton9 setLineBreakMode:0];

    breakdownToggleButton10 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [contentView addSubview:breakdownToggleButton10];

    [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    breakdownTitleLabel10 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownTitleLabel];
    v52[0] = breakdownTitleLabel10;
    breakdownToggleButton11 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    v52[1] = breakdownToggleButton11;
    v46 = [NSArray arrayWithObjects:v52 count:2];
    [contentView setAccessibilityElements:v46];

    breakdownToggleButton12 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton12 setUserInteractionEnabled:1];

    v48 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:"buttonAction:"];
    [v48 setNumberOfTapsRequired:1];
    breakdownToggleButton13 = [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 breakdownToggleButton];
    [breakdownToggleButton13 addGestureRecognizer:v48];

    [(PLBatteryUIBatteryBreakDownHeaderCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (void)updateConstraints
{
  breakdownTitleLabel = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownTitleLabel];
  text = [breakdownTitleLabel text];
  breakdownTitleLabel2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownTitleLabel];
  font = [breakdownTitleLabel2 font];
  [PLBatteryUIUtilities getOneLineWidthOfText:text withFont:font];
  v8 = v7;

  breakdownToggleButton = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
  text2 = [breakdownToggleButton text];
  breakdownToggleButton2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
  font2 = [breakdownToggleButton2 font];
  [PLBatteryUIUtilities getOneLineWidthOfText:text2 withFont:font2];
  v14 = v13;

  [(PLBatteryUIBatteryBreakDownHeaderCell *)self frame];
  if (v8 + v14 + 30.0 + 3.0 <= v15)
  {
    v16 = v8 / v14;
  }

  else
  {
    v16 = 1.0;
  }

  breakdownTitleLabel3 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownTitleLabel];
  breakdownToggleButton3 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
  v19 = [NSLayoutConstraint constraintWithItem:breakdownTitleLabel3 attribute:7 relatedBy:0 toItem:breakdownToggleButton3 attribute:7 multiplier:v16 constant:0.0];

  widthConstraint = [(PLBatteryUIBatteryBreakDownHeaderCell *)self widthConstraint];

  if (widthConstraint)
  {
    contentView = [(PLBatteryUIBatteryBreakDownHeaderCell *)self contentView];
    widthConstraint2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self widthConstraint];
    [contentView removeConstraint:widthConstraint2];

    [(PLBatteryUIBatteryBreakDownHeaderCell *)self setWidthConstraint:v19];
    v35 = v19;
    v23 = [NSArray arrayWithObjects:&v35 count:1];
    [NSLayoutConstraint activateConstraints:v23];

    v34.receiver = self;
    v34.super_class = PLBatteryUIBatteryBreakDownHeaderCell;
    [(PLBatteryUIBatteryBreakDownHeaderCell *)&v34 updateConstraints];
  }

  else
  {
    v24 = +[NSMutableArray array];
    breakdownTitleLabel4 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownTitleLabel];
    [breakdownTitleLabel4 sizeToFit];

    breakdownToggleButton4 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
    [breakdownToggleButton4 sizeToFit];

    v27 = _NSDictionaryOfVariableBindings(@"_breakdownTitleLabel, _breakdownToggleButton", self->_breakdownTitleLabel, self->_breakdownToggleButton, 0);
    v28 = _NSDictionaryOfVariableBindings(@"labelMargin", &off_173550, 0);
    v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-labelMargin-[_breakdownTitleLabel]-3-[_breakdownToggleButton]-labelMargin-|", 0, v28, v27);
    v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-5-[_breakdownTitleLabel]-5-|", 0, 0, v27);
    v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-5-[_breakdownToggleButton]-5-|", 0, 0, v27);
    v32 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_breakdownTitleLabel(==_breakdownToggleButton)]" options:0 metrics:0 views:v27];
    [(PLBatteryUIBatteryBreakDownHeaderCell *)self setWidthConstraint:v19];
    [v24 addObjectsFromArray:v29];
    [v24 addObjectsFromArray:v30];
    [v24 addObjectsFromArray:v31];
    [v24 addObjectsFromArray:v32];
    [v24 addObject:v19];
    [NSLayoutConstraint activateConstraints:v24];
    v33.receiver = self;
    v33.super_class = PLBatteryUIBatteryBreakDownHeaderCell;
    [(PLBatteryUIBatteryBreakDownHeaderCell *)&v33 updateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v21.receiver = self;
  v21.super_class = PLBatteryUIBatteryBreakDownHeaderCell;
  [(PLBatteryUIBatteryBreakDownHeaderCell *)&v21 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"PLBatteryUIGraphBatteryBreakdownShortStringKey"];
  bOOLValue = [v5 BOOLValue];

  v7 = [specifierCopy propertyForKey:@"PLBatteryUITimeUsageCellDelegateWrapperKey"];

  if (v7)
  {
    v8 = [specifierCopy propertyForKey:@"PLBatteryUITimeUsageCellDelegateWrapperKey"];
    buiViewController = [v8 buiViewController];
    [(PLBatteryUIBatteryBreakDownHeaderCell *)self setDelegate:buiViewController];
  }

  [(PLBatteryUIBatteryBreakDownHeaderCell *)self updateButton];
  v10 = [specifierCopy propertyForKey:@"PLBatteryUIGraphTappedTimeDurationStringKey"];
  v11 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  intValue = [v11 intValue];

  if (intValue)
  {
    if (v10)
    {
      v13 = +[BatteryUIResourceClass inDemoMode];
      if (bOOLValue)
      {
        if (v13)
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_29;
          }
        }

        v15 = @"USAGE_TIME_WITH_TIME";
      }

      else
      {
        if (v13)
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_29;
          }
        }

        v15 = @"USAGE_TIME_BY_APP_WITH_TIME";
      }

LABEL_28:
      v14 = BatteryUILocalization(v15);
LABEL_29:
      v19 = [NSString stringWithFormat:v14, v10];

      goto LABEL_30;
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = @"USAGE_TIME_BY_APP";
LABEL_23:
      v17 = BatteryUILocalization(v18);
    }
  }

  else
  {
    if (v10)
    {
      v16 = +[BatteryUIResourceClass inDemoMode];
      if (bOOLValue)
      {
        if (v16)
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_29;
          }
        }

        v15 = @"BATTERY_USAGE_WITH_TIME";
      }

      else
      {
        if (v16)
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_29;
          }
        }

        v15 = @"BATTERY_USAGE_BY_APP_WITH_TIME";
      }

      goto LABEL_28;
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = @"BATTERY_USAGE_BY_APP";
      goto LABEL_23;
    }
  }

  v19 = v17;
LABEL_30:
  breakdownTitleLabel = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownTitleLabel];
  [breakdownTitleLabel setText:v19];

  [(PLBatteryUIBatteryBreakDownHeaderCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUIBatteryBreakDownHeaderCell *)self setNeedsDisplay];
}

- (void)updateButton
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  intValue = [v4 intValue];
  v6 = +[BatteryUIResourceClass inDemoMode];
  if (intValue)
  {
    if (v6)
    {
      +[BatteryUIResourceClass containerPath];
      v7 = @"SHOW_BATTERY_USAGE";
      goto LABEL_6;
    }

    v7 = @"SHOW_BATTERY_USAGE";
  }

  else
  {
    if (v6)
    {
      +[BatteryUIResourceClass containerPath];
      v7 = @"SHOW_USAGE_TIME";
LABEL_6:
      v8 = _CFPreferencesCopyValueWithContainer();
      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v7 = @"SHOW_USAGE_TIME";
  }

LABEL_10:
  v8 = BatteryUILocalization(v7);
LABEL_11:
  v11 = v8;

  breakdownToggleButton = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
  [breakdownToggleButton setText:v11];

  breakdownToggleButton2 = [(PLBatteryUIBatteryBreakDownHeaderCell *)self breakdownToggleButton];
  [breakdownToggleButton2 sizeToFit];
}

- (void)buttonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didPushBatteryButton:self];
}

- (PLBatteryUITimeUsageCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end