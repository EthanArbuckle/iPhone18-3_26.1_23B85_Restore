@interface HOAppNavigator
+ (HOAppNavigator)navigatorWithRootViewController:(id)controller baseController:(id)baseController;
+ (void)addViewControllersToRegistry;
- (HOHomePodProfileInstaller)homePodProfileInstaller;
- (id)_cameraProfileWithName:(id)name home:(id)home room:(id)room;
- (id)_selectHome:(id)home;
- (id)_serviceWithName:(id)name type:(id)type home:(id)home room:(id)room;
- (id)_showLocationListWithHome:(id)home customizationBlock:(id)block;
- (id)_showRoom:(id)room animated:(BOOL)animated;
- (id)_showRoomContainedCamera:(id)camera forCameraClip:(id)clip;
- (id)_showRoomContainedObject:(id)object secondaryDestination:(unint64_t)destination;
- (id)_showRoomSettingsWithRoom:(id)room;
- (id)_showUser:(id)user customizationBlock:(id)block;
- (id)addAccessoryWithURL:(id)l;
- (id)createOrEditActionSetWithName:(id)name home:(id)home switchToHomeTab:(BOOL)tab;
- (id)createOrShowRoomWithName:(id)name home:(id)home;
- (id)currentViewController;
- (id)dashboardContextTypeDescriptionForAnalytics;
- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)identifier;
- (id)showAboutResidentDeviceView;
- (id)showAccessory:(id)accessory secondaryDestination:(unint64_t)destination;
- (id)showAccessoryTypeGroup:(id)group forHome:(id)home animated:(BOOL)animated;
- (id)showAddAutomationFlow;
- (id)showAddSceneFlowOnCurrentTab;
- (id)showAddSceneFlowOnHomeTab;
- (id)showAutomationTab;
- (id)showBridgeSettingsForAccessory:(id)accessory;
- (id)showCameraProfile:(id)profile clipID:(id)d;
- (id)showCamerasSectionWithTitle:(id)title forHome:(id)home animated:(BOOL)animated;
- (id)showCardForHomeKitIdentifier:(id)identifier destination:(unint64_t)destination secondaryDestination:(unint64_t)secondaryDestination inHome:(id)home;
- (id)showDefaultAccountForHome:(id)home;
- (id)showDiscoverTab;
- (id)showDropInUI:(id)i home:(id)home;
- (id)showFaceRecognitionSettingsForHome:(id)home;
- (id)showFaceRecognitionSettingsForPerson:(id)person personManager:(id)manager inHome:(id)home;
- (id)showFaceRecognitionSettingsForUnknownPersonEvent:(id)event inHome:(id)home;
- (id)showFeedbackFlowForCameraClipID:(id)d cameraProfile:(id)profile;
- (id)showHH2OnboardingFlowForHomeIfMigrationAvailable:(id)available;
- (id)showHomeEditor;
- (id)showHomeInvitation:(id)invitation;
- (id)showHomePodProfileInstallationFlowWithSender:(id)sender;
- (id)showHomeTab;
- (id)showLocksFirmwareSetupForHome:(id)home;
- (id)showLocksOnboardingForHome:(id)home onboardingType:(unint64_t)type;
- (id)showNetworkSettingsForAccessory:(id)accessory home:(id)home;
- (id)showNetworkSettingsForNetworkConfigurationProfile:(id)profile home:(id)home;
- (id)showNotificationSettingsForHomeKitObject:(id)object inHome:(id)home;
- (id)showRecognizeMyVoiceSettingsForHome:(id)home showEnablementSheet:(BOOL)sheet;
- (id)showRoomContainedCamera:(id)camera startDate:(id)date endDate:(id)endDate;
- (id)showRoomWithName:(id)name;
- (id)showScenesSectionWithDashboardTitle:(id)title forHome:(id)home animated:(BOOL)animated;
- (id)showSiriPersonalRequestsSettingsForHome:(id)home showEnablementSheet:(BOOL)sheet;
- (id)showSoftwareUpdateForHome:(id)home;
- (id)showSpeakersAndTVsSectionWithTitle:(id)title forHome:(id)home animated:(BOOL)animated;
- (id)showUserDetails:(id)details;
- (id)showUserLockSettingsForHome:(id)home;
- (void)_configureDashboardContextWithAccessoryTypeGroup:(id)group home:(id)home navigationController:(id)controller animated:(BOOL)animated;
- (void)_configureDashboardContextWithRoom:(id)room navigationController:(id)controller animated:(BOOL)animated;
- (void)_createActionSetWithName:(id)name home:(id)home;
- (void)_createHomeWithName:(id)name;
- (void)_createRoomWithName:(id)name home:(id)home;
- (void)_editActionSet:(id)set home:(id)home;
- (void)_showCreateOrEditActionSetViewControllerWithActionSetName:(id)name home:(id)home;
- (void)aboutResidentDeviceViewControllerDidFinish:(id)finish;
- (void)addAccessoryToHome:(id)home room:(id)room;
- (void)addHome;
- (void)addLocationViewController:(id)controller didFinishWithHome:(id)home;
- (void)addPeopleToHome:(id)home;
- (void)configureDashboardContextWithDashboardContext:(id)context navigationController:(id)controller animated:(BOOL)animated;
- (void)createOrShowHomeWithName:(id)name home:(id)home;
- (void)dismissViewController;
- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room;
- (void)locationListViewControllerDidFinish:(id)finish;
- (void)scrollToDefaultPositionInCurrentContextAnimated:(BOOL)animated;
- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)key;
- (void)showCameraWithName:(id)name homeName:(id)homeName startDate:(id)date endDate:(id)endDate roomName:(id)roomName;
- (void)showDashboardSectionListViewController:(id)controller;
- (void)showHomeDashboardCellForActionSet:(id)set executeActionSetFuture:(id)future;
- (void)showHomeForName:(id)name;
- (void)showHomeWithFuture:(id)future;
- (void)showServiceWithName:(id)name serviceType:(id)type homeName:(id)homeName roomName:(id)roomName;
- (void)showStatusDetailsForStatusItemClass:(Class)class;
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

