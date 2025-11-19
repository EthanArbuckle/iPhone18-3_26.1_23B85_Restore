@interface HOAppNavigator
+ (HOAppNavigator)navigatorWithRootViewController:(id)a3 baseController:(id)a4;
+ (void)addViewControllersToRegistry;
- (HOHomePodProfileInstaller)homePodProfileInstaller;
- (id)_cameraProfileWithName:(id)a3 home:(id)a4 room:(id)a5;
- (id)_selectHome:(id)a3;
- (id)_serviceWithName:(id)a3 type:(id)a4 home:(id)a5 room:(id)a6;
- (id)_showLocationListWithHome:(id)a3 customizationBlock:(id)a4;
- (id)_showRoom:(id)a3 animated:(BOOL)a4;
- (id)_showRoomContainedCamera:(id)a3 forCameraClip:(id)a4;
- (id)_showRoomContainedObject:(id)a3 secondaryDestination:(unint64_t)a4;
- (id)_showRoomSettingsWithRoom:(id)a3;
- (id)_showUser:(id)a3 customizationBlock:(id)a4;
- (id)addAccessoryWithURL:(id)a3;
- (id)createOrEditActionSetWithName:(id)a3 home:(id)a4 switchToHomeTab:(BOOL)a5;
- (id)createOrShowRoomWithName:(id)a3 home:(id)a4;
- (id)currentViewController;
- (id)dashboardContextTypeDescriptionForAnalytics;
- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)a3;
- (id)showAboutResidentDeviceView;
- (id)showAccessory:(id)a3 secondaryDestination:(unint64_t)a4;
- (id)showAccessoryTypeGroup:(id)a3 forHome:(id)a4 animated:(BOOL)a5;
- (id)showAddAutomationFlow;
- (id)showAddSceneFlowOnCurrentTab;
- (id)showAddSceneFlowOnHomeTab;
- (id)showAutomationTab;
- (id)showBridgeSettingsForAccessory:(id)a3;
- (id)showCameraProfile:(id)a3 clipID:(id)a4;
- (id)showCamerasSectionWithTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5;
- (id)showCardForHomeKitIdentifier:(id)a3 destination:(unint64_t)a4 secondaryDestination:(unint64_t)a5 inHome:(id)a6;
- (id)showDefaultAccountForHome:(id)a3;
- (id)showDiscoverTab;
- (id)showDropInUI:(id)a3 home:(id)a4;
- (id)showFaceRecognitionSettingsForHome:(id)a3;
- (id)showFaceRecognitionSettingsForPerson:(id)a3 personManager:(id)a4 inHome:(id)a5;
- (id)showFaceRecognitionSettingsForUnknownPersonEvent:(id)a3 inHome:(id)a4;
- (id)showFeedbackFlowForCameraClipID:(id)a3 cameraProfile:(id)a4;
- (id)showHH2OnboardingFlowForHomeIfMigrationAvailable:(id)a3;
- (id)showHomeEditor;
- (id)showHomeInvitation:(id)a3;
- (id)showHomePodProfileInstallationFlowWithSender:(id)a3;
- (id)showHomeTab;
- (id)showLocksFirmwareSetupForHome:(id)a3;
- (id)showLocksOnboardingForHome:(id)a3 onboardingType:(unint64_t)a4;
- (id)showNetworkSettingsForAccessory:(id)a3 home:(id)a4;
- (id)showNetworkSettingsForNetworkConfigurationProfile:(id)a3 home:(id)a4;
- (id)showNotificationSettingsForHomeKitObject:(id)a3 inHome:(id)a4;
- (id)showRecognizeMyVoiceSettingsForHome:(id)a3 showEnablementSheet:(BOOL)a4;
- (id)showRoomContainedCamera:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)showRoomWithName:(id)a3;
- (id)showScenesSectionWithDashboardTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5;
- (id)showSiriPersonalRequestsSettingsForHome:(id)a3 showEnablementSheet:(BOOL)a4;
- (id)showSoftwareUpdateForHome:(id)a3;
- (id)showSpeakersAndTVsSectionWithTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5;
- (id)showUserDetails:(id)a3;
- (id)showUserLockSettingsForHome:(id)a3;
- (void)_configureDashboardContextWithAccessoryTypeGroup:(id)a3 home:(id)a4 navigationController:(id)a5 animated:(BOOL)a6;
- (void)_configureDashboardContextWithRoom:(id)a3 navigationController:(id)a4 animated:(BOOL)a5;
- (void)_createActionSetWithName:(id)a3 home:(id)a4;
- (void)_createHomeWithName:(id)a3;
- (void)_createRoomWithName:(id)a3 home:(id)a4;
- (void)_editActionSet:(id)a3 home:(id)a4;
- (void)_showCreateOrEditActionSetViewControllerWithActionSetName:(id)a3 home:(id)a4;
- (void)aboutResidentDeviceViewControllerDidFinish:(id)a3;
- (void)addAccessoryToHome:(id)a3 room:(id)a4;
- (void)addHome;
- (void)addLocationViewController:(id)a3 didFinishWithHome:(id)a4;
- (void)addPeopleToHome:(id)a3;
- (void)configureDashboardContextWithDashboardContext:(id)a3 navigationController:(id)a4 animated:(BOOL)a5;
- (void)createOrShowHomeWithName:(id)a3 home:(id)a4;
- (void)dismissViewController;
- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4;
- (void)locationListViewControllerDidFinish:(id)a3;
- (void)scrollToDefaultPositionInCurrentContextAnimated:(BOOL)a3;
- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3;
- (void)showCameraWithName:(id)a3 homeName:(id)a4 startDate:(id)a5 endDate:(id)a6 roomName:(id)a7;
- (void)showDashboardSectionListViewController:(id)a3;
- (void)showHomeDashboardCellForActionSet:(id)a3 executeActionSetFuture:(id)a4;
- (void)showHomeForName:(id)a3;
- (void)showHomeWithFuture:(id)a3;
- (void)showServiceWithName:(id)a3 serviceType:(id)a4 homeName:(id)a5 roomName:(id)a6;
- (void)showStatusDetailsForStatusItemClass:(Class)a3;
@end

