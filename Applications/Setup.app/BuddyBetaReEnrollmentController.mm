@interface BuddyBetaReEnrollmentController
- (BuddyBetaReEnrollmentController)init;
- (void)_dontEnrollTapped:(id)tapped;
- (void)_enrollTapped:(id)tapped;
- (void)_learnMoreTapped:(id)tapped;
- (void)_presentReEnrollFailureAlert;
- (void)_recordAnalyticsEventForEnrollment:(BOOL)enrollment;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyBetaReEnrollmentController

- (BuddyBetaReEnrollmentController)init
{
  v21 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"TITLE" value:&stru_10032F900 table:@"BetaReEnrollment"];
  location = 0;
  v20.receiver = self;
  v20.super_class = BuddyBetaReEnrollmentController;
  location = [(BuddyBetaReEnrollmentController *)&v20 initWithTitle:v4 detailText:@" " icon:0 contentLayout:2];
  objc_storeStrong(&location, location);

  if (location)
  {
    v5 = +[BYPreferencesController buddyPreferencesInternal];
    [location setBuddyPreferencesInternal:v5];

    [location setRequiresBetaReEnrollment:0];
    v19 = +[OBHeaderAccessoryButton accessoryButton];
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"BetaReEnrollment"];
    [v19 setTitle:v7 forState:0];

    [v19 addTarget:location action:"_learnMoreTapped:" forControlEvents:64];
    headerView = [location headerView];
    [headerView addAccessoryButton:v19];

    v18 = +[OBBoldTrayButton boldButton];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
    [v18 setTitle:v10 forState:0];

    [v18 addTarget:location action:"_enrollTapped:" forControlEvents:64];
    buttonTray = [location buttonTray];
    [buttonTray addButton:v18];

    v17 = +[OBLinkTrayButton linkButton];
    v12 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"DONT_CONTINUE_BETA_PROGRAM" value:&stru_10032F900 table:@"BetaReEnrollment"];
    [v17 setTitle:v13 forState:0];

    [v17 addTarget:location action:"_dontEnrollTapped:" forControlEvents:64];
    buttonTray2 = [location buttonTray];
    [buttonTray2 addButton:v17];

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  v15 = location;
  objc_storeStrong(&location, 0);
  return v15;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyBetaReEnrollmentController;
  [(BuddyBetaReEnrollmentController *)&v3 viewDidLoad];
  v2 = [(BuddyBetaReEnrollmentController *)selfCopy buddy_animationController:@"Update"];
  [(BuddyBetaReEnrollmentController *)selfCopy setAnimationController:v2];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v19 = a2;
  appearCopy = appear;
  v17.receiver = self;
  v17.super_class = BuddyBetaReEnrollmentController;
  [(BuddyBetaReEnrollmentController *)&v17 viewWillAppear:appear];
  animationController = [(BuddyBetaReEnrollmentController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];

  if ([(BuddyBetaReEnrollmentController *)selfCopy requiresBetaReEnrollment])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DETAIL_START"];
    v16 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"BetaReEnrollment"];

    v6 = +[NSBundle mainBundle];
    sourceDeviceClass = [(BuddyBetaReEnrollmentController *)selfCopy sourceDeviceClass];
    v8 = [BuddyLocalizationUtilities siblingPairDeviceSpecificLocalizedStringKeyForKey:@"DETAIL_END" deviceClass:sourceDeviceClass];
    location = [(NSBundle *)v6 localizedStringForKey:v8 value:&stru_10032F900 table:@"BetaReEnrollment"];

    headerView = [(BuddyBetaReEnrollmentController *)selfCopy headerView];
    location = [NSString localizedStringWithFormat:@"%@\n\n%@", v16, location];
    [headerView setDetailText:location];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    headerView2 = [(BuddyBetaReEnrollmentController *)selfCopy headerView];
    v12 = +[NSBundle mainBundle];
    v13 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DETAIL_START"];
    v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"BetaReEnrollment"];
    [headerView2 setDetailText:v14];
  }
}

- (void)_learnMoreTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v4 = objc_alloc_init(BuddyBetaReEnrollmentLearnMoreController);
  v3 = [[BFFNavigationController alloc] initWithRootViewController:v4];
  [v3 setModalPresentationStyle:2];
  [(BuddyBetaReEnrollmentController *)selfCopy presentViewController:v3 animated:1 completion:0];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)_enrollTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  view = [(BuddyBetaReEnrollmentController *)selfCopy view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  navigationController = [(BuddyBetaReEnrollmentController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController identifier:@"beta re-enroll spinner"];

  [(BuddyBetaReEnrollmentController *)selfCopy _recordAnalyticsEventForEnrollment:1];
  backupMetadata = [(BuddyBetaReEnrollmentController *)selfCopy backupMetadata];
  seedEnrollmentProgram = [(BYBackupMetadata *)backupMetadata seedEnrollmentProgram];

  backupMetadata2 = [(BuddyBetaReEnrollmentController *)selfCopy backupMetadata];
  seedEnrollmentAssetAudience = [(BYBackupMetadata *)backupMetadata2 seedEnrollmentAssetAudience];

  backupMetadata3 = [(BuddyBetaReEnrollmentController *)selfCopy backupMetadata];
  seedEnrollmentCatalogID = [(BYBackupMetadata *)backupMetadata3 seedEnrollmentCatalogID];

  seedProgramManager = [(BuddyBetaReEnrollmentController *)selfCopy seedProgramManager];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100243360;
  v15 = &unk_10032F760;
  v16 = selfCopy;
  v17 = seedEnrollmentProgram;
  v18 = seedEnrollmentAssetAudience;
  v19 = seedEnrollmentCatalogID;
  [(BYSeedProgramManager *)seedProgramManager enrollInSeedProgramNamed:seedEnrollmentProgram withAssetAudience:seedEnrollmentAssetAudience programID:seedEnrollmentCatalogID completion:&v11];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&seedEnrollmentCatalogID, 0);
  objc_storeStrong(&seedEnrollmentAssetAudience, 0);
  objc_storeStrong(&seedEnrollmentProgram, 0);
  objc_storeStrong(location, 0);
}

