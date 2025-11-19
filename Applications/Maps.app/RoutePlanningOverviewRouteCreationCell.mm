@interface RoutePlanningOverviewRouteCreationCell
+ (double)heightForWidth:(double)a3 traitCollection:(id)a4;
- (RoutePlanningOverviewRouteCreationCell)initWithCoder:(id)a3;
- (RoutePlanningOverviewRouteCreationCell)initWithFrame:(CGRect)a3;
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
  v3 = [(RoutePlanningOverviewRouteCreationCell *)self delegate];
  [v3 didTapRouteCreationButtonForCell:self];
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

  v6 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  [v6 addSubview:v3];

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

  v26 = [v24 layer];
  [v26 setCornerRadius:10.0];

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

  v109 = [(RoutePlanningOverviewRouteCreationCell *)self heightAnchor];
  v108 = [v7 heightAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:52.0];
  v111[0] = v107;
  v106 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  v105 = [v106 heightAnchor];
  v104 = [v7 heightAnchor];
  v103 = [v105 constraintEqualToAnchor:v104 constant:52.0];
  v111[1] = v103;
  v101 = [v3 leadingAnchor];
  v102 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  v100 = [v102 leadingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100 constant:v31];
  v111[2] = v99;
  v97 = [v3 trailingAnchor];
  v98 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  v96 = [v98 trailingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96 constant:-v31];
  v111[3] = v95;
  v93 = [v3 topAnchor];
  v94 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  v92 = [v94 topAnchor];
  v90 = [v93 constraintEqualToAnchor:v92];
  v111[4] = v90;
  v88 = [v3 bottomAnchor];
  v89 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  v86 = [v89 bottomAnchor];
  v85 = [v88 constraintEqualToAnchor:v86];
  v111[5] = v85;
  v84 = [v24 trailingAnchor];
  v82 = [v3 trailingAnchor];
  v81 = [v84 constraintEqualToAnchor:v82 constant:-16.0];
  v111[6] = v81;
  v79 = [v24 centerYAnchor];
  v78 = [v3 centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v111[7] = v77;
  v76 = [v24 widthAnchor];
  v75 = [v76 constraintEqualToConstant:64.0];
  v111[8] = v75;
  v74 = [v24 heightAnchor];
  v73 = [v74 constraintEqualToConstant:64.0];
  v111[9] = v73;
  v87 = v28;
  v72 = [v28 centerXAnchor];
  v71 = [v24 centerXAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v111[10] = v70;
  v69 = [v28 centerYAnchor];
  v83 = v24;
  v68 = [v24 centerYAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v111[11] = v67;
  v65 = [v7 leadingAnchor];
  v80 = v3;
  v64 = [v3 leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:18.0];
  v111[12] = v63;
  v62 = [v7 trailingAnchor];
  v61 = [v24 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:-16.0];
  v111[13] = v60;
  v59 = [v7 centerYAnchor];
  v58 = [v3 centerYAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v111[14] = v57;
  v56 = [v7 heightAnchor];
  v55 = [v56 constraintGreaterThanOrEqualToConstant:68.0];
  v111[15] = v55;
  v54 = [(UILabel *)v91 leadingAnchor];
  v53 = [v7 leadingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v111[16] = v52;
  v51 = [(UILabel *)v91 trailingAnchor];
  v50 = [v7 trailingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v111[17] = v49;
  v48 = [(UILabel *)v91 topAnchor];
  v47 = [v7 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v111[18] = v46;
  v32 = v23;
  v45 = [(UILabel *)v23 leadingAnchor];
  v44 = [v7 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v111[19] = v43;
  v42 = [(UILabel *)v23 trailingAnchor];
  v66 = v7;
  v41 = [v7 trailingAnchor];
  v33 = [v42 constraintEqualToAnchor:v41];
  v111[20] = v33;
  v34 = [(UILabel *)v23 topAnchor];
  v35 = [(UILabel *)v91 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:2.0];
  v111[21] = v36;
  v37 = [(UILabel *)v23 bottomAnchor];
  v38 = [v7 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v111[22] = v39;
  v40 = [NSArray arrayWithObjects:v111 count:23];
  [NSLayoutConstraint activateConstraints:v40];
}

- (void)customInit
{
  v3 = +[UIColor clearColor];
  [(RoutePlanningOverviewRouteCreationCell *)self setBackgroundColor:v3];

  v4 = +[UIColor clearColor];
  v5 = [(RoutePlanningOverviewRouteCreationCell *)self contentView];
  [v5 setBackgroundColor:v4];

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

- (RoutePlanningOverviewRouteCreationCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewRouteCreationCell;
  v3 = [(RoutePlanningOverviewRouteCreationCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningOverviewRouteCreationCell *)v3 customInit];
  }

  return v4;
}

- (RoutePlanningOverviewRouteCreationCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewRouteCreationCell;
  v3 = [(RoutePlanningOverviewRouteCreationCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningOverviewRouteCreationCell *)v3 customInit];
  }

  return v4;
}

+ (double)heightForWidth:(double)a3 traitCollection:(id)a4
{
  v4 = a3 + -134.0;
  if (a3 + -134.0 <= 0.0)
  {
    return 68.0;
  }

  v5 = [a4 preferredContentSizeCategory];
  if (!qword_10195DD00 || UIContentSizeCategoryCompareToCategory(qword_10195DD08, v5))
  {
    v6 = [[RoutePlanningOverviewRouteCreationCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = qword_10195DD00;
    qword_10195DD00 = v6;

    objc_storeStrong(&qword_10195DD08, v5);
  }

  [*(qword_10195DD00 + 8) sizeThatFits:{v4, 1.79769313e308}];
  v9 = v8;
  [*(qword_10195DD00 + 16) sizeThatFits:{v4, 1.79769313e308}];
  v11 = fmax(v9 + 54.0 + v10, 68.0);

  return v11;
}

@end