@implementation HOAppNavigator

- (HOHomePodProfileInstaller)homePodProfileInstaller
{
  homePodProfileInstaller = self->_homePodProfileInstaller;
  if (!homePodProfileInstaller)
  {
    v4 = objc_alloc_init(HOHomePodProfileInstaller);
    v5 = self->_homePodProfileInstaller;
    self->_homePodProfileInstaller = v4;

    homePodProfileInstaller = self->_homePodProfileInstaller;
  }

  return homePodProfileInstaller;
}

+ (void)addViewControllersToRegistry
{
  if (qword_1000DAAD0 != -1)
  {
    sub_1000805C4();
  }
}

+ (HOAppNavigator)navigatorWithRootViewController:(id)a3 baseController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setRootViewController:v6];

  [v7 setBaseController:v5];

  return v7;
}

- (void)createOrShowHomeWithName:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023CC4;
  v14[3] = &unk_1000C3058;
  objc_copyWeak(&v15, &location);
  v8 = [v7 flatMap:v14];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023DF0;
  v11[3] = &unk_1000C3080;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v12 = v9;
  v10 = [v8 recover:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)showHomeWithFuture:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002402C;
  v6[3] = &unk_1000C3058;
  objc_copyWeak(&v7, &location);
  v5 = [v4 flatMap:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)showHomeForName:(id)a3
{
  v4 = [HMHomeManager hf_homeFutureForName:a3];
  [(HOAppNavigator *)self showHomeWithFuture:v4];
}