+ (HOAppNavigator)navigatorWithRootViewController:(id)controller baseController:(id)baseController
{
  baseControllerCopy = baseController;
  controllerCopy = controller;
  v7 = objc_opt_new();
  [v7 setRootViewController:controllerCopy];

  [v7 setBaseController:baseControllerCopy];

  return v7;
}

- (void)createOrShowHomeWithName:(id)name home:(id)home
{
  nameCopy = name;
  homeCopy = home;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023CC4;
  v14[3] = &unk_1000C3058;
  objc_copyWeak(&v15, &location);
  v8 = [homeCopy flatMap:v14];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023DF0;
  v11[3] = &unk_1000C3080;
  objc_copyWeak(&v13, &location);
  v9 = nameCopy;
  v12 = v9;
  v10 = [v8 recover:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)showHomeWithFuture:(id)future
{
  futureCopy = future;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002402C;
  v6[3] = &unk_1000C3058;
  objc_copyWeak(&v7, &location);
  v5 = [futureCopy flatMap:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)showHomeForName:(id)name
{
  v4 = [HMHomeManager hf_homeFutureForName:name];
  [(HOAppNavigator *)self showHomeWithFuture:v4];
}

- (id)createOrShowRoomWithName:(id)name home:(id)home
{
  nameCopy = name;
  homeCopy = home;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000242E4;
  v12[3] = &unk_1000C30A8;
  objc_copyWeak(&v14, &location);
  v8 = nameCopy;
  v13 = v8;
  v9 = [homeCopy flatMap:v12];
  v10 = [v9 recover:&stru_1000C30C8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (id)createOrEditActionSetWithName:(id)name home:(id)home switchToHomeTab:(BOOL)tab
{
  nameCopy = name;
  homeCopy = home;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024560;
  v13[3] = &unk_1000C3118;
  objc_copyWeak(&v15, &location);
  tabCopy = tab;
  v10 = nameCopy;
  v14 = v10;
  v11 = [homeCopy addSuccessBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

- (void)_showCreateOrEditActionSetViewControllerWithActionSetName:(id)name home:(id)home
{
  nameCopy = name;
  homeCopy = home;
  if (([homeCopy hf_shouldBlockCurrentUserFromHome] & 1) == 0)
  {
    actionSets = [homeCopy actionSets];
    nameCopy = [NSPredicate predicateWithFormat:@"name LIKE[cd] %@", nameCopy];
    v9 = [actionSets filteredArrayUsingPredicate:nameCopy];

    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      [(HOAppNavigator *)self _editActionSet:firstObject home:homeCopy];
    }

    else
    {
      [(HOAppNavigator *)self _createActionSetWithName:nameCopy home:homeCopy];
    }
  }
}

- (void)showServiceWithName:(id)name serviceType:(id)type homeName:(id)homeName roomName:(id)roomName
{
  nameCopy = name;
  typeCopy = type;
  homeNameCopy = homeName;
  roomNameCopy = roomName;
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v26 = nameCopy;
    v27 = 2112;
    v28 = typeCopy;
    v29 = 2112;
    v30 = homeNameCopy;
    v31 = 2112;
    v32 = roomNameCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Show service:%@, type:%@, home:%@, room:%@", buf, 0x2Au);
  }

  v15 = [HMHomeManager hf_homeFutureForName:homeNameCopy];
  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100024990;
  v20[3] = &unk_1000C3140;
  objc_copyWeak(&v24, buf);
  v16 = roomNameCopy;
  v21 = v16;
  v17 = nameCopy;
  v22 = v17;
  v18 = typeCopy;
  v23 = v18;
  v19 = [v15 flatMap:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)showCameraWithName:(id)name homeName:(id)homeName startDate:(id)date endDate:(id)endDate roomName:(id)roomName
{
  nameCopy = name;
  homeNameCopy = homeName;
  dateCopy = date;
  endDateCopy = endDate;
  roomNameCopy = roomName;
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v33 = nameCopy;
    v34 = 2112;
    v35 = dateCopy;
    v36 = 2112;
    v37 = endDateCopy;
    v38 = 2112;
    v39 = homeNameCopy;
    v40 = 2112;
    v41 = roomNameCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Show camera:%@, startDate:%@, endDate:%@, home:%@, room:%@", buf, 0x34u);
  }

  v18 = [HMHomeManager hf_homeFutureForName:homeNameCopy];
  objc_initWeak(buf, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100024CA4;
  v25[3] = &unk_1000C31B8;
  objc_copyWeak(&v31, buf);
  v19 = roomNameCopy;
  v26 = v19;
  v20 = nameCopy;
  v27 = v20;
  v21 = homeNameCopy;
  v28 = v21;
  v22 = dateCopy;
  v29 = v22;
  v23 = endDateCopy;
  v30 = v23;
  v24 = [v18 flatMap:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)showHomeDashboardCellForActionSet:(id)set executeActionSetFuture:(id)future
{
  setCopy = set;
  futureCopy = future;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  objc_initWeak(&location, self);
  homeFuture = [v8 homeFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000251D0;
  v11[3] = &unk_1000C1F00;
  objc_copyWeak(&v12, &location);
  v10 = [homeFuture addSuccessBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  baseController = [(HOAppNavigator *)self baseController];
  v6 = [baseController presentConfirmationAlertForExecutingTriggerWithIdentifier:identifierCopy];

  return v6;
}

- (id)showHomeInvitation:(id)invitation
{
  invitationCopy = invitation;
  baseController = [(HOAppNavigator *)self baseController];
  [baseController showOnboardingIfNeededForHomeInvitation:invitationCopy];

  return +[NAFuture futureWithNoResult];
}

- (id)showRoomWithName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v5 homeFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025494;
  v10[3] = &unk_1000C30A8;
  objc_copyWeak(&v12, &location);
  v7 = nameCopy;
  v11 = v7;
  v8 = [homeFuture flatMap:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (id)showCardForHomeKitIdentifier:(id)identifier destination:(unint64_t)destination secondaryDestination:(unint64_t)secondaryDestination inHome:(id)home
{
  identifierCopy = identifier;
  homeCopy = home;
  v12 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100025910;
  v28[3] = &unk_1000C3288;
  v28[4] = self;
  v13 = homeCopy;
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
  v21 = identifierCopy;
  v22 = &stru_1000C32C8;
  destinationCopy = destination;
  secondaryDestinationCopy = secondaryDestination;
  v17 = identifierCopy;
  v18 = [v16 flatMap:v20];

  return v18;
}

- (id)showAccessory:(id)accessory secondaryDestination:(unint64_t)destination
{
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v8 = [[HFBridgeItemProvider alloc] initWithHome:home];
  reloadItems = [v8 reloadItems];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000260E4;
  v15[3] = &unk_1000C3368;
  v16 = v8;
  v17 = accessoryCopy;
  v18 = home;
  selfCopy = self;
  destinationCopy = destination;
  v10 = home;
  v11 = accessoryCopy;
  v12 = v8;
  v13 = [reloadItems flatMap:v15];

  return v13;
}

- (id)showHomePodProfileInstallationFlowWithSender:(id)sender
{
  senderCopy = sender;
  homePodProfileInstaller = [(HOAppNavigator *)self homePodProfileInstaller];
  isInstallNavigationControllerPresented = [homePodProfileInstaller isInstallNavigationControllerPresented];

  if (isInstallNavigationControllerPresented)
  {
    homePodProfileInstaller2 = [(HOAppNavigator *)self homePodProfileInstaller];
    [homePodProfileInstaller2 dismissInstallProfileViewControllerWithAnimation:0];
  }

  [(HOAppNavigator *)self dismissViewController];
  showHomeTab = [(HOAppNavigator *)self showHomeTab];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000264A8;
  v12[3] = &unk_1000C3390;
  objc_copyWeak(&v14, &location);
  v9 = senderCopy;
  v13 = v9;
  v10 = [showHomeTab addCompletionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return showHomeTab;
}

- (id)showSoftwareUpdateForHome:(id)home
{
  homeCopy = home;
  objc_initWeak(&location, self);
  v5 = [(HOAppNavigator *)self showHome:homeCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026684;
  v9[3] = &unk_1000C33F8;
  objc_copyWeak(&v11, &location);
  v6 = homeCopy;
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
  rootViewController = [(HOAppNavigator *)self rootViewController];
  [rootViewController presentViewController:v4 animated:1 completion:0];

  v6 = +[NAFuture futureWithNoResult];

  return v6;
}

- (id)addAccessoryWithURL:(id)l
{
  lCopy = l;
  if ((+[HFUtilities supportsAccessorySetup]& 1) != 0)
  {
    absoluteString = [lCopy absoluteString];
    if (([HMAccessorySetupCoordinator isSetupPayloadURL:lCopy]& 1) == 0)
    {
      v5 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
      queryItems = [v5 queryItems];
      v7 = [queryItems na_firstObjectPassingTest:&stru_1000C3438];
      value = [v7 value];

      absoluteString = value;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100026A24;
    v22[3] = &unk_1000C3488;
    v9 = absoluteString;
    v23 = v9;
    v10 = lCopy;
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

- (id)showSiriPersonalRequestsSettingsForHome:(id)home showEnablementSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  homeCopy = home;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (sheetCopy)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Personal Requests enablement sheet", buf, 2u);
    }

    [(HOAppNavigator *)self dismissViewController];
    rootViewController = [(HOAppNavigator *)self rootViewController];
    v10 = [HUHomeFeatureOnboardingUtilities home:homeCopy onboardPersonalRequestsFromPresentingViewController:rootViewController];
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
    v13 = homeCopy;
    v10 = [(HOAppNavigator *)self _showLocationListWithHome:v13 customizationBlock:v12];
    rootViewController = v13;
  }

  return v10;
}

- (id)showRecognizeMyVoiceSettingsForHome:(id)home showEnablementSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  homeCopy = home;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (sheetCopy)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Recognize My Voice enablement sheet", buf, 2u);
    }

    [(HOAppNavigator *)self dismissViewController];
    rootViewController = [(HOAppNavigator *)self rootViewController];
    v16 = OnboardingDisplayOption_OnboardingFromUserInput;
    v17 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [HUHomeFeatureOnboardingUtilities home:homeCopy onboardIdentifyVoiceFromPresentingViewController:rootViewController usageOptions:v10];
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
    v14 = homeCopy;
    v11 = [(HOAppNavigator *)self _showLocationListWithHome:v14 customizationBlock:v13];
    rootViewController = v14;
  }

  return v11;
}

- (id)showUserDetails:(id)details
{
  detailsCopy = details;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    *buf = 138412802;
    v13 = v6;
    v14 = 2080;
    v15 = "[HOAppNavigator showUserDetails:]";
    v16 = 2112;
    v17 = detailsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing details for user %@", buf, 0x20u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000275FC;
  v10[3] = &unk_1000C3560;
  v11 = detailsCopy;
  v7 = detailsCopy;
  v8 = [(HOAppNavigator *)self _showUser:v7 customizationBlock:v10];

  return v8;
}

- (id)showUserLockSettingsForHome:(id)home
{
  homeCopy = home;
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
  v10 = homeCopy;
  v6 = homeCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:v6 customizationBlock:v9];

  return v7;
}

- (id)showLocksOnboardingForHome:(id)home onboardingType:(unint64_t)type
{
  homeCopy = home;
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
  v11 = homeCopy;
  typeCopy = type;
  v7 = homeCopy;
  v8 = [NAFuture futureWithBlock:v10];

  return v8;
}

- (id)showLocksFirmwareSetupForHome:(id)home
{
  homeCopy = home;
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
  v9 = homeCopy;
  v5 = homeCopy;
  v6 = [NAFuture futureWithBlock:v8];

  return v6;
}

- (id)showHH2OnboardingFlowForHomeIfMigrationAvailable:(id)available
{
  availableCopy = available;
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
  v10 = availableCopy;
  v6 = availableCopy;
  v7 = [NAFuture futureWithBlock:v9];

  return v7;
}

- (id)showDropInUI:(id)i home:(id)home
{
  iCopy = i;
  homeCopy = home;
  [(HOAppNavigator *)self dismissViewController];
  v8 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100028134;
  v17[3] = &unk_1000C3288;
  v17[4] = self;
  v18 = homeCopy;
  v9 = homeCopy;
  v10 = [v8 flatMap:v17];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100028274;
  v14[3] = &unk_1000C2CE8;
  v15 = iCopy;
  selfCopy = self;
  v11 = iCopy;
  v12 = [v10 addCompletionBlock:v14];

  return v10;
}

- (id)showDefaultAccountForHome:(id)home
{
  homeCopy = home;
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
  v10 = homeCopy;
  v6 = homeCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:v6 customizationBlock:v9];

  return v7;
}

- (id)showCameraProfile:(id)profile clipID:(id)d
{
  profileCopy = profile;
  dCopy = d;
  if (dCopy)
  {
    v8 = objc_alloc_init(NAFuture);
    v9 = [[NSUUID alloc] initWithUUIDString:dCopy];
    clipManager = [profileCopy clipManager];
    completionHandlerAdapter = [v8 completionHandlerAdapter];
    [clipManager fetchClipWithUUID:v9 completion:completionHandlerAdapter];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028680;
    v15[3] = &unk_1000C3640;
    v16 = profileCopy;
    selfCopy = self;
    v18 = dCopy;
    v12 = [v8 flatMap:v15];
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = profileCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Show camera profile:%@.", buf, 0xCu);
    }

    v12 = [(HOAppNavigator *)self _showRoomContainedObject:profileCopy secondaryDestination:0];
  }

  return v12;
}

- (id)showFeedbackFlowForCameraClipID:(id)d cameraProfile:(id)profile
{
  dCopy = d;
  profileCopy = profile;
  v8 = HFLogForCategory();
  v9 = v8;
  if (dCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = profileCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Show feedback flow for clip identifier:%@ and camera profile %@.", buf, 0x16u);
    }

    v10 = objc_alloc_init(NAFuture);
    v11 = [[NSUUID alloc] initWithUUIDString:dCopy];
    clipManager = [profileCopy clipManager];
    completionHandlerAdapter = [v10 completionHandlerAdapter];
    [clipManager fetchClipWithUUID:v11 completion:completionHandlerAdapter];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100028A40;
    v16[3] = &unk_1000C3690;
    v17 = profileCopy;
    selfCopy = self;
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

- (id)showNetworkSettingsForNetworkConfigurationProfile:(id)profile home:(id)home
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028E04;
  v9[3] = &unk_1000C3560;
  profileCopy = profile;
  v6 = profileCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:home customizationBlock:v9];

  return v7;
}

- (id)showNetworkSettingsForAccessory:(id)accessory home:(id)home
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028F80;
  v9[3] = &unk_1000C3560;
  accessoryCopy = accessory;
  v6 = accessoryCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:home customizationBlock:v9];

  return v7;
}

- (id)showBridgeSettingsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002910C;
  v9[3] = &unk_1000C3560;
  v10 = accessoryCopy;
  v6 = accessoryCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:home customizationBlock:v9];

  return v7;
}

