@interface UIDatePicker
+ (id)as_newConfiguredPicker;
- (double)as_preferredHeight;
- (void)as_installConstraints;
@end

@implementation UIDatePicker

+ (id)as_newConfiguredPicker
{
  v2 = objc_alloc_init(UIDatePicker);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[NSDate distantFuture];
  [v2 setMaximumDate:v3];

  v4 = +[NSDate date];
  [v2 setMinimumDate:v4];

  [v2 setDatePickerMode:2];
  v5 = +[NSTimeZone systemTimeZone];
  [v2 setTimeZone:v5];

  [v2 setMinuteInterval:30];
  [v2 setPreferredDatePickerStyle:3];

  return v2;
}

- (void)as_installConstraints
{
  superview = [(UIDatePicker *)self superview];
  topAnchor = [superview topAnchor];

  superview2 = [(UIDatePicker *)self superview];
  layoutMarginsGuide = [superview2 layoutMarginsGuide];

  if (layoutMarginsGuide && topAnchor)
  {
    widthAnchor = [(UIDatePicker *)self widthAnchor];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:16.0];

    LODWORD(v10) = 1144750080;
    v24 = v9;
    [v9 setPriority:v10];
    widthAnchor3 = [(UIDatePicker *)self widthAnchor];
    widthAnchor4 = [layoutMarginsGuide widthAnchor];
    v13 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:16.0];

    LODWORD(v14) = 1148846080;
    [v13 setPriority:v14];
    widthAnchor5 = [(UIDatePicker *)self widthAnchor];
    v16 = [widthAnchor5 constraintLessThanOrEqualToConstant:390.0];

    LODWORD(v17) = 1148846080;
    [v16 setPriority:v17];
    v25[0] = v9;
    v25[1] = v13;
    v25[2] = v16;
    topAnchor2 = [(UIDatePicker *)self topAnchor];
    v19 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:4.0];
    v25[3] = v19;
    centerXAnchor = [(UIDatePicker *)self centerXAnchor];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[4] = v22;
    v23 = [NSArray arrayWithObjects:v25 count:5];
    [NSLayoutConstraint activateConstraints:v23];
  }
}

- (double)as_preferredHeight
{
  superview = [(UIDatePicker *)self superview];
  layoutMarginsGuide = [superview layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v5 = CGRectGetWidth(v10) + 16.0;

  LODWORD(v6) = 1144750080;
  LODWORD(v7) = 1112014848;
  [(UIDatePicker *)self systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:v6, v7];
  return v8 + 8.0;
}

@end