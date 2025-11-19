@interface BuddyAppleIDChoiceController
- (BFFFlowItemDelegate)delegate;
- (BOOL)shouldAllowStartOver;
- (BuddyAppleIDChoiceController)init;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 titleAlignmentForFooterInSection:(int64_t)a4;
- (void)_createServiceHeader;
- (void)_reallySkip;
- (void)_skipPressed:(id)a3;
- (void)appleIDController:(id)a3 failedWithError:(id)a4;
- (void)appleIDControllerFinished:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v5 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyAppleIDChoiceController *)v7 setTableView:v2];

  v3 = v7;
  v4 = [(BuddyAppleIDChoiceController *)v7 tableView];
  [v4 setDataSource:v3];

  [(BuddyAppleIDChoiceController *)v7 _createServiceHeader];
}

- (void)didMoveToParentViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDChoiceController *)v6 appleIDController];
  v4 = [(BuddyAppleIDChoiceController *)v6 navigationController];
  [(BuddyAppleIDController *)v3 setNavigationController:v4];

  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v41 = self;
  v40 = a2;
  v39 = a3;
  v38.receiver = self;
  v38.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v38 viewDidAppear:a3];
  v3 = [(BuddyAppleIDChoiceController *)v41 tableView];
  v37 = [v3 indexPathForSelectedRow];

  if (v37)
  {
    v4 = [(BuddyAppleIDChoiceController *)v41 tableView];
    [v4 deselectRowAtIndexPath:v37 animated:1];
  }

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 enumerateBundlesOfType:1 block:&stru_10032D4C0];

  v6 = [(BuddyAppleIDChoiceController *)v41 networkProvider];
  v35 = 0;
  v7 = 0;
  if (![(BuddyNetworkProvider *)v6 networkReachable])
  {
    v7 = 0;
    if (![(BuddyAppleIDChoiceController *)v41 didShowWifiAlert])
    {
      v36 = [(BuddyAppleIDChoiceController *)v41 networkProvider];
      v35 = 1;
      v7 = [v36 supportsWiFi];
    }
  }

  if (v35)
  {
  }

  if (v7)
  {
    [(BuddyAppleIDChoiceController *)v41 setDidShowWifiAlert:1];
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
    v33 = v41;
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
    v27 = v41;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:&v22];
    [v18 addAction:v21];

    [(BuddyAppleIDChoiceController *)v41 presentViewController:location animated:1 completion:0];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v37, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v3 = [(BuddyAppleIDChoiceController *)self tableView];
  [v3 selectRowAtIndexPath:0 animated:0 scrollPosition:0];

  [(BuddyAppleIDChoiceController *)v8 setAllowBack:1];
  v4 = [(BuddyAppleIDChoiceController *)v8 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v4 clearActionForFeature:14];

  v5.receiver = v8;
  v5.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v5 viewWillAppear:v6];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(BuddyAppleIDChoiceController *)self appleIDController];
  [(BuddyAppleIDController *)v2 setDelegate:0];

  v3.receiver = v5;
  v3.super_class = BuddyAppleIDChoiceController;
  [(BuddyAppleIDChoiceController *)&v3 dealloc];
}

