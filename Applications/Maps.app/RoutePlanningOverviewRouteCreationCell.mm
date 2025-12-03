@interface RoutePlanningOverviewRouteCreationCell
+ (double)heightForWidth:(double)width traitCollection:(id)collection;
- (RoutePlanningOverviewRouteCreationCell)initWithCoder:(id)coder;
- (RoutePlanningOverviewRouteCreationCell)initWithFrame:(CGRect)frame;
- (RoutePlanningOverviewRouteCreationCellDelegate)delegate;
- (void)_createSubviews;
- (void)_pressedCell;
- (void)customInit;
@end

@implementation RoutePlanningOverviewRouteCreationCell

- (RoutePlanningOverviewRouteCreationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_pressedCell
{
  delegate = [(RoutePlanningOverviewRouteCreationCell *)self delegate];
  [delegate didTapRouteCreationButtonForCell:self];
}

- (void)_createSubviews
{
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAccessibilityIdentifier:@"CreateRouteCellView"];
  v4 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 _setContinuousCornerRadius:12.0];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_pressedCell"];
  [v3 addGestureRecognizer:v5];

  contentView = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  [contentView addSubview:v3];

  v7 = objc_opt_new();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v7];
  v8 = objc_opt_new();
  [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v8 setAccessibilityIdentifier:@"CreateRouteTitle"];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Create Route [Route Planning]" value:@"localized string not found" table:0];
  [(UILabel *)v8 setText:v10];

  v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightSemibold];
  [(UILabel *)v8 setFont:v11];

  [(UILabel *)v8 setNumberOfLines:0];
  LODWORD(v12) = 1148846080;
  [(UILabel *)v8 setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [(UILabel *)v8 setContentCompressionResistancePriority:1 forAxis:v13];
  [v7 addSubview:v8];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;
  v91 = v8;

  v15 = objc_opt_new();
  [(UILabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v15 setAccessibilityIdentifier:@"CreateRouteSubtitle"];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Create Route Detail [Route Planning]" value:@"localized string not found" table:0];
  [(UILabel *)v15 setText:v17];

  [(UILabel *)v15 setNumberOfLines:0];
  v18 = +[UIColor secondaryLabelColor];
  [(UILabel *)v15 setTextColor:v18];

  v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v15 setFont:v19];

  LODWORD(v20) = 1148846080;
  [(UILabel *)v15 setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [(UILabel *)v15 setContentCompressionResistancePriority:1 forAxis:v21];
  [v7 addSubview:v15];
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v15;
  v23 = v15;

  v24 = objc_opt_new();
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = +[UIColor secondarySystemFillColor];
  [v24 setBackgroundColor:v25];

  layer = [v24 layer];
  [layer setCornerRadius:10.0];

  [v24 setClipsToBounds:1];
  [v3 addSubview:v24];
  v27 = objc_opt_new();
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setAccessibilityIdentifier:@"CreateRouteIcon"];
  v28 = v27;
  [v27 setContentMode:4];
  v29 = [UIFont systemFontOfSize:28.0 weight:UIFontWeightSemibold];
  v110 = [UIImageSymbolConfiguration configurationWithFont:v29];

  v30 = [UIImage _systemImageNamed:@"location.bottomleft.forward.to.point.topright.scurvepath.dashed" withConfiguration:v110];
  [v28 setImage:v30];

  [v24 addSubview:v28];
  if (sub_10000FA08(self) == 5)
  {
    v31 = 10.0;
  }

  else
  {
    v31 = 16.0;
  }

  heightAnchor = [(RoutePlanningOverviewRouteCreationCell *)self heightAnchor];
  heightAnchor2 = [v7 heightAnchor];
  v107 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:52.0];
  v111[0] = v107;
  contentView2 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  heightAnchor3 = [contentView2 heightAnchor];
  heightAnchor4 = [v7 heightAnchor];
  v103 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 constant:52.0];
  v111[1] = v103;
  leadingAnchor = [v3 leadingAnchor];
  contentView3 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v99 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v31];
  v111[2] = v99;
  trailingAnchor = [v3 trailingAnchor];
  contentView4 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v31];
  v111[3] = v95;
  topAnchor = [v3 topAnchor];
  contentView5 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v90 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v111[4] = v90;
  bottomAnchor = [v3 bottomAnchor];
  contentView6 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v85 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v111[5] = v85;
  trailingAnchor3 = [v24 trailingAnchor];
  trailingAnchor4 = [v3 trailingAnchor];
  v81 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v111[6] = v81;
  centerYAnchor = [v24 centerYAnchor];
  centerYAnchor2 = [v3 centerYAnchor];
  v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v111[7] = v77;
  widthAnchor = [v24 widthAnchor];
  v75 = [widthAnchor constraintEqualToConstant:64.0];
  v111[8] = v75;
  heightAnchor5 = [v24 heightAnchor];
  v73 = [heightAnchor5 constraintEqualToConstant:64.0];
  v111[9] = v73;
  v87 = v28;
  centerXAnchor = [v28 centerXAnchor];
  centerXAnchor2 = [v24 centerXAnchor];
  v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v111[10] = v70;
  centerYAnchor3 = [v28 centerYAnchor];
  v83 = v24;
  centerYAnchor4 = [v24 centerYAnchor];
  v67 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v111[11] = v67;
  leadingAnchor3 = [v7 leadingAnchor];
  v80 = v3;
  leadingAnchor4 = [v3 leadingAnchor];
  v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:18.0];
  v111[12] = v63;
  trailingAnchor5 = [v7 trailingAnchor];
  leadingAnchor5 = [v24 leadingAnchor];
  v60 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5 constant:-16.0];
  v111[13] = v60;
  centerYAnchor5 = [v7 centerYAnchor];
  centerYAnchor6 = [v3 centerYAnchor];
  v57 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v111[14] = v57;
  heightAnchor6 = [v7 heightAnchor];
  v55 = [heightAnchor6 constraintGreaterThanOrEqualToConstant:68.0];
  v111[15] = v55;
  leadingAnchor6 = [(UILabel *)v91 leadingAnchor];
  leadingAnchor7 = [v7 leadingAnchor];
  v52 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v111[16] = v52;
  trailingAnchor6 = [(UILabel *)v91 trailingAnchor];
  trailingAnchor7 = [v7 trailingAnchor];
  v49 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v111[17] = v49;
  topAnchor3 = [(UILabel *)v91 topAnchor];
  topAnchor4 = [v7 topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v111[18] = v46;
  v32 = v23;
  leadingAnchor8 = [(UILabel *)v23 leadingAnchor];
  leadingAnchor9 = [v7 leadingAnchor];
  v43 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v111[19] = v43;
  trailingAnchor8 = [(UILabel *)v23 trailingAnchor];
  v66 = v7;
  trailingAnchor9 = [v7 trailingAnchor];
  v33 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v111[20] = v33;
  topAnchor5 = [(UILabel *)v23 topAnchor];
  bottomAnchor3 = [(UILabel *)v91 bottomAnchor];
  v36 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
  v111[21] = v36;
  bottomAnchor4 = [(UILabel *)v23 bottomAnchor];
  bottomAnchor5 = [v7 bottomAnchor];
  v39 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v111[22] = v39;
  v40 = [NSArray arrayWithObjects:v111 count:23];
  [NSLayoutConstraint activateConstraints:v40];
}