- (id)createOrShowRoomWithName:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000242E4;
  v12[3] = &unk_1000C30A8;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v13 = v8;
  v9 = [v7 flatMap:v12];
  v10 = [v9 recover:&stru_1000C30C8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (id)createOrEditActionSetWithName:(id)a3 home:(id)a4 switchToHomeTab:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024560;
  v13[3] = &unk_1000C3118;
  objc_copyWeak(&v15, &location);
  v16 = a5;
  v10 = v8;
  v14 = v10;
  v11 = [v9 addSuccessBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

- (void)_showCreateOrEditActionSetViewControllerWithActionSetName:(id)a3 home:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (([v6 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
  {
    v7 = [v6 actionSets];
    v8 = [NSPredicate predicateWithFormat:@"name LIKE[cd] %@", v11];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      v10 = [v9 firstObject];
      [(HOAppNavigator *)self _editActionSet:v10 home:v6];
    }

    else
    {
      [(HOAppNavigator *)self _createActionSetWithName:v11 home:v6];
    }
  }
}

- (void)showServiceWithName:(id)a3 serviceType:(id)a4 homeName:(id)a5 roomName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Show service:%@, type:%@, home:%@, room:%@", buf, 0x2Au);
  }

  v15 = [HMHomeManager hf_homeFutureForName:v12];
  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100024990;
  v20[3] = &unk_1000C3140;
  objc_copyWeak(&v24, buf);
  v16 = v13;
  v21 = v16;
  v17 = v10;
  v22 = v17;
  v18 = v11;
  v23 = v18;
  v19 = [v15 flatMap:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)showCameraWithName:(id)a3 homeName:(id)a4 startDate:(id)a5 endDate:(id)a6 roomName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v33 = v12;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Show camera:%@, startDate:%@, endDate:%@, home:%@, room:%@", buf, 0x34u);
  }

  v18 = [HMHomeManager hf_homeFutureForName:v13];
  objc_initWeak(buf, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100024CA4;
  v25[3] = &unk_1000C31B8;
  objc_copyWeak(&v31, buf);
  v19 = v16;
  v26 = v19;
  v20 = v12;
  v27 = v20;
  v21 = v13;
  v28 = v21;
  v22 = v14;
  v29 = v22;
  v23 = v15;
  v30 = v23;
  v24 = [v18 flatMap:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)showHomeDashboardCellForActionSet:(id)a3 executeActionSetFuture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  objc_initWeak(&location, self);
  v9 = [v8 homeFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000251D0;
  v11[3] = &unk_1000C1F00;
  objc_copyWeak(&v12, &location);
  v10 = [v9 addSuccessBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOAppNavigator *)self baseController];
  v6 = [v5 presentConfirmationAlertForExecutingTriggerWithIdentifier:v4];

  return v6;
}

- (id)showHomeInvitation:(id)a3
{
  v4 = a3;
  v5 = [(HOAppNavigator *)self baseController];
  [v5 showOnboardingIfNeededForHomeInvitation:v4];

  return +[NAFuture futureWithNoResult];
}

- (id)showRoomWithName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025494;
  v10[3] = &unk_1000C30A8;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [v6 flatMap:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)showCardForHomeKitIdentifier:(id)a3 destination:(unint64_t)a4 secondaryDestination:(unint64_t)a5 inHome:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HOAppNavigator *)self _selectHome:v11];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100025910;
  v28[3] = &unk_1000C3288;
  v28[4] = self;
  v13 = v11;
  v29 = v13;
  v14 = [v12 flatMap:v28];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100025B44;
  v25[3] = &unk_1000C32F0;
  v26 = v13;
  v27 = &stru_1000C3260;
  v25[4] = self;
  v15 = v13;
  v16 = [v14 flatMap:v25];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100025E4C;
  v20[3] = &unk_1000C3318;
  v21 = v10;
  v22 = &stru_1000C32C8;
  v23 = a4;
  v24 = a5;
  v17 = v10;
  v18 = [v16 flatMap:v20];

  return v18;
}

- (id)showAccessory:(id)a3 secondaryDestination:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 home];
  v8 = [[HFBridgeItemProvider alloc] initWithHome:v7];
  v9 = [v8 reloadItems];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000260E4;
  v15[3] = &unk_1000C3368;
  v16 = v8;
  v17 = v6;
  v18 = v7;
  v19 = self;
  v20 = a4;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  v13 = [v9 flatMap:v15];

  return v13;
}

