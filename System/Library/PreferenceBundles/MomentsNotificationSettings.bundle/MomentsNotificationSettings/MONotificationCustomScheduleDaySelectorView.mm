@interface MONotificationCustomScheduleDaySelectorView
+ (id)notificationSettingsBundle;
- (MONotificationCustomScheduleDaySelectorView)initWithFrame:(CGRect)a3;
- (MONotificationCustomScheduleDaySelectorViewDelegate)delegate;
- (id)_localizedDayOrder;
- (id)getSelectedDays;
- (void)setSelectedDays:(id)a3;
- (void)setUpStackView;
- (void)updateDaySelectorDelegate;
@end

@implementation MONotificationCustomScheduleDaySelectorView

- (MONotificationCustomScheduleDaySelectorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MONotificationCustomScheduleDaySelectorView;
  v3 = [(MONotificationCustomScheduleDaySelectorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(MONotificationCustomScheduleDaySelectorView *)v3 setDaysStackView:v4];

    [(MONotificationCustomScheduleDaySelectorView *)v3 setUpStackView];
  }

  return v3;
}

+ (id)notificationSettingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)setUpStackView
{
  v3 = +[NSCalendar autoupdatingCurrentCalendar];
  v4 = [(MONotificationCustomScheduleDaySelectorView *)self daysStackView];
  [v4 setAxis:0];

  v5 = [(MONotificationCustomScheduleDaySelectorView *)self daysStackView];
  [v5 setSpacing:5.0];

  v6 = [(MONotificationCustomScheduleDaySelectorView *)self daysStackView];
  [v6 setDistribution:3];

  v7 = [(MONotificationCustomScheduleDaySelectorView *)self daysStackView];
  [v7 setAlignment:3];

  v8 = [(MONotificationCustomScheduleDaySelectorView *)self daysStackView];
  [v8 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];

  v52 = +[MONotificationCustomScheduleDaySelectorView notificationSettingsBundle];
  v51 = [v3 veryShortWeekdaySymbols];
  v46 = v3;
  v50 = [v3 weekdaySymbols];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = self;
  obj = [(MONotificationCustomScheduleDaySelectorView *)self _localizedDayOrder];
  v54 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v54)
  {
    v49 = *v60;
    v48 = UIAccessibilityTraitToggleButton;
    do
    {
      v9 = 0;
      do
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v59 + 1) + 8 * v9) intValue] - 1;
        v11 = objc_opt_new();
        [v11 setTag:v10];
        [v11 setChangesSelectionAsPrimaryAction:1];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = __61__MONotificationCustomScheduleDaySelectorView_setUpStackView__block_invoke;
        v55[3] = &unk_C360;
        v56 = v51;
        v58 = v10;
        v57 = v52;
        [v11 setConfigurationUpdateHandler:v55];
        [v11 setAccessibilityTraits:v48];
        v12 = [v50 objectAtIndexedSubscript:v10];
        [v11 setAccessibilityLabel:v12];

        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        v13 = [v11 widthAnchor];
        v14 = [v13 constraintEqualToConstant:36.0];

        LODWORD(v15) = 1132068864;
        [v14 setPriority:v15];
        v16 = [v11 heightAnchor];
        v17 = [v16 constraintEqualToConstant:36.0];

        LODWORD(v18) = 1144750080;
        [v14 setPriority:v18];
        v19 = [v11 widthAnchor];
        v20 = [v19 constraintLessThanOrEqualToConstant:36.0];

        LODWORD(v21) = 1148846080;
        [v14 setPriority:v21];
        v22 = [v11 heightAnchor];
        v23 = [v22 constraintLessThanOrEqualToConstant:36.0];

        LODWORD(v24) = 1148846080;
        [v14 setPriority:v24];
        v25 = [v11 heightAnchor];
        v26 = [v11 widthAnchor];
        v27 = [v25 constraintEqualToAnchor:v26 multiplier:1.0];

        v64[0] = v14;
        v64[1] = v17;
        v64[2] = v20;
        v64[3] = v23;
        v64[4] = v27;
        v28 = [NSArray arrayWithObjects:v64 count:5];
        [NSLayoutConstraint activateConstraints:v28];

        [(UIStackView *)v53->_daysStackView addArrangedSubview:v11];
        [v11 addTarget:v53 action:"updateDaySelectorDelegate" forControlEvents:0x2000];

        v9 = v9 + 1;
      }

      while (v54 != v9);
      v54 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v54);
  }

  [(MONotificationCustomScheduleDaySelectorView *)v53 addSubview:v53->_daysStackView];
  [(UIStackView *)v53->_daysStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [(UIStackView *)v53->_daysStackView leadingAnchor];
  v30 = [(UIStackView *)v53->_daysStackView superview];
  v31 = [v30 leadingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];

  [v32 setConstant:24.0];
  v33 = [(UIStackView *)v53->_daysStackView trailingAnchor];
  v34 = [(UIStackView *)v53->_daysStackView superview];
  v35 = [v34 trailingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];

  [v36 setConstant:-24.0];
  v37 = [(UIStackView *)v53->_daysStackView topAnchor];
  v38 = [(UIStackView *)v53->_daysStackView superview];
  v39 = [v38 topAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  [v40 setConstant:4.0];
  v41 = [(UIStackView *)v53->_daysStackView bottomAnchor];
  v42 = [(UIStackView *)v53->_daysStackView superview];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];

  [v44 setConstant:-4.0];
  v63[0] = v32;
  v63[1] = v36;
  v63[2] = v40;
  v63[3] = v44;
  v45 = [NSArray arrayWithObjects:v63 count:4];
  [NSLayoutConstraint activateConstraints:v45];
}

