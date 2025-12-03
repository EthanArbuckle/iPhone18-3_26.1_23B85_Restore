@interface RoutePlanningElevationPopoverViewController
- (void)_updateLabels;
- (void)setRoute:(id)route;
- (void)viewDidLoad;
@end

@implementation RoutePlanningElevationPopoverViewController

- (void)_updateLabels
{
  elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];

  if (elevationProfile)
  {
    elevationProfile2 = [(GEOComposedRoute *)self->_route elevationProfile];
    v5 = [elevationProfile2 sumElevationGainCm] * 0.01;

    elevationProfile3 = [(GEOComposedRoute *)self->_route elevationProfile];
    v7 = [elevationProfile3 sumElevationLossCm] * 0.01;
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = sub_1007993AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(RoutePlanningElevationPopoverViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_10:

    *buf = 138412290;
    v24 = selfCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ | Will update labels for gain/loss", buf, 0xCu);
  }

  ascentLabelView = self->_ascentLabelView;
  v16 = [NSMeasurement alloc];
  v17 = +[NSUnitLength meters];
  v18 = [v16 initWithDoubleValue:v17 unit:v5];
  [(DirectionsElevationLabelView *)ascentLabelView setElevation:v18];

  descentLabelView = self->_descentLabelView;
  v20 = [NSMeasurement alloc];
  v21 = +[NSUnitLength meters];
  v22 = [v20 initWithDoubleValue:v21 unit:v7];
  [(DirectionsElevationLabelView *)descentLabelView setElevation:v22];
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v8 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(RoutePlanningElevationPopoverViewController *)self _updateLabels];
    elevationGraphView = self->_elevationGraphView;
    elevationProfile = [(GEOComposedRoute *)v8 elevationProfile];
    [(GEOComposedRoute *)v8 distance];
    [(DirectionsElevationGraphView *)elevationGraphView setElevationProfile:elevationProfile routeLength:?];

    routeCopy = v8;
  }
}

