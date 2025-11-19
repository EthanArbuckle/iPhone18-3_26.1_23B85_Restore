@interface LPROnboardingAddLicensePlatePageViewController
- (BOOL)plateIsValid:(id)a3;
- (LPROnboardingAddLicensePlatePageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5 region:(id)a6 lprRules:(id)a7 powerTypes:(id)a8;
- (id)_powerTitleAtRow:(int64_t)a3;
- (id)licensePlateRules;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_didEditTextField:(id)a3;
- (void)handleSingleTap:(id)a3;
- (void)nextButtonPressed;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation LPROnboardingAddLicensePlatePageViewController

- (void)virtualGarageDidUpdate:(id)a3
{
  v12 = a3;
  if (self->_isAddingVehicle)
  {
    v4 = +[MKMapService sharedService];
    v5 = [v12 vehicles];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    v7 = [v6 stringValue];
    [v4 captureUserAction:2107 onTarget:660 eventValue:v7];

    self->_isAddingVehicle = 0;
  }

  if (self->_isSubmittingLicensePlate)
  {
    v8 = +[MKMapService sharedService];
    v9 = [v12 vehicles];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
    v11 = [v10 stringValue];
    [v8 captureUserAction:2114 onTarget:660 eventValue:v11];

    self->_isSubmittingLicensePlate = 0;
  }
}

- (void)nextButtonPressed
{
  v3 = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  v4 = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateTextField];
  v5 = [v4 text];
  v6 = [v5 uppercaseString];
  v21 = [NSString stringWithFormat:@"%@%@", v3, v6];

  if ([(LPROnboardingAddLicensePlatePageViewController *)self plateIsValid:v21])
  {
    v7 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [v7 setLicensePlate:v21];

    self->_isAddingVehicle = self->_scenario == 0;
    self->_isSubmittingLicensePlate = 1;
    v8 = [LPRConfirmPageViewController alloc];
    scenario = self->_scenario;
    vehicle = self->_vehicle;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton];
    v13 = [v12 titleLabel];
    v14 = [v13 text];
    v15 = [(LPRConfirmPageViewController *)v8 initWithScenario:scenario vehicle:vehicle delegate:WeakRetained vehicleTypeTitle:v14];

    v16 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationController];
    [v16 pushViewController:v15 animated:1];
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v16 = [(LPRConfirmPageViewController *)v15 localizedStringForKey:@"[LPR Onboarding] error message title" value:@"localized string not found" table:0];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"[LPR Onboarding] error message body" value:@"localized string not found" table:0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"[LPR Onboarding] error confirmation" value:@"localized string not found" table:0];
    [(LPROnboardingAddLicensePlatePageViewController *)self _maps_presentSimpleAlertWithTitle:v16 message:v18 dismissalActionTitle:v20];
  }
}

- (BOOL)plateIsValid:(id)a3
{
  v4 = a3;
  v33 = self;
  v5 = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateRules];
  v6 = v5;
  if (v5)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = v6;
      v32 = v7;
      v10 = *v36;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v4 length];
          if (v13 >= [v12 minLength] && v13 <= objc_msgSend(v12, "maxLength"))
          {
            v14 = [v12 regularExpression];
            v34 = 0;
            v15 = [NSRegularExpression regularExpressionWithPattern:v14 options:1 error:&v34];
            v16 = v34;

            if ([v15 numberOfMatchesInString:v4 options:0 range:{0, v13}])
            {
              v17 = [v12 validCharacters];

              if (v17)
              {
                v18 = [v12 validCharacters];
                v19 = [(LPROnboardingAddLicensePlatePageViewController *)v33 regionCode];
                v20 = [NSString stringWithFormat:@"%@%@", v18, v19];

                v21 = [NSCharacterSet characterSetWithCharactersInString:v20];
                v22 = [v21 invertedSet];

                v23 = [v4 rangeOfCharacterFromSet:v22];
                if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v29 = 0;
                  goto LABEL_22;
                }
              }

              v24 = [v12 impliedPowerTypeKeys];
              if (!v24 || (v25 = v24, -[LPROnboardingAddLicensePlatePageViewController vehicle](v33, "vehicle"), v26 = objc_claimAutoreleasedReturnValue(), [v26 lprPowerType], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v25, "containsObject:", v27), v27, v26, v25, (v28 & 1) != 0))
              {
                v29 = 1;
LABEL_22:

                v6 = v31;
                v7 = v32;
                goto LABEL_23;
              }
            }

            v7 = v32;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v29 = 0;
      v6 = v31;
    }

    else
    {
      v29 = 0;
    }

