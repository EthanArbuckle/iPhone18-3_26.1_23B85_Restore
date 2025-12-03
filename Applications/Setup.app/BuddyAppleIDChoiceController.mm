@interface BuddyAppleIDChoiceController
- (BFFFlowItemDelegate)delegate;
- (BOOL)shouldAllowStartOver;
- (BuddyAppleIDChoiceController)init;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section;
- (void)_createServiceHeader;
- (void)_reallySkip;
- (void)_skipPressed:(id)pressed;
- (void)appleIDController:(id)controller failedWithError:(id)error;
- (void)appleIDControllerFinished:(id)finished;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyAppleIDChoiceController

- (BuddyAppleIDChoiceController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"APPLEID_TITLE_LABEL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyAppleIDChoiceController;
  location = [(BuddyAppleIDChoiceController *)&v7 initWithTitle:v4 detailText:0 icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v5 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyAppleIDChoiceController *)selfCopy setTableView:v2];

  v3 = selfCopy;
  tableView = [(BuddyAppleIDChoiceController *)selfCopy tableView];
  [tableView setDataSource:v3];

  [(BuddyAppleIDChoiceController *)selfCopy _createServiceHeader];
}

- (void)didMoveToParentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  appleIDController = [(BuddyAppleIDChoiceController *)selfCopy appleIDController];
  navigationController = [(BuddyAppleIDChoiceController *)selfCopy navigationController];
  [(BuddyAppleIDController *)appleIDController setNavigationController:navigationController];

  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v40 = a2;
  appearCopy = appear;
  v38.receiver = self;
  v38.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v38 viewDidAppear:appear];
  tableView = [(BuddyAppleIDChoiceController *)selfCopy tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(BuddyAppleIDChoiceController *)selfCopy tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 enumerateBundlesOfType:1 block:&stru_10032D4C0];

  networkProvider = [(BuddyAppleIDChoiceController *)selfCopy networkProvider];
  v35 = 0;
  supportsWiFi = 0;
  if (![(BuddyNetworkProvider *)networkProvider networkReachable])
  {
    supportsWiFi = 0;
    if (![(BuddyAppleIDChoiceController *)selfCopy didShowWifiAlert])
    {
      networkProvider2 = [(BuddyAppleIDChoiceController *)selfCopy networkProvider];
      v35 = 1;
      supportsWiFi = [networkProvider2 supportsWiFi];
    }
  }

  if (v35)
  {
  }

  if (supportsWiFi)
  {
    [(BuddyAppleIDChoiceController *)selfCopy setDidShowWifiAlert:1];
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"APPLEID_NO_NETWORK_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v10 = +[NSBundle mainBundle];
    v11 = SFLocalizableWAPIStringKeyForKey();
    v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
    location = [UIAlertController alertControllerWithTitle:v9 message:v12 preferredStyle:1];

    v13 = location;
    v14 = +[NSBundle mainBundle];
    v15 = SFLocalizableWAPIStringKeyForKey();
    v16 = [(NSBundle *)v14 localizedStringForKey:v15 value:&stru_10032F900 table:@"Localizable"];
    v28 = _NSConcreteStackBlock;
    v29 = -1073741824;
    v30 = 0;
    v31 = sub_100132DC4;
    v32 = &unk_10032B598;
    v33 = selfCopy;
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v28];
    [v13 addAction:v17];

    v18 = location;
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_100132E40;
    v26 = &unk_10032B598;
    v27 = selfCopy;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:&v22];
    [v18 addAction:v21];

    [(BuddyAppleIDChoiceController *)selfCopy presentViewController:location animated:1 completion:0];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&indexPathForSelectedRow, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  tableView = [(BuddyAppleIDChoiceController *)self tableView];
  [tableView selectRowAtIndexPath:0 animated:0 scrollPosition:0];

  [(BuddyAppleIDChoiceController *)selfCopy setAllowBack:1];
  paneFeatureAnalyticsManager = [(BuddyAppleIDChoiceController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:14];

  v5.receiver = selfCopy;
  v5.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v5 viewWillAppear:appearCopy];
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  appleIDController = [(BuddyAppleIDChoiceController *)self appleIDController];
  [(BuddyAppleIDController *)appleIDController setDelegate:0];

  v3.receiver = selfCopy;
  v3.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v3 dealloc];
}

