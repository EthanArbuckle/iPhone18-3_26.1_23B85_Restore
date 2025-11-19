@interface PHSettingsPrimaryCloudCallingBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (PHSettingsPrimaryCloudCallingBundleController)initWithParentListController:(id)a3;
- (id)labelValue;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
- (void)statusChanged:(id)a3;
@end

@implementation PHSettingsPrimaryCloudCallingBundleController

- (PHSettingsPrimaryCloudCallingBundleController)initWithParentListController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHSettingsPrimaryCloudCallingBundleController;
  v3 = [(PHSettingsPrimaryCloudCallingBundleController *)&v6 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"statusChanged:" name:TUCallCapabilitiesRelayCallingChangedNotification object:0];
    [v4 addObserver:v3 selector:"statusChanged:" name:@"PHCallNotificationEligibleDevicesChangedNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  if (!v4)
  {
    if (((+[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") & 1) != 0 || +[TUCallCapabilities supportsRelayCalling](TUCallCapabilities, "supportsRelayCalling")) && +[TUCallCapabilities supportsPrimaryCalling])
    {
      v5 = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls]^ 1;
    }

    else
    {
      v5 = 1;
    }

    v6 = +[PHCallNotificationDevicesMonitor sharedInstance];
    v7 = [v6 callNotificationEligibleDevices];
    v8 = [v7 count];

    if (!v5 || v8)
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v14 localizedStringForKey:@"PRIMARY_CLOUD_CALLING_CELL_TITLE" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

      v15 = [(PHSettingsPrimaryCloudCallingBundleController *)self parentListController];
      v16 = [(PHSettingsPrimaryCloudCallingBundleController *)self isStateDrivenNavigationPossibleWithParentController:v15];

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = objc_opt_class();
      }

      v18 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"labelValue" detail:v17 cell:2 edit:0];
      [v18 setIdentifier:@"PRIMARY_CLOUD_CALLING"];
      if (v16)
      {
        [v18 setButtonAction:"performButtonActionForSpecifier:"];
      }

      v19 = [NSArray arrayWithObject:v18];
      [(PHSettingsPrimaryCloudCallingBundleController *)self setSpecifiersArray:v19];
    }

    else
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (+[TUCallCapabilities supportsThumperCalling])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (+[TUCallCapabilities supportsRelayCalling])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (+[TUCallCapabilities supportsPrimaryCalling])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        *buf = 138413314;
        if (+[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = @"NO";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Not showing the primary cloud-calling settings because: ((supportsThumperCalling:%@ || supportsRelayCalling:%@) && supportsPrimaryCalling:%@ && supportsDisplayingFaceTimeVideoCalls:%@) || otherDevicesAvailable:%@", buf, 0x34u);
      }
    }
  }

  v20 = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  return v20;
}

- (id)labelValue
{
  if (+[TUCallCapabilities isThumperCallingEnabled])
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"ON";
  }

  else if (+[TUCallCapabilities areCallsOnOtherDevicesEnabled])
  {
    v5 = +[PHUIConfiguration preferShorterStrings];
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    if (v5)
    {
      v4 = @"NEARBY";
    }

    else
    {
      v4 = @"WHEN_NEARBY";
    }
  }

  else
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"OFF";
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

  return v6;
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PHSettingsPrimaryCloudCallingBundleController *)self parentListController];
  [(PHSettingsPrimaryCloudCallingBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (void)statusChanged:(id)a3
{
  v4 = a3;
  v5 = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  if (!v5)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Received capability changed notification: %@. Reloading specifiers", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4BA0;
    block[3] = &unk_C550;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_6CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D18();
  sub_6D08();
  sub_6CF8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = [v9 traitCollection];
  sub_6D28();

  LOBYTE(v10) = sub_6CB8();
  (*(v5 + 8))(v8, v4);

  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v18 = sub_6CD8();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_6D48() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_6CA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D18();
  sub_6D08();
  sub_6CF8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a4;
  sub_6D38();
  sub_6C98();
  v16 = [v15 traitCollection];
  sub_6D28();

  sub_66C8();
  sub_6CC8();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end