@interface CACAMain
+ (BOOL)isCarPlayConnected;
+ (BOOL)isFeatureEnabled;
- (void)_didFinishLaunching;
- (void)checkNecessaryLanguagePack;
- (void)didFinishLaunching;
- (void)didUpdateOrientation;
- (void)startCommandAndControl;
- (void)willTerminate;
@end

@implementation CACAMain

- (void)checkNecessaryLanguagePack
{
  v3 = CACLogAssetDownload();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking asset installation status", buf, 2u);
  }

  +[CACNetworkState currentPathIsSatisfied];
  if (!AXDeviceSupportsMedina() || (+[MAAutoAsset hasStartupActivatedCompletedOnce]& 1) != 0)
  {
    [(NSTimer *)self->_startupLanguagePackCheckTimer invalidate];
    startupLanguagePackCheckTimer = self->_startupLanguagePackCheckTimer;
    self->_startupLanguagePackCheckTimer = 0;

    v5 = +[CACLanguageAssetManager sharedManager];
    v6 = [v5 installationStatusAvailable];

    if ((v6 & 1) == 0)
    {
      v16 = CACLogAssetDownload();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Installation status not yet fetched. Triggering fetch.", buf, 2u);
      }

      v9 = +[CACLanguageAssetManager sharedManager];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100001734;
      v49[3] = &unk_100008230;
      v49[4] = self;
      [v9 fetchInstallationStatus:v49];
      goto LABEL_37;
    }

    v7 = +[CACPreferences sharedPreferences];
    v8 = [v7 bestLocaleIdentifier];

    v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v10 = +[CACLanguageAssetManager sharedManager];
    v11 = [v10 cachedInstallationStatus];
    v12 = [v11 objectForKey:v9];

    v13 = +[CACLanguageAssetManager sharedManager];
    v14 = [v13 supportedLocaleIdentifiers];

    if ([v12 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalled])
    {
      if (self->_didStartInstall)
      {
        v15 = +[CACDisplayManager sharedManager];
        [v15 displayReadyToUseWithLanguageMessage];
      }

      goto LABEL_9;
    }

    if (([v12 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalling] & 1) != 0 || objc_msgSend(v12, "hasPrefix:", kCACLanguageAssetInstallationStatusPrefixWaitingToInstall))
    {
      if (self->_didNotifyOfDownloading)
      {
        v21 = 0;
      }

      else
      {
        v22 = +[CACDisplayManager sharedManager];
        v23 = [CACLocaleUtilities localizedUIStringForKey:@"AssetDownload.InstallingNow"];
        [v22 displayMessageString:v23 type:0];

        v21 = 0;
        self->_didNotifyOfDownloading = 1;
      }
    }

    else
    {
      v39 = [v9 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v40 = [v14 containsObject:v39];

      if (v40)
      {
LABEL_9:
        [(CACAMain *)self startCommandAndControl];
LABEL_36:

LABEL_37:
        return;
      }

      if (self->_didStartInstall)
      {
        v21 = 1;
      }

      else
      {
        v44 = +[CACPreferences sharedPreferences];
        v45 = [v44 didShowOnboarding];

        v46 = +[CACLanguageAssetManager sharedManager];
        [v46 startDownloadOfLanguage:v9];

        if ((v45 & 1) == 0)
        {
          v47 = dispatch_time(0, 500000000);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000017F4;
          block[3] = &unk_100008258;
          block[4] = self;
          dispatch_after(v47, &_dispatch_main_q, block);
        }

        v21 = 1;
        self->_didStartInstall = 1;
      }
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v25 = v24 - self->_startTime;
    v26 = +[CACNetworkState currentPathIsSatisfied];
    v27 = 300.0;
    if ((v21 & v26) != 0)
    {
      v27 = 30.0;
    }

    if (v25 <= v27)
    {
      v37 = [NSTimer scheduledTimerWithTimeInterval:self target:"checkNecessaryLanguagePack" selector:0 userInfo:0 repeats:11.0];
      v38 = self->_startupLanguagePackCheckTimer;
      self->_startupLanguagePackCheckTimer = v37;
    }

    else
    {
      v28 = +[AXElement systemWideElement];
      v29 = [v28 systemApplication];
      v30 = [v29 currentApplications];
      v31 = [v30 firstObject];
      v32 = [v31 bundleId];
      v33 = [v32 isEqualToString:@"com.apple.Preferences"];

      v34 = [CACLocaleUtilities localizedUIStringForKey:@"AssetDownload.InstallFailedAlertDescription"];
      v35 = +[CACDisplayManager sharedManager];
      LODWORD(v30) = [v35 carPlayConnected];

      if (v30)
      {
        v36 = CACLogGeneral();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1000021F4(v34, v36);
        }
      }

      else
      {
        v36 = +[CACDisplayManager sharedManager];
        v41 = [CACLocaleUtilities localizedUIStringForKey:@"AssetDownload.InstallFailedAlertTitle"];
        v42 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.OK"];
        if (v33)
        {
          [v36 presentModalAlertWithTitle:v41 description:v34 button1Text:v42 button1Style:1 button2Text:0 button2Style:0 object:0 button1Handler:&stru_100008298 button2Handler:&stru_1000082F8];
        }

        else
        {
          v43 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Settings"];
          [v36 presentModalAlertWithTitle:v41 description:v34 button1Text:v42 button1Style:1 button2Text:v43 button2Style:0 object:0 button1Handler:&stru_100008298 button2Handler:&stru_1000082F8];
        }
      }
    }

    goto LABEL_36;
  }

  [(NSTimer *)self->_startupLanguagePackCheckTimer invalidate];
  v17 = [NSTimer scheduledTimerWithTimeInterval:self target:"checkNecessaryLanguagePack" selector:0 userInfo:0 repeats:11.0];
  v18 = self->_startupLanguagePackCheckTimer;
  self->_startupLanguagePackCheckTimer = v17;

  v19 = CACLogAssetDownload();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Mobile assets is not yet ready.  Delaying checking installation status of ASR assets.", buf, 2u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTime = v20;
}

