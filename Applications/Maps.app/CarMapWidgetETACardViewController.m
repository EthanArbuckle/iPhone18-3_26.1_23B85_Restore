@interface CarMapWidgetETACardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3;
- (CarMapWidgetETACardViewController)initWithDestination:(unint64_t)a3 presentationType:(unint64_t)a4;
- (void)_applyDynamicScaling;
- (void)_scaleConstraints;
- (void)_scaleFonts;
- (void)_setupConstraints;
- (void)_updateArrangedSubviewsIfNeeded;
- (void)_updateContents;
- (void)setLatestETA:(id)a3;
- (void)setShouldUseWideLayout:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarMapWidgetETACardViewController

- (void)_updateContents
{
  if (self->_latestETA)
  {
    if ([(CarMapWidgetETACardViewController *)self shouldUseWideLayout]&& ([(GuidanceETA *)self->_latestETA arrivalBatteryCharge], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
      v5 = [(GuidanceETA *)self->_latestETA arrivalWithBatteryChargeStringWithFont:v4];
      [(UILabel *)self->_etaLabel setAttributedText:v5];
    }

    else
    {
      v4 = [(GuidanceETA *)self->_latestETA arrivalTimeExpandedString];
      [(UILabel *)self->_etaLabel setText:v4];
    }

    [(GuidanceETA *)self->_latestETA remainingDistance];
    if (v6 >= 0.0)
    {
      v7 = [(GuidanceETA *)self->_latestETA distanceValue];
      v8 = [(GuidanceETA *)self->_latestETA distanceUnit];
      v9 = [NSString stringWithFormat:@"%@ %@", v7, v8];
      [(UILabel *)self->_distanceLabel setText:v9];

      v10 = [(GuidanceETA *)self->_latestETA distanceValue];
      v11 = [(GuidanceETA *)self->_latestETA distanceUnitAccessibility];
      v12 = [NSString stringWithFormat:@"%@ %@", v10, v11];
      [(UILabel *)self->_distanceLabel setAccessibilityLabel:v12];
    }

    v13 = [(GuidanceETA *)self->_latestETA timeValue];
    v14 = [(GuidanceETA *)self->_latestETA timeUnit];
    v15 = [NSString stringWithFormat:@"%@ %@", v13, v14];
    [(UILabel *)self->_timeLabel setText:v15];

    v16 = [(GuidanceETA *)self->_latestETA timeValue];
    v17 = [(GuidanceETA *)self->_latestETA timeUnitAccessibility];
    v18 = [NSString stringWithFormat:@"%@ %@", v16, v17];
    [(UILabel *)self->_timeLabel setAccessibilityLabel:v18];

    [(UIStackView *)self->_labelStackView setNeedsLayout];
    [(UIStackView *)self->_labelStackView layoutIfNeeded];
    if ([(UILabel *)self->_etaLabel isTextTruncated])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100CE0860;
      block[3] = &unk_101661B18;
      block[4] = self;
      if (qword_10195EED8 != -1)
      {
        dispatch_once(&qword_10195EED8, block);
      }
    }
  }
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3
{
  retstr->var0 = 15;
  retstr->var1 = 0.0;
  result = kCACornerCurveContinuous;
  retstr->var2 = result;
  retstr->var3 = 1;
  retstr->var4 = 1;
  return result;
}

- (void)setLatestETA:(id)a3
{
  v6 = a3;
  latestETA = self->_latestETA;
  if (latestETA == v6)
  {
    goto LABEL_14;
  }

  v12 = v6;
  v8 = [(GuidanceETA *)latestETA arrivalBatteryCharge];
  if (!v8 || ([(GuidanceETA *)v12 arrivalBatteryCharge], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [(GuidanceETA *)self->_latestETA arrivalBatteryCharge];
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      v11 = [(GuidanceETA *)v12 arrivalBatteryCharge];
      v9 = v11 != 0;
    }

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_10:
  objc_storeStrong(&self->_latestETA, a3);
  if (v9 && [(CarMapWidgetETACardViewController *)self isViewLoaded])
  {
    [(CarMapWidgetETACardViewController *)self _updateArrangedSubviewsIfNeeded];
  }

  [(CarMapWidgetETACardViewController *)self _updateContents];
  v6 = v12;
LABEL_14:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v26 traitCollectionDidChange:v4];
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 preferredContentSizeCategory];
    v6 = [(CarMapWidgetETACardViewController *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [v5 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(CarMapWidgetETACardViewController *)self _scaleConstraints];
    }
  }

  v9 = [v4 userInterfaceStyle];
  v10 = [(CarMapWidgetETACardViewController *)self traitCollection];
  v11 = [v10 userInterfaceStyle];

  if (v9 != v11)
  {
    v12 = sub_100CE04F4();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      goto LABEL_22;
    }

    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_14;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarMapWidgetETACardViewController *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_12;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_12:

LABEL_14:
    v19 = v18;
    v20 = [v4 userInterfaceStyle];
    if (v20 >= 3)
    {
      v21 = [NSString stringWithFormat:@"<Unknown %ld>", v20];
    }

    else
    {
      v21 = *(&off_101650AC8 + v20);
    }

    v22 = v21;
    v23 = [(CarMapWidgetETACardViewController *)v13 traitCollection];
    v24 = [v23 userInterfaceStyle];
    if (v24 >= 3)
    {
      v25 = [NSString stringWithFormat:@"<Unknown %ld>", v24];
    }

    else
    {
      v25 = *(&off_101650AC8 + v24);
    }

    *buf = 138543874;
    v28 = v19;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v25;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] User interface style changed from %@ -> %@", buf, 0x20u);

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_scaleConstraints
{
  v3 = [(CarMapWidgetETACardViewController *)self view];
  [v3 _car_dynamicPointScaleValue];
  v5 = v4;

  v6 = _os_feature_enabled_impl();
  v7 = 0.0;
  if (v6)
  {
    v8 = [(CarMapWidgetETACardViewController *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = [v9 isEqualToString:UIContentSizeCategoryExtraLarge];

    v7 = 2.0;
    if ((v10 & 1) == 0)
    {
      v11 = [(CarMapWidgetETACardViewController *)self traitCollection];
      v12 = [v11 preferredContentSizeCategory];
      v13 = [v12 isEqualToString:UIContentSizeCategoryExtraExtraLarge];

      v7 = 4.0;
      if ((v13 & 1) == 0)
      {
        v14 = [(CarMapWidgetETACardViewController *)self traitCollection];
        v15 = [v14 preferredContentSizeCategory];
        v16 = [v15 isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge];

        v7 = 0.0;
        if (v16)
        {
          v7 = 6.0;
        }
      }
    }
  }

  v17 = v5 * 6.0;
  [(NSLayoutConstraint *)self->_topConstraint setConstant:v7 + v17];
  bottomConstraint = self->_bottomConstraint;

  [(NSLayoutConstraint *)bottomConstraint setConstant:v17];
}

- (void)_scaleFonts
{
  v3 = [(CarMapWidgetETACardViewController *)self view];
  [v3 _car_dynamicPointScaleValue];
  v5 = v4;

  v6 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
  v7 = [v6 _maps_scaledFontForScaleFactor:v5];
  [(UILabel *)self->_etaLabel setFont:v7];

  v8 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
  v9 = [v8 _maps_scaledFontForScaleFactor:v5];
  [(UILabel *)self->_timeLabel setFont:v9];

  v11 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
  v10 = [v11 _maps_scaledFontForScaleFactor:v5];
  [(UILabel *)self->_distanceLabel setFont:v10];
}

- (void)_applyDynamicScaling
{
  if (self->_destination == 1)
  {
    [(CarMapWidgetETACardViewController *)self _scaleFonts];
  }
}

- (void)_updateArrangedSubviewsIfNeeded
{
  v4 = [(CarMapWidgetETACardViewController *)self shouldUseWideLayout];
  if (v4)
  {
    v2 = [(GuidanceETA *)self->_latestETA arrivalBatteryCharge];
    if (!v2)
    {
      timeLabel = self->_timeLabel;
      v8[0] = self->_etaLabel;
      v8[1] = timeLabel;
      v8[2] = self->_distanceLabel;
      v5 = [NSArray arrayWithObjects:v8 count:3];
      goto LABEL_6;
    }
  }

  etaLabel = self->_etaLabel;
  v5 = [NSArray arrayWithObjects:&etaLabel count:1];
  if (v4)
  {
LABEL_6:
  }

  if (([v5 isEqualToArray:self->_currentArrangedSubviews] & 1) == 0)
  {
    objc_storeStrong(&self->_currentArrangedSubviews, v5);
    [(UIStackView *)self->_labelStackView _maps_setArrangedSubviews:v5];
    [(UIStackView *)self->_labelStackView setNeedsLayout];
    [(UIStackView *)self->_labelStackView layoutIfNeeded];
  }
}

- (void)setShouldUseWideLayout:(BOOL)a3
{
  if (self->_shouldUseWideLayout != a3)
  {
    self->_shouldUseWideLayout = a3;
    [(CarMapWidgetETACardViewController *)self _updateArrangedSubviewsIfNeeded];

    [(CarMapWidgetETACardViewController *)self _updateContents];
  }
}

- (void)_setupConstraints
{
  v3 = [(UIStackView *)self->_labelStackView topAnchor];
  v4 = [(CarMapWidgetETACardViewController *)self view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:6.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v6;

  v8 = [(CarMapWidgetETACardViewController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [(UIStackView *)self->_labelStackView bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:6.0];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v11;

  v31 = [NSMutableArray alloc];
  v42 = [(UIStackView *)self->_labelStackView centerXAnchor];
  v43 = [(CarMapWidgetETACardViewController *)self view];
  v41 = [v43 centerXAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v45[0] = v40;
  v38 = [(UIStackView *)self->_labelStackView leadingAnchor];
  v39 = [(CarMapWidgetETACardViewController *)self view];
  v37 = [v39 leadingAnchor];
  LODWORD(v13) = 1132068864;
  v36 = [v38 constraintEqualToAnchor:v37 constant:24.0 priority:v13];
  v45[1] = v36;
  v34 = [(UIStackView *)self->_labelStackView leadingAnchor];
  v35 = [(CarMapWidgetETACardViewController *)self view];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintGreaterThanOrEqualToAnchor:v33 constant:12.0];
  v45[2] = v32;
  v14 = [(CarMapWidgetETACardViewController *)self view];
  v15 = [v14 trailingAnchor];
  v16 = [(UIStackView *)self->_labelStackView trailingAnchor];
  LODWORD(v17) = 1132068864;
  v18 = [v15 constraintEqualToAnchor:v16 constant:24.0 priority:v17];
  v45[3] = v18;
  v19 = [(CarMapWidgetETACardViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [(UIStackView *)self->_labelStackView trailingAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:12.0];
  v45[4] = v22;
  v23 = self->_bottomConstraint;
  v45[5] = self->_topConstraint;
  v45[6] = v23;
  v24 = [NSArray arrayWithObjects:v45 count:7];
  v44 = [v31 initWithArray:v24];

  v25 = objc_opt_new();
  [(CarMapWidgetETACardViewController *)self cornerMaskForCarCardLayout:v25];

  if (self->_presentationType)
  {
    GEOConfigGetDouble();
  }

  else
  {
    v26 = 0.0;
  }

  v27 = fmax(0.0 + 0.0, v26);
  if (v27 > 0.0)
  {
    v28 = [(CarMapWidgetETACardViewController *)self view];
    v29 = [v28 heightAnchor];
    v30 = [v29 constraintGreaterThanOrEqualToConstant:v27];
    [v44 addObject:v30];
  }

  [NSLayoutConstraint activateConstraints:v44];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v4 viewDidAppear:a3];
  [(CarMapWidgetETACardViewController *)self _updateContents];
  [(CarMapWidgetETACardViewController *)self _applyDynamicScaling];
  [(CarMapWidgetETACardViewController *)self _scaleConstraints];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v9 viewDidLayoutSubviews];
  destination = self->_destination;
  if (destination == 1)
  {
    v8 = 0;
  }

  else
  {
    if (destination)
    {
      return;
    }

    v4 = [(CarMapWidgetETACardViewController *)self view];
    v5 = [v4 window];
    v6 = [v5 safeAreaLayoutGuide];
    [v6 layoutFrame];
    Width = CGRectGetWidth(v10);

    v8 = Width > 298.0;
  }

  [(CarMapWidgetETACardViewController *)self setShouldUseWideLayout:v8];
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v36 viewDidLoad];
  v3 = [(CarMapWidgetETACardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarMapWidgetETACardView"];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  etaLabel = self->_etaLabel;
  self->_etaLabel = v8;

  [(UILabel *)self->_etaLabel setAccessibilityIdentifier:@"ETALabel"];
  [(UILabel *)self->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_etaLabel setFont:v10];

  [(UILabel *)self->_etaLabel setTextAlignment:1];
  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_etaLabel setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UILabel *)self->_etaLabel setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1144750080;
  [(UILabel *)self->_etaLabel setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1144750080;
  [(UILabel *)self->_etaLabel setContentHuggingPriority:1 forAxis:v14];
  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v15;

  [(UILabel *)self->_timeLabel setAccessibilityIdentifier:@"TimeLabel"];
  [(UILabel *)self->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_timeLabel setFont:v17];

  LODWORD(v18) = 1148846080;
  [(UILabel *)self->_timeLabel setContentCompressionResistancePriority:1 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [(UILabel *)self->_timeLabel setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1144750080;
  [(UILabel *)self->_timeLabel setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [(UILabel *)self->_timeLabel setContentHuggingPriority:1 forAxis:v21];
  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  distanceLabel = self->_distanceLabel;
  self->_distanceLabel = v22;

  [(UILabel *)self->_distanceLabel setAccessibilityIdentifier:@"DistanceLabel"];
  [(UILabel *)self->_distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  [(UILabel *)self->_distanceLabel setFont:v24];

  LODWORD(v25) = 1148846080;
  [(UILabel *)self->_distanceLabel setContentCompressionResistancePriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UILabel *)self->_distanceLabel setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [(UILabel *)self->_distanceLabel setContentHuggingPriority:0 forAxis:v27];
  LODWORD(v28) = 1144750080;
  [(UILabel *)self->_distanceLabel setContentHuggingPriority:1 forAxis:v28];
  v37 = self->_etaLabel;
  v29 = [NSArray arrayWithObjects:&v37 count:1];
  currentArrangedSubviews = self->_currentArrangedSubviews;
  self->_currentArrangedSubviews = v29;

  v31 = [[UIStackView alloc] initWithArrangedSubviews:self->_currentArrangedSubviews];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v31;

  [(UIStackView *)self->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v33) = 1148846080;
  [(UIStackView *)self->_labelStackView setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [(UIStackView *)self->_labelStackView setContentHuggingPriority:0 forAxis:v34];
  [(UIStackView *)self->_labelStackView setSpacing:12.0];
  [(UIStackView *)self->_labelStackView setAxis:0];
  v35 = [(CarMapWidgetETACardViewController *)self view];
  [v35 addSubview:self->_labelStackView];

  if (_os_feature_enabled_impl())
  {
    [(UILabel *)self->_etaLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_timeLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_distanceLabel setAdjustsFontForContentSizeCategory:1];
  }

  [(CarMapWidgetETACardViewController *)self _setupConstraints];
  [(CarMapWidgetETACardViewController *)self _updateArrangedSubviewsIfNeeded];
  [(CarMapWidgetETACardViewController *)self _updateContents];
}

- (CarMapWidgetETACardViewController)initWithDestination:(unint64_t)a3 presentationType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetETACardViewController;
  result = [(CarMapWidgetETACardViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_destination = a3;
    result->_presentationType = a4;
  }

  return result;
}

@end