LABEL_23:
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

- (id)licensePlateRules
{
  v3 = [(LPROnboardingAddLicensePlatePageViewController *)self currentRegion];
  v4 = [v3 info];
  v5 = [v4 licensePlateValidationRules];

  if (v5)
  {
    v6 = [(LPROnboardingAddLicensePlatePageViewController *)self currentRegion];
    v7 = [v6 info];
    v8 = [v7 licensePlateValidationRules];
  }

  else
  {
    v9 = [(LPROnboardingAddLicensePlatePageViewController *)self lprRules];
    v6 = [v9 regions];

    v7 = [v6 firstObject];
    v10 = [v7 info];
    v8 = [v10 licensePlateValidationRules];
  }

  return v8;
}

- (void)_didEditTextField:(id)a3
{
  v7 = [a3 text];
  v4 = [v7 length] != 0;
  v5 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton:a3];
  v8 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:a4];
  [v7 setTitle:v8 forState:0];

  v9 = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton];
  [v9 sizeToFit];

  v12 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  v10 = [v12 objectAtIndexedSubscript:a4];
  v11 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  [v11 setLprPowerType:v10];
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v8 = a6;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(UILabel);
    v10 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    [v9 setFont:v10];

    [v9 setTextAlignment:1];
  }

  v11 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:a4];
  [v9 setText:v11];

  return v9;
}

- (id)_powerTitleAtRow:(int64_t)a3
{
  v5 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypes];
  v6 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v5 objectForKey:v7];

  v9 = [v8 titles];
  v10 = [GEOLocalizedString bestStringForCurrentLocale:v9 fallbackToFirstAvailable:0];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_1016631F0;
  }

  v12 = v11;

  return v11;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey:a3];
  v5 = [v4 count];

  return v5;
}

