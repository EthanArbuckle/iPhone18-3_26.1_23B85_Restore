@interface BuddyCloudConfigAboutConfigurationContainerController
- (BuddyCloudConfigAboutConfigurationContainerController)init;
- (id)_detailText;
- (void)_doneTapped:(id)tapped;
- (void)setCloudConfiguration:(id)configuration;
- (void)setCloudConfigurationFromProfileConnection:(id)connection;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyCloudConfigAboutConfigurationContainerController;
  [(BuddyCloudConfigAboutConfigurationContainerController *)&v5 viewWillAppear:appear];
  headerView = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy headerView];
  _detailText = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy _detailText];
  [headerView setDetailText:_detailText];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigAboutConfigurationContainerController;
  [(BuddyCloudConfigAboutConfigurationContainerController *)&v7 viewDidLoad];
  v2 = [UIBarButtonItem alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Localizable"];
  v5 = [v2 initWithTitle:v4 style:2 target:selfCopy action:"_doneTapped:"];
  navigationItem = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem:v5];
}

- (void)_doneTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  presentingViewController = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  objc_storeStrong(location, 0);
}

- (void)setCloudConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  details = [location[0] details];
  if (details)
  {
    isSupervised = [location[0] isSupervised];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setIsSupervised:isSupervised & 1];
    v4 = [details objectForKeyedSubscript:kCCOrganizationSupportPhoneKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationSupportPhone:v4];

    v5 = [details objectForKeyedSubscript:kCCOrganizationSupportEmailKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationSupportEmail:v5];

    v6 = [details objectForKeyedSubscript:kCCOrganizationNameKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationName:v6];

    v7 = [details objectForKeyedSubscript:kCCOrganizationDepartmentKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationDepartment:v7];

    v8 = [details objectForKeyedSubscript:kCCOrganizationAddressKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddress:v8];

    v9 = [details objectForKeyedSubscript:kCCOrganizationAddressLine1Key];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddressLine1:v9];

    v10 = [details objectForKeyedSubscript:kCCOrganizationAddressLine2Key];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddressLine2:v10];

    v11 = [details objectForKeyedSubscript:kCCOrganizationCityKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationCity:v11];

    v12 = [details objectForKeyedSubscript:kCCOrganizationRegionKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationRegion:v12];

    v13 = [details objectForKeyedSubscript:kCCOrganizationZipCodeKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationZipCode:v13];

    v14 = [details objectForKeyedSubscript:kCCOrganizationCountryKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationCountry:v14];
  }

  objc_storeStrong(&details, 0);
  objc_storeStrong(location, 0);
}

- (void)setCloudConfigurationFromProfileConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  cloudConfigurationDetails = [location[0] cloudConfigurationDetails];
  if (cloudConfigurationDetails)
  {
    isSupervised = [location[0] isSupervised];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setIsSupervised:isSupervised & 1];
    v4 = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCOrganizationSupportPhoneKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationSupportPhone:v4];

    v5 = [cloudConfigurationDetails objectForKeyedSubscript:kCCOrganizationSupportEmailKey];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationSupportEmail:v5];

    deviceOrganizationName = [location[0] deviceOrganizationName];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationName:deviceOrganizationName];

    deviceDepartmentName = [location[0] deviceDepartmentName];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationDepartment:deviceDepartmentName];

    deviceOrganizationAddress = [location[0] deviceOrganizationAddress];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddress:deviceOrganizationAddress];

    deviceOrganizationAddressLine1 = [location[0] deviceOrganizationAddressLine1];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddressLine1:deviceOrganizationAddressLine1];

    deviceOrganizationAddressLine2 = [location[0] deviceOrganizationAddressLine2];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationAddressLine2:deviceOrganizationAddressLine2];

    deviceOrganizationCity = [location[0] deviceOrganizationCity];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationCity:deviceOrganizationCity];

    deviceOrganizationRegion = [location[0] deviceOrganizationRegion];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationRegion:deviceOrganizationRegion];

    deviceOrganizationZipCode = [location[0] deviceOrganizationZipCode];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationZipCode:deviceOrganizationZipCode];

    deviceOrganizationCountry = [location[0] deviceOrganizationCountry];
    [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy setOrganizationCountry:deviceOrganizationCountry];
  }

  objc_storeStrong(&cloudConfigurationDetails, 0);
  objc_storeStrong(location, 0);
}

- (id)_detailText
{
  selfCopy = self;
  v42[1] = a2;
  v42[0] = objc_opt_new();
  organizationName = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationName];

  if (organizationName)
  {
    organizationName2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationName];
    [v42[0] addObject:organizationName2];
  }

  organizationDepartment = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationDepartment];

  if (organizationDepartment)
  {
    organizationDepartment2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationDepartment];
    [v42[0] addObject:organizationDepartment2];
  }

  v41 = 0;
  v40 = objc_opt_new();
  organizationAddressLine1 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationAddressLine1];
  [v40 setValue:organizationAddressLine1 forKey:CNPostalAddressStreetKey];

  organizationAddressLine2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationAddressLine2];
  [v40 setValue:organizationAddressLine2 forKey:CNPostalAddressSubLocalityKey];

  organizationCity = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationCity];
  [v40 setValue:organizationCity forKey:CNPostalAddressCityKey];

  organizationRegion = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationRegion];
  [v40 setValue:organizationRegion forKey:CNPostalAddressStateKey];

  organizationZipCode = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationZipCode];
  [v40 setValue:organizationZipCode forKey:CNPostalAddressPostalCodeKey];

  organizationCountry = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationCountry];
  [v40 setValue:organizationCountry forKey:CNPostalAddressCountryKey];

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
    organizationAddress = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationAddress];
    v36 = 1;
    v12 = organizationAddress != 0;
  }

  if (v36)
  {
  }

  if (v12)
  {
    v13 = objc_opt_new();
    organizationAddress2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationAddress];
    v35 = [v13 postalAddressFromString:organizationAddress2];

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
      organizationAddress3 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationAddress];
      v32 = 1;
    }

    [v17 addObject:?];
    if (v32)
    {
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  organizationSupportPhone = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationSupportPhone];

  if (organizationSupportPhone)
  {
    v19 = v42[0];
    organizationSupportPhone2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationSupportPhone];
    [v19 addObject:organizationSupportPhone2];
  }

  organizationSupportEmail = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationSupportEmail];

  if (organizationSupportEmail)
  {
    v22 = v42[0];
    organizationSupportEmail2 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationSupportEmail];
    [v22 addObject:organizationSupportEmail2];
  }

  [v42[0] addObject:@"\n"];
  organizationName3 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationName];

  if (organizationName3)
  {
    v25 = +[NSBundle mainBundle];
    v26 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ABOUT_DESCRIPTION"];
    v27 = [(NSBundle *)v25 localizedStringForKey:v26 value:&stru_10032F900 table:@"Localizable"];
    organizationName4 = [(BuddyCloudConfigAboutConfigurationContainerController *)selfCopy organizationName];
    v31 = [NSString localizedStringWithFormat:v27, organizationName4];

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