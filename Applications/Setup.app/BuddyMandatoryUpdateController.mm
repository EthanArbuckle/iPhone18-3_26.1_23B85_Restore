@interface BuddyMandatoryUpdateController
- (BOOL)_isApplicableUpdate:(id)a3;
- (BOOL)_isDEP;
- (BOOL)_updateIsOptional;
- (BuddyMandatoryUpdateController)init;
- (id)_applicableUpdateFromPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5;
- (id)_autoInstallAlertMessageForTimeRemaining:(int64_t)a3;
- (id)_makeLearnMoreButton;
- (id)_updateHumanReadableName;
- (void)_beginInstall;
- (void)_learnMoreTapped:(id)a3;
- (void)_showAutoInstallAlert;
- (void)_showScanFailedForRequiredUpdateAlert;
- (void)_updateLaterTapped:(id)a3;
- (void)_updateNowTapped:(id)a3;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMandatoryUpdateController

- (BuddyMandatoryUpdateController)init
{
  v8 = a2;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyMandatoryUpdateController;
  location = [(BuddyMandatoryUpdateController *)&v7 initWithTitle:v4 detailText:0 icon:0];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)loadView
{
  v29 = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = BuddyMandatoryUpdateController;
  [(BuddyMandatoryUpdateController *)&v27 loadView];
  location = 0;
  v25 = [(BuddyMandatoryUpdateController *)v29 _updateHumanReadableName];
  if ([(BuddyMandatoryUpdateController *)v29 _updateIsOptional])
  {
    objc_storeStrong(&location, @"MANDATORY_UPDATE_SUBTITLE_OPTIONAL_WITH_UPDATE");
  }

  else
  {
    v2 = [(BuddyMandatoryUpdateController *)v29 mdmUpdateOptions];

    if (v2)
    {
      objc_storeStrong(&location, @"MANDATORY_UPDATE_SUBTITLE_MDM");
    }

    else if (v25)
    {
      objc_storeStrong(&location, @"MANDATORY_UPDATE_SUBTITLE_MANDATORY_WITH_UPDATE");
    }

    else
    {
      objc_storeStrong(&location, @"MANDATORY_UPDATE_SUBTITLE_MANDATORY");
    }
  }

  v24 = 0;
  v3 = [(BuddyMandatoryUpdateController *)v29 update];
  v4 = [(SUDescriptor *)v3 documentation];
  v5 = [v4 mandatoryUpdateBodyString];

  if (v5)
  {
    v6 = [(BuddyMandatoryUpdateController *)v29 update];
    v7 = [(NSBundle *)v6 documentation];
    v8 = [v7 mandatoryUpdateBodyString];
    v9 = v24;
    v24 = v8;
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
    v11 = [(NSBundle *)v6 localizedStringForKey:v10 value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    v12 = [NSString localizedStringWithFormat:v11, v25];
    v13 = v24;
    v24 = v12;
  }

  v14 = [(BuddyMandatoryUpdateController *)v29 headerView];
  [v14 setDetailText:v24];

  v15 = v29;
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [(NSBundle *)v16 localizedStringForKey:@"MANDATORY_UPDATE_INSTALL_NOW" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [(BuddyWelcomeController *)v15 addBoldButton:v17 action:"_updateNowTapped:"];

  if ([(BuddyMandatoryUpdateController *)v29 _updateIsOptional])
  {
    v18 = v29;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"MANDATORY_UPDATE_INSTALL_LATER" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    [(BuddyWelcomeController *)v18 addLinkButton:v20 action:"_updateLaterTapped:"];
  }

  v21 = [(BuddyMandatoryUpdateController *)v29 mdmUpdateOptions];

  if (v21)
  {
    v22 = [(BuddyMandatoryUpdateController *)v29 headerView];
    v23 = [(BuddyMandatoryUpdateController *)v29 _makeLearnMoreButton];
    [v22 addAccessoryButton:v23];
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMandatoryUpdateController;
  [(BuddyMandatoryUpdateController *)&v3 viewDidLoad];
  v2 = [(BuddyMandatoryUpdateController *)v5 buddy_animationController:@"Update"];
  [(BuddyMandatoryUpdateController *)v5 setAnimationController:v2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyMandatoryUpdateController;
  [(BuddyMandatoryUpdateController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyMandatoryUpdateController *)v7 animationController];
  [(OBAnimationController *)v3 startAnimation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = BuddyMandatoryUpdateController;
  [(BuddyMandatoryUpdateController *)&v6 viewDidAppear:a3];
  if (([(BuddyMandatoryUpdateController *)v9 isMovingToParentViewController]& 1) != 0)
  {
    if ([(BuddyMandatoryUpdateController *)v9 scanFailedForRequiredUpdate])
    {
      [(BuddyMandatoryUpdateController *)v9 _showScanFailedForRequiredUpdateAlert];
    }

    v4 = 0;
    v3 = 0;
    if ([(BuddyMandatoryUpdateController *)v9 _isDEP])
    {
      v5 = [(BuddyMandatoryUpdateController *)v9 mdmUpdateOptions];
      v4 = 1;
      v3 = v5 == 0;
    }

    if (v4)
    {
    }

    if (v3)
    {
      [(BuddyMandatoryUpdateController *)v9 _showAutoInstallAlert];
    }
  }
}

- (void)_updateLaterTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWelcomeController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];

  objc_storeStrong(location, 0);
}

- (void)_updateNowTapped:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMandatoryUpdateController *)v25 networkProvider];
  v4 = [(BuddyNetworkProvider *)v3 networkReachable];

  if (v4)
  {
    [(BuddyMandatoryUpdateController *)v25 _beginInstall];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = SFLocalizableWAPIStringKeyForKey();
    v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    v23 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];

    v8 = v23;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = SFLocalizableWAPIStringKeyForKey();
    v11 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1001C0D38;
    v21 = &unk_10032B598;
    v22 = v25;
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v17];
    [v8 addAction:v12];

    v13 = v23;
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [(NSBundle *)v14 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];

    [(BuddyMandatoryUpdateController *)v25 presentViewController:v23 animated:1 completion:0];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_learnMoreTapped:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyMandatoryUpdateAboutController alloc];
  v4 = [(BuddyMandatoryUpdateController *)v8 mdmUpdateOptions];
  v6 = [(BuddyMandatoryUpdateAboutController *)v3 initWithScanOptions:v4];

  v5 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v5 setModalPresentationStyle:2];
  [(BuddyMandatoryUpdateController *)v8 presentViewController:v5 animated:1 completion:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_makeLearnMoreButton
{
  v7 = self;
  location[1] = a2;
  location[0] = +[OBHeaderAccessoryButton accessoryButton];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_LEARN_MORE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [location[0] setTitle:v3 forState:0];

  [location[0] addTarget:v7 action:"_learnMoreTapped:" forControlEvents:64];
  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_updateHumanReadableName
{
  v7 = self;
  location[1] = a2;
  v2 = [(BuddyMandatoryUpdateController *)self update];
  location[0] = [(SUDescriptor *)v2 humanReadableUpdateName];

  if (location[0])
  {
    v8 = location[0];
  }

  else
  {
    v3 = [(BuddyMandatoryUpdateController *)v7 mdmUpdateOptions];
    v8 = [BuddyMandatoryUpdateUtilities humanReadableOSVersionFromScanOptions:v3];
  }

  objc_storeStrong(location, 0);
  v4 = v8;

  return v4;
}

- (BOOL)_updateIsOptional
{
  v2 = [(BuddyMandatoryUpdateController *)self update];
  v3 = [(SUDescriptor *)v2 mandatoryUpdateOptional];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyMandatoryUpdateController *)self mdmUpdateOptions];
    v6 = 1;
    v4 = v7 == 0;
  }

  v9 = v4;
  if (v6)
  {
  }

  return v9;
}

