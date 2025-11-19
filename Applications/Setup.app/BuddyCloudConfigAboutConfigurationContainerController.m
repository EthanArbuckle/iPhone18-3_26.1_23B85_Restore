@interface BuddyCloudConfigAboutConfigurationContainerController
- (BuddyCloudConfigAboutConfigurationContainerController)init;
- (id)_detailText;
- (void)_doneTapped:(id)a3;
- (void)setCloudConfiguration:(id)a3;
- (void)setCloudConfigurationFromProfileConnection:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyCloudConfigAboutConfigurationContainerController

- (BuddyCloudConfigAboutConfigurationContainerController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigAboutConfigurationContainerController;
  location = [(BuddyCloudConfigAboutConfigurationContainerController *)&v7 initWithTitle:v4 detailText:0 symbolName:0];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyCloudConfigAboutConfigurationContainerController;
  [(BuddyCloudConfigAboutConfigurationContainerController *)&v5 viewWillAppear:a3];
  v3 = [(BuddyCloudConfigAboutConfigurationContainerController *)v8 headerView];
  v4 = [(BuddyCloudConfigAboutConfigurationContainerController *)v8 _detailText];
  [v3 setDetailText:v4];
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigAboutConfigurationContainerController;
  [(BuddyCloudConfigAboutConfigurationContainerController *)&v7 viewDidLoad];
  v2 = [UIBarButtonItem alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Localizable"];
  v5 = [v2 initWithTitle:v4 style:2 target:v9 action:"_doneTapped:"];
  v6 = [(BuddyCloudConfigAboutConfigurationContainerController *)v9 navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (void)_doneTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigAboutConfigurationContainerController *)v5 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  objc_storeStrong(location, 0);
}

- (void)setCloudConfiguration:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [location[0] details];
  if (v15)
  {
    v3 = [location[0] isSupervised];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setIsSupervised:v3 & 1];
    v4 = [v15 objectForKeyedSubscript:kCCOrganizationSupportPhoneKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationSupportPhone:v4];

    v5 = [v15 objectForKeyedSubscript:kCCOrganizationSupportEmailKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationSupportEmail:v5];

    v6 = [v15 objectForKeyedSubscript:kCCOrganizationNameKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationName:v6];

    v7 = [v15 objectForKeyedSubscript:kCCOrganizationDepartmentKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationDepartment:v7];

    v8 = [v15 objectForKeyedSubscript:kCCOrganizationAddressKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddress:v8];

    v9 = [v15 objectForKeyedSubscript:kCCOrganizationAddressLine1Key];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddressLine1:v9];

    v10 = [v15 objectForKeyedSubscript:kCCOrganizationAddressLine2Key];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddressLine2:v10];

    v11 = [v15 objectForKeyedSubscript:kCCOrganizationCityKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationCity:v11];

    v12 = [v15 objectForKeyedSubscript:kCCOrganizationRegionKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationRegion:v12];

    v13 = [v15 objectForKeyedSubscript:kCCOrganizationZipCodeKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationZipCode:v13];

    v14 = [v15 objectForKeyedSubscript:kCCOrganizationCountryKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationCountry:v14];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setCloudConfigurationFromProfileConnection:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [location[0] cloudConfigurationDetails];
  if (v15)
  {
    v3 = [location[0] isSupervised];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setIsSupervised:v3 & 1];
    v4 = [v15 objectForKeyedSubscript:kMCCCOrganizationSupportPhoneKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationSupportPhone:v4];

    v5 = [v15 objectForKeyedSubscript:kCCOrganizationSupportEmailKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationSupportEmail:v5];

    v6 = [location[0] deviceOrganizationName];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationName:v6];

    v7 = [location[0] deviceDepartmentName];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationDepartment:v7];

    v8 = [location[0] deviceOrganizationAddress];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddress:v8];

    v9 = [location[0] deviceOrganizationAddressLine1];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddressLine1:v9];

    v10 = [location[0] deviceOrganizationAddressLine2];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationAddressLine2:v10];

    v11 = [location[0] deviceOrganizationCity];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationCity:v11];

    v12 = [location[0] deviceOrganizationRegion];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationRegion:v12];

    v13 = [location[0] deviceOrganizationZipCode];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationZipCode:v13];

    v14 = [location[0] deviceOrganizationCountry];
    [(BuddyCloudConfigAboutConfigurationContainerController *)v17 setOrganizationCountry:v14];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_detailText
{
  v43 = self;
  v42[1] = a2;
  v42[0] = objc_opt_new();
  v2 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationName];

  if (v2)
  {
    v3 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationName];
    [v42[0] addObject:v3];
  }

  v4 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationDepartment];

  if (v4)
  {
    v5 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationDepartment];
    [v42[0] addObject:v5];
  }

  v41 = 0;
  v40 = objc_opt_new();
  v6 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationAddressLine1];
  [v40 setValue:v6 forKey:CNPostalAddressStreetKey];

  v7 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationAddressLine2];
  [v40 setValue:v7 forKey:CNPostalAddressSubLocalityKey];

  v8 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationCity];
  [v40 setValue:v8 forKey:CNPostalAddressCityKey];

  v9 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationRegion];
  [v40 setValue:v9 forKey:CNPostalAddressStateKey];

  v10 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationZipCode];
  [v40 setValue:v10 forKey:CNPostalAddressPostalCodeKey];

  v11 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationCountry];
  [v40 setValue:v11 forKey:CNPostalAddressCountryKey];

  v39 = [CNPostalAddress postalAddressWithDictionaryRepresentation:v40];
  if (v39)
  {
    location = [CNPostalAddressFormatter stringFromPostalAddress:v39 style:0];
    if ([location length])
    {
      [v42[0] addObject:location];
      v41 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  v36 = 0;
  v12 = 0;
  if ((v41 & 1) == 0)
  {
    v37 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationAddress];
    v36 = 1;
    v12 = v37 != 0;
  }

  if (v36)
  {
  }

  if (v12)
  {
    v13 = objc_opt_new();
    v14 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationAddress];
    v35 = [v13 postalAddressFromString:v14];

    v34 = 0;
    if (v35)
    {
      v15 = [CNPostalAddressFormatter stringFromPostalAddress:v35 style:0];
      v16 = v34;
      v34 = v15;
    }

    v17 = v42[0];
    v32 = 0;
    if (!v34)
    {
      v33 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationAddress];
      v32 = 1;
    }

    [v17 addObject:?];
    if (v32)
    {
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v18 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationSupportPhone];

  if (v18)
  {
    v19 = v42[0];
    v20 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationSupportPhone];
    [v19 addObject:v20];
  }

  v21 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationSupportEmail];

  if (v21)
  {
    v22 = v42[0];
    v23 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationSupportEmail];
    [v22 addObject:v23];
  }

  [v42[0] addObject:@"\n"];
  v24 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationName];

  if (v24)
  {
    v25 = +[NSBundle mainBundle];
    v26 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ABOUT_DESCRIPTION"];
    v27 = [(NSBundle *)v25 localizedStringForKey:v26 value:&stru_10032F900 table:@"Localizable"];
    v28 = [(BuddyCloudConfigAboutConfigurationContainerController *)v43 organizationName];
    v31 = [NSString localizedStringWithFormat:v27, v28];

    [v42[0] addObject:v31];
    objc_storeStrong(&v31, 0);
  }

  v29 = [v42[0] componentsJoinedByString:@"\n"];
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v42, 0);

  return v29;
}

@end