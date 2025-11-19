@interface BuddyMandatoryUpdateProgressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)errorIndicatesUpdateNotFound:(id)a3;
- (BOOL)hasSpecificVersionRequired;
- (BOOL)manager:(id)a3 shouldShowAlertForScanError:(id)a4;
- (BuddyMandatoryUpdateProgressController)initWithAllowCellularOverride:(BOOL)a3 bypassTermsAndConditions:(BOOL)a4 intendedUpdate:(id)a5 scanOptions:(id)a6;
- (void)_handleScanResults:(id)a3 error:(id)a4;
- (void)handleDownload:(BOOL)a3 error:(id)a4;
- (void)loadView;
- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5;
- (void)manager:(id)a3 downloadDescriptor:(id)a4 progressChangedToNormalizedPercentComplete:(float)a5 displayStyle:(int)a6;
- (void)manager:(id)a3 downloadFailedWithError:(id)a4;
- (void)manager:(id)a3 installFailedWithError:(id)a4;
- (void)manager:(id)a3 installStartedForUpdate:(id)a4;
- (void)manager:(id)a3 promptForDevicePasscodeWithCompletion:(id)a4;
- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4;
- (void)manager:(id)a3 scanFoundUpdates:(id)a4 error:(id)a5;
- (void)managerDownloadFinished:(id)a3;
- (void)resetProgress;
- (void)setProgress:(double)a3;
- (void)showAlertForError:(id)a3;
- (void)showAlertForMDMMissingUpdate:(id)a3;
- (void)startDownload;
- (void)startInstall;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMandatoryUpdateProgressController

- (BuddyMandatoryUpdateProgressController)initWithAllowCellularOverride:(BOOL)a3 bypassTermsAndConditions:(BOOL)a4 intendedUpdate:(id)a5 scanOptions:(id)a6
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v7 = v25;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"MANDATORY_UPDATE_PROGRESS_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v25 = 0;
  v19.receiver = v7;
  v19.super_class = BuddyMandatoryUpdateProgressController;
  v10 = [(BuddyMandatoryUpdateProgressController *)&v19 initWithTitle:v9 detailText:0 icon:0];
  v25 = v10;
  objc_storeStrong(&v25, v10);

  if (v10)
  {
    [v25 setScanOptions:v20];
    [v25 setIntendedUpdate:location];
    v11 = [BuddySUSUISoftwareUpdateManager createWithDelegate:v25 hostController:v25];
    [v25 setUpdateManager:v11];

    v12 = [v25 updateManager];
    [v12 setAllowCellularOverride:v23];

    v13 = [v25 updateManager];
    [v13 setBypassTermsAndConditions:v22];

    v14 = [v25 updateManager];
    [v14 setClientIsBuddy:1];

    v15 = [v25 updateManager];
    v16 = +[RUIStyle setupAssistantModalStyle];
    [v15 setServerFlowStyle:v16];
  }

  v17 = v25;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v25, 0);
  return v17;
}

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMandatoryUpdateProgressController;
  [(BuddyMandatoryUpdateProgressController *)&v3 loadView];
  [(BuddyMandatoryUpdateProgressController *)v5 resetProgress];
  v2 = [(BuddyMandatoryUpdateProgressController *)v5 navigationItem];
  [v2 setHidesBackButton:1];
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMandatoryUpdateProgressController;
  [(BuddyMandatoryUpdateProgressController *)&v3 viewDidLoad];
  v2 = [(BuddyMandatoryUpdateProgressController *)v5 buddy_animationController:@"Update"];
  [(BuddyMandatoryUpdateProgressController *)v5 setAnimationController:v2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyMandatoryUpdateProgressController;
  [(BuddyMandatoryUpdateProgressController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyMandatoryUpdateProgressController *)v7 animationController];
  [(OBAnimationController *)v3 startAnimation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24.receiver = self;
  v24.super_class = BuddyMandatoryUpdateProgressController;
  [(BuddyMandatoryUpdateProgressController *)&v24 viewDidAppear:a3];
  if (([(BuddyMandatoryUpdateProgressController *)v27 isMovingToParentViewController]& 1) != 0)
  {
    location = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v3 = location;
      v4 = v22;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Scanning for update...", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v5 = [(BuddyMandatoryUpdateProgressController *)v27 scanOptions];

    if (v5)
    {
      v6 = [(BuddyMandatoryUpdateProgressController *)v27 updateManager];
      v7 = [(BuddyMandatoryUpdateProgressController *)v27 scanOptions];
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = sub_10012DFEC;
      v19 = &unk_10032D408;
      v20 = v27;
      [(BuddySUSUISoftwareUpdateManagerProtocol *)v6 scanForUpdatesWithOptions:v7 andCompletion:&v15];

      objc_storeStrong(&v20, 0);
    }

    else
    {
      v8 = [(BuddyMandatoryUpdateProgressController *)v27 updateManager];
      v9 = _NSConcreteStackBlock;
      v10 = -1073741824;
      v11 = 0;
      v12 = sub_10012E064;
      v13 = &unk_10032D408;
      v14 = v27;
      [(BuddySUSUISoftwareUpdateManagerProtocol *)v8 scanForUpdatesCompletion:&v9];

      objc_storeStrong(&v14, 0);
    }
  }
}

- (void)setProgress:(double)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (a3 <= 0.02)
  {
    v3 = 0.02;
  }

  else
  {
    v3 = v5;
  }

  v4.receiver = self;
  v4.super_class = BuddyMandatoryUpdateProgressController;
  [(BuddyMandatoryUpdateProgressController *)&v4 setProgress:v3];
}

