@interface LPROnboardingAddLicensePlatePageViewController
- (BOOL)plateIsValid:(id)valid;
- (LPROnboardingAddLicensePlatePageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate region:(id)region lprRules:(id)rules powerTypes:(id)types;
- (id)_powerTitleAtRow:(int64_t)row;
- (id)licensePlateRules;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_didEditTextField:(id)field;
- (void)handleSingleTap:(id)tap;
- (void)nextButtonPressed;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation LPROnboardingAddLicensePlatePageViewController

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  if (self->_isAddingVehicle)
  {
    v4 = +[MKMapService sharedService];
    vehicles = [updateCopy vehicles];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vehicles count]);
    stringValue = [v6 stringValue];
    [v4 captureUserAction:2107 onTarget:660 eventValue:stringValue];

    self->_isAddingVehicle = 0;
  }

  if (self->_isSubmittingLicensePlate)
  {
    v8 = +[MKMapService sharedService];
    vehicles2 = [updateCopy vehicles];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vehicles2 count]);
    stringValue2 = [v10 stringValue];
    [v8 captureUserAction:2114 onTarget:660 eventValue:stringValue2];

    self->_isSubmittingLicensePlate = 0;
  }
}

- (void)nextButtonPressed
{
  regionCode = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  licensePlateTextField = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateTextField];
  text = [licensePlateTextField text];
  uppercaseString = [text uppercaseString];
  v21 = [NSString stringWithFormat:@"%@%@", regionCode, uppercaseString];

  if ([(LPROnboardingAddLicensePlatePageViewController *)self plateIsValid:v21])
  {
    vehicle = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [vehicle setLicensePlate:v21];

    self->_isAddingVehicle = self->_scenario == 0;
    self->_isSubmittingLicensePlate = 1;
    v8 = [LPRConfirmPageViewController alloc];
    scenario = self->_scenario;
    vehicle = self->_vehicle;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    powerButton = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton];
    titleLabel = [powerButton titleLabel];
    text2 = [titleLabel text];
    v15 = [(LPRConfirmPageViewController *)v8 initWithScenario:scenario vehicle:vehicle delegate:WeakRetained vehicleTypeTitle:text2];

    navigationController = [(LPROnboardingAddLicensePlatePageViewController *)self navigationController];
    [navigationController pushViewController:v15 animated:1];
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    navigationController = [(LPRConfirmPageViewController *)v15 localizedStringForKey:@"[LPR Onboarding] error message title" value:@"localized string not found" table:0];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"[LPR Onboarding] error message body" value:@"localized string not found" table:0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"[LPR Onboarding] error confirmation" value:@"localized string not found" table:0];
    [(LPROnboardingAddLicensePlatePageViewController *)self _maps_presentSimpleAlertWithTitle:navigationController message:v18 dismissalActionTitle:v20];
  }
}

