@interface COSHeadphoneNotificationTableCell
- (COSHeadphoneNotificationTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)accessibilityHorizontalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)accessibilityVerticalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)regularHorizontalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (id)regularVerticalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation COSHeadphoneNotificationTableCell

- (COSHeadphoneNotificationTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v30.receiver = self;
  v30.super_class = COSHeadphoneNotificationTableCell;
  v9 = [(COSHeadphoneNotificationTableCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    titleLabel = [(COSHeadphoneNotificationTableCell *)v9 titleLabel];
    [titleLabel setHidden:1];

    valueLabel = [(COSHeadphoneNotificationTableCell *)v10 valueLabel];
    [valueLabel setHidden:1];

    v13 = sub_10001F4DC();
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v15 = sub_10001F5CC();
    countLabel = v10->_countLabel;
    v10->_countLabel = v15;

    contentView = [(COSHeadphoneNotificationTableCell *)v10 contentView];
    [contentView addSubview:v10->_titleLabel];
    [contentView addSubview:v10->_countLabel];
    v18 = [specifierCopy propertyForKey:@"NotificationDataKey"];
    notificationData = v10->_notificationData;
    v10->_notificationData = v18;

    v20 = v10->_notificationData;
    if (v20 && -[NSArray count](v20, "count") && (-[NSArray valueForKeyPath:](v10->_notificationData, "valueForKeyPath:", @"@sum.count"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isEqual:&off_100281960], v21, !v22))
    {
      v10->_shouldHideChart = 0;
      v24 = +[_TtC6Bridge31HeadphoneAudioNotificationModel shared];
      [v24 setData:v10->_notificationData];

      v25 = +[_TtC6Bridge33HeadphoneNotificationChartFactory create];
      hostingController = v10->_hostingController;
      v10->_hostingController = v25;

      view = [(UIViewController *)v10->_hostingController view];
      notificationChart = v10->_notificationChart;
      v10->_notificationChart = view;

      backgroundColor = [(COSHeadphoneNotificationTableCell *)v10 backgroundColor];
      [(UIView *)v10->_notificationChart setBackgroundColor:backgroundColor];

      [contentView addSubview:v10->_notificationChart];
      [(UIView *)v10->_notificationChart setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v10->_shouldHideChart = 1;
    }

    [(COSHeadphoneNotificationTableCell *)v10 layoutSubviews];
  }

  return v10;
}

- (void)layoutSubviews
{
  textLabel = [(COSHeadphoneNotificationTableCell *)self textLabel];
  text = [textLabel text];
  v5 = [NSString stringWithFormat:@"%@", text];
  [(UILabel *)self->_titleLabel setText:v5];

  valueLabel = [(COSHeadphoneNotificationTableCell *)self valueLabel];
  text2 = [valueLabel text];
  v8 = [NSString stringWithFormat:@"%@", text2];
  [(UILabel *)self->_countLabel setText:v8];

  v9.receiver = self;
  v9.super_class = COSHeadphoneNotificationTableCell;
  [(COSHeadphoneNotificationTableCell *)&v9 layoutSubviews];
  [(COSHeadphoneNotificationTableCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  v3 = objc_alloc_init(NSDictionary);
  v4 = objc_alloc_init(NSDictionary);
  if (self->_shouldHideChart)
  {
    v5 = _NSDictionaryOfVariableBindings(@"_titleLabel, _countLabel", self->_titleLabel, self->_countLabel, 0);

    v6 = _NSDictionaryOfVariableBindings(@"minimumLabelMargin", &off_100281E70, 0);
  }

  else
  {
    [(UILabel *)self->_titleLabel textSize];
    v8 = [NSNumber numberWithDouble:v7 * 5.0];
    v5 = _NSDictionaryOfVariableBindings(@"_titleLabel, _countLabel, _notificationChart", self->_titleLabel, self->_countLabel, self->_notificationChart, 0);

    v6 = _NSDictionaryOfVariableBindings(@"minimumLabelMargin, chartMargin, minimumChartHeight", &off_100281E70, &off_100281E80, v8, 0);

    v4 = v8;
  }

  traitCollection = [(COSHeadphoneNotificationTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  shouldHideChart = self->_shouldHideChart;
  if (IsAccessibilityCategory)
  {
    [(COSHeadphoneNotificationTableCell *)self accessibilityConstraintsWithVariableBindings:v5 metrics:v6 hideChart:shouldHideChart];
  }

  else
  {
    [(COSHeadphoneNotificationTableCell *)self regularConstraintsWithVariableBindings:v5 metrics:v6 hideChart:shouldHideChart];
  }
  v13 = ;
  constraints = self->_constraints;
  self->_constraints = v13;

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v15.receiver = self;
  v15.super_class = COSHeadphoneNotificationTableCell;
  [(COSHeadphoneNotificationTableCell *)&v15 updateConstraints];
}

- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v10 = [(COSHeadphoneNotificationTableCell *)self regularHorizontalConstraintsWithVariableBindings:bindingsCopy metrics:metricsCopy hideChart:chartCopy];
  v11 = [(COSHeadphoneNotificationTableCell *)self regularVerticalConstraintsWithVariableBindings:bindingsCopy metrics:metricsCopy hideChart:chartCopy];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)regularHorizontalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  bindingsCopy = bindings;
  metricsCopy = metrics;
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-(>=minimumLabelMargin)-[_countLabel]-|", 0, metricsCopy, bindingsCopy);
  if (!chart)
  {
    v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-chartMargin-[_notificationChart]-chartMargin-|", 0, metricsCopy, bindingsCopy);
    v11 = [v9 arrayByAddingObjectsFromArray:v10];

    v9 = v11;
  }

  return v9;
}

- (id)regularVerticalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v9 = objc_alloc_init(NSArray);
  v10 = objc_alloc_init(NSArray);
  v11 = objc_alloc_init(NSArray);
  if (chartCopy)
  {
    v12 = @"V:|-[_titleLabel]-|";
  }

  else
  {
    v12 = @"V:|-[_titleLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|";
  }

  if (chartCopy)
  {
    v13 = @"V:|-[_countLabel]-|";
  }

  else
  {
    v13 = @"V:|-[_countLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|";
  }

  v14 = [NSLayoutConstraint constraintsWithVisualFormat:v12 options:0 metrics:metricsCopy views:bindingsCopy];

  v15 = [NSLayoutConstraint constraintsWithVisualFormat:v13 options:0 metrics:metricsCopy views:bindingsCopy];

  v16 = [v14 arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v10 = [(COSHeadphoneNotificationTableCell *)self accessibilityHorizontalConstraintsWithVariableBindings:bindingsCopy metrics:metricsCopy hideChart:chartCopy];
  v11 = [(COSHeadphoneNotificationTableCell *)self accessibilityVerticalConstraintsWithVariableBindings:bindingsCopy metrics:metricsCopy hideChart:chartCopy];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)accessibilityHorizontalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  bindingsCopy = bindings;
  metricsCopy = metrics;
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-|", 0, metricsCopy, bindingsCopy);
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_countLabel]-|", 0, metricsCopy, bindingsCopy);
  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  if (!chart)
  {
    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-chartMargin-[_notificationChart]-chartMargin-|", 0, metricsCopy, bindingsCopy);
    v13 = [v11 arrayByAddingObjectsFromArray:v12];

    v11 = v13;
  }

  return v11;
}

- (id)accessibilityVerticalConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics hideChart:(BOOL)chart
{
  chartCopy = chart;
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v9 = objc_alloc_init(NSArray);
  if (chartCopy)
  {
    v10 = @"V:|-[_titleLabel]-[_countLabel]-|";
  }

  else
  {
    v10 = @"V:|-[_titleLabel]-[_countLabel]-[_notificationChart(>=minimumChartHeight)]-|";
  }

  v11 = [NSLayoutConstraint constraintsWithVisualFormat:v10 options:0 metrics:metricsCopy views:bindingsCopy];

  return v11;
}

@end