- (id)showNotificationSettingsForHomeKitObject:(id)object inHome:(id)home
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029334;
  v9[3] = &unk_1000C3560;
  objectCopy = object;
  v6 = objectCopy;
  v7 = [(HOAppNavigator *)self _showLocationListWithHome:home customizationBlock:v9];

  return v7;
}

- (id)showFaceRecognitionSettingsForHome:(id)home
{
  homeCopy = home;
  if (!homeCopy)
  {
    sub_1000809E4();
  }

  v5 = [(HOAppNavigator *)self _showLocationListWithHome:homeCopy customizationBlock:&stru_1000C3760];

  return v5;
}

- (id)showFaceRecognitionSettingsForPerson:(id)person personManager:(id)manager inHome:(id)home
{
  personCopy = person;
  managerCopy = manager;
  homeCopy = home;
  if (!homeCopy)
  {
    sub_100080A5C();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002955C;
  v15[3] = &unk_1000C37B0;
  v16 = personCopy;
  v17 = managerCopy;
  v11 = managerCopy;
  v12 = personCopy;
  v13 = [(HOAppNavigator *)self _showLocationListWithHome:homeCopy customizationBlock:v15];

  return v13;
}

- (id)showFaceRecognitionSettingsForUnknownPersonEvent:(id)event inHome:(id)home
{
  eventCopy = event;
  homeCopy = home;
  if (!homeCopy)
  {
    sub_100080AD4();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100029748;
  v11[3] = &unk_1000C3560;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = [(HOAppNavigator *)self _showLocationListWithHome:homeCopy customizationBlock:v11];

  return v9;
}

- (id)showAddAutomationFlow
{
  objc_initWeak(&location, self);
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v2 homeFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029944;
  v6[3] = &unk_1000C1F00;
  objc_copyWeak(&v7, &location);
  v4 = [homeFuture addSuccessBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

- (id)showAddSceneFlowOnHomeTab
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v3 homeFuture];
  v5 = [(HOAppNavigator *)self createOrEditActionSetWithName:0 home:homeFuture switchToHomeTab:1];

  return v5;
}

- (id)showAddSceneFlowOnCurrentTab
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v3 homeFuture];
  v5 = [(HOAppNavigator *)self createOrEditActionSetWithName:0 home:homeFuture switchToHomeTab:0];

  return v5;
}