- (id)showHomePodProfileInstallationFlowWithSender:(id)a3
{
  v4 = a3;
  v5 = [(HOAppNavigator *)self homePodProfileInstaller];
  v6 = [v5 isInstallNavigationControllerPresented];

  if (v6)
  {
    v7 = [(HOAppNavigator *)self homePodProfileInstaller];
    [v7 dismissInstallProfileViewControllerWithAnimation:0];
  }

  [(HOAppNavigator *)self dismissViewController];
  v8 = [(HOAppNavigator *)self showHomeTab];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000264A8;
  v12[3] = &unk_1000C3390;
  objc_copyWeak(&v14, &location);
  v9 = v4;
  v13 = v9;
  v10 = [v8 addCompletionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (id)showSoftwareUpdateForHome:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HOAppNavigator *)self showHome:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026684;
  v9[3] = &unk_1000C33F8;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [v5 flatMap:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)showAboutResidentDeviceView
{
  v3 = [[HUAboutResidentDeviceViewController alloc] initWithStyle:1];
  [v3 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v3];
  [v4 setModalPresentationStyle:2];
  v5 = [(HOAppNavigator *)self rootViewController];
  [v5 presentViewController:v4 animated:1 completion:0];

  v6 = +[NAFuture futureWithNoResult];

  return v6;
}

- (id)addAccessoryWithURL:(id)a3
{
  v3 = a3;
  if ((+[HFUtilities supportsAccessorySetup]& 1) != 0)
  {
    v4 = [v3 absoluteString];
    if (([HMAccessorySetupCoordinator isSetupPayloadURL:v3]& 1) == 0)
    {
      v5 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:0];
      v6 = [v5 queryItems];
      v7 = [v6 na_firstObjectPassingTest:&stru_1000C3438];
      v8 = [v7 value];

      v4 = v8;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100026A24;
    v22[3] = &unk_1000C3488;
    v9 = v4;
    v23 = v9;
    v10 = v3;
    v24 = v10;
    v11 = [NAFuture futureWithBlock:v22];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026C24;
    v19 = &unk_1000C3518;
    v20 = v10;
    v21 = v9;
    v12 = v9;
    v13 = [v11 flatMap:&v16];
    v14 = [v13 recover:{&stru_1000C3538, v16, v17, v18, v19}];
  }

  else
  {
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

- (id)showSiriPersonalRequestsSettingsForHome:(id)a3 showEnablementSheet:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Personal Requests enablement sheet", buf, 2u);
    }

    [(HOAppNavigator *)self dismissViewController];
    v9 = [(HOAppNavigator *)self rootViewController];
    v10 = [HUHomeFeatureOnboardingUtilities home:v6 onboardPersonalRequestsFromPresentingViewController:v9];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Personal Requests settings page", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002724C;
    v12[3] = &unk_1000C3560;
    v13 = v6;
    v10 = [(HOAppNavigator *)self _showLocationListWithHome:v13 customizationBlock:v12];
    v9 = v13;
  }

  return v10;
}

- (id)showRecognizeMyVoiceSettingsForHome:(id)a3 showEnablementSheet:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Recognize My Voice enablement sheet", buf, 2u);
    }

    [(HOAppNavigator *)self dismissViewController];
    v9 = [(HOAppNavigator *)self rootViewController];
    v16 = OnboardingDisplayOption_OnboardingFromUserInput;
    v17 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [HUHomeFeatureOnboardingUtilities home:v6 onboardIdentifyVoiceFromPresentingViewController:v9 usageOptions:v10];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Personal Requests settings page", buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002745C;
    v13[3] = &unk_1000C3560;
    v14 = v6;
    v11 = [(HOAppNavigator *)self _showLocationListWithHome:v14 customizationBlock:v13];
    v9 = v14;
  }

  return v11;
}

- (id)showUserDetails:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    *buf = 138412802;
    v13 = v6;
    v14 = 2080;
    v15 = "[HOAppNavigator showUserDetails:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing details for user %@", buf, 0x20u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000275FC;
  v10[3] = &unk_1000C3560;
  v11 = v4;
  v7 = v4;
  v8 = [(HOAppNavigator *)self _showUser:v7 customizationBlock:v10];

  return v8;
}

- (id)showUserLockSettingsForHome:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing user lock settings page", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002772C;
  v9[3] = &unk_1000C3560;
  v10 = v4;
  v6 = v4;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:v6 customizationBlock:v9];

  return v7;
}

- (id)showLocksOnboardingForHome:(id)a3 onboardingType:(unint64_t)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Showing lock onboarding", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027860;
  v10[3] = &unk_1000C35A8;
  v11 = v5;
  v12 = a4;
  v7 = v5;
  v8 = [NAFuture futureWithBlock:v10];

  return v8;
}

- (id)showLocksFirmwareSetupForHome:(id)a3
{
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing lock firmware setup", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027A44;
  v8[3] = &unk_1000C35F0;
  v9 = v3;
  v5 = v3;
  v6 = [NAFuture futureWithBlock:v8];

  return v6;
}

- (id)showHH2OnboardingFlowForHomeIfMigrationAvailable:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing HH2 Upgrade Onboarding", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027C00;
  v9[3] = &unk_1000C3488;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [NAFuture futureWithBlock:v9];

  return v7;
}

