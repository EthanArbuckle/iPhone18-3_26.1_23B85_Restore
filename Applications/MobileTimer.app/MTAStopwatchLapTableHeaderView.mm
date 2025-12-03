@interface MTAStopwatchLapTableHeaderView
- (MTAStopwatchLapTableHeaderView)initWithFrame:(CGRect)frame;
- (id)labelFont;
- (void)_updateForContentSizeChange;
- (void)setupConstraints;
@end

@implementation MTAStopwatchLapTableHeaderView

- (MTAStopwatchLapTableHeaderView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = MTAStopwatchLapTableHeaderView;
  v3 = [(MTAStopwatchLapTableHeaderView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor mtui_backgroundColor];
    [(MTAStopwatchLapTableHeaderView *)v3 setBackgroundColor:v4];

    labelFont = [(MTAStopwatchLapTableHeaderView *)v3 labelFont];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setLapNumberLabel:v10];

    lapNumberLabel = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [lapNumberLabel setFont:labelFont];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"STOPWATCH_LAP_HEADER" value:&stru_1000AEF10 table:0];
    lapNumberLabel2 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [lapNumberLabel2 setText:v13];

    v15 = +[UIColor mtui_secondaryTextColor];
    lapNumberLabel3 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [lapNumberLabel3 setTextColor:v15];

    lapNumberLabel4 = [(MTAStopwatchLapTableHeaderView *)v3 lapNumberLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:lapNumberLabel4];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setSplitLabel:v18];

    splitLabel = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [splitLabel setFont:labelFont];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"STOPWATCH_SPLIT_HEADER" value:&stru_1000AEF10 table:0];
    splitLabel2 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [splitLabel2 setText:v21];

    v23 = +[UIColor mtui_secondaryTextColor];
    splitLabel3 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [splitLabel3 setTextColor:v23];

    splitLabel4 = [(MTAStopwatchLapTableHeaderView *)v3 splitLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:splitLabel4];

    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapTableHeaderView *)v3 setTotalLabel:v26];

    totalLabel = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [totalLabel setFont:labelFont];

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"STOPWATCH_TOTAL_HEADER" value:&stru_1000AEF10 table:0];
    totalLabel2 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [totalLabel2 setText:v29];

    v31 = +[UIColor mtui_secondaryTextColor];
    totalLabel3 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [totalLabel3 setTextColor:v31];

    totalLabel4 = [(MTAStopwatchLapTableHeaderView *)v3 totalLabel];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:totalLabel4];

    v34 = objc_opt_new();
    [(MTAStopwatchLapTableHeaderView *)v3 setBottomKeylineView:v34];

    v35 = +[UIColor mtui_cellSeparatorColor];
    bottomKeylineView = [(MTAStopwatchLapTableHeaderView *)v3 bottomKeylineView];
    [bottomKeylineView setBackgroundColor:v35];

    bottomKeylineView2 = [(MTAStopwatchLapTableHeaderView *)v3 bottomKeylineView];
    [(MTAStopwatchLapTableHeaderView *)v3 addSubview:bottomKeylineView2];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v3 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MTAStopwatchLapTableHeaderView *)v3 setupConstraints];
  }

  return v3;
}

- (void)_updateForContentSizeChange
{
  labelFont = [(MTAStopwatchLapTableHeaderView *)self labelFont];
  lapNumberLabel = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  [lapNumberLabel setFont:labelFont];

  splitLabel = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  [splitLabel setFont:labelFont];

  totalLabel = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  [totalLabel setFont:labelFont];

  [labelFont _scaledValueForValue:24.0];
  v7 = v6;
  lapNumberLabelBaselineTopOffsetConstraint = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineTopOffsetConstraint];
  [lapNumberLabelBaselineTopOffsetConstraint setConstant:v7];

  [labelFont _scaledValueForValue:15.0];
  v10 = v9;
  lapNumberLabelBaselineBottomOffsetConstraint = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineBottomOffsetConstraint];
  [lapNumberLabelBaselineBottomOffsetConstraint setConstant:v10];
}