- (id)showHomeEditor
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v3 home];
  v5 = [(HOAppNavigator *)self showHomeSettingsForHome:home];

  return v5;
}

- (id)showHomeTab
{
  baseController = [(HOAppNavigator *)self baseController];
  v4 = [baseController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];

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
  baseController = [(HOAppNavigator *)self baseController];
  v3 = [baseController selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];

  return v3;
}

- (id)showDiscoverTab
{
  baseController = [(HOAppNavigator *)self baseController];
  v3 = [baseController selectTabWithIdentifier:HFHomeAppTabIdentifierDiscover];

  return v3;
}

- (void)_createHomeWithName:(id)name
{
  nameCopy = name;
  v8 = [[HOAddLocationViewController alloc] initWithName:nameCopy delegate:self];

  v5 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v5 setModalPresentationStyle:2];
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v7 = [rootViewController hu_presentPreloadableViewController:v5 animated:1];
}

- (id)_selectHome:(id)home
{
  homeCopy = home;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v4 homeFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A1DC;
  v9[3] = &unk_1000C3870;
  v10 = homeCopy;
  v6 = homeCopy;
  v7 = [homeFuture flatMap:v9];

  return v7;
}

- (void)_createRoomWithName:(id)name home:(id)home
{
  homeCopy = home;
  nameCopy = name;
  v12 = [[HFRoomBuilder alloc] initWithHome:homeCopy];

  [v12 setName:nameCopy];
  v8 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v12 presentationDelegate:self addRoomDelegate:0];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v11 = [rootViewController hu_presentPreloadableViewController:v9 animated:1];
}