- (id)showDropInUI:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HOAppNavigator *)self dismissViewController];
  v8 = [(HOAppNavigator *)self _selectHome:v7];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100028134;
  v17[3] = &unk_1000C3288;
  v17[4] = self;
  v18 = v7;
  v9 = v7;
  v10 = [v8 flatMap:v17];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100028274;
  v14[3] = &unk_1000C2CE8;
  v15 = v6;
  v16 = self;
  v11 = v6;
  v12 = [v10 addCompletionBlock:v14];

  return v10;
}

- (id)showDefaultAccountForHome:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing user default account page", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028468;
  v9[3] = &unk_1000C3560;
  v10 = v4;
  v6 = v4;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:v6 customizationBlock:v9];

  return v7;
}

- (id)showCameraProfile:(id)a3 clipID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(NAFuture);
    v9 = [[NSUUID alloc] initWithUUIDString:v7];
    v10 = [v6 clipManager];
    v11 = [v8 completionHandlerAdapter];
    [v10 fetchClipWithUUID:v9 completion:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028680;
    v15[3] = &unk_1000C3640;
    v16 = v6;
    v17 = self;
    v18 = v7;
    v12 = [v8 flatMap:v15];
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Show camera profile:%@.", buf, 0xCu);
    }

    v12 = [(HOAppNavigator *)self _showRoomContainedObject:v6 secondaryDestination:0];
  }

  return v12;
}

- (id)showFeedbackFlowForCameraClipID:(id)a3 cameraProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Show feedback flow for clip identifier:%@ and camera profile %@.", buf, 0x16u);
    }

    v10 = objc_alloc_init(NAFuture);
    v11 = [[NSUUID alloc] initWithUUIDString:v6];
    v12 = [v7 clipManager];
    v13 = [v10 completionHandlerAdapter];
    [v12 fetchClipWithUUID:v11 completion:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100028A40;
    v16[3] = &unk_1000C3690;
    v17 = v7;
    v18 = self;
    v14 = [v10 flatMap:v16];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080920(v9);
    }

    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

- (id)showNetworkSettingsForNetworkConfigurationProfile:(id)a3 home:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028E04;
  v9[3] = &unk_1000C3560;
  v10 = a3;
  v6 = v10;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:a4 customizationBlock:v9];

  return v7;
}

- (id)showNetworkSettingsForAccessory:(id)a3 home:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028F80;
  v9[3] = &unk_1000C3560;
  v10 = a3;
  v6 = v10;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:a4 customizationBlock:v9];

  return v7;
}

- (id)showBridgeSettingsForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002910C;
  v9[3] = &unk_1000C3560;
  v10 = v4;
  v6 = v4;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:v5 customizationBlock:v9];

  return v7;
}

- (id)showNotificationSettingsForHomeKitObject:(id)a3 inHome:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029334;
  v9[3] = &unk_1000C3560;
  v10 = a3;
  v6 = v10;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:a4 customizationBlock:v9];

  return v7;
}

- (id)showFaceRecognitionSettingsForHome:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1000809E4();
  }

  v5 = [(HOAppNavigator *)self _showLocationListWithHome:v4 customizationBlock:&stru_1000C3760];

  return v5;
}

- (id)showFaceRecognitionSettingsForPerson:(id)a3 personManager:(id)a4 inHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    sub_100080A5C();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002955C;
  v15[3] = &unk_1000C37B0;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [(HOAppNavigator *)self _showLocationListWithHome:v10 customizationBlock:v15];

  return v13;
}

- (id)showFaceRecognitionSettingsForUnknownPersonEvent:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_100080AD4();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100029748;
  v11[3] = &unk_1000C3560;
  v12 = v6;
  v8 = v6;
  v9 = [(HOAppNavigator *)self _showLocationListWithHome:v7 customizationBlock:v11];

  return v9;
}

- (id)showAddAutomationFlow
{
  objc_initWeak(&location, self);
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029944;
  v6[3] = &unk_1000C1F00;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addSuccessBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

- (id)showAddSceneFlowOnHomeTab
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeFuture];
  v5 = [(HOAppNavigator *)self createOrEditActionSetWithName:0 home:v4 switchToHomeTab:1];

  return v5;
}

- (id)showAddSceneFlowOnCurrentTab
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeFuture];
  v5 = [(HOAppNavigator *)self createOrEditActionSetWithName:0 home:v4 switchToHomeTab:0];

  return v5;
}