- (void)_createServiceHeader
{
  selfCopy = self;
  v71 = a2;
  v64 = _NSConcreteStackBlock;
  v65 = -1073741824;
  v66 = 0;
  v67 = sub_100133B64;
  v68 = &unk_10032D4E8;
  selfCopy2 = self;
  v70 = objc_retainBlock(&v64);
  v60 = (*(v70 + 2))(v70, @"iCloud");
  v58 = [UIImage imageNamed:?];
  v74[0] = v58;
  v56 = (*(v70 + 2))(v70, @"App_Store");
  v54 = [UIImage imageNamed:?];
  v74[1] = v54;
  v52 = (*(v70 + 2))(v70, @"iMovies");
  v2 = [UIImage imageNamed:?];
  v74[2] = v2;
  v3 = (*(v70 + 2))(v70, @"Photos");
  v4 = [UIImage imageNamed:v3];
  v74[3] = v4;
  v5 = (*(v70 + 2))(v70, @"Messages");
  v6 = [UIImage imageNamed:v5];
  v74[4] = v6;
  v7 = (*(v70 + 2))(v70, @"Facetime");
  v8 = [UIImage imageNamed:v7];
  v74[5] = v8;
  v9 = (*(v70 + 2))(v70, @"Books");
  v10 = [UIImage imageNamed:v9];
  v74[6] = v10;
  v11 = [NSArray arrayWithObjects:v74 count:7];
  [selfCopy setItemIcons:v11];

  v61 = +[NSBundle mainBundle];
  v59 = [(NSBundle *)v61 localizedStringForKey:@"APPLEID_WHAT_IS_ICLOUD" value:&stru_10032F900 table:@"Localizable"];
  v73[0] = v59;
  v57 = +[NSBundle mainBundle];
  v55 = [(NSBundle *)v57 localizedStringForKey:@"APPLEID_WHAT_IS_APP_STORE" value:&stru_10032F900 table:@"Localizable"];
  v73[1] = v55;
  v53 = +[NSBundle mainBundle];
  v12 = [(NSBundle *)v53 localizedStringForKey:@"APPLEID_WHAT_IS_ITUNES_STORE" value:&stru_10032F900 table:@"Localizable"];
  v73[2] = v12;
  v13 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"APPLEID_WHAT_IS_PHOTOS" value:&stru_10032F900 table:@"Localizable"];
  v73[3] = v14;
  v15 = +[NSBundle mainBundle];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"APPLEID_WHAT_IS_MESSAGES" value:&stru_10032F900 table:@"Localizable"];
  v73[4] = v16;
  v17 = +[NSBundle mainBundle];
  v18 = [(NSBundle *)v17 localizedStringForKey:@"APPLEID_WHAT_IS_FACETIME" value:&stru_10032F900 table:@"Localizable"];
  v73[5] = v18;
  v19 = +[NSBundle mainBundle];
  v20 = [(NSBundle *)v19 localizedStringForKey:@"APPLEID_WHAT_IS_IBOOKS" value:&stru_10032F900 table:@"Localizable"];
  v73[6] = v20;
  v21 = [NSArray arrayWithObjects:v73 count:7];
  [selfCopy setItemDescriptions:v21];

  itemIcons = [selfCopy itemIcons];
  v23 = [itemIcons count];
  itemDescriptions = [selfCopy itemDescriptions];
  v25 = v23 != [itemDescriptions count];

  if (v25)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v26 handleFailureInMethod:v71 object:selfCopy file:@"BuddyAppleIDChoiceController.m" lineNumber:170 description:@"items count not the same!"];
  }

  v27 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [selfCopy setServiceHeaderView:v27];

  serviceHeaderView = [selfCopy serviceHeaderView];
  [serviceHeaderView setAxis:1];

  serviceHeaderView2 = [selfCopy serviceHeaderView];
  [serviceHeaderView2 setDistribution:0];

  serviceHeaderView3 = [selfCopy serviceHeaderView];
  [serviceHeaderView3 setAlignment:0];

  v63 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v63 setNumberOfLines:0];
  v31 = +[NSBundle mainBundle];
  v32 = [(NSBundle *)v31 localizedStringForKey:@"APPLEID_WHAT_IS" value:&stru_10032F900 table:@"Localizable"];
  [v63 setText:v32];

  v33 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v34 = [(UIFontDescriptor *)v33 fontDescriptorWithSymbolicTraits:2];
  v35 = [UIFont fontWithDescriptor:v34 size:0.0];
  [v63 setFont:v35];

  v36 = +[UIColor labelColor];
  [v63 setTextColor:v36];

  location = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location setNumberOfLines:0];
  v37 = +[NSBundle mainBundle];
  v38 = [(NSBundle *)v37 localizedStringForKey:@"APPLEID_WHAT_IS_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  [location setText:v38];

  v39 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v40 = [UIFont fontWithDescriptor:v39 size:0.0];
  [location setFont:v40];

  v41 = +[UIColor labelColor];
  [location setTextColor:v41];

  serviceHeaderView4 = [selfCopy serviceHeaderView];
  [serviceHeaderView4 addArrangedSubview:v63];

  serviceHeaderView5 = [selfCopy serviceHeaderView];
  [serviceHeaderView5 setCustomSpacing:v63 afterView:10.0];

  serviceHeaderView6 = [selfCopy serviceHeaderView];
  [serviceHeaderView6 addArrangedSubview:location];

  serviceHeaderView7 = [selfCopy serviceHeaderView];
  v46 = BFFIsiPad();
  v47 = 39.0;
  if ((v46 & 1) == 0)
  {
    v47 = 30.0;
  }

  [serviceHeaderView7 setCustomSpacing:location afterView:v47];

  serviceHeaderView8 = [selfCopy serviceHeaderView];
  v49 = objc_opt_new();
  [serviceHeaderView8 addArrangedSubview:v49];

  LODWORD(v50) = 1148846080;
  [v63 setContentCompressionResistancePriority:1 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [location setContentCompressionResistancePriority:1 forAxis:v51];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&selfCopy2, 0);
}