- (void)_showAutoInstallAlert
{
  v28 = self;
  v27[1] = a2;
  [(BuddyMandatoryUpdateController *)self setAutoInstallTimeRemaining:60];
  v27[0] = [(BuddyMandatoryUpdateController *)v28 _autoInstallAlertMessageForTimeRemaining:[(BuddyMandatoryUpdateController *)v28 autoInstallTimeRemaining]];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_AUTO_ALERT_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  location = [UIAlertController alertControllerWithTitle:v3 message:v27[0] preferredStyle:1];

  v4 = location;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"MANDATORY_UPDATE_AUTO_ALERT_BUTTON_INSTALL_NOW" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1001C1514;
  v24 = &unk_10032B598;
  v25 = v28;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v20];
  [v4 addAction:v7];

  v8 = location;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"MANDATORY_UPDATE_AUTO_ALERT_BUTTON_LATER" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:&stru_10032E668];
  [v8 addAction:v11];

  [(BuddyMandatoryUpdateController *)v28 presentViewController:location animated:1 completion:0];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001C15AC;
  v17 = &unk_10032E690;
  v18 = v28;
  v19 = location;
  v12 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v13 block:1.0];
  [(BuddyMandatoryUpdateController *)v28 setAutoInstallTimer:v12];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v27, 0);
}