- (id)showHomeEditor
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 home];
  v5 = [(HOAppNavigator *)self showHomeSettingsForHome:v4];

  return v5;
}

- (id)showHomeTab
{
  v3 = [(HOAppNavigator *)self baseController];
  v4 = [v3 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029CB0;
  v7[3] = &unk_1000C3820;
  v7[4] = self;
  v5 = [v4 addCompletionBlock:v7];

  return v4;
}

- (id)showAutomationTab
{
  v2 = [(HOAppNavigator *)self baseController];
  v3 = [v2 selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];

  return v3;
}

- (id)showDiscoverTab
{
  v2 = [(HOAppNavigator *)self baseController];
  v3 = [v2 selectTabWithIdentifier:HFHomeAppTabIdentifierDiscover];

  return v3;
}

- (void)_createHomeWithName:(id)a3
{
  v4 = a3;
  v8 = [[HOAddLocationViewController alloc] initWithName:v4 delegate:self];

  v5 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v5 setModalPresentationStyle:2];
  v6 = [(HOAppNavigator *)self rootViewController];
  v7 = [v6 hu_presentPreloadableViewController:v5 animated:1];
}

- (id)_selectHome:(id)a3
{
  v3 = a3;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 homeFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A1DC;
  v9[3] = &unk_1000C3870;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

- (void)_createRoomWithName:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [[HFRoomBuilder alloc] initWithHome:v6];

  [v12 setName:v7];
  v8 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v12 presentationDelegate:self addRoomDelegate:0];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(HOAppNavigator *)self rootViewController];
  v11 = [v10 hu_presentPreloadableViewController:v9 animated:1];
}

- (id)_showRoom:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 home];
  v8 = [(HOAppNavigator *)self _selectHome:v7];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002A8B4;
  v16[3] = &unk_1000C38E8;
  v16[4] = self;
  v17 = a4;
  v9 = [v8 flatMap:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A8D0;
  v13[3] = &unk_1000C38C0;
  v13[4] = self;
  v14 = v6;
  v15 = a4;
  v10 = v6;
  v11 = [v9 flatMap:v13];

  return v11;
}

- (id)_showRoomContainedCamera:(id)a3 forCameraClip:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:v6 animated:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002AAE4;
  v13[3] = &unk_1000C3668;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 flatMap:v13];

  return v11;
}

- (id)showRoomContainedCamera:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:v8 animated:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002AD4C;
    v14[3] = &unk_1000C3168;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v12 = [v11 flatMap:v14];
  }

  else
  {
    v12 = [(HOAppNavigator *)self _showRoomContainedObject:v8 secondaryDestination:0];
  }

  return v12;
}

- (id)_showRoomContainedObject:(id)a3 secondaryDestination:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:v6 animated:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AF3C;
  v11[3] = &unk_1000C3910;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (void)_editActionSet:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [[HFActionSetBuilder alloc] initWithExistingObject:v7 inHome:v6];

  v8 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v12 mode:0];
  [v8 setPresentationDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(HOAppNavigator *)self rootViewController];
  v11 = [v10 hu_presentPreloadableViewController:v9 animated:1];
}

- (void)_createActionSetWithName:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [[HFActionSetBuilder alloc] initWithHome:v7];
    [v8 setName:v6];
    v9 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v8 mode:0];
    [v9 setPresentationDelegate:self];
    v10 = [NAFuture futureWithResult:v9];
  }

  else
  {
    v10 = [HUSceneUtilities initialViewControllerForAddingSceneWithPresentationDelegate:self home:v7];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002B184;
  v12[3] = &unk_1000C3938;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (id)_showUser:(id)a3 customizationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 homeFutureWithUser:v6];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002B420;
  v20[3] = &unk_1000C30A8;
  objc_copyWeak(&v22, &location);
  v10 = v6;
  v21 = v10;
  v11 = [v9 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B518;
  v16[3] = &unk_1000C3960;
  objc_copyWeak(&v19, &location);
  v12 = v10;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  v14 = [v11 recover:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);

  return v14;
}

- (id)_showLocationListWithHome:(id)a3 customizationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B788;
  v13[3] = &unk_1000C3988;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 flatMap:v13];

  return v11;
}