void __61__MONotificationCustomScheduleDaySelectorView_setUpStackView__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 isSelected])
  {
    +[UIButtonConfiguration tintedButtonConfiguration];
  }

  else
  {
    +[UIButtonConfiguration grayButtonConfiguration];
  }
  v3 = ;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  [v3 setTitle:v4];

  if ([v11 isSelected])
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor tertiarySystemFillColor];
  }
  v5 = ;
  [v3 setBaseBackgroundColor:v5];

  if ([v11 isSelected])
  {
    [v3 setBaseForegroundColor:0];
  }

  else
  {
    v6 = +[UIColor secondaryLabelColor];
    [v3 setBaseForegroundColor:v6];
  }

  [v3 setContentInsets:{2.0, 2.0, 2.0, 2.0}];
  [v3 setCornerStyle:4];
  [v11 setConfiguration:v3];
  v7 = [v11 isSelected];
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = @"on";
  }

  else
  {
    v9 = @"off";
  }

  v10 = [*(a1 + 40) localizedStringForKey:v9 value:&stru_C5D8 table:0];
  [v11 setAccessibilityValue:v10];
}

- (void)setSelectedDays:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIStackView *)self->_daysStackView arrangedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10)
        {
          v11 = v10;
          v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 tag] + 1);
          [v11 setSelected:{objc_msgSend(v4, "containsObject:", v12)}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)getSelectedDays
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UIStackView *)self->_daysStackView arrangedSubviews];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = v9;
        if (v9 && [v9 isSelected])
        {
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 tag] + 1);
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateDaySelectorDelegate
{
  v5 = [(MONotificationCustomScheduleDaySelectorView *)self delegate];
  v3 = [(MONotificationCustomScheduleDaySelectorView *)self getSelectedDays];
  v4 = [NSSet setWithArray:v3];
  [v5 scheduleDaySelectorView:self didChangeDays:v4];
}

- (id)_localizedDayOrder
{
  v2 = [NSMutableArray arrayWithCapacity:7];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 firstWeekday];

  for (i = 8; i > 1; --i)
  {
    v6 = [NSNumber numberWithUnsignedInteger:v4];
    [v2 addObject:v6];

    if ((v4 + 1) <= 7)
    {
      ++v4;
    }

    else
    {
      v4 = (&dword_0 + 1);
    }
  }

  v7 = [v2 copy];

  return v7;
}

- (MONotificationCustomScheduleDaySelectorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end