- (void)startCommandAndControl
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 run];
}

+ (BOOL)isCarPlayConnected
{
  v2 = qword_10000CAE0;
  if (!qword_10000CAE0)
  {
    v3 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
    v4 = qword_10000CAE0;
    qword_10000CAE0 = v3;

    v5 = objc_opt_new();
    v6 = qword_10000CAE8;
    qword_10000CAE8 = v5;

    [qword_10000CAE0 addSessionObserver:qword_10000CAE8];
    v2 = qword_10000CAE0;
  }

  v7 = [v2 currentSession];
  v8 = v7 != 0;

  return v8;
}

+ (BOOL)isFeatureEnabled
{
  if (_AXSCommandAndControlEnabled())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = _AXSCommandAndControlCarPlayEnabled();
    if (v3)
    {

      LOBYTE(v3) = [a1 isCarPlayConnected];
    }
  }

  return v3;
}

- (void)didFinishLaunching
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BBC;
  block[3] = &unk_100008258;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_didFinishLaunching
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTime = v3;
  v4 = +[CACDisplayManager sharedManager];
  v5 = +[CACUtilityToolServer sharedInstance];
  v6 = +[CACDisplayManager sharedManager];
  [v6 enableStatusBarOverride:1];

  [(CACAMain *)self checkNecessaryLanguagePack];
  v7 = +[CACLanguageAssetManager sharedManager];
  [v7 registerForCallback];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_downloadProgressChanged" name:CACNotificationAssetDownloadProgressChanged object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_downloadErrorOccurred" name:CACNotificationAssetDownloadErrorOccured object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100001D3C, kAXSCommandAndControlEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = kAXSCommandAndControlCarPlayEnabledNotification;

  CFNotificationCenterAddObserver(v11, self, sub_100001D3C, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)willTerminate
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 willTerminate];
}

- (void)didUpdateOrientation
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 didUpdateOrientation];
}

@end