- (id)_showRoomSettingsWithRoom:(id)a3
{
  v4 = a3;
  v5 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:0];
  v6 = [v5 flatMap:&stru_1000C39A8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B964;
  v10[3] = &unk_1000C3700;
  v11 = v4;
  v7 = v4;
  v8 = [v6 flatMap:v10];

  return v8;
}

- (id)_serviceWithName:(id)a3 type:(id)a4 home:(id)a5 room:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v10 hf_allServices];
  v14 = [NSPredicate predicateWithFormat:@"name LIKE[cd] %@", v12];

  v15 = [v13 filteredArrayUsingPredicate:v14];

  if (v11)
  {
    v16 = [v11 hf_allServices];
    v17 = [NSPredicate predicateWithFormat:@"serviceType LIKE %@", v9];
    v18 = [v16 filteredArrayUsingPredicate:v17];
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  v19 = [v10 hf_allServices];
  v20 = [NSPredicate predicateWithFormat:@"serviceType LIKE %@", v9];
  v21 = [v19 filteredArrayUsingPredicate:v20];

  v22 = [v18 arrayByAddingObjectsFromArray:v21];
  v23 = [v15 arrayByAddingObjectsFromArray:v22];

  v24 = [v23 firstObject];

  return v24;
}

- (id)_cameraProfileWithName:(id)a3 home:(id)a4 room:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v7 hf_allCameraProfiles];
  v11 = [NSPredicate predicateWithFormat:@"accessory.name LIKE[cd] %@", v9];

  v12 = [v10 filteredArrayUsingPredicate:v11];

  if (v8)
  {
    v13 = [v8 hf_allCameraProfiles];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = [v7 hf_allCameraProfiles];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  v16 = [v12 arrayByAddingObjectsFromArray:v15];

  v17 = [v16 firstObject];

  return v17;
}

- (void)showDashboardSectionListViewController:(id)a3
{
  v4 = a3;
  v7 = [[UINavigationController alloc] initWithRootViewController:v4];

  [v7 setModalPresentationStyle:2];
  v5 = [(HOAppNavigator *)self rootViewController];
  v6 = [v5 hu_presentPreloadableViewController:v7 animated:1];
}

- (void)showStatusDetailsForStatusItemClass:(Class)a3
{
  v4 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002BF00;
  v6[3] = &unk_1000C39C8;
  v6[4] = a3;
  v5 = [v4 flatMap:v6];
}

- (id)showAccessoryTypeGroup:(id)a3 forHome:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HOAppNavigator *)self _selectHome:v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C120;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  v21 = a5;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C13C;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v12 = v9;
  v13 = v8;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showScenesSectionWithDashboardTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HOAppNavigator *)self _selectHome:v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C398;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  v21 = a5;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C3B4;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v12 = v9;
  v13 = v8;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showSpeakersAndTVsSectionWithTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HOAppNavigator *)self _selectHome:v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C610;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  v21 = a5;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C62C;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v12 = v9;
  v13 = v8;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showCamerasSectionWithTitle:(id)a3 forHome:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HOAppNavigator *)self _selectHome:v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C888;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  v21 = a5;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C8A4;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v12 = v9;
  v13 = v8;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (void)scrollToDefaultPositionInCurrentContextAnimated:(BOOL)a3
{
  v5 = [(HOAppNavigator *)self _selectCurrentTabAnimated:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CA48;
  v7[3] = &unk_1000C3A18;
  v7[4] = self;
  v8 = a3;
  v6 = [v5 addCompletionBlock:v7];
}

- (void)dismissViewController
{
  v2 = [(HOAppNavigator *)self rootViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)addAccessoryToHome:(id)a3 room:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (+[HFUtilities supportsAccessorySetup])
  {
    v6 = [HFAddAndSetupNewAccessoriesHandler addAndSetupNewAccessoriesForHome:v7 room:v5];
  }
}

- (void)addPeopleToHome:(id)a3
{
  v4 = a3;
  v5 = [UIAlertController hu_alertControllerForHH2RequiredToAddPeopleForHome:v4 updateNowHandler:&stru_1000C3A38];
  if (!v5)
  {
    v7 = [v4 hf_canAddHomeMember];
    v8 = [v4 hf_canAddAccessCode];
    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v6 = [v9 pinCodeManagerForHome:v4];

    if (v7 && v8)
    {
      v10 = [[HUAddPersonRoleViewController alloc] initWithHome:v4];
      [v10 setPinCodeManager:v6];
      v11 = v10;
    }

    else
    {
      if (!v7)
      {
        if (!v8)
        {
          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100080D2C(v12, v15, v16, v17, v18, v19, v20, v21);
          }

          goto LABEL_11;
        }

        v10 = [[HUAddGuestViewController alloc] initWithPinCodeManager:v6 home:v4];
        [v10 setPresentationDelegate:self];
        v12 = [[UINavigationController alloc] initWithRootViewController:v10];
LABEL_9:

        if (!v12)
        {
          goto LABEL_12;
        }

        [v12 setModalPresentationStyle:2];
        v13 = [(HOAppNavigator *)self rootViewController];
        v14 = [v13 hu_presentPreloadableViewController:v12 animated:1];

LABEL_11:
        goto LABEL_12;
      }

      v11 = [[HUAddPersonRoleViewController alloc] initWithHome:v4];
      v10 = v11;
    }

    [v11 setPresentationDelegate:self];
    v12 = [[UINavigationController alloc] initWithRootViewController:v10];
    [v12 setModalPresentationStyle:2];
    goto LABEL_9;
  }

  v6 = [(HOAppNavigator *)self rootViewController];
  [v6 presentViewController:v5 animated:1 completion:&stru_1000C3A58];
LABEL_12:
}