- (void)viewDidLoad
{
  v94.receiver = self;
  v94.super_class = RoutePlanningElevationPopoverViewController;
  [(RoutePlanningElevationPopoverViewController *)&v94 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(RoutePlanningElevationPopoverViewController *)self view];
  [view addSubview:v7];

  v9 = [DirectionsElevationGraphConfiguration alloc];
  traitCollection = [(RoutePlanningElevationPopoverViewController *)self traitCollection];
  v91 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v9, "initWithUseType:userInterfaceIdiom:", 0, [traitCollection userInterfaceIdiom]);

  v11 = [[DirectionsElevationGraphView alloc] initWithConfiguration:v91];
  elevationGraphView = self->_elevationGraphView;
  self->_elevationGraphView = v11;

  [(DirectionsElevationGraphView *)self->_elevationGraphView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_elevationGraphView;
  elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];
  [(GEOComposedRoute *)self->_route distance];
  [(DirectionsElevationGraphView *)v13 setElevationProfile:elevationProfile routeLength:?];

  [v7 addSubview:self->_elevationGraphView];
  v15 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v90 = [v15 fontDescriptorWithSymbolicTraits:2];

  v16 = [UIFont fontWithDescriptor:v90 size:0.0];
  v17 = [[DirectionsElevationLabelView alloc] initWithStyle:0];
  ascentLabelView = self->_ascentLabelView;
  self->_ascentLabelView = v17;

  v19 = self->_ascentLabelView;
  v20 = +[UIColor labelColor];
  v88 = v16;
  [(DirectionsElevationLabelView *)v19 setFont:v16 color:v20];

  v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v21 setNumberOfLines:2];
  v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v21 setFont:v22];

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Total Ascent [Elevation value:Detail table:{Mac]", @"localized string not found", 0}];
  [v21 setText:v24];

  v89 = v21;
  LODWORD(v25) = 1148829696;
  [v21 setContentCompressionResistancePriority:0 forAxis:v25];
  v26 = [UIStackView alloc];
  v97[0] = self->_ascentLabelView;
  v97[1] = v21;
  v27 = [NSArray arrayWithObjects:v97 count:2];
  v92 = [v26 initWithArrangedSubviews:v27];

  [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v92 setAxis:1];
  [v92 setDistribution:0];
  [v92 setAlignment:0];
  [v92 setSpacing:4.0];
  LODWORD(v28) = 1148846080;
  [v92 setContentHuggingPriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v92 setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v92 setContentCompressionResistancePriority:1 forAxis:v30];
  [v7 addSubview:v92];
  v31 = [[DirectionsElevationLabelView alloc] initWithStyle:1];
  descentLabelView = self->_descentLabelView;
  self->_descentLabelView = v31;

  v33 = self->_descentLabelView;
  v34 = +[UIColor labelColor];
  [(DirectionsElevationLabelView *)v33 setFont:v16 color:v34];

  v35 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v35 setNumberOfLines:2];
  v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v87 = v35;
  [v35 setFont:v36];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"Total Descent [Elevation value:Detail table:{Mac]", @"localized string not found", 0}];
  [v35 setText:v38];

  LODWORD(v39) = 1148829696;
  [v35 setContentCompressionResistancePriority:0 forAxis:v39];
  v40 = [UIStackView alloc];
  v96[0] = self->_descentLabelView;
  v96[1] = v35;
  v41 = [NSArray arrayWithObjects:v96 count:2];
  v42 = [v40 initWithArrangedSubviews:v41];

  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v42 setAxis:1];
  [v42 setDistribution:0];
  [v42 setAlignment:0];
  [v42 setSpacing:4.0];
  LODWORD(v43) = 1148846080;
  [v42 setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v42 setContentHuggingPriority:1 forAxis:v44];
  LODWORD(v45) = 1148846080;
  [v42 setContentCompressionResistancePriority:1 forAxis:v45];
  [v7 addSubview:v42];
  [(RoutePlanningElevationPopoverViewController *)self _updateLabels];
  v93 = objc_alloc_init(NSMutableArray);
  view2 = [(RoutePlanningElevationPopoverViewController *)self view];
  LODWORD(v47) = 1148846080;
  v48 = [v7 _maps_constraintsEqualToEdgesOfView:view2 insets:40.0 priority:{40.0, 40.0, 30.0, v47}];
  allConstraints = [v48 allConstraints];
  [v93 addObjectsFromArray:allConstraints];

  topAnchor = [(DirectionsElevationGraphView *)self->_elevationGraphView topAnchor];
  topAnchor2 = [v7 topAnchor];
  v84 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v95[0] = v84;
  leadingAnchor = [(DirectionsElevationGraphView *)self->_elevationGraphView leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v95[1] = v81;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [(DirectionsElevationGraphView *)self->_elevationGraphView trailingAnchor];
  v78 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v95[2] = v78;
  widthAnchor = [(DirectionsElevationGraphView *)self->_elevationGraphView widthAnchor];
  v76 = [widthAnchor constraintEqualToConstant:320.0];
  v95[3] = v76;
  heightAnchor = [(DirectionsElevationGraphView *)self->_elevationGraphView heightAnchor];
  v73 = [heightAnchor constraintEqualToConstant:120.0];
  v95[4] = v73;
  topAnchor3 = [v92 topAnchor];
  bottomAnchor = [(DirectionsElevationGraphView *)self->_elevationGraphView bottomAnchor];
  v70 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v95[5] = v70;
  leadingAnchor3 = [v92 leadingAnchor];
  leadingAnchor4 = [v7 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v95[6] = v67;
  leadingAnchor5 = [v42 leadingAnchor];
  trailingAnchor3 = [v92 trailingAnchor];
  v64 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:35.0];
  v95[7] = v64;
  trailingAnchor4 = [v7 trailingAnchor];
  trailingAnchor5 = [v42 trailingAnchor];
  v61 = [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
  v95[8] = v61;
  v74 = v7;
  bottomAnchor2 = [v7 bottomAnchor];
  bottomAnchor3 = [v92 bottomAnchor];
  v50 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
  v95[9] = v50;
  topAnchor4 = [v42 topAnchor];
  topAnchor5 = [v92 topAnchor];
  v53 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v95[10] = v53;
  bottomAnchor4 = [v7 bottomAnchor];
  bottomAnchor5 = [v42 bottomAnchor];
  v56 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor5];
  v95[11] = v56;
  v57 = [NSArray arrayWithObjects:v95 count:12];
  [v93 addObjectsFromArray:v57];

  [NSLayoutConstraint activateConstraints:v93];
  view3 = [(RoutePlanningElevationPopoverViewController *)self view];
  [view3 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [(RoutePlanningElevationPopoverViewController *)self setPreferredContentSize:?];
}

@end