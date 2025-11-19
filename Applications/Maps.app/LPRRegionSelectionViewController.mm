@interface LPRRegionSelectionViewController
- (LPRRegionSelectionViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)pressedCancel;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LPRRegionSelectionViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(LPRRegionSelectionViewController *)self regions];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v9 = [v6 row];

  v30 = [v8 objectAtIndexedSubscript:v9];

  v10 = [(LPRRegionSelectionViewController *)self currentVehicle];

  if (!v10)
  {
    v21 = [[VGVehicle alloc] initWithLicensePlate:&stru_1016631F0 lprVehicleType:@"PASSENGER_CAR" lprPowerType:&stru_1016631F0];
    [(LPRRegionSelectionViewController *)self setCurrentVehicle:v21];
    goto LABEL_7;
  }

  v11 = [(LPRRegionSelectionViewController *)self currentVehicle];
  v12 = [v11 licensePlate];

  if (v12)
  {
    v13 = [(LPRRegionSelectionViewController *)self regionCodes];
    v14 = [NSCharacterSet characterSetWithCharactersInString:v13];

    v15 = [(LPRRegionSelectionViewController *)self currentVehicle];
    v16 = [v15 licensePlate];
    v17 = [v16 stringByTrimmingCharactersInSet:v14];
    v18 = [(LPRRegionSelectionViewController *)self currentVehicle];
    [v18 setLicensePlate:v17];
  }

  v19 = [(LPRRegionSelectionViewController *)self currentVehicle];
  v20 = [v19 lprVehicleType];

  if (!v20)
  {
    v21 = [(LPRRegionSelectionViewController *)self currentVehicle];
    [v21 setLprVehicleType:@"PASSENGER_CAR"];
LABEL_7:
  }

  v22 = [LPROnboardingAddLicensePlatePageViewController alloc];
  scenario = self->_scenario;
  currentVehicle = self->_currentVehicle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v26 = [(LPRRegionSelectionViewController *)self lprRules];
  v27 = [(LPRRegionSelectionViewController *)self powerTypes];
  v28 = [(LPROnboardingAddLicensePlatePageViewController *)v22 initWithScenario:scenario vehicle:currentVehicle delegate:WeakRetained region:v30 lprRules:v26 powerTypes:v27];

  v29 = [(LPRRegionSelectionViewController *)self navigationController];
  [v29 pushViewController:v28 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(LPRRegionSelectionViewController *)self regions];
  v8 = [v7 count];

  if (a4 || v8 <= 1)
  {
    v10 = objc_alloc_init(MapsThemeLabel);
    [(MapsThemeLabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeLabel *)v10 setTextAlignment:0];
    v11 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightLight];
    [(MapsThemeLabel *)v10 setFont:v11];

    v12 = +[UIColor secondaryLabelColor];
    [(MapsThemeLabel *)v10 setTextColor:v12];

    v13 = [(LPRRegionSelectionViewController *)self regions];
    v14 = [v13 count];

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
    [v6 frame];
    v9 = [v19 initWithFrame:{0.0, 0.0, CGRectGetWidth(v42), 75.0}];
    v20 = [v6 backgroundColor];
    v21 = [v9 contentView];
    [v21 setBackgroundColor:v20];

    v22 = objc_opt_new();
    [v9 setBackgroundView:v22];

    v23 = [v6 backgroundColor];
    v24 = [v9 backgroundView];
    [v24 setBackgroundColor:v23];

    v25 = [v9 contentView];
    [v25 addSubview:v10];

    v26 = [MKViewWithHairline alloc];
    [v6 frame];
    v27 = [v26 initWithFrame:{0.0, 0.0, CGRectGetWidth(v43), 75.0}];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setTopHairlineHidden:1];
    [v27 setBottomHairlineHidden:0];
    [v9 addSubview:v27];
    [v9 layoutIfNeeded];
    v38 = v10;
    v37 = [(MapsThemeLabel *)v10 leadingAnchor];
    v28 = [v9 contentView];
    v29 = [v28 layoutMarginsGuide];
    v30 = [v29 leadingAnchor];
    v31 = [v37 constraintEqualToAnchor:v30];
    v40[0] = v31;
    [(MapsThemeLabel *)v10 bottomAnchor];
    v32 = v39 = v6;
    v33 = [v9 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-8.0];
    v40[1] = v34;
    v35 = [NSArray arrayWithObjects:v40 count:2];
    [NSLayoutConstraint activateConstraints:v35];

    v6 = v39;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(LPRRegionSelectionViewController *)self regions];
  v6 = [v5 count];

  v7 = v6 == 1 || a4 == 1;
  result = 75.0;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(LPRRegionSelectionViewController *)self regions];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(LPRRegionSelectionViewController *)self regions];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(LPRRegionSelectionViewController *)self regionTableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"LPRRegion" forIndexPath:v5];

  [v7 setAccessoryType:1];
  [v7 setAccessibilityIdentifier:@"RegionTableViewCell"];
  v8 = [(LPRRegionSelectionViewController *)self regions];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v10 = [v5 row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  v12 = [v11 displayNames];
  v13 = [GEOLocalizedString bestStringForCurrentLocale:v12 fallbackToFirstAvailable:1];
  v14 = [v7 textLabel];
  [v14 setText:v13];

  v15 = [v7 textLabel];
  [v15 setAccessibilityIdentifier:@"TextLabel"];

  return v7;
}