- (void)customInit
{
  v3 = +[UIColor clearColor];
  [(RoutePlanningOverviewRouteCreationCell *)self setBackgroundColor:v3];

  v4 = +[UIColor clearColor];
  contentView = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  [contentView setBackgroundColor:v4];

  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1008F4F2C;
  v11 = &unk_1016618D8;
  objc_copyWeak(&v12, &location);
  [(RoutePlanningOverviewRouteCreationCell *)self _setBackgroundViewConfigurationProvider:&v8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(RoutePlanningOverviewRouteCreationCell *)self setAccessibilityIdentifier:v7, v8, v9, v10, v11];

  [(RoutePlanningOverviewRouteCreationCell *)self setSelectionStyle:1];
  [(RoutePlanningOverviewRouteCreationCell *)self _createSubviews];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (RoutePlanningOverviewRouteCreationCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewRouteCreationCell;
  v3 = [(RoutePlanningOverviewRouteCreationCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningOverviewRouteCreationCell *)v3 customInit];
  }

  return v4;
}

- (RoutePlanningOverviewRouteCreationCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewRouteCreationCell;
  v3 = [(RoutePlanningOverviewRouteCreationCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningOverviewRouteCreationCell *)v3 customInit];
  }

  return v4;
}

+ (double)heightForWidth:(double)width traitCollection:(id)collection
{
  v4 = width + -134.0;
  if (width + -134.0 <= 0.0)
  {
    return 68.0;
  }

  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  if (!qword_10195DD00 || UIContentSizeCategoryCompareToCategory(qword_10195DD08, preferredContentSizeCategory))
  {
    v6 = [[RoutePlanningOverviewRouteCreationCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = qword_10195DD00;
    qword_10195DD00 = v6;

    objc_storeStrong(&qword_10195DD08, preferredContentSizeCategory);
  }

  [*(qword_10195DD00 + 8) sizeThatFits:{v4, 1.79769313e308}];
  v9 = v8;
  [*(qword_10195DD00 + 16) sizeThatFits:{v4, 1.79769313e308}];
  v11 = fmax(v9 + 54.0 + v10, 68.0);

  return v11;
}

@end