- (id)_autoInstallAlertMessageForTimeRemaining:(int64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = objc_opt_new();
  [location setUnitsStyle:3];
  [location setAllowedUnits:128];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_AUTO_ALERT_MESSAGE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v5 = [(BuddyMandatoryUpdateController *)v12 _updateHumanReadableName];
  v6 = [location stringFromTimeInterval:v10];
  v7 = [NSString localizedStringWithFormat:v4, v5, v6];

  objc_storeStrong(&location, 0);

  return v7;
}

- (void)_showScanFailedForRequiredUpdateAlert
{
  v25 = self;
  v24[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_GENERIC_ERROR_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"MANDATORY_UPDATE_GENERIC_ERROR_DETAIL" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v24[0] = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  objc_initWeak(&location, v25);
  v6 = v24[0];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"MANDATORY_UPDATE_ERROR_CANCEL_BUTTON" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_1001C1BB4;
  v20 = &unk_10032C6D0;
  objc_copyWeak(&v22, &location);
  v21 = v25;
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&v16];
  [v6 addAction:v9];
  v15 = 0;

  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = oslog;
    v11 = v13;
    sub_10006AA68(v12);
    _os_log_impl(&_mh_execute_header, v10, v11, "Will show alert for scan failure for required update", v12, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyMandatoryUpdateController *)v25 presentViewController:v24[0] animated:1 completion:0];
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_storeStrong(v24, 0);
}

- (void)_beginInstall
{
  v18 = self;
  v17[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001C1F9C;
  v16 = &unk_10032B0D0;
  v17[0] = v18;
  dispatch_async(v2, &block);

  v11 = [(BuddyMandatoryUpdateController *)v18 _isDEP];
  v3 = [BuddyMandatoryUpdateProgressController alloc];
  v4 = ![(BuddyMandatoryUpdateController *)v18 _updateIsOptional];
  v5 = [(BuddyMandatoryUpdateController *)v18 update];
  v6 = [(BuddyMandatoryUpdateController *)v18 mdmUpdateOptions];
  location = [(BuddyMandatoryUpdateProgressController *)v3 initWithAllowCellularOverride:v4 & 1 bypassTermsAndConditions:v11 & 1 intendedUpdate:v5 scanOptions:v6];

  v7 = [(BuddyMandatoryUpdateController *)v18 deviceProvider];
  [location setDeviceProvider:v7];

  v8 = [(BuddyWelcomeController *)v18 delegate];
  [location setDelegate:v8];

  v9 = [(BuddyMandatoryUpdateController *)v18 navigationController];
  [v9 pushViewController:location animated:1];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v17, 0);
}