- (void)_handleScanResults:(id)a3 error:(id)a4
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  if (!location[0] || v44)
  {
    oslog = _BYLoggingFacility();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, location[0], v44);
      _os_log_impl(&_mh_execute_header, oslog, v42, "Failed to scan for update (%@): %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v41 = 1;
    goto LABEL_20;
  }

  v40 = _BYLoggingFacility();
  v39 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [location[0] preferredDescriptor];
    v5 = [v26 humanReadableUpdateName];
    v6 = [location[0] preferredDescriptor];
    v25 = [location[0] alternateDescriptor];
    v7 = [v25 humanReadableUpdateName];
    v8 = [location[0] alternateDescriptor];
    v9 = [location[0] latestUpdate];
    v10 = [v9 humanReadableUpdateName];
    v11 = [location[0] latestUpdate];
    v12 = [v46 intendedUpdate];
    v13 = [v12 humanReadableUpdateName];
    v14 = [v46 intendedUpdate];
    sub_10012E718(v48, v5, v6, v7, v8, v10, v11, v13, v14);
    _os_log_impl(&_mh_execute_header, v40, v39, "scanForUpdates did complete\n\tpreferred update %{public}@ (%p)\n\talternate update %{public}@ (%p)\n\tlatest update %{public}@ (%p)\n\tintended update %{public}@ (%p)", v48, 0x52u);
  }

  objc_storeStrong(&v40, 0);
  v15 = [v46 intendedUpdate];

  if (v15)
  {
    v16 = [v46 intendedUpdate];
    [v46 setUpdate:v16];
  }

  else
  {
    v38 = [location[0] preferredDescriptor];
    if (([v46 hasSpecificVersionRequired] & 1) == 0 || v38)
    {
      [v46 setUpdate:v38];
      v41 = 0;
    }

    else
    {
      v17 = v46;
      v18 = [v46 scanOptions];
      [v17 showAlertForMDMMissingUpdate:v18];

      v41 = 1;
    }

    objc_storeStrong(&v38, 0);
    if (v41)
    {
      goto LABEL_20;
    }
  }

  v37 = _BYLoggingFacility();
  v36 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v46 update];
    v20 = [v19 humanReadableUpdateName];
    v21 = [v46 update];
    sub_10007F718(v47, v20, v21);
    _os_log_impl(&_mh_execute_header, v37, v36, "Using update %{public}@ (%p)", v47, 0x16u);
  }

  objc_storeStrong(&v37, 0);
  v35 = _BYLoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v35;
    v23 = v34;
    sub_10006AA68(v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "Checking to see if we have an existing download in progress...", v33, 2u);
  }

  objc_storeStrong(&v35, 0);
  v24 = [v46 updateManager];
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_10012E770;
  v31 = &unk_10032BAE8;
  v32 = v46;
  [v24 SUManagerIsDownloading:&v27];

  objc_storeStrong(&v32, 0);
  v41 = 0;
LABEL_20:
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)hasSpecificVersionRequired
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(BuddyMandatoryUpdateProgressController *)self scanOptions];
  v2 = [location[0] requestedPMV];
  v5 = 0;
  v3 = 1;
  if (!v2)
  {
    v6 = [location[0] requestedBuild];
    v5 = 1;
    v3 = v6 != 0;
  }

  v8 = v3;
  if (v5)
  {
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (BOOL)errorIndicatesUpdateNotFound:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10012EEC8;
  v9 = &unk_10032D430;
  v10 = &v11;
  [location[0] buddy_enumerateErrorTreeWithHandler:&v5];
  v3 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)resetProgress
{
  v3 = [NSBundle bundleForClass:objc_opt_class(), a2];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_PROGRESS_INITIAL_STATUS" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [(BuddyMandatoryUpdateProgressController *)self setProgressText:v4];

  [(BuddyMandatoryUpdateProgressController *)self setProgress:0.0];
}

