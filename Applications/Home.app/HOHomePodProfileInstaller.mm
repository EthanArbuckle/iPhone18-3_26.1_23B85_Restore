@interface HOHomePodProfileInstaller
- (id)_cancelAction;
- (void)_handleProfileInstallationForHome:(id)a3;
- (void)_installProfileForHomePod:(id)a3;
- (void)_installProfileForHomePods:(id)a3;
- (void)_presentCompletionAlert;
- (void)_presentErrorAlert;
- (void)_presentHomePodSelectionAlertWithHomePods:(id)a3;
- (void)_presentHomeSelectionAlertWithHomes:(id)a3;
- (void)_presentManagedConfigurationProfileInstallation;
- (void)_presentPartialErrorAlertForHomePods:(id)a3;
- (void)_showProfileInstallationFlow;
- (void)_startProfileInstallation;
- (void)deviceProfileCompletedNotification:(id)a3;
- (void)installProfileWithCompletionHandler:(id)a3;
- (void)showProfileInstallationFlowFromViewController:(id)a3 withSenderURLString:(id)a4;
@end

@implementation HOHomePodProfileInstaller

- (void)showProfileInstallationFlowFromViewController:(id)a3 withSenderURLString:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HOProfileInstaller *)self dismissInstallProfileViewControllerWithAnimation:0];
  [(HOProfileInstaller *)self setBaseViewController:v7];

  [(HOProfileInstaller *)self setSenderURLString:v6];

  [(HOHomePodProfileInstaller *)self _showProfileInstallationFlow];
}

- (void)_showProfileInstallationFlow
{
  v3 = +[HOManagedConfigurationUtilities popProfileDataFromHeadOfInstallationQueue];
  [(HOProfileInstaller *)self setProfileData:v3];

  v4 = [(HOProfileInstaller *)self profileData];

  if (v4)
  {
    if (+[HOManagedConfigurationUtilities isProfileInstallationUIAllowed])
    {
      v5 = [MCInstallProfileViewController alloc];
      v6 = [(HOProfileInstaller *)self profileData];
      v12 = [v5 initWithProfileDataFromSettingsJump:v6];

      [(HOProfileInstaller *)self setInstallProfileViewController:v12];
      [v12 setDelegate:self];
      v7 = [[UINavigationController alloc] initWithRootViewController:v12];
      v8 = [(HOProfileInstaller *)self baseViewController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      v12 = sub_100043700(@"HOProfileUINotAllowedTitle");
      v7 = sub_100043700(@"HOProfileUINotAllowedMessage");
      [(HOProfileInstaller *)self showProfileInstallationAlertViewWithTitle:v12 message:v7 shouldGoBackToSenderURL:1];
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[HOHomePodProfileInstaller _showProfileInstallationFlow]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(%s) popped profile data is nil", buf, 0xCu);
    }

    v10 = sub_100043700(@"HOProfileDataNotFoundDisplayTitle");
    v11 = sub_100043700(@"HOProfileDataNotFoundDisplayMessage");
    [(HOProfileInstaller *)self showProfileInstallationAlertViewWithTitle:v10 message:v11 shouldGoBackToSenderURL:1];
  }
}

- (void)installProfileWithCompletionHandler:(id)a3
{
  [(HOProfileInstaller *)self setInstallProfileVCCompletionBlock:a3];

  [(HOHomePodProfileInstaller *)self _startProfileInstallation];
}

- (void)deviceProfileCompletedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"errorCode"];

  v6 = [v5 integerValue];
  v7 = [v5 integerValue];
  v8 = [(HOProfileInstaller *)self installProfileVCCompletionBlock];

  if (v8)
  {
    v9 = [(HOProfileInstaller *)self installProfileVCCompletionBlock];
    v9[2](v9, 0);
  }

  if (v6)
  {
    v10 = HFLogForCategory();
    v11 = v10;
    if (v7 == -6723)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[HOHomePodProfileInstaller deviceProfileCompletedNotification:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) profile installation canceled", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100081708(v11);
    }

    [(HOProfileInstaller *)self dismissInstallProfileViewControllerWithAnimation:1 shouldOpenSenderURL:1];
  }

  else
  {
    [(HOProfileInstaller *)self setInstallProfileVCCompletionBlock:0];
    v12 = [(HOProfileInstaller *)self profileData];
    v18 = 0;
    v13 = [MCProfile profileWithData:v12 outError:&v18];
    v14 = v18;

    if ([v13 needsReboot])
    {
      v15 = sub_100043700(@"HOProfileInstallHomePodRebootTitle");
      v16 = sub_100043700(@"HOProfileInstallHomePodRebootMessage");
      [(HOProfileInstaller *)self showProfileInstallationAlertViewWithTitle:v15 message:v16 shouldGoBackToSenderURL:0];
    }

    else if (v14)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10008178C();
      }
    }

    else
    {
      [(HOProfileInstaller *)self openSenderURL];
    }
  }
}

- (void)_startProfileInstallation
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 allHomesFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100043C40;
  v6[3] = &unk_1000C2070;
  v6[4] = self;
  v5 = [v4 addCompletionBlock:v6];
}

