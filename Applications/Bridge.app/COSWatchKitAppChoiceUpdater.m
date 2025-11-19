@interface COSWatchKitAppChoiceUpdater
+ (void)updateBuddyStageAboutPastAppInstallation;
- (BOOL)offerYorktown;
- (void)informAppConduitToInstallAllApps;
- (void)updateAppConduitAboutAppInstallChoice;
@end

@implementation COSWatchKitAppChoiceUpdater

- (BOOL)offerYorktown
{
  v2 = [UIApp setupController];
  v3 = [v2 offerYorktownForCurrentPairing];

  return v3;
}

- (void)updateAppConduitAboutAppInstallChoice
{
  v3 = [UIApp isEitherPhoneOrActiveWatchGreenTeaDevice];
  v4 = +[COSBackupManager sharedBackupManager];
  v5 = [v4 didRestore];

  if (v5)
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

  if (v3)
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
    v9 = [v8 bridgeController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D2D64;
    v11[3] = &unk_100269800;
    v11[4] = self;
    [v9 checkApplicationInstallAllowedWithCompletion:v11];
  }
}

+ (void)updateBuddyStageAboutPastAppInstallation
{
  v2 = [UIApp setupController];
  [v2 updateActivelyPairingWatchBuddyStage:4];
}

- (void)informAppConduitToInstallAllApps
{
  v2 = [UIApp activeWatch];
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  [v3 setAllExistingAppsShouldBeInstalled:1 forNewDevice:v2];

  v4 = +[ACXDeviceConnection sharedDeviceConnection];
  [v4 setAlwaysInstall:&__kCFBooleanTrue forDevice:v2];

  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setAllExistingAppsShouldBeInstalled forNewDevice:%@", &v7, 0xCu);
  }

  v6 = pbb_setup_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAlwaysInstall:1 forNewDevice:%@", &v7, 0xCu);
  }

  [PBBridgeCAReporter recordSetupAppInstallChoice:1];
}

@end