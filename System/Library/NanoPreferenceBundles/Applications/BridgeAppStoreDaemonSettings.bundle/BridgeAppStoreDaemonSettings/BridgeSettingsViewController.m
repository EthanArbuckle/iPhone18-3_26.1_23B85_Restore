@interface BridgeSettingsViewController
- (BridgeSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_automaticDownloadsEnabled;
- (id)_automaticUpdatesEnabled;
- (id)specifiers;
- (void)_automaticDownloadsChanged:(id)a3;
- (void)_automaticUpdatesChanged:(id)a3;
- (void)_reloadForExternalChange;
- (void)accountPageViewController:(id)a3 financeInterruptionResolved:(BOOL)a4;
- (void)actionTapped:(id)a3;
- (void)dealloc;
- (void)loadView;
@end

@implementation BridgeSettingsViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = BridgeSettingsViewController;
  [(BridgeSettingsViewController *)&v4 loadView];
  v3 = ASDLocalizedString(@"SETTINGS_TITLE");
  [(BridgeSettingsViewController *)self setTitle:v3];
}

- (BridgeSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = BridgeSettingsViewController;
  v8 = [(BridgeSettingsViewController *)&v18 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"_reloadForExternalChange" name:@"WatchSettingsManagerSettingsChangedExternallyNotification" object:0];

    v10 = objc_alloc_init(AMSDeviceMessenger);
    bridgeMessenger = v8->_bridgeMessenger;
    v8->_bridgeMessenger = v10;

    objc_initWeak(&location, v8);
    v12 = objc_alloc_init(AMSDeviceMessengerFilter);
    [v12 setDeviceType:1];
    v13 = v8->_bridgeMessenger;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_15778;
    v15[3] = &unk_215E8;
    objc_copyWeak(&v16, &location);
    [(AMSDeviceMessenger *)v13 addUpdateHandlerForType:1 filter:v12 handler:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v51 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithName:0];
    v6 = ASDLocalizedString(@"AUTO_DOWNLOADS_EXPLANATION");
    v7 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v50 = v5;
    [v4 addObject:v5];
    v8 = ASDLocalizedString(@"AUTO_DOWNLOADS");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_automaticDownloadsChanged:" get:"_automaticDownloadsEnabled" detail:0 cell:6 edit:0];

    [v9 setIdentifier:@"automaticDownloadSpecifier"];
    v49 = v9;
    [v4 addObject:v9];
    v10 = objc_opt_new();
    v11 = +[MCProfileConnection sharedConnection];
    v12 = MCFeatureAppInstallationAllowed;
    v13 = sub_175E0();
    LODWORD(v12) = [v11 effectiveBoolValueForWatchSetting:v12 pairedDevice:v13];

    if (v12 != 2)
    {
      v14 = [PSSpecifier groupSpecifierWithName:0];
      v15 = ASDLocalizedString(@"AUTO_UPDATES_EXPLANATION");
      [v14 setProperty:v15 forKey:v7];

      [v10 addObject:v14];
      v16 = ASDLocalizedString(@"AUTO_UPDATES");
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"_automaticUpdatesChanged:" get:"_automaticUpdatesEnabled" detail:0 cell:6 edit:0];

      [v10 addObject:v17];
    }

    if ([v10 count])
    {
      [v4 addObjectsFromArray:v10];
    }

    v60 = objc_opt_new();
    v18 = objc_alloc_init(AMSDeviceMessengerFilter);
    [v18 setDeviceType:1];
    v48 = v18;
    v19 = [(AMSDeviceMessenger *)self->_bridgeMessenger dialogsWithFilter:v18];
    v70 = 0;
    v20 = [v19 resultWithError:&v70];
    v21 = v70;

    if (v21)
    {
      v22 = ASDLogHandleForCategory(14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_opt_class();
        *buf = 138543618;
        v73 = v46;
        v74 = 2114;
        v75 = v21;
        _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "[%{public}@]: Error fetching the bridge dialogs: %{public}@", buf, 0x16u);
      }
    }

    v47 = v21;
    v61 = self;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v20;
    v23 = v60;
    v55 = [obj countByEnumeratingWithState:&v66 objects:buf count:16];
    if (v55)
    {
      v54 = *v67;
      v53 = PSCellClassKey;
      do
      {
        v24 = 0;
        do
        {
          if (*v67 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v24;
          v25 = *(*(&v66 + 1) + 8 * v24);
          v26 = [v25 identifier];
          v27 = [PSSpecifier groupSpecifierWithID:v26];

          v57 = v27;
          [v23 addObject:v27];
          v28 = [PSSpecifier preferenceSpecifierNamed:&stru_21BE8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
          v29 = [v25 identifier];
          v30 = [NSString stringWithFormat:@"%@-titleCell", v29];
          [v28 setIdentifier:v30];

          [v28 setProperty:objc_opt_class() forKey:v53];
          [v28 setProperty:v25 forKey:@"repairDialog"];
          v56 = v28;
          [v23 addObject:v28];
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v59 = [v25 buttonActions];
          v31 = [v59 countByEnumeratingWithState:&v62 objects:v71 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v63;
            do
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v63 != v33)
                {
                  objc_enumerationMutation(v59);
                }

                v35 = *(*(&v62 + 1) + 8 * i);
                v36 = [v35 title];
                v37 = [v25 identifier];
                v38 = [v37 isEqualToString:@"ASDAuthenticateActiveAccount"];

                if (v38)
                {
                  if ([v35 style] == &dword_0 + 2)
                  {
                    v39 = @"CANCEL";
                  }

                  else
                  {
                    v39 = @"PROMPT_FOR_ACCOUNT_SIGN_IN";
                  }

                  v40 = ASDLocalizedString(v39);

                  v36 = v40;
                }

                v41 = [PSSpecifier preferenceSpecifierNamed:v36 target:v61 set:0 get:0 detail:0 cell:13 edit:0];
                v42 = [v35 identifier];
                [v41 setIdentifier:v42];

                [v41 setProperty:v35 forKey:@"repairAction"];
                [v41 setProperty:v25 forKey:@"repairDialog"];
                [v41 setButtonAction:"actionTapped:"];
                v23 = v60;
                [v60 addObject:v41];
              }

              v32 = [v59 countByEnumeratingWithState:&v62 objects:v71 count:16];
            }

            while (v32);
          }

          v24 = v58 + 1;
        }

        while ((v58 + 1) != v55);
        v55 = [obj countByEnumeratingWithState:&v66 objects:buf count:16];
      }

      while (v55);
    }

    if ([v23 count])
    {
      [v4 addObjectsFromArray:v23];
    }

    v43 = [v4 copy];
    v44 = *&v61->PSListController_opaque[v51];
    *&v61->PSListController_opaque[v51] = v43;

    v3 = *&v61->PSListController_opaque[v51];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BridgeSettingsViewController;
  [(BridgeSettingsViewController *)&v4 dealloc];
}