- (id)_showRoom:(id)room animated:(BOOL)animated
{
  roomCopy = room;
  home = [roomCopy home];
  v8 = [(HOAppNavigator *)self _selectHome:home];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002A8B4;
  v16[3] = &unk_1000C38E8;
  v16[4] = self;
  animatedCopy = animated;
  v9 = [v8 flatMap:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A8D0;
  v13[3] = &unk_1000C38C0;
  v13[4] = self;
  v14 = roomCopy;
  animatedCopy2 = animated;
  v10 = roomCopy;
  v11 = [v9 flatMap:v13];

  return v11;
}

- (id)_showRoomContainedCamera:(id)camera forCameraClip:(id)clip
{
  cameraCopy = camera;
  clipCopy = clip;
  v8 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:cameraCopy animated:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002AAE4;
  v13[3] = &unk_1000C3668;
  v14 = clipCopy;
  v15 = cameraCopy;
  v9 = cameraCopy;
  v10 = clipCopy;
  v11 = [v8 flatMap:v13];

  return v11;
}

- (id)showRoomContainedCamera:(id)camera startDate:(id)date endDate:(id)endDate
{
  cameraCopy = camera;
  dateCopy = date;
  endDateCopy = endDate;
  if (dateCopy)
  {
    v11 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:cameraCopy animated:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002AD4C;
    v14[3] = &unk_1000C3168;
    v15 = cameraCopy;
    v16 = dateCopy;
    v17 = endDateCopy;
    v12 = [v11 flatMap:v14];
  }

  else
  {
    v12 = [(HOAppNavigator *)self _showRoomContainedObject:cameraCopy secondaryDestination:0];
  }

  return v12;
}

- (id)_showRoomContainedObject:(id)object secondaryDestination:(unint64_t)destination
{
  objectCopy = object;
  v7 = [(HOAppNavigator *)self _showDashboardForRoomContainedObject:objectCopy animated:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AF3C;
  v11[3] = &unk_1000C3910;
  v12 = objectCopy;
  destinationCopy = destination;
  v8 = objectCopy;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (void)_editActionSet:(id)set home:(id)home
{
  homeCopy = home;
  setCopy = set;
  v12 = [[HFActionSetBuilder alloc] initWithExistingObject:setCopy inHome:homeCopy];

  v8 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v12 mode:0];
  [v8 setPresentationDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v11 = [rootViewController hu_presentPreloadableViewController:v9 animated:1];
}

- (void)_createActionSetWithName:(id)name home:(id)home
{
  nameCopy = name;
  homeCopy = home;
  if ([nameCopy length])
  {
    v8 = [[HFActionSetBuilder alloc] initWithHome:homeCopy];
    [v8 setName:nameCopy];
    v9 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v8 mode:0];
    [v9 setPresentationDelegate:self];
    v10 = [NAFuture futureWithResult:v9];
  }

  else
  {
    v10 = [HUSceneUtilities initialViewControllerForAddingSceneWithPresentationDelegate:self home:homeCopy];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002B184;
  v12[3] = &unk_1000C3938;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (id)_showUser:(id)user customizationBlock:(id)block
{
  userCopy = user;
  blockCopy = block;
  objc_initWeak(&location, self);
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 homeFutureWithUser:userCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002B420;
  v20[3] = &unk_1000C30A8;
  objc_copyWeak(&v22, &location);
  v10 = userCopy;
  v21 = v10;
  v11 = [v9 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B518;
  v16[3] = &unk_1000C3960;
  objc_copyWeak(&v19, &location);
  v12 = v10;
  v17 = v12;
  v13 = blockCopy;
  v18 = v13;
  v14 = [v11 recover:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);

  return v14;
}

- (id)_showLocationListWithHome:(id)home customizationBlock:(id)block
{
  homeCopy = home;
  blockCopy = block;
  v8 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B788;
  v13[3] = &unk_1000C3988;
  v14 = homeCopy;
  selfCopy = self;
  v16 = blockCopy;
  v9 = blockCopy;
  v10 = homeCopy;
  v11 = [v8 flatMap:v13];

  return v11;
}

- (id)_showRoomSettingsWithRoom:(id)room
{
  roomCopy = room;
  v5 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:0];
  v6 = [v5 flatMap:&stru_1000C39A8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B964;
  v10[3] = &unk_1000C3700;
  v11 = roomCopy;
  v7 = roomCopy;
  v8 = [v6 flatMap:v10];

  return v8;
}

- (id)_serviceWithName:(id)name type:(id)type home:(id)home room:(id)room
{
  typeCopy = type;
  homeCopy = home;
  roomCopy = room;
  nameCopy = name;
  hf_allServices = [homeCopy hf_allServices];
  nameCopy = [NSPredicate predicateWithFormat:@"name LIKE[cd] %@", nameCopy];

  v15 = [hf_allServices filteredArrayUsingPredicate:nameCopy];

  if (roomCopy)
  {
    hf_allServices2 = [roomCopy hf_allServices];
    typeCopy = [NSPredicate predicateWithFormat:@"serviceType LIKE %@", typeCopy];
    v18 = [hf_allServices2 filteredArrayUsingPredicate:typeCopy];
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  hf_allServices3 = [homeCopy hf_allServices];
  typeCopy2 = [NSPredicate predicateWithFormat:@"serviceType LIKE %@", typeCopy];
  v21 = [hf_allServices3 filteredArrayUsingPredicate:typeCopy2];

  v22 = [v18 arrayByAddingObjectsFromArray:v21];
  v23 = [v15 arrayByAddingObjectsFromArray:v22];

  firstObject = [v23 firstObject];

  return firstObject;
}

- (id)_cameraProfileWithName:(id)name home:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  nameCopy = name;
  hf_allCameraProfiles = [homeCopy hf_allCameraProfiles];
  nameCopy = [NSPredicate predicateWithFormat:@"accessory.name LIKE[cd] %@", nameCopy];

  v12 = [hf_allCameraProfiles filteredArrayUsingPredicate:nameCopy];

  if (roomCopy)
  {
    hf_allCameraProfiles2 = [roomCopy hf_allCameraProfiles];
  }

  else
  {
    hf_allCameraProfiles2 = &__NSArray0__struct;
  }

  hf_allCameraProfiles3 = [homeCopy hf_allCameraProfiles];
  v15 = [hf_allCameraProfiles2 arrayByAddingObjectsFromArray:hf_allCameraProfiles3];
  v16 = [v12 arrayByAddingObjectsFromArray:v15];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (void)showDashboardSectionListViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];

  [v7 setModalPresentationStyle:2];
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v6 = [rootViewController hu_presentPreloadableViewController:v7 animated:1];
}

- (void)showStatusDetailsForStatusItemClass:(Class)class
{
  v4 = [(HOAppNavigator *)self _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002BF00;
  v6[3] = &unk_1000C39C8;
  v6[4] = class;
  v5 = [v4 flatMap:v6];
}

- (id)showAccessoryTypeGroup:(id)group forHome:(id)home animated:(BOOL)animated
{
  groupCopy = group;
  homeCopy = home;
  v10 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C120;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  animatedCopy = animated;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C13C;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = groupCopy;
  v18 = homeCopy;
  animatedCopy2 = animated;
  v12 = homeCopy;
  v13 = groupCopy;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showScenesSectionWithDashboardTitle:(id)title forHome:(id)home animated:(BOOL)animated
{
  titleCopy = title;
  homeCopy = home;
  v10 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C398;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  animatedCopy = animated;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C3B4;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = titleCopy;
  v18 = homeCopy;
  animatedCopy2 = animated;
  v12 = homeCopy;
  v13 = titleCopy;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showSpeakersAndTVsSectionWithTitle:(id)title forHome:(id)home animated:(BOOL)animated
{
  titleCopy = title;
  homeCopy = home;
  v10 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C610;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  animatedCopy = animated;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C62C;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = titleCopy;
  v18 = homeCopy;
  animatedCopy2 = animated;
  v12 = homeCopy;
  v13 = titleCopy;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (id)showCamerasSectionWithTitle:(id)title forHome:(id)home animated:(BOOL)animated
{
  titleCopy = title;
  homeCopy = home;
  v10 = [(HOAppNavigator *)self _selectHome:homeCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C888;
  v20[3] = &unk_1000C38E8;
  v20[4] = self;
  animatedCopy = animated;
  v11 = [v10 flatMap:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002C8A4;
  v16[3] = &unk_1000C39F0;
  v16[4] = self;
  v17 = titleCopy;
  v18 = homeCopy;
  animatedCopy2 = animated;
  v12 = homeCopy;
  v13 = titleCopy;
  v14 = [v11 flatMap:v16];

  return v14;
}

- (void)scrollToDefaultPositionInCurrentContextAnimated:(BOOL)animated
{
  v5 = [(HOAppNavigator *)self _selectCurrentTabAnimated:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CA48;
  v7[3] = &unk_1000C3A18;
  v7[4] = self;
  animatedCopy = animated;
  v6 = [v5 addCompletionBlock:v7];
}

- (void)dismissViewController
{
  rootViewController = [(HOAppNavigator *)self rootViewController];
  [rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)addAccessoryToHome:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  if (+[HFUtilities supportsAccessorySetup])
  {
    v6 = [HFAddAndSetupNewAccessoriesHandler addAndSetupNewAccessoriesForHome:homeCopy room:roomCopy];
  }
}

- (void)addPeopleToHome:(id)home
{
  homeCopy = home;
  v5 = [UIAlertController hu_alertControllerForHH2RequiredToAddPeopleForHome:homeCopy updateNowHandler:&stru_1000C3A38];
  if (!v5)
  {
    hf_canAddHomeMember = [homeCopy hf_canAddHomeMember];
    hf_canAddAccessCode = [homeCopy hf_canAddAccessCode];
    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    rootViewController2 = [v9 pinCodeManagerForHome:homeCopy];

    if (hf_canAddHomeMember && hf_canAddAccessCode)
    {
      v10 = [[HUAddPersonRoleViewController alloc] initWithHome:homeCopy];
      [v10 setPinCodeManager:rootViewController2];
      v11 = v10;
    }

    else
    {
      if (!hf_canAddHomeMember)
      {
        if (!hf_canAddAccessCode)
        {
          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100080D2C(v12, v15, v16, v17, v18, v19, v20, v21);
          }

          goto LABEL_11;
        }

        v10 = [[HUAddGuestViewController alloc] initWithPinCodeManager:rootViewController2 home:homeCopy];
        [v10 setPresentationDelegate:self];
        v12 = [[UINavigationController alloc] initWithRootViewController:v10];
LABEL_9:

        if (!v12)
        {
          goto LABEL_12;
        }

        [v12 setModalPresentationStyle:2];
        rootViewController = [(HOAppNavigator *)self rootViewController];
        v14 = [rootViewController hu_presentPreloadableViewController:v12 animated:1];

LABEL_11:
        goto LABEL_12;
      }

      v11 = [[HUAddPersonRoleViewController alloc] initWithHome:homeCopy];
      v10 = v11;
    }

    [v11 setPresentationDelegate:self];
    v12 = [[UINavigationController alloc] initWithRootViewController:v10];
    [v12 setModalPresentationStyle:2];
    goto LABEL_9;
  }

  rootViewController2 = [(HOAppNavigator *)self rootViewController];
  [rootViewController2 presentViewController:v5 animated:1 completion:&stru_1000C3A58];
LABEL_12:
}

- (void)addHome
{
  if ((+[HFUtilities isAMac]& 1) == 0)
  {

    [(HOAppNavigator *)self _createHomeWithName:0];
  }
}

- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)key
{
  keyCopy = key;
  v13 = +[NSMutableDictionary dictionary];
  currentViewController = [(HOAppNavigator *)self currentViewController];
  [v13 na_safeSetObject:currentViewController forKey:HFAnalyticsDataSourceViewControllerKey];
  objc_opt_class();
  v6 = currentViewController;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  dashboardContextTypeDescriptionForAnalytics = [(HOAppNavigator *)self dashboardContextTypeDescriptionForAnalytics];
  v10 = 0;
  if ([dashboardContextTypeDescriptionForAnalytics length] && v8)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v10 = [NSString stringWithFormat:@"%@-%@", v12, dashboardContextTypeDescriptionForAnalytics];
  }

  [v13 na_safeSetObject:v10 forKey:HFAnalyticsDataSourceViewControllerOverrideClassNameKey];
  [v13 na_safeSetObject:keyCopy forKey:HFAnalyticsDataContextMenuTitleKey];

  [HFAnalytics sendEvent:36 withData:v13];
}

- (id)currentViewController
{
  rootViewController = [(HOAppNavigator *)self rootViewController];
  if ([rootViewController conformsToProtocol:&OBJC_PROTOCOL___HOBaseControllerDelegate])
  {
    v3 = rootViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    currentViewController = [v4 currentViewController];

    rootViewController = currentViewController;
  }

  objc_opt_class();
  v6 = rootViewController;
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
    topViewController = [v8 topViewController];
    v10 = topViewController;
    if (topViewController)
    {
      v11 = topViewController;
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

- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room
{
  roomCopy = room;
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v6 = [rootViewController hu_dismissViewControllerAnimated:1];

  v7 = roomCopy;
  if (roomCopy)
  {
    v8 = [(HOAppNavigator *)self showRoom:roomCopy];
    v7 = roomCopy;
  }
}

- (void)addLocationViewController:(id)controller didFinishWithHome:(id)home
{
  homeCopy = home;
  rootViewController = [(HOAppNavigator *)self rootViewController];
  v6 = [rootViewController hu_dismissViewControllerAnimated:1];

  v7 = homeCopy;
  if (homeCopy)
  {
    v8 = [(HOAppNavigator *)self showHome:homeCopy];
    v7 = homeCopy;
  }
}

- (void)locationListViewControllerDidFinish:(id)finish
{
  rootViewController = [(HOAppNavigator *)self rootViewController];
  [rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)aboutResidentDeviceViewControllerDidFinish:(id)finish
{
  rootViewController = [(HOAppNavigator *)self rootViewController];
  [rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_configureDashboardContextWithAccessoryTypeGroup:(id)group home:(id)home navigationController:(id)controller animated:(BOOL)animated
{
  groupCopy = group;
  homeCopy = home;
  controllerCopy = controller;
  selfCopy = self;
  sub_10006FDFC(groupCopy, homeCopy, controllerCopy, animated);
}

- (void)_configureDashboardContextWithRoom:(id)room navigationController:(id)controller animated:(BOOL)animated
{
  roomCopy = room;
  controllerCopy = controller;
  selfCopy = self;
  sub_1000700DC(roomCopy, controllerCopy, animated);
}

- (void)configureDashboardContextWithDashboardContext:(id)context navigationController:(id)controller animated:(BOOL)animated
{
  contextCopy = context;
  controllerCopy = controller;
  selfCopy = self;
  _sSo14HOAppNavigatorC7HomeAppE25configureDashboardContext4with20navigationController8animatedy0C2UI0fG0CSg_So012UINavigationJ0CSbtF_0(context, controllerCopy, animated);
}

- (id)dashboardContextTypeDescriptionForAnalytics
{
  selfCopy = self;
  currentViewController = [(HOAppNavigator *)selfCopy currentViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    context = [v4 context];
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