- (BOOL)plateIsValid:(id)valid
{
  validCopy = valid;
  selfCopy = self;
  licensePlateRules = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateRules];
  v6 = licensePlateRules;
  if (licensePlateRules)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = licensePlateRules;
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
          v13 = [validCopy length];
          if (v13 >= [v12 minLength] && v13 <= objc_msgSend(v12, "maxLength"))
          {
            regularExpression = [v12 regularExpression];
            v34 = 0;
            v15 = [NSRegularExpression regularExpressionWithPattern:regularExpression options:1 error:&v34];
            v16 = v34;

            if ([v15 numberOfMatchesInString:validCopy options:0 range:{0, v13}])
            {
              validCharacters = [v12 validCharacters];

              if (validCharacters)
              {
                validCharacters2 = [v12 validCharacters];
                regionCode = [(LPROnboardingAddLicensePlatePageViewController *)selfCopy regionCode];
                v20 = [NSString stringWithFormat:@"%@%@", validCharacters2, regionCode];

                v21 = [NSCharacterSet characterSetWithCharactersInString:v20];
                invertedSet = [v21 invertedSet];

                v23 = [validCopy rangeOfCharacterFromSet:invertedSet];
                if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v29 = 0;
                  goto LABEL_22;
                }
              }

              impliedPowerTypeKeys = [v12 impliedPowerTypeKeys];
              if (!impliedPowerTypeKeys || (v25 = impliedPowerTypeKeys, -[LPROnboardingAddLicensePlatePageViewController vehicle](selfCopy, "vehicle"), v26 = objc_claimAutoreleasedReturnValue(), [v26 lprPowerType], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v25, "containsObject:", v27), v27, v26, v25, (v28 & 1) != 0))
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
  currentRegion = [(LPROnboardingAddLicensePlatePageViewController *)self currentRegion];
  info = [currentRegion info];
  licensePlateValidationRules = [info licensePlateValidationRules];

  if (licensePlateValidationRules)
  {
    currentRegion2 = [(LPROnboardingAddLicensePlatePageViewController *)self currentRegion];
    info2 = [currentRegion2 info];
    licensePlateValidationRules2 = [info2 licensePlateValidationRules];
  }

  else
  {
    lprRules = [(LPROnboardingAddLicensePlatePageViewController *)self lprRules];
    currentRegion2 = [lprRules regions];

    info2 = [currentRegion2 firstObject];
    v7Info = [info2 info];
    licensePlateValidationRules2 = [v7Info licensePlateValidationRules];
  }

  return licensePlateValidationRules2;
}

- (void)_didEditTextField:(id)field
{
  text = [field text];
  v4 = [text length] != 0;
  navigationItem = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton:view];
  v8 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:row];
  [v7 setTitle:v8 forState:0];

  powerButton = [(LPROnboardingAddLicensePlatePageViewController *)self powerButton];
  [powerButton sizeToFit];

  powerTypesKey = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  v10 = [powerTypesKey objectAtIndexedSubscript:row];
  vehicle = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  [vehicle setLprPowerType:v10];
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  reusingViewCopy = reusingView;
  v9 = reusingViewCopy;
  if (!reusingViewCopy)
  {
    v9 = objc_alloc_init(UILabel);
    v10 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    [v9 setFont:v10];

    [v9 setTextAlignment:1];
  }

  v11 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:row];
  [v9 setText:v11];

  return v9;
}

- (id)_powerTitleAtRow:(int64_t)row
{
  powerTypes = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypes];
  powerTypesKey = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  v7 = [powerTypesKey objectAtIndexedSubscript:row];
  v8 = [powerTypes objectForKey:v7];

  titles = [v8 titles];
  v10 = [GEOLocalizedString bestStringForCurrentLocale:titles fallbackToFirstAvailable:0];

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

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey:view];
  v5 = [v4 count];

  return v5;
}