- (void)showAlertForError:(id)a3
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  v3 = [(BuddyMandatoryUpdateProgressController *)v41 updateManager];
  v38 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v3 humanReadableDescriptionForError:location[0] enableButton:&v39];

  if (![v38 length])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"MANDATORY_UPDATE_GENERIC_ERROR_DETAIL" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
    v6 = v38;
    v38 = v5;
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"MANDATORY_UPDATE_GENERIC_ERROR_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v37 = [UIAlertController alertControllerWithTitle:v8 message:v38 preferredStyle:1];

  v35 = 0;
  v33 = 0;
  v31 = 0;
  v29 = 0;
  if ((v39 & 1) != 0 || (v36 = [(BuddyMandatoryUpdateProgressController *)v41 updateManager], v35 = 1, v9 = 0, [(BuddySUSUISoftwareUpdateManagerProtocol *)v36 state]== 14))
  {
    v34 = [(BuddyMandatoryUpdateProgressController *)v41 updateManager];
    v33 = 1;
    v9 = 1;
    if (([v34 readyToResume] & 1) == 0)
    {
      v32 = [(BuddyMandatoryUpdateProgressController *)v41 updateManager];
      v31 = 1;
      v30 = [(BuddyMandatoryUpdateProgressController *)v41 update];
      v29 = 1;
      v9 = [v32 readyToDownloadUpdate:?];
    }
  }

  if (v29)
  {
  }

  if (v31)
  {
  }

  if (v33)
  {
  }

  if (v35)
  {
  }

  if (v9)
  {
    v10 = v37;
    v11 = [(BuddyMandatoryUpdateProgressController *)v41 updateManager];
    v12 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v11 actionString];
    v23 = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_10012F55C;
    v27 = &unk_10032B598;
    v28 = v41;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v23];
    [v10 addAction:v13];

    objc_storeStrong(&v28, 0);
  }

  v14 = v37;
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"MANDATORY_UPDATE_ERROR_CANCEL_BUTTON" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10012F818;
  v21 = &unk_10032B598;
  v22 = v41;
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&v18];
  [v14 addAction:{v17, v18, v19, v20, v21}];

  [(BuddyMandatoryUpdateProgressController *)v41 presentViewController:v37 animated:1 completion:0];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)showAlertForMDMMissingUpdate:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = +[BuddyMandatoryUpdateUtilities humanReadableCurrentOSVersion];
  v22 = [BuddyMandatoryUpdateUtilities humanReadableOSVersionFromScanOptions:location[0]];
  oslog = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100073058(buf, v22, v23);
    _os_log_error_impl(&_mh_execute_header, oslog, v20, "Failed to find update for the specified version %{public}@. Current version: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MANDATORY_UPDATE_MISSING_MDM_UPDATE_ERROR_DETAIL"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v19 = [NSString localizedStringWithFormat:v5, v23, v22];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"MANDATORY_UPDATE_GENERIC_ERROR_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v18 = [UIAlertController alertControllerWithTitle:v7 message:v19 preferredStyle:1];

  v8 = v18;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"MANDATORY_UPDATE_MISSING_MDM_UPDATE_ERROR_OK_BUTTON" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10012FCA4;
  v16 = &unk_10032B598;
  v17 = v25;
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:&v12];
  [v8 addAction:v11];

  [(BuddyMandatoryUpdateProgressController *)v25 presentViewController:v18 animated:1 completion:0];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)startDownload
{
  v10 = self;
  v9[1] = a2;
  v2 = [(BuddyMandatoryUpdateProgressController *)self updateManager];
  v3 = [(BuddyMandatoryUpdateProgressController *)v10 update];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10012FE28;
  v8 = &unk_10032BAE8;
  v9[0] = v10;
  [(BuddySUSUISoftwareUpdateManagerProtocol *)v2 startDownloadAndInstall:0 update:v3 withHandler:&v4];

  objc_storeStrong(v9, 0);
}