- (void)handleSingleTap:(id)a3
{
  v3 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [v3 endEditing:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v7 viewWillDisappear:a3];
  v4 = [(LPROnboardingAddLicensePlatePageViewController *)self traitCollection];
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
  v10.receiver = self;
  v10.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v10 viewWillAppear:?];
  v5 = [(LPROnboardingAddLicensePlatePageViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }

  v9 = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateTextField];
  [v9 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v245.receiver = self;
  v245.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v245 viewDidLoad];
  v3 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [v3 setAccessibilityIdentifier:@"LPROnboardingAddLicensePlatePageView"];

  v4 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"ScrollView"];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
  [(UIScrollView *)self->_scrollView setKeyboardDismissMode:1];
  v6 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [v6 addSubview:self->_scrollView];

  v7 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v7;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_containerView];
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSingleTap:"];
  [v9 setCancelsTouchesInView:0];
  v235 = v9;
  [(UIView *)self->_containerView addGestureRecognizer:v9];
  v10 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypes];
  v11 = [v10 allKeys];
  [(LPROnboardingAddLicensePlatePageViewController *)self setPowerTypesKey:v11];

  v12 = objc_alloc_init(UIPickerView);
  [(LPROnboardingAddLicensePlatePageViewController *)self setPowerPicker:v12];

  v13 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [v13 setAccessibilityIdentifier:@"PowerPicker"];

  v14 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [v14 setDataSource:self];

  v15 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [v15 setDelegate:self];

  v16 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = self->_containerView;
  v18 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [(UIView *)v17 addSubview:v18];

  v19 = +[UIColor systemBackgroundColor];
  v20 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [v20 setBackgroundColor:v19];

  v21 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v21 setAccessibilityIdentifier:@"TitleLabel"];
  [(MapsThemeLabel *)v21 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v21 setNumberOfLines:2];
  [(MapsThemeLabel *)v21 setTextAlignment:1];
  [(MapsThemeLabel *)v21 setLineBreakMode:0];
  [(MapsThemeLabel *)v21 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v21 setMinimumScaleFactor:0.5];
  v22 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v23 = [v22 fontDescriptorWithSymbolicTraits:2];
  v24 = [UIFont fontWithDescriptor:v23 size:0.0];
  [(MapsThemeLabel *)v21 setFont:v24];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"[LPR Onboarding] Add License Plate" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v21 setText:v26];

  v243 = v21;
  [(UIView *)self->_containerView addSubview:v21];
  v27 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v27 setAccessibilityIdentifier:@"DescriptionLabel"];
  [(MapsThemeLabel *)v27 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v27 setNumberOfLines:2];
  [(MapsThemeLabel *)v27 setTextAlignment:1];
  [(MapsThemeLabel *)v27 setLineBreakMode:0];
  v28 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];

  v29 = [v28 fontDescriptorWithSymbolicTraits:2];
  v30 = [UIFont fontWithDescriptor:v29 size:0.0];
  [(MapsThemeLabel *)v27 setFont:v30];

  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"[LPR] Onboarding" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v27 setText:v32];

  v242 = v27;
  [(UIView *)self->_containerView addSubview:v27];
  v33 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v33 setAccessibilityIdentifier:@"PlateLabel"];
  [(MapsThemeLabel *)v33 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v33 setNumberOfLines:2];
  [(MapsThemeLabel *)v33 setTextAlignment:1];
  [(MapsThemeLabel *)v33 setLineBreakMode:4];
  [(MapsThemeLabel *)v33 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v33 setMinimumScaleFactor:0.699999988];
  v34 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:?];

  v35 = [v34 fontDescriptorWithSymbolicTraits:2];
  v36 = [UIFont fontWithDescriptor:v35 size:0.0];
  [(MapsThemeLabel *)v33 setFont:v36];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"Plate Number" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v33 setText:v38];

  LODWORD(v39) = 1148846080;
  [(MapsThemeLabel *)v33 setContentHuggingPriority:0 forAxis:v39];
  v241 = v33;
  [(UIView *)self->_containerView addSubview:v33];
  v40 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v40 setAccessibilityIdentifier:@"PlateRegionLabel"];
  [(MapsThemeLabel *)v40 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v40 setNumberOfLines:2];
  [(MapsThemeLabel *)v40 setTextAlignment:1];
  [(MapsThemeLabel *)v40 setLineBreakMode:0];
  v41 = [v34 fontDescriptorWithSymbolicTraits:2];
  v42 = [UIFont fontWithDescriptor:v41 size:0.0];
  [(MapsThemeLabel *)v40 setFont:v42];

  v43 = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  [(MapsThemeLabel *)v40 setText:v43];

  LODWORD(v44) = 1148846080;
  [(MapsThemeLabel *)v40 setContentHuggingPriority:0 forAxis:v44];
  LODWORD(v45) = 1148846080;
  [(MapsThemeLabel *)v40 setContentCompressionResistancePriority:0 forAxis:v45];
  v240 = v40;
  [(UIView *)self->_containerView addSubview:v40];
  v46 = objc_alloc_init(UITextField);
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v46 setAccessibilityIdentifier:@"LicensePlateTextField"];
  [v46 setAdjustsFontForContentSizeCategory:1];
  [v46 setDelegate:self];
  v47 = +[NSBundle mainBundle];
  v48 = [v47 localizedStringForKey:@"[LPR Onboarding] plate number text" value:@"localized string not found" table:0];
  [v46 setPlaceholder:v48];

  [v46 setAutocorrectionType:1];
  v49 = [v34 fontDescriptorWithSymbolicTraits:2];
  v50 = [UIFont fontWithDescriptor:v49 size:0.0];
  [v46 setFont:v50];

  [v46 setAutocapitalizationType:3];
  v51 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  v52 = [v51 licensePlate];
  v53 = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  v54 = [v52 stringByReplacingOccurrencesOfString:v53 withString:&stru_1016631F0];
  [v46 setText:v54];

  [v46 addTarget:self action:"_didEditTextField:" forControlEvents:0x20000];
  [(UIView *)self->_containerView addSubview:v46];
  v239 = v46;
  [(LPROnboardingAddLicensePlatePageViewController *)self setLicensePlateTextField:v46];
  v55 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v55 setAccessibilityIdentifier:@"PowerLabel"];
  [(MapsThemeLabel *)v55 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v55 setNumberOfLines:2];
  [(MapsThemeLabel *)v55 setTextAlignment:1];
  [(MapsThemeLabel *)v55 setLineBreakMode:4];
  [(MapsThemeLabel *)v55 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v55 setMinimumScaleFactor:0.699999988];
  v56 = [v34 fontDescriptorWithSymbolicTraits:2];
  v57 = [UIFont fontWithDescriptor:v56 size:0.0];
  [(MapsThemeLabel *)v55 setFont:v57];

  v58 = +[NSBundle mainBundle];
  v59 = [v58 localizedStringForKey:@"[LPR Onboarding] power type" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v55 setText:v59];

  v238 = v55;
  [(UIView *)self->_containerView addSubview:v55];
  v60 = [MapsThemeButton buttonWithType:1];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 setAccessibilityIdentifier:@"PowerButton"];
  v61 = [v60 titleLabel];
  [v61 setAdjustsFontForContentSizeCategory:1];

  v62 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:0];
  [v60 setTitle:v62 forState:0];

  v234 = v34;
  v63 = [v34 fontDescriptorWithSymbolicTraits:2];
  v64 = [UIFont fontWithDescriptor:v63 size:0.0];
  v65 = [v60 titleLabel];
  [v65 setFont:v64];

  [v60 _accessibilitySetInterfaceStyleIntent:1];
  v66 = [v60 layer];
  [v66 setCornerRadius:8.0];

  [v60 setContentHorizontalAlignment:4];
  v67 = [v60 titleLabel];
  [v67 setMinimumScaleFactor:0.5];

  v68 = [v60 titleLabel];
  [v68 setAdjustsFontSizeToFitWidth:1];

  [(LPROnboardingAddLicensePlatePageViewController *)self setPowerButton:v60];
  v237 = v60;
  [(UIView *)self->_containerView addSubview:v60];
  v69 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v69 setAccessibilityIdentifier:@"PrivacyLabel"];
  [(MapsThemeLabel *)v69 setAdjustsFontForContentSizeCategory:1];
  [(MapsThemeLabel *)v69 setNumberOfLines:0];
  [(MapsThemeLabel *)v69 setTextAlignment:0];
  v70 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(MapsThemeLabel *)v69 setFont:v70];

  v71 = [(MapsThemeLabel *)v69 font];
  [v71 pointSize];
  if (10.0 / v72 > 1.0)
  {
    [(MapsThemeLabel *)v69 setMinimumScaleFactor:1.0];
  }

  else
  {
    v73 = [(MapsThemeLabel *)v69 font];
    [v73 pointSize];
    [(MapsThemeLabel *)v69 setMinimumScaleFactor:10.0 / v74];
  }

  [(MapsThemeLabel *)v69 setAdjustsFontSizeToFitWidth:1];
  v75 = +[UIColor secondaryLabelColor];
  [(MapsThemeLabel *)v69 setTextColor:v75];

  v76 = +[NSBundle mainBundle];
  v77 = [v76 localizedStringForKey:@"[LPR Onboarding] Add License Plate privacy" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v69 setText:v77];

  [(UIView *)self->_containerView addSubview:v69];
  v78 = [UIBarButtonItem alloc];
  v79 = +[NSBundle mainBundle];
  v80 = [v79 localizedStringForKey:@"Next" value:@"localized string not found" table:0];
  v81 = [v78 initWithTitle:v80 style:0 target:self action:"nextButtonPressed"];
  v82 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  [v82 setRightBarButtonItem:v81];

  v83 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  v84 = [v83 rightBarButtonItem];
  [v84 setAccessibilityIdentifier:@"RightBarButtonItem"];

  v85 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  v86 = [v85 licensePlate];
  v87 = [v86 length] != 0;
  v88 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  v89 = [v88 rightBarButtonItem];
  [v89 setEnabled:v87];

  v236 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v231 = [(UIScrollView *)self->_scrollView topAnchor];
  v232 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v230 = [v232 topAnchor];
  v229 = [v231 constraintEqualToAnchor:v230];
  v246[0] = v229;
  v227 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v228 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v226 = [v228 leadingAnchor];
  v225 = [v227 constraintEqualToAnchor:v226];
  v246[1] = v225;
  v223 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v224 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v222 = [v224 trailingAnchor];
  v221 = [v223 constraintEqualToAnchor:v222];
  v246[2] = v221;
  v220 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v218 = [v220 widthAnchor];
  v219 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v217 = [v219 widthAnchor];
  v216 = [v218 constraintEqualToAnchor:v217];
  v246[3] = v216;
  v214 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v215 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  v213 = [v215 bottomAnchor];
  v212 = [v214 constraintEqualToAnchor:v213];
  v246[4] = v212;
  v211 = [(UIView *)self->_containerView topAnchor];
  v210 = [(UIScrollView *)self->_scrollView topAnchor];
  v209 = [v211 constraintEqualToAnchor:v210];
  v246[5] = v209;
  v208 = [(UIView *)self->_containerView leadingAnchor];
  v207 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v206 = [v208 constraintEqualToAnchor:v207];
  v246[6] = v206;
  v205 = [(UIView *)self->_containerView trailingAnchor];
  v204 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v203 = [v205 constraintEqualToAnchor:v204];
  v246[7] = v203;
  v202 = [(UIView *)self->_containerView bottomAnchor];
  v201 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v200 = [v202 constraintEqualToAnchor:v201];
  v246[8] = v200;
  v198 = [(MapsThemeLabel *)v243 topAnchor];
  v199 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v197 = [v199 topAnchor];
  v196 = [v198 constraintEqualToAnchor:v197 constant:25.0];
  v246[9] = v196;
  v195 = [(MapsThemeLabel *)v243 centerXAnchor];
  v194 = [(UIView *)self->_containerView centerXAnchor];
  v193 = [v195 constraintEqualToAnchor:v194];
  v246[10] = v193;
  v192 = [(MapsThemeLabel *)v243 widthAnchor];
  v191 = [(UIView *)self->_containerView widthAnchor];
  v190 = [v192 constraintEqualToAnchor:v191 multiplier:0.899999976];
  v246[11] = v190;
  v189 = [(MapsThemeLabel *)v242 topAnchor];
  v188 = [(MapsThemeLabel *)v243 bottomAnchor];
  v187 = [v189 constraintEqualToAnchor:v188 constant:15.0];
  v246[12] = v187;
  v186 = [(MapsThemeLabel *)v242 centerXAnchor];
  v185 = [(MapsThemeLabel *)v243 centerXAnchor];
  v184 = [v186 constraintEqualToAnchor:v185];
  v246[13] = v184;
  v183 = [(MapsThemeLabel *)v242 widthAnchor];
  v182 = [(UIView *)self->_containerView widthAnchor];
  v181 = [v183 constraintEqualToAnchor:v182 multiplier:0.899999976];
  v246[14] = v181;
  v180 = [(MapsThemeLabel *)v241 topAnchor];
  v179 = [(MapsThemeLabel *)v242 bottomAnchor];
  v178 = [v180 constraintEqualToAnchor:v179 constant:45.0];
  v246[15] = v178;
  v177 = [(MapsThemeLabel *)v241 leadingAnchor];
  v176 = [(UIView *)self->_containerView leadingAnchor];
  v175 = [v177 constraintEqualToAnchor:v176 constant:15.0];
  v246[16] = v175;
  v174 = [(MapsThemeLabel *)v241 trailingAnchor];
  v173 = [(MapsThemeLabel *)v240 leadingAnchor];
  v172 = [v174 constraintLessThanOrEqualToAnchor:v173 constant:-2.0];
  v246[17] = v172;
  v171 = [(MapsThemeLabel *)v240 leadingAnchor];
  v170 = [(UIView *)self->_containerView centerXAnchor];
  v169 = [v171 constraintEqualToAnchor:v170 constant:-15.0];
  v246[18] = v169;
  v168 = [(MapsThemeLabel *)v240 centerYAnchor];
  v167 = [(MapsThemeLabel *)v241 centerYAnchor];
  v166 = [v168 constraintEqualToAnchor:v167];
  v246[19] = v166;
  v165 = [v239 leadingAnchor];
  v164 = [(MapsThemeLabel *)v240 trailingAnchor];
  v163 = [v165 constraintEqualToAnchor:v164 constant:15.0];
  v246[20] = v163;
  v162 = [v239 centerYAnchor];
  v161 = [(MapsThemeLabel *)v241 centerYAnchor];
  v160 = [v162 constraintEqualToAnchor:v161];
  v246[21] = v160;
  v159 = [v239 trailingAnchor];
  v158 = [(UIView *)self->_containerView trailingAnchor];
  v157 = [v159 constraintEqualToAnchor:v158 constant:-15.0];
  v246[22] = v157;
  v156 = [(MapsThemeLabel *)v238 topAnchor];
  v155 = [(MapsThemeLabel *)v241 bottomAnchor];
  v154 = [v156 constraintEqualToAnchor:v155 constant:25.0];
  v246[23] = v154;
  v153 = [(MapsThemeLabel *)v238 leadingAnchor];
  v152 = [(MapsThemeLabel *)v241 leadingAnchor];
  v151 = [v153 constraintEqualToAnchor:v152];
  v246[24] = v151;
  v150 = [(MapsThemeLabel *)v238 trailingAnchor];
  v149 = [v237 leadingAnchor];
  v148 = [v150 constraintLessThanOrEqualToAnchor:v149];
  v246[25] = v148;
  v147 = [v237 leadingAnchor];
  v146 = [(UIView *)self->_containerView centerXAnchor];
  v145 = [v147 constraintEqualToAnchor:v146 constant:-15.0];
  v246[26] = v145;
  v144 = [v237 centerYAnchor];
  v143 = [(MapsThemeLabel *)v238 centerYAnchor];
  v142 = [v144 constraintEqualToAnchor:v143];
  v246[27] = v142;
  v141 = [v237 trailingAnchor];
  v140 = [(UIView *)self->_containerView trailingAnchor];
  v139 = [v141 constraintEqualToAnchor:v140 constant:-15.0];
  v246[28] = v139;
  v138 = [(MapsThemeLabel *)v69 topAnchor];
  v137 = [(MapsThemeLabel *)v238 bottomAnchor];
  v136 = [v138 constraintEqualToAnchor:v137 constant:25.0];
  v246[29] = v136;
  v90 = v69;
  v135 = [(MapsThemeLabel *)v69 leadingAnchor];
  v134 = [(MapsThemeLabel *)v241 leadingAnchor];
  v133 = [v135 constraintEqualToAnchor:v134];
  v246[30] = v133;
  v132 = [(MapsThemeLabel *)v69 widthAnchor];
  v131 = [(UIView *)self->_containerView widthAnchor];
  v130 = [v132 constraintEqualToAnchor:v131 multiplier:0.899999976];
  v246[31] = v130;
  v129 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  v128 = [v129 widthAnchor];
  v127 = [(UIView *)self->_containerView widthAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v246[32] = v126;
  v125 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  v124 = [v125 heightAnchor];
  v123 = [v124 constraintEqualToConstant:170.0];
  v246[33] = v123;
  v91 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  v92 = [v91 bottomAnchor];
  v93 = [(UIView *)self->_containerView bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];
  v246[34] = v94;
  v95 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  v96 = [v95 topAnchor];
  v233 = v90;
  v97 = [(MapsThemeLabel *)v90 bottomAnchor];
  v98 = [v96 constraintGreaterThanOrEqualToAnchor:v97];
  v246[35] = v98;
  v99 = [NSArray arrayWithObjects:v246 count:36];
  [v236 addConstraints:v99];

  v100 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  v101 = [v100 lprPowerType];

  v102 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  v103 = v102;
  if (v101)
  {
    v104 = [v102 count];

    if (v104 >= 1)
    {
      v105 = 0;
      do
      {
        v106 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
        v107 = [v106 lprPowerType];
        if (v107)
        {
          v108 = v107;
          v109 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
          v110 = [v109 lprPowerType];
          v111 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
          v112 = [v111 objectAtIndexedSubscript:v105];
          v113 = [v110 isEqualToString:v112];

          if (v113)
          {
            v122 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
            [v122 selectRow:v105 inComponent:0 animated:1];

            v103 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
            [(LPROnboardingAddLicensePlatePageViewController *)self pickerView:v103 didSelectRow:v105 inComponent:0];
            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v105;
        v114 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
        v115 = [v114 count];
      }

      while (v105 < v115);
    }

    v116 = sub_100022C48();
    v117 = v233;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Failed to match current power type onto new region. Will fallback to the first available power type", buf, 2u);
    }

    v103 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
    v118 = [v103 firstObject];
    v119 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [v119 setLprPowerType:v118];
  }

  else
  {
    v120 = [v102 firstObject];
    v121 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [v121 setLprPowerType:v120];

LABEL_16:
    v117 = v233;
  }
}

- (LPROnboardingAddLicensePlatePageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5 region:(id)a6 lprRules:(id)a7 powerTypes:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = LPROnboardingAddLicensePlatePageViewController;
  v19 = [(LPROnboardingAddLicensePlatePageViewController *)&v26 init];
  v20 = v19;
  if (v19)
  {
    [(LPROnboardingAddLicensePlatePageViewController *)v19 setVehicle:v14];
    v21 = [v16 info];
    v22 = [v21 licensePlateTemplate];
    v23 = [v22 stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setRegionCode:v23];

    [(LPROnboardingAddLicensePlatePageViewController *)v20 setCurrentRegion:v16];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setLprRules:v17];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setPowerTypes:v18];
    v20->_scenario = a3;
    objc_storeWeak(&v20->_delegate, v15);
    v24 = +[VGVirtualGarageService sharedService];
    [v24 registerObserver:v20];
  }

  return v20;
}

@end