- (BOOL)_isDEP
{
  v2 = [(BuddyMandatoryUpdateController *)self managedConfiguration:a2];
  v3 = [(MCProfileConnection *)v2 activationRecordIndicatesCloudConfigurationIsAvailable];

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = dispatch_get_global_queue(25, 0);
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001C21B8;
    v8 = &unk_10032BCA0;
    v10 = location[0];
    v9 = v13;
    dispatch_async(v3, &v4);

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_applicableUpdateFromPreferredUpdate:(id)a3 alternateUpdate:(id)a4 latestUpdate:(id)a5
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  v45 = 0;
  objc_storeStrong(&v45, a5);
  v44 = _BYLoggingFacility();
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v44;
    v8 = v43;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v7, v8, "Considering latest update for applicability", buf, 2u);
  }

  objc_storeStrong(&v44, 0);
  if ([(BuddyMandatoryUpdateController *)v48 _isApplicableUpdate:v45])
  {
    v41 = _BYLoggingFacility();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v41;
      v10 = v40;
      sub_10006AA68(v39);
      _os_log_impl(&_mh_execute_header, v9, v10, "Latest update is applicable", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v49 = v45;
    v38 = 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v36;
      sub_10006AA68(v35);
      _os_log_impl(&_mh_execute_header, v11, v12, "Considering preferred update for applicability", v35, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if ([(BuddyMandatoryUpdateController *)v48 _isApplicableUpdate:location[0]])
    {
      v34 = _BYLoggingFacility();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v34;
        v14 = v33;
        sub_10006AA68(v32);
        _os_log_impl(&_mh_execute_header, v13, v14, "Preferred update is applicable", v32, 2u);
      }

      objc_storeStrong(&v34, 0);
      v49 = location[0];
      v38 = 1;
    }

    else
    {
      v31 = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v31;
        v16 = v30;
        sub_10006AA68(v29);
        _os_log_impl(&_mh_execute_header, v15, v16, "Considering alternate update for applicability", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      if ([(BuddyMandatoryUpdateController *)v48 _isApplicableUpdate:v46])
      {
        v28 = _BYLoggingFacility();
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v28;
          v18 = v27;
          sub_10006AA68(v26);
          _os_log_impl(&_mh_execute_header, v17, v18, "Alternate update is applicable", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
        v49 = v46;
        v38 = 1;
      }

      else
      {
        v25 = _BYLoggingFacility();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v25;
          v20 = v24;
          sub_10006AA68(v23);
          _os_log_impl(&_mh_execute_header, v19, v20, "No applicable update found", v23, 2u);
        }

        objc_storeStrong(&v25, 0);
        v49 = 0;
        v38 = 1;
      }
    }
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  v21 = v49;

  return v21;
}

- (BOOL)_isApplicableUpdate:(id)a3
{
  v68 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!location[0])
  {
    v66 = _BYLoggingFacility();
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v66;
      v4 = v65;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Update is nil", buf, 2u);
    }

    objc_storeStrong(&v66, 0);
    v69 = 0;
    v63 = 1;
    goto LABEL_51;
  }

  if (([location[0] mandatoryUpdateEligible] & 1) == 0)
  {
    v62 = _BYLoggingFacility();
    v61 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v62;
      v6 = v61;
      sub_10006AA68(v60);
      _os_log_impl(&_mh_execute_header, v5, v6, "Update is not mandatory eligible", v60, 2u);
    }

    objc_storeStrong(&v62, 0);
    v69 = 0;
    v63 = 1;
    goto LABEL_51;
  }

  if ([location[0] mandatoryUpdateRestrictedToOutOfTheBox])
  {
    v59 = _BYLoggingFacility();
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v59;
      v8 = v58;
      sub_10006AA68(v57);
      _os_log_impl(&_mh_execute_header, v7, v8, "Update is out-of-the-box...", v57, 2u);
    }

    objc_storeStrong(&v59, 0);
    if (!+[BuddyMandatoryUpdateUtilities deviceIsFromFactory])
    {
      v56 = _BYLoggingFacility();
      v55 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v56;
        v10 = v55;
        sub_10006AA68(v54);
        _os_log_impl(&_mh_execute_header, v9, v10, "Update is out-of-the-box, but this device has been erased", v54, 2u);
      }

      objc_storeStrong(&v56, 0);
      v69 = 0;
      v63 = 1;
      goto LABEL_51;
    }
  }

  if (([location[0] mandatoryUpdateOptional] & 1) == 0)
  {
    goto LABEL_30;
  }

  oslog = _BYLoggingFacility();
  v52 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = oslog;
    v12 = v52;
    sub_10006AA68(v51);
    _os_log_impl(&_mh_execute_header, v11, v12, "Update is mandatory optional...", v51, 2u);
  }

  objc_storeStrong(&oslog, 0);
  if (+[BuddyMandatoryUpdateUtilities isUpdateRequired])
  {
    goto LABEL_30;
  }

  v50 = _BYLoggingFacility();
  v49 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v50;
    v14 = v49;
    sub_10006AA68(v48);
    _os_log_impl(&_mh_execute_header, v13, v14, "Update is not required by activation...", v48, 2u);
  }

  objc_storeStrong(&v50, 0);
  v15 = +[BuddyCloudConfigManager sharedManager];
  v16 = [v15 hasCloudConfiguration];

  if (v16)
  {
    v47 = _BYLoggingFacility();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v47;
      v18 = v46;
      sub_10006AA68(v45);
      _os_log_impl(&_mh_execute_header, v17, v18, "Update is mandatory optional, but the device has a cloud configuration", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v69 = 0;
    v63 = 1;
    goto LABEL_51;
  }

  if ([(BuddyMandatoryUpdateController *)v68 _isDEP])
  {
    v44 = _BYLoggingFacility();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v44;
      v20 = v43;
      sub_10006AA68(v42);
      _os_log_impl(&_mh_execute_header, v19, v20, "Update is mandatory optional, but the device is enrolled in DEP", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    v69 = 0;
    v63 = 1;
  }

  else
  {
LABEL_30:
    v41 = [location[0] mandatoryUpdateVersionMin];
    if (!v41)
    {
      goto LABEL_39;
    }

    v40 = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(v71, v41);
      _os_log_impl(&_mh_execute_header, v40, v39, "Update has minimum version %{public}@ ...", v71, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    v38 = +[SASSystemInformation productVersion];
    if ([SASSystemInformation compareProductVersion:v41 toProductVersion:v38]!= 1)
    {
      v63 = 0;
    }

    else
    {
      v36 = _BYLoggingFacility();
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v36;
        v22 = v35;
        sub_10006AA68(v34);
        _os_log_impl(&_mh_execute_header, v21, v22, "Update minimum version is not compatible with current version", v34, 2u);
      }

      objc_storeStrong(&v36, 0);
      v69 = 0;
      v63 = 1;
    }

    objc_storeStrong(&v38, 0);
    if (!v63)
    {
LABEL_39:
      v33 = [location[0] mandatoryUpdateVersionMax];
      if (!v33)
      {
        goto LABEL_48;
      }

      v32 = _BYLoggingFacility();
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        sub_100071CBC(v70, v33);
        _os_log_impl(&_mh_execute_header, v32, v31, "Update has maximum version %{public}@ ...", v70, 0xCu);
      }

      objc_storeStrong(&v32, 0);
      v30 = +[SASSystemInformation productVersion];
      if ([SASSystemInformation compareProductVersion:v30 toProductVersion:v33]!= 1)
      {
        v63 = 0;
      }

      else
      {
        v28 = _BYLoggingFacility();
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v28;
          v24 = v27;
          sub_10006AA68(v26);
          _os_log_impl(&_mh_execute_header, v23, v24, "Update maximum version is not compatible with current version", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
        v69 = 0;
        v63 = 1;
      }

      objc_storeStrong(&v30, 0);
      if (!v63)
      {
LABEL_48:
        v69 = 1;
        v63 = 1;
      }

      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v41, 0);
  }

LABEL_51:
  objc_storeStrong(location, 0);
  return v69 & 1;
}

@end