- (void)_createServiceHeader
{
  v72 = self;
  v71 = a2;
  v64 = _NSConcreteStackBlock;
  v65 = -1073741824;
  v66 = 0;
  v67 = sub_100133B64;
  v68 = &unk_10032D4E8;
  v69 = self;
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
  [v72 setItemIcons:v11];

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
  [v72 setItemDescriptions:v21];

  v22 = [v72 itemIcons];
  v23 = [v22 count];
  v24 = [v72 itemDescriptions];
  v25 = v23 != [v24 count];

  if (v25)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v26 handleFailureInMethod:v71 object:v72 file:@"BuddyAppleIDChoiceController.m" lineNumber:170 description:@"items count not the same!"];
  }

  v27 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v72 setServiceHeaderView:v27];

  v28 = [v72 serviceHeaderView];
  [v28 setAxis:1];

  v29 = [v72 serviceHeaderView];
  [v29 setDistribution:0];

  v30 = [v72 serviceHeaderView];
  [v30 setAlignment:0];

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

  v42 = [v72 serviceHeaderView];
  [v42 addArrangedSubview:v63];

  v43 = [v72 serviceHeaderView];
  [v43 setCustomSpacing:v63 afterView:10.0];

  v44 = [v72 serviceHeaderView];
  [v44 addArrangedSubview:location];

  v45 = [v72 serviceHeaderView];
  v46 = BFFIsiPad();
  v47 = 39.0;
  if ((v46 & 1) == 0)
  {
    v47 = 30.0;
  }

  [v45 setCustomSpacing:location afterView:v47];

  v48 = [v72 serviceHeaderView];
  v49 = objc_opt_new();
  [v48 addArrangedSubview:v49];

  LODWORD(v50) = 1148846080;
  [v63 setContentCompressionResistancePriority:1 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [location setContentCompressionResistancePriority:1 forAxis:v51];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v69, 0);
}

- (void)_skipPressed:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v5 = [(BuddyAppleIDChoiceController *)v43 networkProvider];
  v6 = [(BuddyNetworkProvider *)v5 networkReachable];

  if (v6)
  {
    v38 = @"NO_ACCOUNT_SKIP_APPLEID_ALERT_BODY_STOCKHOLM";
    v7 = +[SSAccountStore defaultStore];
    v8 = [v7 activeAccount];
    v9 = [v8 accountName];
    v10 = [v9 length];

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
    v35 = v43;
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
    v29 = v43;
    v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:&v24];
    [v18 addAction:v21];

    [(BuddyAppleIDChoiceController *)v43 presentViewController:v36 animated:1 completion:0];
    v22 = [(BuddyAppleIDChoiceController *)v43 combinedTermsProvider];
    [(BuddyCombinedTermsProvider *)v22 prefetchTerms];

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v23 = [(BuddyAppleIDChoiceController *)v43 delegate];
    [(BFFFlowItemDelegate *)v23 flowItemDone:v43];
  }

  objc_storeStrong(location, 0);
}

