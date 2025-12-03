@interface CarMapWidgetETACardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout;
- (CarMapWidgetETACardViewController)initWithDestination:(unint64_t)destination presentationType:(unint64_t)type;
- (void)_applyDynamicScaling;
- (void)_scaleConstraints;
- (void)_scaleFonts;
- (void)_setupConstraints;
- (void)_updateArrangedSubviewsIfNeeded;
- (void)_updateContents;
- (void)setLatestETA:(id)a;
- (void)setShouldUseWideLayout:(BOOL)layout;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
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
      arrivalTimeExpandedString = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
      v5 = [(GuidanceETA *)self->_latestETA arrivalWithBatteryChargeStringWithFont:arrivalTimeExpandedString];
      [(UILabel *)self->_etaLabel setAttributedText:v5];
    }

    else
    {
      arrivalTimeExpandedString = [(GuidanceETA *)self->_latestETA arrivalTimeExpandedString];
      [(UILabel *)self->_etaLabel setText:arrivalTimeExpandedString];
    }

    [(GuidanceETA *)self->_latestETA remainingDistance];
    if (v6 >= 0.0)
    {
      distanceValue = [(GuidanceETA *)self->_latestETA distanceValue];
      distanceUnit = [(GuidanceETA *)self->_latestETA distanceUnit];
      v9 = [NSString stringWithFormat:@"%@ %@", distanceValue, distanceUnit];
      [(UILabel *)self->_distanceLabel setText:v9];

      distanceValue2 = [(GuidanceETA *)self->_latestETA distanceValue];
      distanceUnitAccessibility = [(GuidanceETA *)self->_latestETA distanceUnitAccessibility];
      v12 = [NSString stringWithFormat:@"%@ %@", distanceValue2, distanceUnitAccessibility];
      [(UILabel *)self->_distanceLabel setAccessibilityLabel:v12];
    }

    timeValue = [(GuidanceETA *)self->_latestETA timeValue];
    timeUnit = [(GuidanceETA *)self->_latestETA timeUnit];
    v15 = [NSString stringWithFormat:@"%@ %@", timeValue, timeUnit];
    [(UILabel *)self->_timeLabel setText:v15];

    timeValue2 = [(GuidanceETA *)self->_latestETA timeValue];
    timeUnitAccessibility = [(GuidanceETA *)self->_latestETA timeUnitAccessibility];
    v18 = [NSString stringWithFormat:@"%@ %@", timeValue2, timeUnitAccessibility];
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

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout
{
  retstr->var0 = 15;
  retstr->var1 = 0.0;
  result = kCACornerCurveContinuous;
  retstr->var2 = result;
  retstr->var3 = 1;
  retstr->var4 = 1;
  return result;
}