- (id)labelFont
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityExtraLarge) == NSOrderedDescending)
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
  lapNumberLabel = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  [lapNumberLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  splitLabel = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  [splitLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  totalLabel = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  [totalLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomKeylineView = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  [bottomKeylineView setTranslatesAutoresizingMaskIntoConstraints:0];

  v56 = objc_opt_new();
  lapNumberLabel2 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  leadingAnchor = [lapNumberLabel2 leadingAnchor];
  leadingAnchor2 = [(MTAStopwatchLapTableHeaderView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v56 addObject:v10];

  labelFont = [(MTAStopwatchLapTableHeaderView *)self labelFont];
  lapNumberLabel3 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  lastBaselineAnchor = [lapNumberLabel3 lastBaselineAnchor];
  topAnchor = [(MTAStopwatchLapTableHeaderView *)self topAnchor];
  [labelFont _scaledValueForValue:24.0];
  v15 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(MTAStopwatchLapTableHeaderView *)self setLapNumberLabelBaselineTopOffsetConstraint:v15];

  lapNumberLabelBaselineTopOffsetConstraint = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineTopOffsetConstraint];
  [v56 addObject:lapNumberLabelBaselineTopOffsetConstraint];

  bottomAnchor = [(MTAStopwatchLapTableHeaderView *)self bottomAnchor];
  lapNumberLabel4 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  lastBaselineAnchor2 = [lapNumberLabel4 lastBaselineAnchor];
  [labelFont _scaledValueForValue:15.0];
  v20 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [(MTAStopwatchLapTableHeaderView *)self setLapNumberLabelBaselineBottomOffsetConstraint:v20];

  lapNumberLabelBaselineBottomOffsetConstraint = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabelBaselineBottomOffsetConstraint];
  [v56 addObject:lapNumberLabelBaselineBottomOffsetConstraint];

  splitLabel2 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  centerXAnchor = [splitLabel2 centerXAnchor];
  centerXAnchor2 = [(MTAStopwatchLapTableHeaderView *)self centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v56 addObject:v25];

  splitLabel3 = [(MTAStopwatchLapTableHeaderView *)self splitLabel];
  lastBaselineAnchor3 = [splitLabel3 lastBaselineAnchor];
  lapNumberLabel5 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  lastBaselineAnchor4 = [lapNumberLabel5 lastBaselineAnchor];
  v30 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4];
  [v56 addObject:v30];

  totalLabel2 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  trailingAnchor = [totalLabel2 trailingAnchor];
  trailingAnchor2 = [(MTAStopwatchLapTableHeaderView *)self trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v56 addObject:v34];

  totalLabel3 = [(MTAStopwatchLapTableHeaderView *)self totalLabel];
  lastBaselineAnchor5 = [totalLabel3 lastBaselineAnchor];
  lapNumberLabel6 = [(MTAStopwatchLapTableHeaderView *)self lapNumberLabel];
  lastBaselineAnchor6 = [lapNumberLabel6 lastBaselineAnchor];
  v39 = [lastBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor6];
  [v56 addObject:v39];

  bottomKeylineView2 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  leadingAnchor3 = [bottomKeylineView2 leadingAnchor];
  leadingAnchor4 = [(MTAStopwatchLapTableHeaderView *)self leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v56 addObject:v43];

  bottomKeylineView3 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  trailingAnchor3 = [bottomKeylineView3 trailingAnchor];
  trailingAnchor4 = [(MTAStopwatchLapTableHeaderView *)self trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v56 addObject:v47];

  bottomKeylineView4 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  bottomAnchor2 = [bottomKeylineView4 bottomAnchor];
  bottomAnchor3 = [(MTAStopwatchLapTableHeaderView *)self bottomAnchor];
  v51 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v56 addObject:v51];

  bottomKeylineView5 = [(MTAStopwatchLapTableHeaderView *)self bottomKeylineView];
  heightAnchor = [bottomKeylineView5 heightAnchor];
  MTUIMainScreenScale();
  v55 = [heightAnchor constraintEqualToConstant:1.0 / v54];
  [v56 addObject:v55];

  [NSLayoutConstraint activateConstraints:v56];
}

@end