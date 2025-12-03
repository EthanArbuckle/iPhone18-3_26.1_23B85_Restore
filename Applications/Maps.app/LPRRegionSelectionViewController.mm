@interface LPRRegionSelectionViewController
- (LPRRegionSelectionViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)pressedCancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LPRRegionSelectionViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  regions = [(LPRRegionSelectionViewController *)self regions];
  v8 = [regions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v9 = [pathCopy row];

  v30 = [v8 objectAtIndexedSubscript:v9];

  currentVehicle = [(LPRRegionSelectionViewController *)self currentVehicle];

  if (!currentVehicle)
  {
    currentVehicle6 = [[VGVehicle alloc] initWithLicensePlate:&stru_1016631F0 lprVehicleType:@"PASSENGER_CAR" lprPowerType:&stru_1016631F0];
    [(LPRRegionSelectionViewController *)self setCurrentVehicle:currentVehicle6];
    goto LABEL_7;
  }

  currentVehicle2 = [(LPRRegionSelectionViewController *)self currentVehicle];
  licensePlate = [currentVehicle2 licensePlate];

  if (licensePlate)
  {
    regionCodes = [(LPRRegionSelectionViewController *)self regionCodes];
    v14 = [NSCharacterSet characterSetWithCharactersInString:regionCodes];

    currentVehicle3 = [(LPRRegionSelectionViewController *)self currentVehicle];
    licensePlate2 = [currentVehicle3 licensePlate];
    v17 = [licensePlate2 stringByTrimmingCharactersInSet:v14];
    currentVehicle4 = [(LPRRegionSelectionViewController *)self currentVehicle];
    [currentVehicle4 setLicensePlate:v17];
  }

  currentVehicle5 = [(LPRRegionSelectionViewController *)self currentVehicle];
  lprVehicleType = [currentVehicle5 lprVehicleType];

  if (!lprVehicleType)
  {
    currentVehicle6 = [(LPRRegionSelectionViewController *)self currentVehicle];
    [currentVehicle6 setLprVehicleType:@"PASSENGER_CAR"];
LABEL_7:
  }

  v22 = [LPROnboardingAddLicensePlatePageViewController alloc];
  scenario = self->_scenario;
  currentVehicle = self->_currentVehicle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  lprRules = [(LPRRegionSelectionViewController *)self lprRules];
  powerTypes = [(LPRRegionSelectionViewController *)self powerTypes];
  v28 = [(LPROnboardingAddLicensePlatePageViewController *)v22 initWithScenario:scenario vehicle:currentVehicle delegate:WeakRetained region:v30 lprRules:lprRules powerTypes:powerTypes];

  navigationController = [(LPRRegionSelectionViewController *)self navigationController];
  [navigationController pushViewController:v28 animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  regions = [(LPRRegionSelectionViewController *)self regions];
  v8 = [regions count];

  if (section || v8 <= 1)
  {
    v10 = objc_alloc_init(MapsThemeLabel);
    [(MapsThemeLabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeLabel *)v10 setTextAlignment:0];
    v11 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightLight];
    [(MapsThemeLabel *)v10 setFont:v11];

    v12 = +[UIColor secondaryLabelColor];
    [(MapsThemeLabel *)v10 setTextColor:v12];

    regions2 = [(LPRRegionSelectionViewController *)self regions];
    v14 = [regions2 count];

    v15 = +[NSBundle mainBundle];
    v16 = v15;
    if (v14 <= 1)
    {
      v17 = @"[LPR Onboarding]Regions";
    }

    else
    {
      v17 = @"[LPR Onboarding]Other Regions";
    }

    v18 = [v15 localizedStringForKey:v17 value:@"localized string not found" table:0];
    [(MapsThemeLabel *)v10 setText:v18];

    v19 = [UITableViewHeaderFooterView alloc];
    [viewCopy frame];
    v9 = [v19 initWithFrame:{0.0, 0.0, CGRectGetWidth(v42), 75.0}];
    backgroundColor = [viewCopy backgroundColor];
    contentView = [v9 contentView];
    [contentView setBackgroundColor:backgroundColor];

    v22 = objc_opt_new();
    [v9 setBackgroundView:v22];

    backgroundColor2 = [viewCopy backgroundColor];
    backgroundView = [v9 backgroundView];
    [backgroundView setBackgroundColor:backgroundColor2];

    contentView2 = [v9 contentView];
    [contentView2 addSubview:v10];

    v26 = [MKViewWithHairline alloc];
    [viewCopy frame];
    v27 = [v26 initWithFrame:{0.0, 0.0, CGRectGetWidth(v43), 75.0}];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setTopHairlineHidden:1];
    [v27 setBottomHairlineHidden:0];
    [v9 addSubview:v27];
    [v9 layoutIfNeeded];
    v38 = v10;
    leadingAnchor = [(MapsThemeLabel *)v10 leadingAnchor];
    contentView3 = [v9 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v31;
    [(MapsThemeLabel *)v10 bottomAnchor];
    v32 = v39 = viewCopy;
    bottomAnchor = [v9 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:bottomAnchor constant:-8.0];
    v40[1] = v34;
    v35 = [NSArray arrayWithObjects:v40 count:2];
    [NSLayoutConstraint activateConstraints:v35];

    viewCopy = v39;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  regions = [(LPRRegionSelectionViewController *)self regions];
  v6 = [regions count];

  v7 = v6 == 1 || section == 1;
  result = 75.0;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  regions = [(LPRRegionSelectionViewController *)self regions];
  v4 = [regions count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  regions = [(LPRRegionSelectionViewController *)self regions];
  v6 = [regions objectAtIndexedSubscript:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  regionTableView = [(LPRRegionSelectionViewController *)self regionTableView];
  v7 = [regionTableView dequeueReusableCellWithIdentifier:@"LPRRegion" forIndexPath:pathCopy];

  [v7 setAccessoryType:1];
  [v7 setAccessibilityIdentifier:@"RegionTableViewCell"];
  regions = [(LPRRegionSelectionViewController *)self regions];
  v9 = [regions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v10 = [pathCopy row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  displayNames = [v11 displayNames];
  v13 = [GEOLocalizedString bestStringForCurrentLocale:displayNames fallbackToFirstAvailable:1];
  textLabel = [v7 textLabel];
  [textLabel setText:v13];

  textLabel2 = [v7 textLabel];
  [textLabel2 setAccessibilityIdentifier:@"TextLabel"];

  return v7;
}

- (void)pressedCancel
{
  presentingViewController = [(LPRRegionSelectionViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(LPRRegionSelectionViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v9 viewWillAppear:?];
  traitCollection = [(LPRRegionSelectionViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v90.receiver = self;
  v90.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v90 viewDidLoad];
  view = [(LPRRegionSelectionViewController *)self view];
  [view setAccessibilityIdentifier:@"LPRRegionSelectionView"];

  if (self->_scenario == 1)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"pressedCancel"];
    navigationItem = [(LPRRegionSelectionViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v4];
  }

  v6 = objc_alloc_init(UITableView);
  [(LPRRegionSelectionViewController *)self setRegionTableView:v6];

  regionTableView = [(LPRRegionSelectionViewController *)self regionTableView];
  [regionTableView setTranslatesAutoresizingMaskIntoConstraints:0];

  regionTableView2 = [(LPRRegionSelectionViewController *)self regionTableView];
  [regionTableView2 setAccessibilityIdentifier:@"RegionTableView"];

  regionTableView3 = [(LPRRegionSelectionViewController *)self regionTableView];
  [regionTableView3 setDelegate:self];

  regionTableView4 = [(LPRRegionSelectionViewController *)self regionTableView];
  [regionTableView4 setDataSource:self];

  regionTableView5 = [(LPRRegionSelectionViewController *)self regionTableView];
  [regionTableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"LPRRegion"];

  v12 = +[NSMutableArray array];
  [(LPRRegionSelectionViewController *)self setRegions:v12];

  v13 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v13 lastLocation];

  [lastLocation coordinate];
  v84 = lastLocation;
  [lastLocation coordinate];
  v15 = +[GEOResourceManager sharedManager];
  v16 = [v15 dataForResourceWithName:@"regional_vehicle_info.pb" fallbackBundle:0];

  if (v16)
  {
    v17 = [[GEOLPRRoot alloc] initWithData:v16];
    [(LPRRegionSelectionViewController *)self setLprRules:v17];

    v18 = +[NSMutableString string];
    lprRules = [(LPRRegionSelectionViewController *)self lprRules];
    powerTypes = [lprRules powerTypes];
    [(LPRRegionSelectionViewController *)self setPowerTypes:powerTypes];

    lprRules2 = [(LPRRegionSelectionViewController *)self lprRules];
    regions = [lprRules2 regions];
    v23 = [regions mutableCopy];

    lprRules3 = [(LPRRegionSelectionViewController *)self lprRules];
    regionsCount = [lprRules3 regionsCount];

    if (regionsCount)
    {
      v26 = [v23 objectAtIndexedSubscript:0];
      subRegions = [v26 subRegions];

      v23 = subRegions;
    }

    else
    {
      [GEOAPPortal captureUserAction:2191 target:0 value:@"EmptyRegions"];
    }

    [v23 sortUsingComparator:&stru_10162F000];
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v28 = v23;
    v29 = [v28 countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v87;
      do
      {
        v32 = 0;
        do
        {
          if (*v87 != v31)
          {
            objc_enumerationMutation(v28);
          }

          info = [*(*(&v86 + 1) + 8 * v32) info];
          licensePlateTemplate = [info licensePlateTemplate];

          [v18 appendString:licensePlateTemplate];
          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v30);
    }

    [(LPRRegionSelectionViewController *)self setRegionCodes:v18];
    v35 = geoLPRRegionsContainingPoint();
    if ([v35 count])
    {
      regions2 = [(LPRRegionSelectionViewController *)self regions];
      [regions2 addObject:v35];

      [v28 removeObjectsInArray:v35];
    }

    regions3 = [(LPRRegionSelectionViewController *)self regions];
    [regions3 addObject:v28];
  }

  v38 = +[UIColor systemBackgroundColor];
  view2 = [(LPRRegionSelectionViewController *)self view];
  [view2 setBackgroundColor:v38];

  view3 = [(LPRRegionSelectionViewController *)self view];
  regionTableView6 = [(LPRRegionSelectionViewController *)self regionTableView];
  [view3 addSubview:regionTableView6];

  v42 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v42 setAccessibilityIdentifier:@"TitleLabel"];
  [(MapsThemeLabel *)v42 setNumberOfLines:2];
  [(MapsThemeLabel *)v42 setTextAlignment:1];
  [(MapsThemeLabel *)v42 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v42 setMinimumScaleFactor:0.5];
  v83 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v43 = [v83 fontDescriptorWithSymbolicTraits:2];
  v44 = [UIFont fontWithDescriptor:v43 size:0.0];
  [(MapsThemeLabel *)v42 setFont:v44];

  v45 = +[UIColor labelColor];
  [(MapsThemeLabel *)v42 setTextColor:v45];

  v46 = +[NSBundle mainBundle];
  v47 = [v46 localizedStringForKey:@"[LPR Onboarding] Regions" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v42 setText:v47];

  view4 = [(LPRRegionSelectionViewController *)self view];
  [view4 addSubview:v42];

  view5 = [(LPRRegionSelectionViewController *)self view];
  topAnchor = [(MapsThemeLabel *)v42 topAnchor];
  view6 = [(LPRRegionSelectionViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v78 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
  v91[0] = v78;
  centerXAnchor = [(MapsThemeLabel *)v42 centerXAnchor];
  view7 = [(LPRRegionSelectionViewController *)self view];
  centerXAnchor2 = [view7 centerXAnchor];
  v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  v91[1] = v74;
  widthAnchor = [(MapsThemeLabel *)v42 widthAnchor];
  view8 = [(LPRRegionSelectionViewController *)self view];
  widthAnchor2 = [view8 widthAnchor];
  v70 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.9 constant:0.0];
  v91[2] = v70;
  regionTableView7 = [(LPRRegionSelectionViewController *)self regionTableView];
  topAnchor3 = [regionTableView7 topAnchor];
  bottomAnchor = [(MapsThemeLabel *)v42 bottomAnchor];
  v65 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:25.0];
  v91[3] = v65;
  regionTableView8 = [(LPRRegionSelectionViewController *)self regionTableView];
  centerXAnchor3 = [regionTableView8 centerXAnchor];
  view9 = [(LPRRegionSelectionViewController *)self view];
  centerXAnchor4 = [view9 centerXAnchor];
  v60 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
  v91[4] = v60;
  regionTableView9 = [(LPRRegionSelectionViewController *)self regionTableView];
  widthAnchor3 = [regionTableView9 widthAnchor];
  view10 = [(LPRRegionSelectionViewController *)self view];
  widthAnchor4 = [view10 widthAnchor];
  [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  v51 = v68 = v16;
  v91[5] = v51;
  regionTableView10 = [(LPRRegionSelectionViewController *)self regionTableView];
  bottomAnchor2 = [regionTableView10 bottomAnchor];
  view11 = [(LPRRegionSelectionViewController *)self view];
  bottomAnchor3 = [view11 bottomAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-10.0];
  v91[6] = v56;
  v57 = [NSArray arrayWithObjects:v91 count:7];
  [view5 addConstraints:v57];
}

- (LPRRegionSelectionViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = LPRRegionSelectionViewController;
  v10 = [(LPRRegionSelectionViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(LPRRegionSelectionViewController *)v10 setCurrentVehicle:vehicleCopy];
    v11->_scenario = scenario;
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

@end