- (void)_handleProfileInstallationForHome:(id)a3
{
  v5 = a3;
  if ([v5 hf_allHomePodsSupportRemoteProfileInstallation])
  {
    v4 = [v5 hf_homePods];
    [(HOHomePodProfileInstaller *)self _presentHomePodSelectionAlertWithHomePods:v4];
  }

  else
  {
    [(HOHomePodProfileInstaller *)self _presentManagedConfigurationProfileInstallation];
  }
}

- (void)_installProfileForHomePod:(id)a3
{
  v4 = a3;
  v5 = [(HOProfileInstaller *)self profileData];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043E6C;
  v7[3] = &unk_1000C3B18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 installManagedConfigurationProfileWithData:v5 completionHandler:v7];
}

- (void)_installProfileForHomePods:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004412C;
  v7[3] = &unk_1000C4290;
  v7[4] = self;
  v8 = objc_opt_new();
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v5 na_each:v7];
}

- (void)_presentManagedConfigurationProfileInstallation
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  v9 = @"profileData";
  v4 = [(HOProfileInstaller *)self profileData];
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100044628;
  v6[3] = &unk_1000C42B8;
  objc_copyWeak(&v7, &location);
  [v3 showDevicePickerWithInfo:v5 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_presentHomeSelectionAlertWithHomes:(id)a3
{
  v4 = a3;
  v5 = sub_100043700(@"HOProfileInstallChooseHomeTitle");
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = [v4 sortedArrayUsingComparator:&stru_1000C42F8];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10004489C;
  v14 = &unk_1000C2A00;
  v15 = self;
  v16 = v6;
  v8 = v6;
  [v7 na_each:&v11];
  v9 = [(HOHomePodProfileInstaller *)self _cancelAction:v11];
  [v8 addAction:v9];

  v10 = [(HOProfileInstaller *)self installProfileViewController];
  [v10 presentViewController:v8 animated:1 completion:0];
}

- (void)_presentHomePodSelectionAlertWithHomePods:(id)a3
{
  v4 = a3;
  v5 = sub_100043700(@"HOProfileInstallChooseHomePodTitle");
  v6 = sub_100043700(@"HOProfileInstallChooseHomePodMessage");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = sub_100043700(@"HOProfileInstallAlertAllButton");
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100044B8C;
  v21[3] = &unk_1000C3AF0;
  v21[4] = self;
  v22 = v4;
  v9 = v4;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v21];

  [v7 addAction:v10];
  v11 = [v9 sortedArrayUsingComparator:&stru_1000C4318];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100044C08;
  v18 = &unk_1000C4340;
  v19 = self;
  v20 = v7;
  v12 = v7;
  [v11 na_each:&v15];
  v13 = [(HOHomePodProfileInstaller *)self _cancelAction:v15];
  [v12 addAction:v13];

  v14 = [(HOProfileInstaller *)self installProfileViewController];
  [v14 presentViewController:v12 animated:1 completion:0];
}

- (void)_presentCompletionAlert
{
  v3 = sub_100043700(@"HOProfileInstallCompletedTitle");
  v4 = [UIAlertController alertControllerWithTitle:v3 message:0 preferredStyle:1];

  v5 = sub_100043700(@"HOProfileInstallAlertOKButton");
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044E18;
  v8[3] = &unk_1000C2318;
  v8[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:v8];
  [v4 addAction:v6];

  v7 = [(HOProfileInstaller *)self installProfileViewController];
  [v7 presentViewController:v4 animated:1 completion:0];
}

- (void)_presentErrorAlert
{
  v3 = sub_100043700(@"HOProfileHomePodSearchFailedTitle");
  v4 = sub_100043700(@"HOProfileHomePodSearchFailedMessage");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_100043700(@"HOProfileInstallAlertOKButton");
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100044F68;
  v9[3] = &unk_1000C2318;
  v9[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v9];
  [v5 addAction:v7];

  v8 = [(HOProfileInstaller *)self installProfileViewController];
  [v8 presentViewController:v5 animated:1 completion:0];
}

- (void)_presentPartialErrorAlertForHomePods:(id)a3
{
  v4 = a3;
  v5 = sub_100043700(@"HOProfileHomePodsInstallFailedMessage");
  v20 = 0;
  v6 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v5, @"%lu", &v20, [v4 count]);
  v7 = v20;
  if ([v4 count] == 1)
  {
    v8 = sub_100043700(@"HOProfileHomePodInstallFailedMessage");
    v19 = v7;
    v9 = [v4 firstObject];
    v10 = [v9 hf_displayName];
    v11 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:&v19, v10];
    v12 = v19;

    v6 = v11;
    v7 = v12;
  }

  v13 = sub_100043700(@"HOProfileInstallCompletedTitle");
  v14 = [UIAlertController alertControllerWithTitle:v13 message:v6 preferredStyle:1];

  v15 = sub_100043700(@"HOProfileInstallAlertOKButton");
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000451BC;
  v18[3] = &unk_1000C2318;
  v18[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v18];
  [v14 addAction:v16];

  v17 = [(HOProfileInstaller *)self installProfileViewController];
  [v17 presentViewController:v14 animated:1 completion:0];
}

- (id)_cancelAction
{
  v3 = sub_100043700(@"HOProfileInstallAlertCancelButton");
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045294;
  v6[3] = &unk_1000C2318;
  v6[4] = self;
  v4 = [UIAlertAction actionWithTitle:v3 style:1 handler:v6];

  return v4;
}

@end