- (void)pressedCancel
{
  v2 = [(LPRRegionSelectionViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v7 viewWillDisappear:a3];
  v4 = [(LPRRegionSelectionViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v9 viewWillAppear:?];
  v5 = [(LPRRegionSelectionViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }
}

- (void)viewDidLoad
{
  v90.receiver = self;
  v90.super_class = LPRRegionSelectionViewController;
  [(LPRRegionSelectionViewController *)&v90 viewDidLoad];
  v3 = [(LPRRegionSelectionViewController *)self view];
  [v3 setAccessibilityIdentifier:@"LPRRegionSelectionView"];

  if (self->_scenario == 1)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"pressedCancel"];
    v5 = [(LPRRegionSelectionViewController *)self navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }

  v6 = objc_alloc_init(UITableView);
  [(LPRRegionSelectionViewController *)self setRegionTableView:v6];

  v7 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v8 setAccessibilityIdentifier:@"RegionTableView"];

  v9 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v9 setDelegate:self];

  v10 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v10 setDataSource:self];

  v11 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"LPRRegion"];

  v12 = +[NSMutableArray array];
  [(LPRRegionSelectionViewController *)self setRegions:v12];

  v13 = +[MKLocationManager sharedLocationManager];
  v14 = [v13 lastLocation];

  [v14 coordinate];
  v84 = v14;
  [v14 coordinate];
  v15 = +[GEOResourceManager sharedManager];
  v16 = [v15 dataForResourceWithName:@"regional_vehicle_info.pb" fallbackBundle:0];

  if (v16)
  {
    v17 = [[GEOLPRRoot alloc] initWithData:v16];
    [(LPRRegionSelectionViewController *)self setLprRules:v17];

    v18 = +[NSMutableString string];
    v19 = [(LPRRegionSelectionViewController *)self lprRules];
    v20 = [v19 powerTypes];
    [(LPRRegionSelectionViewController *)self setPowerTypes:v20];

    v21 = [(LPRRegionSelectionViewController *)self lprRules];
    v22 = [v21 regions];
    v23 = [v22 mutableCopy];

    v24 = [(LPRRegionSelectionViewController *)self lprRules];
    v25 = [v24 regionsCount];

    if (v25)
    {
      v26 = [v23 objectAtIndexedSubscript:0];
      v27 = [v26 subRegions];

      v23 = v27;
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

          v33 = [*(*(&v86 + 1) + 8 * v32) info];
          v34 = [v33 licensePlateTemplate];

          [v18 appendString:v34];
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
      v36 = [(LPRRegionSelectionViewController *)self regions];
      [v36 addObject:v35];

      [v28 removeObjectsInArray:v35];
    }

    v37 = [(LPRRegionSelectionViewController *)self regions];
    [v37 addObject:v28];
  }

  v38 = +[UIColor systemBackgroundColor];
  v39 = [(LPRRegionSelectionViewController *)self view];
  [v39 setBackgroundColor:v38];

  v40 = [(LPRRegionSelectionViewController *)self view];
  v41 = [(LPRRegionSelectionViewController *)self regionTableView];
  [v40 addSubview:v41];

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

  v48 = [(LPRRegionSelectionViewController *)self view];
  [v48 addSubview:v42];

  v85 = [(LPRRegionSelectionViewController *)self view];
  v81 = [(MapsThemeLabel *)v42 topAnchor];
  v82 = [(LPRRegionSelectionViewController *)self view];
  v80 = [v82 safeAreaLayoutGuide];
  v79 = [v80 topAnchor];
  v78 = [v81 constraintEqualToAnchor:v79 constant:30.0];
  v91[0] = v78;
  v76 = [(MapsThemeLabel *)v42 centerXAnchor];
  v77 = [(LPRRegionSelectionViewController *)self view];
  v75 = [v77 centerXAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:0.0];
  v91[1] = v74;
  v72 = [(MapsThemeLabel *)v42 widthAnchor];
  v73 = [(LPRRegionSelectionViewController *)self view];
  v71 = [v73 widthAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 multiplier:0.9 constant:0.0];
  v91[2] = v70;
  v69 = [(LPRRegionSelectionViewController *)self regionTableView];
  v67 = [v69 topAnchor];
  v66 = [(MapsThemeLabel *)v42 bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:25.0];
  v91[3] = v65;
  v64 = [(LPRRegionSelectionViewController *)self regionTableView];
  v62 = [v64 centerXAnchor];
  v63 = [(LPRRegionSelectionViewController *)self view];
  v61 = [v63 centerXAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:0.0];
  v91[4] = v60;
  v59 = [(LPRRegionSelectionViewController *)self regionTableView];
  v58 = [v59 widthAnchor];
  v49 = [(LPRRegionSelectionViewController *)self view];
  v50 = [v49 widthAnchor];
  [v58 constraintEqualToAnchor:v50 multiplier:1.0];
  v51 = v68 = v16;
  v91[5] = v51;
  v52 = [(LPRRegionSelectionViewController *)self regionTableView];
  v53 = [v52 bottomAnchor];
  v54 = [(LPRRegionSelectionViewController *)self view];
  v55 = [v54 bottomAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:-10.0];
  v91[6] = v56;
  v57 = [NSArray arrayWithObjects:v91 count:7];
  [v85 addConstraints:v57];
}

- (LPRRegionSelectionViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = LPRRegionSelectionViewController;
  v10 = [(LPRRegionSelectionViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(LPRRegionSelectionViewController *)v10 setCurrentVehicle:v8];
    v11->_scenario = a3;
    objc_storeWeak(&v11->_delegate, v9);
  }

  return v11;
}

@end