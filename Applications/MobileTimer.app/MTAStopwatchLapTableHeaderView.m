@interface MTAStopwatchLapTableHeaderView
- (MTAStopwatchLapTableHeaderView)initWithFrame:(CGRect)a3;
- (id)labelFont;
- (void)_updateForContentSizeChange;
- (void)setupConstraints;
@end

@implementation MTAStopwatchLapTableHeaderView

- (MTAStopwatchLapTableHeaderView)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = MTAStopwatchLapTableHeaderView;
  v3 = [(MTAStopwatchLapTableHeaderView *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor mtui_backgroundColor];
    [(MTAStopwatchLapTableHeaderView *)v3 setBackgroundColor:v4];

    v5 = [(MTAStopwatchLapTableHeaderView *)v3 labelFont];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setLapNumberLabel:v10];

    v11 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [v11 setFont:v5];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"STOPWATCH_LAP_HEADER" value:&stru_1000AEF10 table:0];
    v14 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [v14 setText:v13];

    v15 = +[UIColor mtui_secondaryTextColor];
    v16 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [v16 setTextColor:v15];

    v17 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:v17];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setSplitLabel:v18];

    v19 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [v19 setFont:v5];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"STOPWATCH_SPLIT_HEADER" value:&stru_1000AEF10 table:0];
    v22 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [v22 setText:v21];

    v23 = +[UIColor mtui_secondaryTextColor];
    v24 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [v24 setTextColor:v23];

    v25 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:v25];

    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setTotalLabel:v26];

    v27 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [v27 setFont:v5];

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"STOPWATCH_TOTAL_HEADER" value:&stru_1000AEF10 table:0];
    v30 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [v30 setText:v29];

    v31 = +[UIColor mtui_secondaryTextColor];
    v32 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [v32 setTextColor:v31];

    v33 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:v33];

    v34 = objc_opt_new();
    [(MTAStopwatchLapTableHeaderView *)v3 setBottomKeylineView:v34];

    v35 = +[UIColor mtui_cellSeparatorColor];
    v36 = [(MTAStopwatchLapTableHeaderView *)v3 bottomKeylineView];
    [v36 setBackgroundColor:v35];

    v37 = [(MTAStopwatchLapTableHeaderView *)v3 bottomKeylineView];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:v37];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v3 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MTAStopwatchLapTableHeaderView *)v3 setupConstraints];
  }

  return v3;
}

- (void)_updateForContentSizeChange
{
  v12 = [(MTAStopwatchLapTableHeaderView *)self labelFont];
  v3 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  [v3 setFont:v12];

  v4 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  [v4 setFont:v12];

  v5 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  [v5 setFont:v12];

  [v12 _scaledValueForValue:24.0];
  v7 = v6;
  v8 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineTopOffsetConstraint];
  [v8 setConstant:v7];

  [v12 _scaledValueForValue:15.0];
  v10 = v9;
  v11 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineBottomOffsetConstraint];
  [v11 setConstant:v10];
}

- (id)labelFont
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryAccessibilityExtraLarge) == NSOrderedDescending)
  {
    v4 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  else
  {
    v4 = 0;
  }

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v4];

  return v5;
}

- (void)setupConstraints
{
  v3 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v56 = objc_opt_new();
  v7 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  v8 = [v7 leadingAnchor];
  v9 = [(MTAStopwatchLapTableHeaderView *)self leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v56 addObject:v10];

  v11 = [(MTAStopwatchLapTableHeaderView *)self labelFont];
  v12 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  v13 = [v12 lastBaselineAnchor];
  v14 = [(MTAStopwatchLapTableHeaderView *)self topAnchor];
  [v11 _scaledValueForValue:24.0];
  v15 = [v13 constraintEqualToAnchor:v14 constant:?];
  [(MTAStopwatchLapTableHeaderView *)self setLapNumberLabelBaselineTopOffsetConstraint:v15];

  v16 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineTopOffsetConstraint];
  [v56 addObject:v16];

  v17 = [(MTAStopwatchLapTableHeaderView *)self bottomAnchor];
  v18 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  v19 = [v18 lastBaselineAnchor];
  [v11 _scaledValueForValue:15.0];
  v20 = [v17 constraintEqualToAnchor:v19 constant:?];
  [(MTAStopwatchLapTableHeaderView *)self setLapNumberLabelBaselineBottomOffsetConstraint:v20];

  v21 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineBottomOffsetConstraint];
  [v56 addObject:v21];

  v22 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  v23 = [v22 centerXAnchor];
  v24 = [(MTAStopwatchLapTableHeaderView *)self centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v56 addObject:v25];

  v26 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  v27 = [v26 lastBaselineAnchor];
  v28 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  v29 = [v28 lastBaselineAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v56 addObject:v30];

  v31 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  v32 = [v31 trailingAnchor];
  v33 = [(MTAStopwatchLapTableHeaderView *)self trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v56 addObject:v34];

  v35 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  v36 = [v35 lastBaselineAnchor];
  v37 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  v38 = [v37 lastBaselineAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v56 addObject:v39];

  v40 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  v41 = [v40 leadingAnchor];
  v42 = [(MTAStopwatchLapTableHeaderView *)self leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v56 addObject:v43];

  v44 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  v45 = [v44 trailingAnchor];
  v46 = [(MTAStopwatchLapTableHeaderView *)self trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v56 addObject:v47];

  v48 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  v49 = [v48 bottomAnchor];
  v50 = [(MTAStopwatchLapTableHeaderView *)self bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v56 addObject:v51];

  v52 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  v53 = [v52 heightAnchor];
  MTUIMainScreenScale();
  v55 = [v53 constraintEqualToConstant:1.0 / v54];
  [v56 addObject:v55];

  [NSLayoutConstraint activateConstraints:v56];
}

@end