- (void)setLatestETA:(id)a
{
  aCopy = a;
  latestETA = self->_latestETA;
  if (latestETA == aCopy)
  {
    goto LABEL_14;
  }

  v12 = aCopy;
  arrivalBatteryCharge = [(GuidanceETA *)latestETA arrivalBatteryCharge];
  if (!arrivalBatteryCharge || ([(GuidanceETA *)v12 arrivalBatteryCharge], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    arrivalBatteryCharge2 = [(GuidanceETA *)self->_latestETA arrivalBatteryCharge];
    if (arrivalBatteryCharge2)
    {
      v9 = 0;
    }

    else
    {
      arrivalBatteryCharge3 = [(GuidanceETA *)v12 arrivalBatteryCharge];
      v9 = arrivalBatteryCharge3 != 0;
    }

    if (!arrivalBatteryCharge)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_10:
  objc_storeStrong(&self->_latestETA, a);
  if (v9 && [(CarMapWidgetETACardViewController *)self isViewLoaded])
  {
    [(CarMapWidgetETACardViewController *)self _updateArrangedSubviewsIfNeeded];
  }

  [(CarMapWidgetETACardViewController *)self _updateContents];
  aCopy = v12;
LABEL_14:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v26.receiver = self;
  v26.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v26 traitCollectionDidChange:changeCopy];
  if (_os_feature_enabled_impl())
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    traitCollection = [(CarMapWidgetETACardViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(CarMapWidgetETACardViewController *)self _scaleConstraints];
    }
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(CarMapWidgetETACardViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v12 = sub_100CE04F4();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      goto LABEL_22;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarMapWidgetETACardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
LABEL_12:

LABEL_14:
    v19 = selfCopy;
    userInterfaceStyle3 = [changeCopy userInterfaceStyle];
    if (userInterfaceStyle3 >= 3)
    {
      v21 = [NSString stringWithFormat:@"<Unknown %ld>", userInterfaceStyle3];
    }

    else
    {
      v21 = *(&off_101650AC8 + userInterfaceStyle3);
    }

    v22 = v21;
    traitCollection3 = [(CarMapWidgetETACardViewController *)selfCopy traitCollection];
    userInterfaceStyle4 = [traitCollection3 userInterfaceStyle];
    if (userInterfaceStyle4 >= 3)
    {
      v25 = [NSString stringWithFormat:@"<Unknown %ld>", userInterfaceStyle4];
    }

    else
    {
      v25 = *(&off_101650AC8 + userInterfaceStyle4);
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
  view = [(CarMapWidgetETACardViewController *)self view];
  [view _car_dynamicPointScaleValue];
  v5 = v4;

  v6 = _os_feature_enabled_impl();
  v7 = 0.0;
  if (v6)
  {
    traitCollection = [(CarMapWidgetETACardViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v10 = [preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraLarge];

    v7 = 2.0;
    if ((v10 & 1) == 0)
    {
      traitCollection2 = [(CarMapWidgetETACardViewController *)self traitCollection];
      preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
      v13 = [preferredContentSizeCategory2 isEqualToString:UIContentSizeCategoryExtraExtraLarge];

      v7 = 4.0;
      if ((v13 & 1) == 0)
      {
        traitCollection3 = [(CarMapWidgetETACardViewController *)self traitCollection];
        preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
        v16 = [preferredContentSizeCategory3 isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge];

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
  view = [(CarMapWidgetETACardViewController *)self view];
  [view _car_dynamicPointScaleValue];
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
  shouldUseWideLayout = [(CarMapWidgetETACardViewController *)self shouldUseWideLayout];
  if (shouldUseWideLayout)
  {
    arrivalBatteryCharge = [(GuidanceETA *)self->_latestETA arrivalBatteryCharge];
    if (!arrivalBatteryCharge)
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
  if (shouldUseWideLayout)
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

- (void)setShouldUseWideLayout:(BOOL)layout
{
  if (self->_shouldUseWideLayout != layout)
  {
    self->_shouldUseWideLayout = layout;
    [(CarMapWidgetETACardViewController *)self _updateArrangedSubviewsIfNeeded];

    [(CarMapWidgetETACardViewController *)self _updateContents];
  }
}

- (void)_setupConstraints
{
  topAnchor = [(UIStackView *)self->_labelStackView topAnchor];
  view = [(CarMapWidgetETACardViewController *)self view];
  topAnchor2 = [view topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v6;

  view2 = [(CarMapWidgetETACardViewController *)self view];
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_labelStackView bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:6.0];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v11;

  v31 = [NSMutableArray alloc];
  centerXAnchor = [(UIStackView *)self->_labelStackView centerXAnchor];
  view3 = [(CarMapWidgetETACardViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v45[0] = v40;
  leadingAnchor = [(UIStackView *)self->_labelStackView leadingAnchor];
  view4 = [(CarMapWidgetETACardViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  LODWORD(v13) = 1132068864;
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0 priority:v13];
  v45[1] = v36;
  leadingAnchor3 = [(UIStackView *)self->_labelStackView leadingAnchor];
  view5 = [(CarMapWidgetETACardViewController *)self view];
  leadingAnchor4 = [view5 leadingAnchor];
  v32 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:12.0];
  v45[2] = v32;
  view6 = [(CarMapWidgetETACardViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_labelStackView trailingAnchor];
  LODWORD(v17) = 1132068864;
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:24.0 priority:v17];
  v45[3] = v18;
  view7 = [(CarMapWidgetETACardViewController *)self view];
  trailingAnchor3 = [view7 trailingAnchor];
  trailingAnchor4 = [(UIStackView *)self->_labelStackView trailingAnchor];
  v22 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:12.0];
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
    view8 = [(CarMapWidgetETACardViewController *)self view];
    heightAnchor = [view8 heightAnchor];
    v30 = [heightAnchor constraintGreaterThanOrEqualToConstant:v27];
    [v44 addObject:v30];
  }

  [NSLayoutConstraint activateConstraints:v44];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarMapWidgetETACardViewController;
  [(CarMapWidgetETACardViewController *)&v4 viewDidAppear:appear];
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

    view = [(CarMapWidgetETACardViewController *)self view];
    window = [view window];
    safeAreaLayoutGuide = [window safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
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
  view = [(CarMapWidgetETACardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarMapWidgetETACardView"];

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
  view2 = [(CarMapWidgetETACardViewController *)self view];
  [view2 addSubview:self->_labelStackView];

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

- (CarMapWidgetETACardViewController)initWithDestination:(unint64_t)destination presentationType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetETACardViewController;
  result = [(CarMapWidgetETACardViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_destination = destination;
    result->_presentationType = type;
  }

  return result;
}

@end