- (void)handleSingleTap:(id)tap
{
  view = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [view endEditing:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(LPROnboardingAddLicensePlatePageViewController *)self traitCollection];
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
  v10.receiver = self;
  v10.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v10 viewWillAppear:?];
  traitCollection = [(LPROnboardingAddLicensePlatePageViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }

  licensePlateTextField = [(LPROnboardingAddLicensePlatePageViewController *)self licensePlateTextField];
  [licensePlateTextField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v245.receiver = self;
  v245.super_class = LPROnboardingAddLicensePlatePageViewController;
  [(LPROnboardingAddLicensePlatePageViewController *)&v245 viewDidLoad];
  view = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [view setAccessibilityIdentifier:@"LPROnboardingAddLicensePlatePageView"];

  v4 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"ScrollView"];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
  [(UIScrollView *)self->_scrollView setKeyboardDismissMode:1];
  view2 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [view2 addSubview:self->_scrollView];

  v7 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v7;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_containerView];
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSingleTap:"];
  [v9 setCancelsTouchesInView:0];
  v235 = v9;
  [(UIView *)self->_containerView addGestureRecognizer:v9];
  powerTypes = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypes];
  allKeys = [powerTypes allKeys];
  [(LPROnboardingAddLicensePlatePageViewController *)self setPowerTypesKey:allKeys];

  v12 = objc_alloc_init(UIPickerView);
  [(LPROnboardingAddLicensePlatePageViewController *)self setPowerPicker:v12];

  powerPicker = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [powerPicker setAccessibilityIdentifier:@"PowerPicker"];

  powerPicker2 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [powerPicker2 setDataSource:self];

  powerPicker3 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [powerPicker3 setDelegate:self];

  powerPicker4 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [powerPicker4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = self->_containerView;
  powerPicker5 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  [(UIView *)v17 addSubview:powerPicker5];

  v19 = +[UIColor systemBackgroundColor];
  view3 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  [view3 setBackgroundColor:v19];

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

  regionCode = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  [(MapsThemeLabel *)v40 setText:regionCode];

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
  vehicle = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  licensePlate = [vehicle licensePlate];
  regionCode2 = [(LPROnboardingAddLicensePlatePageViewController *)self regionCode];
  v54 = [licensePlate stringByReplacingOccurrencesOfString:regionCode2 withString:&stru_1016631F0];
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
  titleLabel = [v60 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  v62 = [(LPROnboardingAddLicensePlatePageViewController *)self _powerTitleAtRow:0];
  [v60 setTitle:v62 forState:0];

  v234 = v34;
  v63 = [v34 fontDescriptorWithSymbolicTraits:2];
  v64 = [UIFont fontWithDescriptor:v63 size:0.0];
  titleLabel2 = [v60 titleLabel];
  [titleLabel2 setFont:v64];

  [v60 _accessibilitySetInterfaceStyleIntent:1];
  layer = [v60 layer];
  [layer setCornerRadius:8.0];

  [v60 setContentHorizontalAlignment:4];
  titleLabel3 = [v60 titleLabel];
  [titleLabel3 setMinimumScaleFactor:0.5];

  titleLabel4 = [v60 titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:1];

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

  font = [(MapsThemeLabel *)v69 font];
  [font pointSize];
  if (10.0 / v72 > 1.0)
  {
    [(MapsThemeLabel *)v69 setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(MapsThemeLabel *)v69 font];
    [font2 pointSize];
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
  navigationItem = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v81];

  navigationItem2 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"RightBarButtonItem"];

  vehicle2 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  licensePlate2 = [vehicle2 licensePlate];
  v87 = [licensePlate2 length] != 0;
  navigationItem3 = [(LPROnboardingAddLicensePlatePageViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem2 setEnabled:v87];

  view4 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v229 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v246[0] = v229;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view6 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v225 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v246[1] = v225;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view7 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v221 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v246[2] = v221;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide widthAnchor];
  view8 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  widthAnchor2 = [view8 widthAnchor];
  v216 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v246[3] = v216;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view9 = [(LPROnboardingAddLicensePlatePageViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v212 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v246[4] = v212;
  topAnchor3 = [(UIView *)self->_containerView topAnchor];
  topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
  v209 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v246[5] = v209;
  leadingAnchor3 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor4 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v206 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v246[6] = v206;
  trailingAnchor3 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v203 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v246[7] = v203;
  bottomAnchor3 = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v200 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v246[8] = v200;
  topAnchor5 = [(MapsThemeLabel *)v243 topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_containerView safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide topAnchor];
  v196 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:25.0];
  v246[9] = v196;
  centerXAnchor = [(MapsThemeLabel *)v243 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
  v193 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v246[10] = v193;
  widthAnchor3 = [(MapsThemeLabel *)v243 widthAnchor];
  widthAnchor4 = [(UIView *)self->_containerView widthAnchor];
  v190 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.899999976];
  v246[11] = v190;
  topAnchor7 = [(MapsThemeLabel *)v242 topAnchor];
  bottomAnchor5 = [(MapsThemeLabel *)v243 bottomAnchor];
  v187 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:15.0];
  v246[12] = v187;
  centerXAnchor3 = [(MapsThemeLabel *)v242 centerXAnchor];
  centerXAnchor4 = [(MapsThemeLabel *)v243 centerXAnchor];
  v184 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v246[13] = v184;
  widthAnchor5 = [(MapsThemeLabel *)v242 widthAnchor];
  widthAnchor6 = [(UIView *)self->_containerView widthAnchor];
  v181 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.899999976];
  v246[14] = v181;
  topAnchor8 = [(MapsThemeLabel *)v241 topAnchor];
  bottomAnchor6 = [(MapsThemeLabel *)v242 bottomAnchor];
  v178 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:45.0];
  v246[15] = v178;
  leadingAnchor5 = [(MapsThemeLabel *)v241 leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_containerView leadingAnchor];
  v175 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:15.0];
  v246[16] = v175;
  trailingAnchor5 = [(MapsThemeLabel *)v241 trailingAnchor];
  leadingAnchor7 = [(MapsThemeLabel *)v240 leadingAnchor];
  v172 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor7 constant:-2.0];
  v246[17] = v172;
  leadingAnchor8 = [(MapsThemeLabel *)v240 leadingAnchor];
  centerXAnchor5 = [(UIView *)self->_containerView centerXAnchor];
  v169 = [leadingAnchor8 constraintEqualToAnchor:centerXAnchor5 constant:-15.0];
  v246[18] = v169;
  centerYAnchor = [(MapsThemeLabel *)v240 centerYAnchor];
  centerYAnchor2 = [(MapsThemeLabel *)v241 centerYAnchor];
  v166 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v246[19] = v166;
  leadingAnchor9 = [v239 leadingAnchor];
  trailingAnchor6 = [(MapsThemeLabel *)v240 trailingAnchor];
  v163 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor6 constant:15.0];
  v246[20] = v163;
  centerYAnchor3 = [v239 centerYAnchor];
  centerYAnchor4 = [(MapsThemeLabel *)v241 centerYAnchor];
  v160 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v246[21] = v160;
  trailingAnchor7 = [v239 trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_containerView trailingAnchor];
  v157 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-15.0];
  v246[22] = v157;
  topAnchor9 = [(MapsThemeLabel *)v238 topAnchor];
  bottomAnchor7 = [(MapsThemeLabel *)v241 bottomAnchor];
  v154 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:25.0];
  v246[23] = v154;
  leadingAnchor10 = [(MapsThemeLabel *)v238 leadingAnchor];
  leadingAnchor11 = [(MapsThemeLabel *)v241 leadingAnchor];
  v151 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v246[24] = v151;
  trailingAnchor9 = [(MapsThemeLabel *)v238 trailingAnchor];
  leadingAnchor12 = [v237 leadingAnchor];
  v148 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:leadingAnchor12];
  v246[25] = v148;
  leadingAnchor13 = [v237 leadingAnchor];
  centerXAnchor6 = [(UIView *)self->_containerView centerXAnchor];
  v145 = [leadingAnchor13 constraintEqualToAnchor:centerXAnchor6 constant:-15.0];
  v246[26] = v145;
  centerYAnchor5 = [v237 centerYAnchor];
  centerYAnchor6 = [(MapsThemeLabel *)v238 centerYAnchor];
  v142 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v246[27] = v142;
  trailingAnchor10 = [v237 trailingAnchor];
  trailingAnchor11 = [(UIView *)self->_containerView trailingAnchor];
  v139 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-15.0];
  v246[28] = v139;
  topAnchor10 = [(MapsThemeLabel *)v69 topAnchor];
  bottomAnchor8 = [(MapsThemeLabel *)v238 bottomAnchor];
  v136 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:25.0];
  v246[29] = v136;
  v90 = v69;
  leadingAnchor14 = [(MapsThemeLabel *)v69 leadingAnchor];
  leadingAnchor15 = [(MapsThemeLabel *)v241 leadingAnchor];
  v133 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
  v246[30] = v133;
  widthAnchor7 = [(MapsThemeLabel *)v69 widthAnchor];
  widthAnchor8 = [(UIView *)self->_containerView widthAnchor];
  v130 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:0.899999976];
  v246[31] = v130;
  powerPicker6 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  widthAnchor9 = [powerPicker6 widthAnchor];
  widthAnchor10 = [(UIView *)self->_containerView widthAnchor];
  v126 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10];
  v246[32] = v126;
  powerPicker7 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  heightAnchor = [powerPicker7 heightAnchor];
  v123 = [heightAnchor constraintEqualToConstant:170.0];
  v246[33] = v123;
  powerPicker8 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  bottomAnchor9 = [powerPicker8 bottomAnchor];
  bottomAnchor10 = [(UIView *)self->_containerView bottomAnchor];
  v94 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v246[34] = v94;
  powerPicker9 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
  topAnchor11 = [powerPicker9 topAnchor];
  v233 = v90;
  bottomAnchor11 = [(MapsThemeLabel *)v90 bottomAnchor];
  v98 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:bottomAnchor11];
  v246[35] = v98;
  v99 = [NSArray arrayWithObjects:v246 count:36];
  [view4 addConstraints:v99];

  vehicle3 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
  lprPowerType = [vehicle3 lprPowerType];

  powerTypesKey = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
  powerPicker11 = powerTypesKey;
  if (lprPowerType)
  {
    v104 = [powerTypesKey count];

    if (v104 >= 1)
    {
      v105 = 0;
      do
      {
        vehicle4 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
        lprPowerType2 = [vehicle4 lprPowerType];
        if (lprPowerType2)
        {
          v108 = lprPowerType2;
          vehicle5 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
          lprPowerType3 = [vehicle5 lprPowerType];
          powerTypesKey2 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
          v112 = [powerTypesKey2 objectAtIndexedSubscript:v105];
          v113 = [lprPowerType3 isEqualToString:v112];

          if (v113)
          {
            powerPicker10 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
            [powerPicker10 selectRow:v105 inComponent:0 animated:1];

            powerPicker11 = [(LPROnboardingAddLicensePlatePageViewController *)self powerPicker];
            [(LPROnboardingAddLicensePlatePageViewController *)self pickerView:powerPicker11 didSelectRow:v105 inComponent:0];
            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v105;
        powerTypesKey3 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
        v115 = [powerTypesKey3 count];
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

    powerPicker11 = [(LPROnboardingAddLicensePlatePageViewController *)self powerTypesKey];
    firstObject = [powerPicker11 firstObject];
    vehicle6 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [vehicle6 setLprPowerType:firstObject];
  }

  else
  {
    firstObject2 = [powerTypesKey firstObject];
    vehicle7 = [(LPROnboardingAddLicensePlatePageViewController *)self vehicle];
    [vehicle7 setLprPowerType:firstObject2];

LABEL_16:
    v117 = v233;
  }
}

- (LPROnboardingAddLicensePlatePageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate region:(id)region lprRules:(id)rules powerTypes:(id)types
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  regionCopy = region;
  rulesCopy = rules;
  typesCopy = types;
  v26.receiver = self;
  v26.super_class = LPROnboardingAddLicensePlatePageViewController;
  v19 = [(LPROnboardingAddLicensePlatePageViewController *)&v26 init];
  v20 = v19;
  if (v19)
  {
    [(LPROnboardingAddLicensePlatePageViewController *)v19 setVehicle:vehicleCopy];
    info = [regionCopy info];
    licensePlateTemplate = [info licensePlateTemplate];
    v23 = [licensePlateTemplate stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setRegionCode:v23];

    [(LPROnboardingAddLicensePlatePageViewController *)v20 setCurrentRegion:regionCopy];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setLprRules:rulesCopy];
    [(LPROnboardingAddLicensePlatePageViewController *)v20 setPowerTypes:typesCopy];
    v20->_scenario = scenario;
    objc_storeWeak(&v20->_delegate, delegateCopy);
    v24 = +[VGVirtualGarageService sharedService];
    [v24 registerObserver:v20];
  }

  return v20;
}

@end