- (void)accountPageViewController:(id)a3 financeInterruptionResolved:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = ASDLogHandleForCategory(14);
  v8 = v7;
  if (!v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: account view controller not resolved", &v12, 0xCu);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: account view controller resolved", &v12, 0xCu);
  }

  activeDialogRequest = self->_activeDialogRequest;
  if (!activeDialogRequest)
  {
    v8 = ASDLogHandleForCategory(14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: account view controller resolved but there was no active dialog request", &v12, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  sub_16144(self, activeDialogRequest);
LABEL_12:
  v10 = self->_activeDialogRequest;
  self->_activeDialogRequest = 0;

  [(BridgeSettingsViewController *)self accountPageViewControllerDidFinish:v6];
}

- (void)actionTapped:(id)a3
{
  v38 = a3;
  v39 = [v38 propertyForKey:@"repairAction"];
  v37 = [v38 propertyForKey:@"repairDialog"];
  v3 = v37;
  if (!v39)
  {
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_41;
  }

  if (!v37)
  {
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_41;
  }

  if ([v39 style] == &dword_0 + 2)
  {
    sub_16144(self, v37);
    goto LABEL_41;
  }

  v4 = [v39 deepLink];

  if (!v4)
  {
    v23 = [v37 identifier];
    v24 = [v23 isEqualToString:@"ASDAuthenticateActiveAccount"];

    if (v24)
    {
      objc_initWeak(from, self);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_16D2C;
      v42[3] = &unk_21638;
      objc_copyWeak(&v44, from);
      v43 = v37;
      sub_16D84(self, v42);

      objc_destroyWeak(&v44);
      objc_destroyWeak(from);
    }

    else
    {
      v27 = ASDLogHandleForCategory(14);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(from[0]) = 138543362;
        *(from + 4) = objc_opt_class();
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Action tapped for dialog but there is no deep link and it isn't the cancel button", from, 0xCu);
      }
    }

    goto LABEL_40;
  }

  objc_initWeak(&location, self);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v32 = v46;
  v46[0] = sub_169F8;
  v46[1] = &unk_21610;
  objc_copyWeak(&v49, &location);
  v5 = v39;
  v47 = v5;
  v48 = v37;
  v35 = v5;
  v33 = v45;
  if (!self)
  {
    goto LABEL_39;
  }

  v6 = [v35 deepLink];
  v34 = [NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:0];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [v34 queryItems];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:from count:16];
  if (!v8)
  {

    v9 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_30;
  }

  v40 = 0;
  v41 = 0;
  v9 = 0;
  v10 = *v52;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v51 + 1) + 8 * i);
      v13 = [v12 name];
      v14 = [v13 isEqualToString:@"dsid"];

      if (v14)
      {
        v15 = [v12 value];
        v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 longLongValue]);

        v9 = v16;
      }

      else
      {
        v17 = [v12 name];
        v18 = [v17 isEqualToString:@"username"];

        if (v18)
        {
          [v12 value];
          v41 = v15 = v41;
        }

        else
        {
          v19 = [v12 name];
          v20 = [v19 isEqualToString:@"accountType"];

          if (!v20)
          {
            continue;
          }

          [v12 value];
          v40 = v15 = v40;
        }
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v51 objects:from count:16];
  }

  while (v8);

  if (v9 && v41)
  {
    v21 = [ACAccountStore ams_sharedAccountStoreForMediaType:v40];
    v22 = [v21 ams_accountWithAltDSID:0 DSID:v9 username:0 accountTypeIdentifier:v40];
    if (v22)
    {
      (v46[0])(v33, 1);
    }

    else
    {
      v28 = objc_alloc_init(AMSAuthenticateOptions);
      [v28 setCanMakeAccountActive:0];
      [v28 setIgnoreAccountConversion:1];
      v29 = [[AMSAuthenticateRequest alloc] initWithDSID:v9 altDSID:0 username:v41 options:v28];
      v30 = [objc_alloc(sub_17668()) initWithRequest:v29 presentingViewController:self];
      sub_17748(self);
      v31 = [v30 performAuthentication];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v56 = sub_179CC;
      v57 = &unk_21688;
      v58 = self;
      v59 = v33;
      [v31 addFinishBlock:&buf];
    }

    goto LABEL_38;
  }

LABEL_30:
  v25 = ASDLogHandleForCategory(14);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unable to locate account on dialog action URL", &buf, 0xCu);
  }

  (v46[0])(v33, 1);
LABEL_38:

LABEL_39:
  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
LABEL_40:
  v3 = v37;
LABEL_41:
}

- (id)_automaticDownloadsEnabled
{
  v2 = sub_13B80();
  v3 = sub_1405C(v2, @"AutoDownloadsEnabled", &__kCFBooleanFalse);

  return v3;
}

- (void)_automaticDownloadsChanged:(id)a3
{
  v3 = a3;
  v4 = sub_13B80();
  sub_141DC(v4, v3, @"AutoDownloadsEnabled");
}

- (id)_automaticUpdatesEnabled
{
  v2 = sub_13B80();
  v3 = sub_1405C(v2, @"AutoUpdatesEnabled", &__kCFBooleanTrue);

  return v3;
}

- (void)_automaticUpdatesChanged:(id)a3
{
  v3 = a3;
  v4 = sub_13B80();
  sub_141DC(v4, v3, @"AutoUpdatesEnabled");
}

- (void)_reloadForExternalChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17D24;
  block[3] = &unk_21700;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end