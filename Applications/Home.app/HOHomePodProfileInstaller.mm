@interface HOHomePodProfileInstaller
- (id)_cancelAction;
- (void)_handleProfileInstallationForHome:(id)home;
- (void)_installProfileForHomePod:(id)pod;
- (void)_installProfileForHomePods:(id)pods;
- (void)_presentCompletionAlert;
- (void)_presentErrorAlert;
- (void)_presentHomePodSelectionAlertWithHomePods:(id)pods;
- (void)_presentHomeSelectionAlertWithHomes:(id)homes;
- (void)_presentManagedConfigurationProfileInstallation;
- (void)_presentPartialErrorAlertForHomePods:(id)pods;
- (void)_showProfileInstallationFlow;
- (void)_startProfileInstallation;
- (void)deviceProfileCompletedNotification:(id)notification;
- (void)installProfileWithCompletionHandler:(id)handler;
- (void)showProfileInstallationFlowFromViewController:(id)controller withSenderURLString:(id)string;
@end

@implementation HOHomePodProfileInstaller

- (void)showProfileInstallationFlowFromViewController:(id)controller withSenderURLString:(id)string
{
  stringCopy = string;
  controllerCopy = controller;
  [(HOProfileInstaller *)self dismissInstallProfileViewControllerWithAnimation:0];
  [(HOProfileInstaller *)self setBaseViewController:controllerCopy];

  [(HOProfileInstaller *)self setSenderURLString:stringCopy];

  [(HOHomePodProfileInstaller *)self _showProfileInstallationFlow];
}

- (void)_showProfileInstallationFlow
{
  v3 = +[HOManagedConfigurationUtilities popProfileDataFromHeadOfInstallationQueue];
  [(HOProfileInstaller *)self setProfileData:v3];

  profileData = [(HOProfileInstaller *)self profileData];

  if (profileData)
  {
    if (+[HOManagedConfigurationUtilities isProfileInstallationUIAllowed])
    {
      v5 = [MCInstallProfileViewController alloc];
      profileData2 = [(HOProfileInstaller *)self profileData];
      v12 = [v5 initWithProfileDataFromSettingsJump:profileData2];

      [(HOProfileInstaller *)self setInstallProfileViewController:v12];
      [v12 setDelegate:self];
      v7 = [[UINavigationController alloc] initWithRootViewController:v12];
      baseViewController = [(HOProfileInstaller *)self baseViewController];
      [baseViewController presentViewController:v7 animated:1 completion:0];
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

- (void)installProfileWithCompletionHandler:(id)handler
{
  [(HOProfileInstaller *)self setInstallProfileVCCompletionBlock:handler];

  [(HOHomePodProfileInstaller *)self _startProfileInstallation];
}

- (void)deviceProfileCompletedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"errorCode"];

  integerValue = [v5 integerValue];
  integerValue2 = [v5 integerValue];
  installProfileVCCompletionBlock = [(HOProfileInstaller *)self installProfileVCCompletionBlock];

  if (installProfileVCCompletionBlock)
  {
    installProfileVCCompletionBlock2 = [(HOProfileInstaller *)self installProfileVCCompletionBlock];
    installProfileVCCompletionBlock2[2](installProfileVCCompletionBlock2, 0);
  }

  if (integerValue)
  {
    v10 = HFLogForCategory();
    v11 = v10;
    if (integerValue2 == -6723)
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
    profileData = [(HOProfileInstaller *)self profileData];
    v18 = 0;
    v13 = [MCProfile profileWithData:profileData outError:&v18];
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
  allHomesFuture = [v3 allHomesFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100043C40;
  v6[3] = &unk_1000C2070;
  v6[4] = self;
  v5 = [allHomesFuture addCompletionBlock:v6];
}

- (void)_handleProfileInstallationForHome:(id)home
{
  homeCopy = home;
  if ([homeCopy hf_allHomePodsSupportRemoteProfileInstallation])
  {
    hf_homePods = [homeCopy hf_homePods];
    [(HOHomePodProfileInstaller *)self _presentHomePodSelectionAlertWithHomePods:hf_homePods];
  }

  else
  {
    [(HOHomePodProfileInstaller *)self _presentManagedConfigurationProfileInstallation];
  }
}

- (void)_installProfileForHomePod:(id)pod
{
  podCopy = pod;
  profileData = [(HOProfileInstaller *)self profileData];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043E6C;
  v7[3] = &unk_1000C3B18;
  v8 = podCopy;
  selfCopy = self;
  v6 = podCopy;
  [v6 installManagedConfigurationProfileWithData:profileData completionHandler:v7];
}

- (void)_installProfileForHomePods:(id)pods
{
  podsCopy = pods;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004412C;
  v7[3] = &unk_1000C4290;
  v7[4] = self;
  v8 = objc_opt_new();
  v9 = podsCopy;
  v5 = podsCopy;
  v6 = v8;
  [v5 na_each:v7];
}

- (void)_presentManagedConfigurationProfileInstallation
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  v9 = @"profileData";
  profileData = [(HOProfileInstaller *)self profileData];
  v10 = profileData;
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

- (void)_presentHomeSelectionAlertWithHomes:(id)homes
{
  homesCopy = homes;
  v5 = sub_100043700(@"HOProfileInstallChooseHomeTitle");
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = [homesCopy sortedArrayUsingComparator:&stru_1000C42F8];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10004489C;
  v14 = &unk_1000C2A00;
  selfCopy = self;
  v16 = v6;
  v8 = v6;
  [v7 na_each:&v11];
  v9 = [(HOHomePodProfileInstaller *)self _cancelAction:v11];
  [v8 addAction:v9];

  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  [installProfileViewController presentViewController:v8 animated:1 completion:0];
}

- (void)_presentHomePodSelectionAlertWithHomePods:(id)pods
{
  podsCopy = pods;
  v5 = sub_100043700(@"HOProfileInstallChooseHomePodTitle");
  v6 = sub_100043700(@"HOProfileInstallChooseHomePodMessage");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = sub_100043700(@"HOProfileInstallAlertAllButton");
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100044B8C;
  v21[3] = &unk_1000C3AF0;
  v21[4] = self;
  v22 = podsCopy;
  v9 = podsCopy;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v21];

  [v7 addAction:v10];
  v11 = [v9 sortedArrayUsingComparator:&stru_1000C4318];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100044C08;
  v18 = &unk_1000C4340;
  selfCopy = self;
  v20 = v7;
  v12 = v7;
  [v11 na_each:&v15];
  v13 = [(HOHomePodProfileInstaller *)self _cancelAction:v15];
  [v12 addAction:v13];

  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  [installProfileViewController presentViewController:v12 animated:1 completion:0];
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

  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  [installProfileViewController presentViewController:v4 animated:1 completion:0];
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

  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  [installProfileViewController presentViewController:v5 animated:1 completion:0];
}

- (void)_presentPartialErrorAlertForHomePods:(id)pods
{
  podsCopy = pods;
  v5 = sub_100043700(@"HOProfileHomePodsInstallFailedMessage");
  v20 = 0;
  v6 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v5, @"%lu", &v20, [podsCopy count]);
  v7 = v20;
  if ([podsCopy count] == 1)
  {
    v8 = sub_100043700(@"HOProfileHomePodInstallFailedMessage");
    v19 = v7;
    firstObject = [podsCopy firstObject];
    hf_displayName = [firstObject hf_displayName];
    v11 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:&v19, hf_displayName];
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

  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  [installProfileViewController presentViewController:v14 animated:1 completion:0];
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