- (void)_skipPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v41 = _BYLoggingFacility();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v41;
    v4 = v40;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "User specified skip Apple ID setup", buf, 2u);
  }

  objc_storeStrong(&v41, 0);
  networkProvider = [(BuddyAppleIDChoiceController *)selfCopy networkProvider];
  networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];

  if (networkReachable)
  {
    v38 = @"NO_ACCOUNT_SKIP_APPLEID_ALERT_BODY_STOCKHOLM";
    v7 = +[SSAccountStore defaultStore];
    activeAccount = [v7 activeAccount];
    accountName = [activeAccount accountName];
    v10 = [accountName length];

    if (v10)
    {
      objc_storeStrong(&v38, @"HAS_STORE_ACCOUNT_SKIP_APPLEID_ALERT_BODY_STOCKHOLM");
    }

    v11 = +[NSBundle mainBundle];
    v37 = [(NSBundle *)v11 localizedStringForKey:v38 value:&stru_10032F900 table:@"Localizable"];

    v12 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"NO_ACCOUNT_SKIP_APPLEID_ALERT_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v36 = [UIAlertController alertControllerWithTitle:v13 message:v37 preferredStyle:1];

    v14 = v36;
    v15 = +[NSBundle mainBundle];
    v16 = [(NSBundle *)v15 localizedStringForKey:@"DONT_USE" value:&stru_10032F900 table:@"Localizable"];
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_10013413C;
    v34 = &unk_10032B598;
    v35 = selfCopy;
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v30];
    [v14 addAction:v17];

    v18 = v36;
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"DONT_SKIP_APPLEID" value:&stru_10032F900 table:@"Localizable"];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100134214;
    v28 = &unk_10032B598;
    v29 = selfCopy;
    v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:&v24];
    [v18 addAction:v21];

    [(BuddyAppleIDChoiceController *)selfCopy presentViewController:v36 animated:1 completion:0];
    combinedTermsProvider = [(BuddyAppleIDChoiceController *)selfCopy combinedTermsProvider];
    [(BuddyCombinedTermsProvider *)combinedTermsProvider prefetchTerms];

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    delegate = [(BuddyAppleIDChoiceController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)_reallySkip
{
  v2 = +[BuddyAccountTools sharedBuddyAccountTools];
  [v2 primaryAccountIsChildAccount:0];

  v3 = +[BuddyAccountTools sharedBuddyAccountTools];
  [v3 getConfigurationInfoWithCompletion:0];

  flowSkipController = [(BuddyAppleIDChoiceController *)self flowSkipController];
  [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierAppleID];

  paneFeatureAnalyticsManager = [(BuddyAppleIDChoiceController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanFalse forFeature:14];

  delegate = [(BuddyAppleIDChoiceController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = [BuddyAppleIDController alloc];
  passcodeCacheManager = [(BuddyAppleIDChoiceController *)selfCopy passcodeCacheManager];
  analyticsManager = [(BuddyAppleIDChoiceController *)selfCopy analyticsManager];
  runState = [(BuddyAppleIDChoiceController *)selfCopy runState];
  v7 = +[BuddyFeatureFlags currentFlags];
  v8 = [(BuddyAppleIDController *)v3 initWithAccount:0 passcodeCacheManager:passcodeCacheManager analyticsManager:analyticsManager runState:runState featureFlags:v7];
  [(BuddyAppleIDChoiceController *)selfCopy setAppleIDController:v8];

  [(BuddyAppleIDController *)selfCopy->_appleIDController setDelegate:selfCopy];
  delegate = [(BuddyAppleIDChoiceController *)selfCopy delegate];
  [(BuddyAppleIDController *)selfCopy->_appleIDController setFlowItemDelegate:delegate];

  proximitySetupController = [(BuddyAppleIDChoiceController *)selfCopy proximitySetupController];
  hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];
  [(BuddyAppleIDController *)selfCopy->_appleIDController setHasProximityConnection:hasConnection & 1];

  networkProvider = [(BuddyAppleIDChoiceController *)selfCopy networkProvider];
  LOBYTE(v8) = [(BuddyNetworkProvider *)networkProvider networkReachable];

  if (v8)
  {
    v13 = +[BuddyAppleIDConfigurationManager sharedManager];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100134750;
    v18 = &unk_10032D510;
    v19 = selfCopy;
    v20 = location[0];
    [v13 getURLConfigurationWithHandler:&v14];

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
  }

  else if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldAllowStartOver
{
  appleIDController = [(BuddyAppleIDChoiceController *)self appleIDController];
  v3 = ![(BuddyAppleIDController *)appleIDController shouldAllowStartOver];

  return (v3 & 1) == 0;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
  v3 = location[0];
  appleIDController = [(BuddyAppleIDChoiceController *)selfCopy appleIDController];
  [(BuddyAppleIDController *)appleIDController setFlowItemDelegate:v3];

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  if (section)
  {
    if (section == 1)
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 3;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v53 = 0;
  objc_storeStrong(&v53, path);
  v52 = [v53 row];
  section = [v53 section];
  if (section)
  {
    if (section == 1)
    {
      v49 = 1;
      v34 = +[BYDevice currentDevice];
      type = [v34 type];

      if (type == 1)
      {
        v49 = 2;
      }

      v48 = [location[0] dequeueReusableCellWithIdentifier:@"CELL"];
      if (!v48)
      {
        v48 = [[BuddyAppleIDTableCell alloc] initWithStyle:0 reuseIdentifier:@"CELL" columnCount:v49];

        v36 = +[UIColor clearColor];
        [v48 setBackgroundColor:v36];

        for (i = 0; ; ++i)
        {
          v37 = i;
          if (v37 >= [(NSArray *)selfCopy->_itemIcons count])
          {
            break;
          }

          v46 = [(NSArray *)selfCopy->_itemIcons objectAtIndexedSubscript:i];
          v45 = [(NSArray *)selfCopy->_itemDescriptions objectAtIndexedSubscript:i];
          v38 = [v48 addService:v46 description:v45];
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v46, 0);
        }

        if (v49 == 2 && ([(NSArray *)selfCopy->_itemIcons count]& 1) != 0)
        {
          v44 = [(NSArray *)selfCopy->_itemIcons count]- 1;
          v43 = [(NSArray *)selfCopy->_itemIcons objectAtIndexedSubscript:v44];
          v42 = [(NSArray *)selfCopy->_itemDescriptions objectAtIndexedSubscript:v44];
          v41 = [v48 addService:v43 description:v42];
          [v41 setAlpha:0.0];
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v42, 0);
          objc_storeStrong(&v43, 0);
        }
      }

      v56 = v48;
      v50 = 1;
      objc_storeStrong(&v48, 0);
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v51 = 0;
    if (v52)
    {
      if (v52 == 1)
      {
        createNewCell = [(BuddyAppleIDChoiceController *)selfCopy createNewCell];
        v16 = createNewCell == 0;

        if (v16)
        {
          v17 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
          [(BuddyAppleIDChoiceController *)selfCopy setCreateNewCell:v17];

          v18 = +[NSBundle mainBundle];
          v19 = [(NSBundle *)v18 localizedStringForKey:@"CREATE_NEW_APPLEID" value:&stru_10032F900 table:@"Localizable"];
          createNewCell2 = [(BuddyAppleIDChoiceController *)selfCopy createNewCell];
          textLabel = [(UITableViewCell *)createNewCell2 textLabel];
          [(UILabel *)textLabel setText:v19];
        }

        createNewCell3 = [(BuddyAppleIDChoiceController *)selfCopy createNewCell];
        v23 = v51;
        v51 = createNewCell3;
      }

      else if (v52 == 2)
      {
        skipCell = [(BuddyAppleIDChoiceController *)selfCopy skipCell];
        v25 = skipCell == 0;

        if (v25)
        {
          v26 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
          [(BuddyAppleIDChoiceController *)selfCopy setSkipCell:v26];

          v27 = +[NSBundle mainBundle];
          v28 = [(NSBundle *)v27 localizedStringForKey:@"SKIP_ENTER_APPLEID" value:&stru_10032F900 table:@"Localizable"];
          skipCell2 = [(BuddyAppleIDChoiceController *)selfCopy skipCell];
          textLabel2 = [(UITableViewCell *)skipCell2 textLabel];
          [(UILabel *)textLabel2 setText:v28];
        }

        skipCell3 = [(BuddyAppleIDChoiceController *)selfCopy skipCell];
        v32 = v51;
        v51 = skipCell3;
      }
    }

    else
    {
      forgotCell = [(BuddyAppleIDChoiceController *)selfCopy forgotCell];
      v7 = forgotCell == 0;

      if (v7)
      {
        v8 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        [(BuddyAppleIDChoiceController *)selfCopy setForgotCell:v8];

        v9 = +[NSBundle mainBundle];
        v10 = [(NSBundle *)v9 localizedStringForKey:@"FORGOT_PASSWORD" value:&stru_10032F900 table:@"Localizable"];
        forgotCell2 = [(BuddyAppleIDChoiceController *)selfCopy forgotCell];
        textLabel3 = [(UITableViewCell *)forgotCell2 textLabel];
        [(UILabel *)textLabel3 setText:v10];
      }

      forgotCell3 = [(BuddyAppleIDChoiceController *)selfCopy forgotCell];
      v14 = v51;
      v51 = forgotCell3;
    }

    v33 = +[UIColor secondarySystemBackgroundColor];
    [v51 setBackgroundColor:v33];

    v56 = v51;
    v50 = 1;
    objc_storeStrong(&v51, 0);
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  v39 = v56;

  return v39;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v10 = 0;
  objc_storeStrong(&v10, cell);
  v9 = 0;
  objc_storeStrong(&v9, path);
  if ([v9 section] == 1)
  {
    [v10 setSeparatorStyle:0];
  }

  else
  {
    [v10 setSeparatorStyle:1];
    [v10 _setShouldHaveFullLengthTopSeparator:0];
    [v10 _setShouldHaveFullLengthBottomSeparator:0];
  }

  if ([v9 section] == 1)
  {
    [v10 setSectionLocation:1];
    v7 = +[UIColor clearColor];
    [v10 setSeparatorColor:v7];

    layer = [v10 layer];
    [layer setMasksToBounds:0];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  v10 = 0.0;
  section = [v11 section];
  if (section)
  {
    if (section == 1)
    {
      v10 = UITableViewAutomaticDimension;
    }
  }

  else
  {
    v10 = 60.0;
    v6 = [(BuddyAppleIDChoiceController *)selfCopy tableView:location[0] cellForRowAtIndexPath:v11];
    [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v8 = v7;

    if (v8 > 60.0)
    {
      v10 = UITableViewAutomaticDimension;
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v29 = 0;
  objc_storeStrong(&v29, path);
  if ([v29 section])
  {
    v28 = 1;
  }

  else
  {
    v5 = [v29 row];
    if (v5)
    {
      if (v5 == 1)
      {
        urlConfiguration = [(BuddyAppleIDChoiceController *)selfCopy urlConfiguration];
        setupAssistantServerEnabled = [(AASetupAssistantConfigResponse *)urlConfiguration setupAssistantServerEnabled];

        if (setupAssistantServerEnabled)
        {
          appleIDController = [(BuddyAppleIDChoiceController *)selfCopy appleIDController];
          [(BuddyAppleIDController *)appleIDController showCreateAppleID];
        }

        else
        {
          v19 = +[NSBundle mainBundle];
          v20 = [(NSBundle *)v19 localizedStringForKey:@"CANT_CREATE_APPLEID_TITLE" value:&stru_10032F900 table:@"Localizable"];
          v21 = +[NSBundle mainBundle];
          v22 = [(NSBundle *)v21 localizedStringForKey:@"CANT_CREATE_APPLEID" value:&stru_10032F900 table:@"Localizable"];
          v26 = [UIAlertController alertControllerWithTitle:v20 message:v22 preferredStyle:1];

          v23 = +[NSBundle mainBundle];
          v24 = [(NSBundle *)v23 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
          v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:0];
          [v26 addAction:v25];

          [(BuddyAppleIDChoiceController *)selfCopy presentViewController:v26 animated:1 completion:0];
          objc_storeStrong(&v26, 0);
        }
      }

      else if (v5 == 2)
      {
        [(BuddyAppleIDChoiceController *)selfCopy _skipPressed:0];
        [location[0] deselectRowAtIndexPath:v29 animated:1];
      }
    }

    else
    {
      urlConfiguration2 = [(BuddyAppleIDChoiceController *)selfCopy urlConfiguration];
      setupAssistantServerEnabled2 = [(AASetupAssistantConfigResponse *)urlConfiguration2 setupAssistantServerEnabled];

      if (setupAssistantServerEnabled2)
      {
        appleIDController2 = [(BuddyAppleIDChoiceController *)selfCopy appleIDController];
        [(BuddyAppleIDController *)appleIDController2 showCredentialRecovery];
      }

      else
      {
        v9 = +[NSBundle mainBundle];
        v10 = [(NSBundle *)v9 localizedStringForKey:@"CANT_LOGIN_APPLEID_GENERIC_TITLE" value:&stru_10032F900 table:@"Localizable"];
        v11 = +[NSBundle mainBundle];
        v12 = [(NSBundle *)v11 localizedStringForKey:@"CANT_LOGIN_APPLEID_UNKNOWN_ERROR" value:&stru_10032F900 table:@"Localizable"];
        v27 = [UIAlertController alertControllerWithTitle:v10 message:v12 preferredStyle:1];

        v13 = +[NSBundle mainBundle];
        v14 = [(NSBundle *)v13 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
        v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:0];
        [v27 addAction:v15];

        [(BuddyAppleIDChoiceController *)selfCopy presentViewController:v27 animated:1 completion:0];
        objc_storeStrong(&v27, 0);
      }
    }

    v28 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9[1] = section;
  v9[0] = 0;
  if (section == 1)
  {
    serviceHeaderView = [(BuddyAppleIDChoiceController *)selfCopy serviceHeaderView];
    v6 = v9[0];
    v9[0] = serviceHeaderView;
  }

  v7 = v9[0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v12 = 0.0;
  if (section == 1)
  {
    serviceHeaderView = [(BuddyAppleIDChoiceController *)selfCopy serviceHeaderView];
    [location[0] bounds];
    [location[0] layoutMargins];
    [location[0] layoutMargins];
    sub_100135A18();
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(UIStackView *)serviceHeaderView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v9 verticalFittingPriority:v6, v7];
    v12 = v10;
  }

  objc_storeStrong(location, 0);
  return v12;
}

- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 4;
}

- (void)appleIDControllerFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  [(BuddyAppleIDChoiceController *)selfCopy setAllowBack:0];
  buddyPreferences = [(BuddyAppleIDChoiceController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

  paneFeatureAnalyticsManager = [(BuddyAppleIDChoiceController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue forFeature:14];

  delegate = [(BuddyAppleIDChoiceController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)appleIDController:(id)controller failedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, error);
  navigationController = [(BuddyAppleIDChoiceController *)selfCopy navigationController];
  v6 = [navigationController popToViewController:selfCopy animated:1];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end