@interface COSHeadphoneNotificationTableCell
- (COSHeadphoneNotificationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)accessibilityConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)accessibilityHorizontalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)accessibilityVerticalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)regularConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)regularHorizontalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (id)regularVerticalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation COSHeadphoneNotificationTableCell

- (COSHeadphoneNotificationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v30.receiver = self;
  v30.super_class = COSHeadphoneNotificationTableCell;
  v9 = [(COSHeadphoneNotificationTableCell *)&v30 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [(COSHeadphoneNotificationTableCell *)v9 titleLabel];
    [v11 setHidden:1];

    v12 = [(COSHeadphoneNotificationTableCell *)v10 valueLabel];
    [v12 setHidden:1];

    v13 = sub_10001F4DC();
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v13;

    v15 = sub_10001F5CC();
    countLabel = v10->_countLabel;
    v10->_countLabel = v15;

    v17 = [(COSHeadphoneNotificationTableCell *)v10 contentView];
    [v17 addSubview:v10->_titleLabel];
    [v17 addSubview:v10->_countLabel];
    v18 = [v8 propertyForKey:@"NotificationDataKey"];
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

      v27 = [(UIViewController *)v10->_hostingController view];
      notificationChart = v10->_notificationChart;
      v10->_notificationChart = v27;

      v29 = [(COSHeadphoneNotificationTableCell *)v10 backgroundColor];
      [(UIView *)v10->_notificationChart setBackgroundColor:v29];

      [v17 addSubview:v10->_notificationChart];
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
  v3 = [(COSHeadphoneNotificationTableCell *)self textLabel];
  v4 = [v3 text];
  v5 = [NSString stringWithFormat:@"%@", v4];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [(COSHeadphoneNotificationTableCell *)self valueLabel];
  v7 = [v6 text];
  v8 = [NSString stringWithFormat:@"%@", v7];
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

  v9 = [(COSHeadphoneNotificationTableCell *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

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

- (id)regularConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(COSHeadphoneNotificationTableCell *)self regularHorizontalConstraintsWithVariableBindings:v9 metrics:v8 hideChart:v5];
  v11 = [(COSHeadphoneNotificationTableCell *)self regularVerticalConstraintsWithVariableBindings:v9 metrics:v8 hideChart:v5];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)regularHorizontalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-(>=minimumLabelMargin)-[_countLabel]-|", 0, v8, v7);
  if (!a5)
  {
    v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-chartMargin-[_notificationChart]-chartMargin-|", 0, v8, v7);
    v11 = [v9 arrayByAddingObjectsFromArray:v10];

    v9 = v11;
  }

  return v9;
}

- (id)regularVerticalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(NSArray);
  v10 = objc_alloc_init(NSArray);
  v11 = objc_alloc_init(NSArray);
  if (v5)
  {
    v12 = @"V:|-[_titleLabel]-|";
  }

  else
  {
    v12 = @"V:|-[_titleLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|";
  }

  if (v5)
  {
    v13 = @"V:|-[_countLabel]-|";
  }

  else
  {
    v13 = @"V:|-[_countLabel]-(>=minimumLabelMargin)-[_notificationChart(>=minimumChartHeight)]-|";
  }

  v14 = [NSLayoutConstraint constraintsWithVisualFormat:v12 options:0 metrics:v7 views:v8];

  v15 = [NSLayoutConstraint constraintsWithVisualFormat:v13 options:0 metrics:v7 views:v8];

  v16 = [v14 arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (id)accessibilityConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(COSHeadphoneNotificationTableCell *)self accessibilityHorizontalConstraintsWithVariableBindings:v9 metrics:v8 hideChart:v5];
  v11 = [(COSHeadphoneNotificationTableCell *)self accessibilityVerticalConstraintsWithVariableBindings:v9 metrics:v8 hideChart:v5];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)accessibilityHorizontalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-|", 0, v8, v7);
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_countLabel]-|", 0, v8, v7);
  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  if (!a5)
  {
    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-chartMargin-[_notificationChart]-chartMargin-|", 0, v8, v7);
    v13 = [v11 arrayByAddingObjectsFromArray:v12];

    v11 = v13;
  }

  return v11;
}

- (id)accessibilityVerticalConstraintsWithVariableBindings:(id)a3 metrics:(id)a4 hideChart:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(NSArray);
  if (v5)
  {
    v10 = @"V:|-[_titleLabel]-[_countLabel]-|";
  }

  else
  {
    v10 = @"V:|-[_titleLabel]-[_countLabel]-[_notificationChart(>=minimumChartHeight)]-|";
  }

  v11 = [NSLayoutConstraint constraintsWithVisualFormat:v10 options:0 metrics:v7 views:v8];

  return v11;
}

@end