- (void)_reallySkip
{
  v2 = +[BuddyAccountTools sharedBuddyAccountTools];
  [v2 primaryAccountIsChildAccount:0];

  v3 = +[BuddyAccountTools sharedBuddyAccountTools];
  [v3 getConfigurationInfoWithCompletion:0];

  v4 = [(BuddyAppleIDChoiceController *)self flowSkipController];
  [(BYFlowSkipController *)v4 didSkipFlow:BYFlowSkipIdentifierAppleID];

  v5 = [(BuddyAppleIDChoiceController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:&__kCFBooleanFalse forFeature:14];

  v6 = [(BuddyAppleIDChoiceController *)self delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:self];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyAppleIDController alloc];
  v4 = [(BuddyAppleIDChoiceController *)v22 passcodeCacheManager];
  v5 = [(BuddyAppleIDChoiceController *)v22 analyticsManager];
  v6 = [(BuddyAppleIDChoiceController *)v22 runState];
  v7 = +[BuddyFeatureFlags currentFlags];
  v8 = [(BuddyAppleIDController *)v3 initWithAccount:0 passcodeCacheManager:v4 analyticsManager:v5 runState:v6 featureFlags:v7];
  [(BuddyAppleIDChoiceController *)v22 setAppleIDController:v8];

  [(BuddyAppleIDController *)v22->_appleIDController setDelegate:v22];
  v9 = [(BuddyAppleIDChoiceController *)v22 delegate];
  [(BuddyAppleIDController *)v22->_appleIDController setFlowItemDelegate:v9];

  v10 = [(BuddyAppleIDChoiceController *)v22 proximitySetupController];
  v11 = [(ProximitySetupController *)v10 hasConnection];
  [(BuddyAppleIDController *)v22->_appleIDController setHasProximityConnection:v11 & 1];

  v12 = [(BuddyAppleIDChoiceController *)v22 networkProvider];
  LOBYTE(v8) = [(BuddyNetworkProvider *)v12 networkReachable];

  if (v8)
  {
    v13 = +[BuddyAppleIDConfigurationManager sharedManager];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100134750;
    v18 = &unk_10032D510;
    v19 = v22;
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
  v2 = [(BuddyAppleIDChoiceController *)self appleIDController];
  v3 = ![(BuddyAppleIDController *)v2 shouldAllowStartOver];

  return (v3 & 1) == 0;
}

- (void)setDelegate:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v6->_delegate, location[0]);
  v3 = location[0];
  v4 = [(BuddyAppleIDChoiceController *)v6 appleIDController];
  [(BuddyAppleIDController *)v4 setFlowItemDelegate:v3];

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if (a4)
  {
    if (a4 == 1)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52 = [v53 row];
  v5 = [v53 section];
  if (v5)
  {
    if (v5 == 1)
    {
      v49 = 1;
      v34 = +[BYDevice currentDevice];
      v35 = [v34 type];

      if (v35 == 1)
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
          if (v37 >= [(NSArray *)v55->_itemIcons count])
          {
            break;
          }

          v46 = [(NSArray *)v55->_itemIcons objectAtIndexedSubscript:i];
          v45 = [(NSArray *)v55->_itemDescriptions objectAtIndexedSubscript:i];
          v38 = [v48 addService:v46 description:v45];
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v46, 0);
        }

        if (v49 == 2 && ([(NSArray *)v55->_itemIcons count]& 1) != 0)
        {
          v44 = [(NSArray *)v55->_itemIcons count]- 1;
          v43 = [(NSArray *)v55->_itemIcons objectAtIndexedSubscript:v44];
          v42 = [(NSArray *)v55->_itemDescriptions objectAtIndexedSubscript:v44];
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
        v15 = [(BuddyAppleIDChoiceController *)v55 createNewCell];
        v16 = v15 == 0;

        if (v16)
        {
          v17 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
          [(BuddyAppleIDChoiceController *)v55 setCreateNewCell:v17];

          v18 = +[NSBundle mainBundle];
          v19 = [(NSBundle *)v18 localizedStringForKey:@"CREATE_NEW_APPLEID" value:&stru_10032F900 table:@"Localizable"];
          v20 = [(BuddyAppleIDChoiceController *)v55 createNewCell];
          v21 = [(UITableViewCell *)v20 textLabel];
          [(UILabel *)v21 setText:v19];
        }

        v22 = [(BuddyAppleIDChoiceController *)v55 createNewCell];
        v23 = v51;
        v51 = v22;
      }

      else if (v52 == 2)
      {
        v24 = [(BuddyAppleIDChoiceController *)v55 skipCell];
        v25 = v24 == 0;

        if (v25)
        {
          v26 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
          [(BuddyAppleIDChoiceController *)v55 setSkipCell:v26];

          v27 = +[NSBundle mainBundle];
          v28 = [(NSBundle *)v27 localizedStringForKey:@"SKIP_ENTER_APPLEID" value:&stru_10032F900 table:@"Localizable"];
          v29 = [(BuddyAppleIDChoiceController *)v55 skipCell];
          v30 = [(UITableViewCell *)v29 textLabel];
          [(UILabel *)v30 setText:v28];
        }

        v31 = [(BuddyAppleIDChoiceController *)v55 skipCell];
        v32 = v51;
        v51 = v31;
      }
    }

    else
    {
      v6 = [(BuddyAppleIDChoiceController *)v55 forgotCell];
      v7 = v6 == 0;

      if (v7)
      {
        v8 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        [(BuddyAppleIDChoiceController *)v55 setForgotCell:v8];

        v9 = +[NSBundle mainBundle];
        v10 = [(NSBundle *)v9 localizedStringForKey:@"FORGOT_PASSWORD" value:&stru_10032F900 table:@"Localizable"];
        v11 = [(BuddyAppleIDChoiceController *)v55 forgotCell];
        v12 = [(UITableViewCell *)v11 textLabel];
        [(UILabel *)v12 setText:v10];
      }

      v13 = [(BuddyAppleIDChoiceController *)v55 forgotCell];
      v14 = v51;
      v51 = v13;
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
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

    v8 = [v10 layer];
    [v8 setMasksToBounds:0];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0.0;
  v5 = [v11 section];
  if (v5)
  {
    if (v5 == 1)
    {
      v10 = UITableViewAutomaticDimension;
    }
  }

  else
  {
    v10 = 60.0;
    v6 = [(BuddyAppleIDChoiceController *)v13 tableView:location[0] cellForRowAtIndexPath:v11];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
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
        v16 = [(BuddyAppleIDChoiceController *)v31 urlConfiguration];
        v17 = [(AASetupAssistantConfigResponse *)v16 setupAssistantServerEnabled];

        if (v17)
        {
          v18 = [(BuddyAppleIDChoiceController *)v31 appleIDController];
          [(BuddyAppleIDController *)v18 showCreateAppleID];
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

          [(BuddyAppleIDChoiceController *)v31 presentViewController:v26 animated:1 completion:0];
          objc_storeStrong(&v26, 0);
        }
      }

      else if (v5 == 2)
      {
        [(BuddyAppleIDChoiceController *)v31 _skipPressed:0];
        [location[0] deselectRowAtIndexPath:v29 animated:1];
      }
    }

    else
    {
      v6 = [(BuddyAppleIDChoiceController *)v31 urlConfiguration];
      v7 = [(AASetupAssistantConfigResponse *)v6 setupAssistantServerEnabled];

      if (v7)
      {
        v8 = [(BuddyAppleIDChoiceController *)v31 appleIDController];
        [(BuddyAppleIDController *)v8 showCredentialRecovery];
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

        [(BuddyAppleIDChoiceController *)v31 presentViewController:v27 animated:1 completion:0];
        objc_storeStrong(&v27, 0);
      }
    }

    v28 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9[1] = a4;
  v9[0] = 0;
  if (a4 == 1)
  {
    v5 = [(BuddyAppleIDChoiceController *)v11 serviceHeaderView];
    v6 = v9[0];
    v9[0] = v5;
  }

  v7 = v9[0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0.0;
  if (a4 == 1)
  {
    v5 = [(BuddyAppleIDChoiceController *)v14 serviceHeaderView];
    [location[0] bounds];
    [location[0] layoutMargins];
    [location[0] layoutMargins];
    sub_100135A18();
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(UIStackView *)v5 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v9 verticalFittingPriority:v6, v7];
    v12 = v10;
  }

  objc_storeStrong(location, 0);
  return v12;
}

- (int64_t)tableView:(id)a3 titleAlignmentForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 4;
}

- (void)appleIDControllerFinished:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDChoiceController *)v7 setAllowBack:0];
  v3 = [(BuddyAppleIDChoiceController *)v7 buddyPreferences];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

  v4 = [(BuddyAppleIDChoiceController *)v7 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v4 recordActionWithValue:&__kCFBooleanTrue forFeature:14];

  v5 = [(BuddyAppleIDChoiceController *)v7 delegate];
  [(BFFFlowItemDelegate *)v5 flowItemDone:v7];

  objc_storeStrong(location, 0);
}

- (void)appleIDController:(id)a3 failedWithError:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(BuddyAppleIDChoiceController *)v9 navigationController];
  v6 = [v5 popToViewController:v9 animated:1];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end