- (void)_dontEnrollTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if ([(BuddyBetaReEnrollmentController *)selfCopy requiresBetaReEnrollment])
  {
    v14 = +[NSBundle mainBundle];
    v40 = [(NSBundle *)v14 localizedStringForKey:@"DONT_CONTINUE_BETA_PROGRAM_REQUIRED_ALERT_TITLE" value:&stru_10032F900 table:@"BetaReEnrollment"];

    v15 = +[NSBundle mainBundle];
    sourceDeviceClass = [(BuddyBetaReEnrollmentController *)selfCopy sourceDeviceClass];
    v17 = [BuddyLocalizationUtilities siblingPairDeviceSpecificLocalizedStringKeyForKey:@"DONT_CONTINUE_BETA_PROGRAM_REQUIRED_ALERT_MESSAGE" deviceClass:sourceDeviceClass];
    v39 = [(NSBundle *)v15 localizedStringForKey:v17 value:&stru_10032F900 table:@"BetaReEnrollment"];

    v38 = [UIAlertController alertControllerWithTitle:v40 message:v39 preferredStyle:1];
    v18 = v38;
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"CONTINUE_BETA_PROGRAM" value:&stru_10032F900 table:@"BetaReEnrollment"];
    v32 = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_100243EBC;
    v36 = &unk_10032B598;
    v37 = selfCopy;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:&v32];
    [v18 addAction:v21];

    v22 = v38;
    v23 = +[NSBundle mainBundle];
    v24 = [(NSBundle *)v23 localizedStringForKey:@"DONT_CONTINUE_BETA_PROGRAM" value:&stru_10032F900 table:@"BetaReEnrollment"];
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_100243F10;
    v30 = &unk_10032B598;
    v31 = selfCopy;
    v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:&v26];
    [v22 addAction:v25];

    [(BuddyBetaReEnrollmentController *)selfCopy presentViewController:v38 animated:1 completion:0];
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v55 = [(NSBundle *)v3 localizedStringForKey:@"DONT_CONTINUE_BETA_PROGRAM_OPTIONAL_ALERT_TITLE" value:&stru_10032F900 table:@"BetaReEnrollment"];

    v4 = +[NSBundle mainBundle];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DONT_CONTINUE_BETA_PROGRAM_OPTIONAL_ALERT_MESSAGE"];
    v54 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"BetaReEnrollment"];

    v53 = [UIAlertController alertControllerWithTitle:v55 message:v54 preferredStyle:1];
    v6 = v53;
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"CONTINUE_BETA_PROGRAM" value:&stru_10032F900 table:@"BetaReEnrollment"];
    v47 = _NSConcreteStackBlock;
    v48 = -1073741824;
    v49 = 0;
    v50 = sub_100243DE8;
    v51 = &unk_10032B598;
    v52 = selfCopy;
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&v47];
    [v6 addAction:v9];

    v10 = v53;
    v11 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v11 localizedStringForKey:@"DONT_CONTINUE_BETA_PROGRAM" value:&stru_10032F900 table:@"BetaReEnrollment"];
    v41 = _NSConcreteStackBlock;
    v42 = -1073741824;
    v43 = 0;
    v44 = sub_100243E3C;
    v45 = &unk_10032B598;
    v46 = selfCopy;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v41];
    [v10 addAction:v13];

    [(BuddyBetaReEnrollmentController *)selfCopy presentViewController:v53 animated:1 completion:0];
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_presentReEnrollFailureAlert
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"RE_ENROLL_FAILED_ALERT_TITLE" value:&stru_10032F900 table:@"BetaReEnrollment"];
  location[0] = [UIAlertController alertControllerWithTitle:v3 message:0 preferredStyle:1];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:&stru_10032F780];
  [location[0] addAction:v6];

  [(BuddyBetaReEnrollmentController *)selfCopy presentViewController:location[0] animated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (void)_recordAnalyticsEventForEnrollment:(BOOL)enrollment
{
  analyticsManager = [(BuddyBetaReEnrollmentController *)self analyticsManager];
  v9[0] = @"didEnroll";
  v4 = [NSNumber numberWithBool:enrollment];
  v10[0] = v4;
  v9[1] = @"enrollmentRequired";
  v5 = [NSNumber numberWithBool:[(BuddyBetaReEnrollmentController *)self requiresBetaReEnrollment]];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.betaEnrollment" withPayload:v6 persist:1];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100244494;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end