- (void)handleDownload:(BOOL)a3 error:(id)a4
{
  v55 = self;
  v54 = a2;
  v53 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v53)
  {
    if (location)
    {
      v24 = _BYLoggingFacility();
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
        v19 = 0;
        if (_BYIsInternalInstall())
        {
          v11 = location;
        }

        else if (location)
        {
          v22 = [location domain];
          v21 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v22, [location code]);
          v20 = v11;
          v19 = 1;
        }

        else
        {
          v11 = 0;
        }

        sub_100071CBC(v56, v11);
        _os_log_error_impl(&_mh_execute_header, v24, v23, "Failed to start download of update: %{public}@", v56, 0xCu);
        if (v19)
        {
        }

        if (v21)
        {
        }
      }

      objc_storeStrong(&v24, 0);
    }

    else
    {
      v12 = [(BuddyMandatoryUpdateProgressController *)v55 updateManager];
      v13 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v12 downloadProgressIsDone];

      if (v13)
      {
        v18 = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v18;
          v15 = v17;
          sub_10006AA68(v16);
          _os_log_impl(&_mh_execute_header, v14, v15, "Update already downloaded; starting install...", v16, 2u);
        }

        objc_storeStrong(&v18, 0);
        [(BuddyMandatoryUpdateProgressController *)v55 startInstall];
      }
    }
  }

  else
  {
    v4 = [location domain];
    v5 = [v4 isEqualToString:SUErrorDomain];

    if (v5)
    {
      if ([location code] == 41)
      {
        v51 = _BYLoggingFacility();
        v50 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v51;
          v7 = v50;
          sub_10006AA68(buf);
          _os_log_impl(&_mh_execute_header, v6, v7, "Update already downloaded; starting install...", buf, 2u);
        }

        objc_storeStrong(&v51, 0);
        [(BuddyMandatoryUpdateProgressController *)v55 startInstall];
      }

      else if ([location code] != 11)
      {
        v48 = _BYLoggingFacility();
        v47 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(v58, location);
          _os_log_impl(&_mh_execute_header, v48, v47, "Failed to start download of update: %@", v58, 0xCu);
        }

        objc_storeStrong(&v48, 0);
        v8 = &_dispatch_main_q;
        block = _NSConcreteStackBlock;
        v41 = -1073741824;
        v42 = 0;
        v43 = sub_1001304E4;
        v44 = &unk_10032B838;
        v45 = v55;
        v46 = location;
        dispatch_async(v8, &block);

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v45, 0);
      }
    }

    else if (location)
    {
      oslog = _BYLoggingFacility();
      v38 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v57, location);
        _os_log_impl(&_mh_execute_header, oslog, v38, "Failed to start download of update: %@", v57, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v9 = &_dispatch_main_q;
      v31 = _NSConcreteStackBlock;
      v32 = -1073741824;
      v33 = 0;
      v34 = sub_100130518;
      v35 = &unk_10032B838;
      v36 = v55;
      v37 = location;
      dispatch_async(v9, &v31);

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v36, 0);
    }

    else
    {
      v10 = &_dispatch_main_q;
      v25 = _NSConcreteStackBlock;
      v26 = -1073741824;
      v27 = 0;
      v28 = sub_10013054C;
      v29 = &unk_10032B0D0;
      v30 = v55;
      dispatch_async(v10, &v25);

      objc_storeStrong(&v30, 0);
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)startInstall
{
  v9 = self;
  v8[1] = a2;
  +[BYPreferencesController persistEverything];
  v2 = [(BuddyMandatoryUpdateProgressController *)v9 updateManager];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001306D4;
  v7 = &unk_10032BAE8;
  v8[0] = v9;
  [(BuddySUSUISoftwareUpdateManagerProtocol *)v2 startInstallWithHandler:&v3];

  objc_storeStrong(v8, 0);
}

- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v17 = a5;
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(buf, v17, v18);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Software update state transitioned from %lu to %lu", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100130B18;
  v12 = &unk_10032D458;
  v14 = v18;
  v13 = v20;
  dispatch_async(v7, &block);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 downloadDescriptor:(id)a4 progressChangedToNormalizedPercentComplete:(float)a5 displayStyle:(int)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = a5;
  v18 = a6;
  if ([location[0] state] == 8 || objc_msgSend(location[0], "state") == 6 || objc_msgSend(location[0], "state") == 9)
  {
    v17 = 1;
  }

  else
  {
    v9 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100130D90;
    v14 = &unk_10032D458;
    v15 = v22;
    v16 = v19;
    dispatch_async(v9, &block);

    objc_storeStrong(&v15, 0);
    v17 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 promptForDevicePasscodeWithCompletion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDownloadFinished:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyMandatoryUpdateProgressController *)v4 startInstall];
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 downloadFailedWithError:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100131100;
  v10 = &unk_10032B838;
  v11 = v13;
  v12 = v15;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installStartedForUpdate:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001312E8;
  v10 = &unk_10032B0D0;
  v11 = v14;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installFailedWithError:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10013153C;
  v10 = &unk_10032B838;
  v11 = v13;
  v12 = v15;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)manager:(id)a3 shouldShowAlertForScanError:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyMandatoryUpdateProgressController *)v10 hasSpecificVersionRequired];
  v6 = 0;
  if (v5)
  {
    v6 = [(BuddyMandatoryUpdateProgressController *)v10 errorIndicatesUpdateNotFound:v8];
  }

  if (v6)
  {
    [(BuddyMandatoryUpdateProgressController *)v10 setFailedToFindMDMRequiredUpdate:1];
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)manager:(id)a3 scanFoundUpdates:(id)a4 error:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  if (!v15 || v14)
  {
    v7 = &_dispatch_main_q;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10013182C;
    v12 = &unk_10032B0D0;
    v13 = v17;
    dispatch_async(v7, &v8);

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end