- (void)addHome
{
  if ((+[HFUtilities isAMac]& 1) == 0)
  {

    [(HOAppNavigator *)self _createHomeWithName:0];
  }
}

- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3
{
  v4 = a3;
  v13 = +[NSMutableDictionary dictionary];
  v5 = [(HOAppNavigator *)self currentViewController];
  [v13 na_safeSetObject:v5 forKey:HFAnalyticsDataSourceViewControllerKey];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HOAppNavigator *)self dashboardContextTypeDescriptionForAnalytics];
  v10 = 0;
  if ([v9 length] && v8)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v10 = [NSString stringWithFormat:@"%@-%@", v12, v9];
  }

  [v13 na_safeSetObject:v10 forKey:HFAnalyticsDataSourceViewControllerOverrideClassNameKey];
  [v13 na_safeSetObject:v4 forKey:HFAnalyticsDataContextMenuTitleKey];

  [HFAnalytics sendEvent:36 withData:v13];
}

- (id)currentViewController
{
  v2 = [(HOAppNavigator *)self rootViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___HOBaseControllerDelegate])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 currentViewController];

    v2 = v5;
  }

  objc_opt_class();
  v6 = v2;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 topViewController];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v6 = v12;
  }

  v13 = v6;

  return v6;
}

- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4
{
  v9 = a4;
  v5 = [(HOAppNavigator *)self rootViewController];
  v6 = [v5 hu_dismissViewControllerAnimated:1];

  v7 = v9;
  if (v9)
  {
    v8 = [(HOAppNavigator *)self showRoom:v9];
    v7 = v9;
  }
}

- (void)addLocationViewController:(id)a3 didFinishWithHome:(id)a4
{
  v9 = a4;
  v5 = [(HOAppNavigator *)self rootViewController];
  v6 = [v5 hu_dismissViewControllerAnimated:1];

  v7 = v9;
  if (v9)
  {
    v8 = [(HOAppNavigator *)self showHome:v9];
    v7 = v9;
  }
}

- (void)locationListViewControllerDidFinish:(id)a3
{
  v3 = [(HOAppNavigator *)self rootViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)aboutResidentDeviceViewControllerDidFinish:(id)a3
{
  v3 = [(HOAppNavigator *)self rootViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_configureDashboardContextWithAccessoryTypeGroup:(id)a3 home:(id)a4 navigationController:(id)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_10006FDFC(v10, v11, v12, a6);
}

- (void)_configureDashboardContextWithRoom:(id)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1000700DC(v8, v9, a5);
}

- (void)configureDashboardContextWithDashboardContext:(id)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  _sSo14HOAppNavigatorC7HomeAppE25configureDashboardContext4with20navigationController8animatedy0C2UI0fG0CSg_So012UINavigationJ0CSbtF_0(a3, v10, a5);
}

- (id)dashboardContextTypeDescriptionForAnalytics
{
  v2 = self;
  v3 = [(HOAppNavigator *)v2 currentViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 context];
    dispatch thunk of DashboardContext.typeDescriptionForAnalytics.getter();
    v7 = v6;

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();

      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end