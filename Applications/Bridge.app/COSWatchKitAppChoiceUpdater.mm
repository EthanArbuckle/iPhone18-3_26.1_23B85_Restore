@interface COSWatchKitAppChoiceUpdater
+ (void)updateBuddyStageAboutPastAppInstallation;
- (BOOL)offerYorktown;
- (void)informAppConduitToInstallAllApps;
- (void)updateAppConduitAboutAppInstallChoice;
@end

@implementation COSWatchKitAppChoiceUpdater

- (BOOL)offerYorktown
{
  setupController = [UIApp setupController];
  offerYorktownForCurrentPairing = [setupController offerYorktownForCurrentPairing];

  return offerYorktownForCurrentPairing;
}

- (void)updateAppConduitAboutAppInstallChoice
{
  isEitherPhoneOrActiveWatchGreenTeaDevice = [UIApp isEitherPhoneOrActiveWatchGreenTeaDevice];
  v4 = +[COSBackupManager sharedBackupManager];
  didRestore = [v4 didRestore];

  if (didRestore)
  {
    v6 = pbb_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping call to appconduit for app installation because restored from backup.", buf, 2u);
    }

LABEL_5:
    [objc_opt_class() updateBuddyStageAboutPastAppInstallation];
    return;
  }

  if (isEitherPhoneOrActiveWatchGreenTeaDevice)
  {
    v7 = pbb_setup_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping call to appconduit for all apps installation because opt-in required", buf, 2u);
    }
  }

  else
  {
    if (![(COSWatchKitAppChoiceUpdater *)self offerYorktown])
    {
      v10 = pbb_setup_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Defaulting to Install All Existing Apps.", buf, 2u);
      }

      [(COSWatchKitAppChoiceUpdater *)self informAppConduitToInstallAllApps];
      goto LABEL_5;
    }

    v8 = +[UIApplication sharedApplication];
    bridgeController = [v8 bridgeController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D2D64;
    v11[3] = &unk_100269800;
    v11[4] = self;
    [bridgeController checkApplicationInstallAllowedWithCompletion:v11];
  }
}

+ (void)updateBuddyStageAboutPastAppInstallation
{
  setupController = [UIApp setupController];
  [setupController updateActivelyPairingWatchBuddyStage:4];
}

- (void)informAppConduitToInstallAllApps
{
  activeWatch = [UIApp activeWatch];
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  [v3 setAllExistingAppsShouldBeInstalled:1 forNewDevice:activeWatch];

  v4 = +[ACXDeviceConnection sharedDeviceConnection];
  [v4 setAlwaysInstall:&__kCFBooleanTrue forDevice:activeWatch];

  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = activeWatch;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setAllExistingAppsShouldBeInstalled forNewDevice:%@", &v7, 0xCu);
  }

  v6 = pbb_setup_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = activeWatch;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAlwaysInstall:1 forNewDevice:%@", &v7, 0xCu);
  }

  [PBBridgeCAReporter recordSetupAppInstallChoice:1];
}

@end