@interface ENUISettingsViewController
- (BOOL)shouldShowSplashScreen;
- (BOOL)shouldShowTurndownScreen;
- (ENUISettingsViewController)init;
- (id)_activeRegionSpecifiers;
- (id)_availabilityAlertSpecifiers;
- (id)_deleteExposureDataSpecifiers;
- (id)_exposureNotificationStatusText;
- (id)_featureAvailableSpecifiers;
- (id)_isWeeklySummaryEnabled;
- (id)_latestNotificationSpecifier;
- (id)_loadingSpecifier;
- (id)_loggingProfileSpecifiers;
- (id)_loggingStatusSpecifier;
- (id)_shareDiagnosisSpecifiers;
- (id)_systemFunctionalitySpecifiers;
- (id)_turnOffExposureNotificationSpecifiers;
- (id)_unsupportedRegionSpecifiers;
- (id)_viewExposureInAppSpecifiers;
- (id)_weeklySummarySpecifiers;
- (id)areAvailabilityAlertsEnabled;
- (id)specifierForHealthAgencyModel:(id)model;
- (id)specifiers;
- (void)_toggleWeeklySummarySwitch:(id)switch specifier:(id)specifier;
- (void)addFooterText:(id)text withLinkText:(id)linkText toGroup:(id)group action:(SEL)action;
- (void)appWillEnterForeground;
- (void)dealloc;
- (void)didConfirmTurnOffExposureNotifications;
- (void)didTapDeleteExposureData:(id)data;
- (void)didTapLearnMore;
- (void)didTapRegionFAQWebsite;
- (void)didTapRegionWebsite;
- (void)didTapShareDiagnosisLink;
- (void)didTapTurnOffExposureNotifications:(id)notifications;
- (void)didTapTurnOnExposureNotifications:(id)notifications;
- (void)didTapViewInApp;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)presentOnboardingForPath:(id)path fromDeepLink:(BOOL)link completion:(id)completion;
- (void)presentPreAuthorizedKeyReleasedThankYouScreen;
- (void)presentUIFlowStack:(id)stack forRegionModel:(id)model onboardingSource:(int64_t)source completion:(id)completion;
- (void)refreshRegionsAndReloadSpecifiers;
- (void)setLatestNotification:(id)notification;
- (void)showExposureLoggingController:(id)controller;
- (void)showLatestExposureDetailWithCompletion:(id)completion;
- (void)toggleAvailabilityAlertsSwitch:(id)switch specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation ENUISettingsViewController

- (ENUISettingsViewController)init
{
  v9.receiver = self;
  v9.super_class = ENUISettingsViewController;
  v2 = [(ENUISettingsViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_notificationToken = -1;
    objc_initWeak(&location, v2);
    v4 = &_dispatch_main_q;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_384C;
    v6[3] = &unk_2C868;
    objc_copyWeak(&v7, &location);
    notify_register_dispatch("com.apple.ExposureNotification.trackedAppChanged", &v3->_notificationToken, &_dispatch_main_q, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_notificationToken);
  self->_notificationToken = -1;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ENUISettingsViewController;
  [(ENUISettingsViewController *)&v4 dealloc];
}

- (void)setLatestNotification:(id)notification
{
  notificationCopy = notification;
  if (self->_latestNotification != notificationCopy)
  {
    objc_storeStrong(&self->_latestNotification, notification);
    v6 = [(ENUISettingsViewController *)self specifierForID:@"latest-notification"];
    v7 = v6;
    if (v6)
    {
      v12 = v6;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      _latestNotificationSpecifier = [(ENUISettingsViewController *)self _latestNotificationSpecifier];
      v11 = _latestNotificationSpecifier;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [(ENUISettingsViewController *)self replaceContiguousSpecifiers:v8 withSpecifiers:v10];
    }
  }
}

- (void)viewDidLoad
{
  objc_initWeak(&location, self);
  v14.receiver = self;
  v14.super_class = ENUISettingsViewController;
  [(ENUISettingsViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(ENUIExposureNotificationsStore);
  [(ENUISettingsViewController *)self setExposureStore:v3];

  v4 = objc_alloc_init(ENUIPresentationController);
  [(ENUISettingsViewController *)self setPresentationController:v4];

  v5 = [ENStatusChangeObserver alloc];
  adapter = [(ENUISettingsViewController *)self adapter];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_3C24;
  v12 = &unk_2C778;
  objc_copyWeak(&v13, &location);
  v7 = [v5 initWithAdapter:adapter didChangeHandler:&v9];
  [(ENUISettingsViewController *)self setStatusChangeObserver:v7, v9, v10, v11, v12];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)refreshRegionsAndReloadSpecifiers
{
  v3 = dispatch_group_create();
  objc_initWeak(location, self);
  dispatch_group_enter(v3);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_4200;
  v31[3] = &unk_2C890;
  objc_copyWeak(&v33, location);
  v4 = v3;
  v32 = v4;
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v31];
  dispatch_group_enter(v4);
  adapter = [(ENUISettingsViewController *)self adapter];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_4298;
  v28[3] = &unk_2C8B8;
  objc_copyWeak(&v30, location);
  v6 = v4;
  v29 = v6;
  [adapter latestExposureNotification:v28];

  dispatch_group_enter(v6);
  exposureStore = [(ENUISettingsViewController *)self exposureStore];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_42FC;
  v25[3] = &unk_2C8E0;
  objc_copyWeak(&v27, location);
  v8 = v6;
  v26 = v8;
  [exposureStore fetchExtraLoggingEnabledWithCompletion:v25];

  dispatch_group_enter(v8);
  exposureStore2 = [(ENUISettingsViewController *)self exposureStore];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_43A0;
  v22[3] = &unk_2C908;
  objc_copyWeak(&v24, location);
  v10 = v8;
  v23 = v10;
  [exposureStore2 fetchExposureCheckSessionsWithCompletion:v22];

  dispatch_group_enter(v10);
  exposureStore3 = [(ENUISettingsViewController *)self exposureStore];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_4488;
  v19[3] = &unk_2C8E0;
  objc_copyWeak(&v21, location);
  v12 = v10;
  v20 = v12;
  [exposureStore3 fetchWeeklySummaryEnabledWithCompletion:v19];

  dispatch_group_enter(v12);
  adapter2 = [(ENUISettingsViewController *)self adapter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_452C;
  v17[3] = &unk_2C750;
  v14 = v12;
  v18 = v14;
  [adapter2 refreshStatusWithCompletion:v17];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4534;
  block[3] = &unk_2C890;
  objc_copyWeak(&v16, location);
  block[4] = self;
  dispatch_group_notify(v14, &_dispatch_main_q, block);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [lCopy objectForKeyedSubscript:@"path"];
  objc_initWeak(location, self);
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_4F38;
  v81[3] = &unk_2C970;
  objc_copyWeak(&v82, location);
  v9 = objc_retainBlock(v81);
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_4F9C;
  v79[3] = &unk_2C970;
  objc_copyWeak(&v80, location);
  v46 = objc_retainBlock(v79);
  v10 = [ENUIRouter routeForPath:v8];
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          [(ENUISettingsViewController *)self presentOnboardingForPath:v8 fromDeepLink:1 completion:completionCopy];
        }

        goto LABEL_45;
      }

      v15 = +[ENUIViewControllerFactory sharedInstance];
      inflightOnboardingStack = [v15 inflightOnboardingStack];

      if (inflightOnboardingStack)
      {
        v13 = ENUILogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1B730();
        }

LABEL_20:

        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }

        goto LABEL_45;
      }

      lastPathComponent = [v8 lastPathComponent];
      v36 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_56B8;
      v69[3] = &unk_2CA10;
      v28 = lastPathComponent;
      v70 = v28;
      selfCopy = self;
      v72 = completionCopy;
      v73 = v9;
      [v36 fetchAgencyModelForRegionCode:v28 reason:0 completion:v69];

      v29 = v70;
LABEL_36:

      goto LABEL_45;
    }

    if (v10 == 2)
    {
      lastPathComponent2 = [v8 lastPathComponent];
      v27 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_57C0;
      v64[3] = &unk_2CA10;
      v28 = lastPathComponent2;
      v65 = v28;
      selfCopy2 = self;
      v67 = completionCopy;
      v68 = v9;
      [v27 fetchAgencyModelForRegionCode:v28 reason:0 completion:v64];

      v29 = v65;
      goto LABEL_36;
    }

    if (v10 != 3)
    {
      goto LABEL_45;
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_592C;
    v62[3] = &unk_2CA60;
    v62[4] = self;
    v63 = completionCopy;
    [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v62];
    v14 = v63;
LABEL_44:

    goto LABEL_45;
  }

  if (v10 <= 6)
  {
    if (v10 == 5)
    {
      v17 = +[ENUIViewControllerFactory sharedInstance];
      inflightVerificationStack = [v17 inflightVerificationStack];

      if (inflightVerificationStack)
      {
        v19 = ENUILogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Request to present verification stack when there's already one inflight, so we're dismissing the existing one", buf, 2u);
        }

        v20 = +[ENUIViewControllerFactory sharedInstance];
        inflightVerificationStack2 = [v20 inflightVerificationStack];
        [inflightVerificationStack2 dismissViewControllerAnimated:1 completion:0];

        v22 = +[ENUIViewControllerFactory sharedInstance];
        [v22 setInflightVerificationStack:0];
      }

      v45 = [lCopy objectForKeyedSubscript:@"sessionIdentifier"];
      v23 = [lCopy objectForKeyedSubscript:@"reportType"];
      v43 = v23;
      if ([v23 length] == &dword_0 + 1)
      {
        integerValue = [v23 integerValue];
        if (integerValue >= 6)
        {
          v25 = 0;
        }

        else
        {
          v25 = integerValue;
        }
      }

      else
      {
        v25 = 0;
      }

      v30 = [lCopy objectForKeyedSubscript:{@"region", v43}];
      if (v30)
      {
        v31 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_5C14;
        v52[3] = &unk_2CB00;
        v52[4] = self;
        v53 = v45;
        v57 = v25;
        v55 = v9;
        v56 = completionCopy;
        v54 = v30;
        [v31 getAgencyModelForRegionCode:v54 completion:v52];
        v32 = &v53;
        v33 = &v55;
        v34 = &v56;
      }

      else
      {
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_5D60;
        v47[3] = &unk_2CB28;
        v47[4] = self;
        v48 = v45;
        v51 = v25;
        v49 = v9;
        v50 = completionCopy;
        [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v47];
        v32 = &v48;
        v33 = &v49;
        v34 = &v50;
      }

      v14 = v45;
    }

    else
    {
      v11 = +[ENUIViewControllerFactory sharedInstance];
      inflightOnboardingStack2 = [v11 inflightOnboardingStack];

      if (inflightOnboardingStack2)
      {
        v13 = ENUILogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Request to present pre-authorization stack when there's already one inflight", buf, 2u);
        }

        goto LABEL_20;
      }

      v37 = +[ENUIViewControllerFactory sharedInstance];
      inflightPreAuthorizationStack = [v37 inflightPreAuthorizationStack];

      if (inflightPreAuthorizationStack)
      {
        v39 = ENUILogForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Request to present verification stack when there's already one inflight, so we're dismissing the existing one", buf, 2u);
        }

        v40 = +[ENUIViewControllerFactory sharedInstance];
        inflightPreAuthorizationStack2 = [v40 inflightPreAuthorizationStack];
        [inflightPreAuthorizationStack2 dismissViewControllerAnimated:1 completion:0];

        v42 = +[ENUIViewControllerFactory sharedInstance];
        [v42 setInflightPreAuthorizationStack:0];
      }

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_5000;
      v74[3] = &unk_2C9E8;
      v74[4] = self;
      v76 = v46;
      v77 = completionCopy;
      v75 = v8;
      [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v74];

      v14 = v76;
    }

    goto LABEL_44;
  }

  if (v10 == 7)
  {
    [(ENUISettingsViewController *)self presentPreAuthorizedKeyReleasedThankYouScreen];
    goto LABEL_45;
  }

  if (v10 == 8)
  {
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_5938;
    v58[3] = &unk_2CAB0;
    v58[4] = self;
    v59 = v8;
    v60 = completionCopy;
    objc_copyWeak(&v61, location);
    [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v58];
    objc_destroyWeak(&v61);

    v14 = v59;
    goto LABEL_44;
  }

LABEL_45:

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);
  objc_destroyWeak(location);
}

- (void)presentPreAuthorizedKeyReleasedThankYouScreen
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_5E3C;
  v2[3] = &unk_2C750;
  v2[4] = self;
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v2];
}

- (void)presentOnboardingForPath:(id)path fromDeepLink:(BOOL)link completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v10 = +[ENUIViewControllerFactory sharedInstance];
  inflightOnboardingStack = [v10 inflightOnboardingStack];

  if (inflightOnboardingStack)
  {
    v12 = ENUILogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B730();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_initWeak(location, self);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_6554;
    v51[3] = &unk_2C970;
    objc_copyWeak(&v52, location);
    v13 = objc_retainBlock(v51);
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = sub_65B8;
    v49[4] = sub_65C8;
    v50 = 0;
    pathComponents = [pathCopy pathComponents];
    firstObject = [pathComponents firstObject];
    if ([firstObject isEqualToString:@"AUTHORIZE"])
    {
      v16 = 5;
    }

    else
    {
      v16 = 0;
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_65D0;
    v41[3] = &unk_2CBA0;
    v46 = v49;
    v17 = pathCopy;
    v42 = v17;
    selfCopy = self;
    linkCopy = link;
    v47 = v16;
    v18 = v13;
    v44 = v18;
    v19 = completionCopy;
    v45 = v19;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_6AB4;
    v32[3] = &unk_2CBF0;
    v38 = v49;
    v20 = objc_retainBlock(v41);
    v35 = v20;
    v21 = v17;
    v33 = v21;
    selfCopy2 = self;
    linkCopy2 = link;
    v39 = v16;
    v22 = v18;
    v36 = v22;
    v37 = v19;
    v23 = objc_retainBlock(v32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_6F48;
    v26[3] = &unk_2CC40;
    v24 = pathComponents;
    v27 = v24;
    selfCopy3 = self;
    v31 = v49;
    v25 = v23;
    v30 = v25;
    v29 = v21;
    [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v26];

    _Block_object_dispose(v49, 8);
    objc_destroyWeak(&v52);
    objc_destroyWeak(location);
  }
}

- (id)specifierForHealthAgencyModel:(id)model
{
  modelCopy = model;
  v5 = ENUILogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B844(modelCopy, v5);
  }

  name = [modelCopy name];
  v7 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  region = [modelCopy region];
  regionCode = [region regionCode];
  [v7 setIdentifier:regionCode];

  [v7 setUserInfo:modelCopy];
  [v7 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  name2 = [modelCopy name];
  [v7 setObject:name2 forKeyedSubscript:PSTitleKey];

  return v7;
}

- (void)presentUIFlowStack:(id)stack forRegionModel:(id)model onboardingSource:(int64_t)source completion:(id)completion
{
  stackCopy = stack;
  modelCopy = model;
  completionCopy = completion;
  if (stackCopy)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_7604;
    v18 = &unk_2C840;
    selfCopy = self;
    v20 = stackCopy;
    dispatch_async(&_dispatch_main_q, &v15);
    if (modelCopy && source)
    {
      v13 = [(ENUISettingsViewController *)self adapter:v15];
      region = [modelCopy region];
      [v13 onboardingDidStartForRegion:region source:source];
    }

    else
    {
      v13 = ENUILogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B98C();
      }
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)showLatestExposureDetailWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7718;
  v7[3] = &unk_2CC68;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 latestExposureNotification:v7];
}

- (id)specifiers
{
  if ([(ENUISettingsViewController *)self isDataLoaded])
  {
    v3 = OBJC_IVAR___PSListController__specifiers;
    v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = objc_alloc_init(NSMutableArray);
      _loggingProfileSpecifiers = [(ENUISettingsViewController *)self _loggingProfileSpecifiers];
      [v6 addObjectsFromArray:_loggingProfileSpecifiers];

      if ([(ENUISettingsViewController *)self shouldShowSplashScreen])
      {
        _featureAvailableSpecifiers = [(ENUISettingsViewController *)self _featureAvailableSpecifiers];
        [v6 addObjectsFromArray:_featureAvailableSpecifiers];

        _availabilityAlertSpecifiers = [(ENUISettingsViewController *)self _availabilityAlertSpecifiers];
      }

      else
      {
        _systemFunctionalitySpecifiers = [(ENUISettingsViewController *)self _systemFunctionalitySpecifiers];
        [v6 addObjectsFromArray:_systemFunctionalitySpecifiers];

        _shareDiagnosisSpecifiers = [(ENUISettingsViewController *)self _shareDiagnosisSpecifiers];
        [v6 addObjectsFromArray:_shareDiagnosisSpecifiers];

        _weeklySummarySpecifiers = [(ENUISettingsViewController *)self _weeklySummarySpecifiers];
        [v6 addObjectsFromArray:_weeklySummarySpecifiers];

        _availabilityAlertSpecifiers2 = [(ENUISettingsViewController *)self _availabilityAlertSpecifiers];
        [v6 addObjectsFromArray:_availabilityAlertSpecifiers2];

        v14 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

        if (v14)
        {
          [(ENUISettingsViewController *)self _turnOffExposureNotificationSpecifiers];
        }

        else
        {
          [(ENUISettingsViewController *)self _deleteExposureDataSpecifiers];
        }
        _availabilityAlertSpecifiers = ;
      }

      v15 = _availabilityAlertSpecifiers;
      [v6 addObjectsFromArray:_availabilityAlertSpecifiers];

      v16 = [v6 copy];
      v17 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v16;

      v5 = *&self->PSListController_opaque[v3];
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (BOOL)shouldShowSplashScreen
{
  v3 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  isExposureLoggingDataPresent = [v3 isExposureLoggingDataPresent];

  if ((isExposureLoggingDataPresent & 1) == 0 && !+[ENUITCCUtilities hasExposureNotificationAppsFromTCC])
  {
    v6 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
    v7 = v6;
    if (v6 && [v6 regionVersion] == &dword_0 + 2)
    {
      v5 = 0;
LABEL_27:

      return v5;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel authorizedRegions];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
LABEL_9:
      v12 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v22 + 1) + 8 * v12) regionVersion] == &dword_0 + 2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v10)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:

      if (![(ENUISettingsViewController *)self isExtraLoggingEnabled])
      {
        v5 = 1;
        goto LABEL_27;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel availableRegions];
      v13 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v13)
      {
        v5 = 1;
        goto LABEL_26;
      }

      v14 = v13;
      v15 = *v19;
LABEL_18:
      v16 = 0;
      while (1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v18 + 1) + 8 * v16) regionVersion] == &dword_0 + 2)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          v5 = 1;
          if (v14)
          {
            goto LABEL_18;
          }

          goto LABEL_26;
        }
      }
    }

    v5 = 0;
LABEL_26:

    goto LABEL_27;
  }

  return 0;
}

- (BOOL)shouldShowTurndownScreen
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel turndownEntity];

  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ExposureNotification"];
    v4 = [v3 BOOLForKey:@"showTurndownAlways"];

    if (v4)
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
      if (v5 && (v6 = v5, +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion](_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel, "activeRegion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 regionIsPlaceholder], v7, v6, !v8))
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ExposureNotification"];
        v10 = [v9 objectForKey:@"turndownEntity"];
        LOBYTE(v2) = v10 != 0;
      }
    }
  }

  return v2;
}

- (void)addFooterText:(id)text withLinkText:(id)linkText toGroup:(id)group action:(SEL)action
{
  groupCopy = group;
  linkTextCopy = linkText;
  textCopy = text;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [groupCopy setObject:v14 forKeyedSubscript:PSFooterCellClassGroupKey];

  [groupCopy setObject:textCopy forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v15 = [textCopy rangeOfString:linkTextCopy];
  v17 = v16;

  v22.location = v15;
  v22.length = v17;
  v18 = NSStringFromRange(v22);
  [groupCopy setObject:v18 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

  v19 = [NSValue valueWithNonretainedObject:self];
  [groupCopy setObject:v19 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

  v20 = NSStringFromSelector(action);
  [groupCopy setObject:v20 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
}

- (id)_loadingSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v2 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];

  return v2;
}

- (id)_loggingStatusSpecifier
{
  lastKnownStatus = [(ENUISettingsViewController *)self lastKnownStatus];
  v4 = ENUILocalizedString();
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v5 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  v13[0] = @"sectionKey";
  v6 = ENUILocalizedString();
  v7 = lastKnownStatus == 1;
  v14[0] = v6;
  v13[1] = @"titleKey";
  v8 = ENUILocalizedString();
  v14[1] = v8;
  v13[2] = @"subtitleKey";
  _exposureNotificationStatusText = [(ENUISettingsViewController *)self _exposureNotificationStatusText];
  v14[2] = _exposureNotificationStatusText;
  v13[3] = @"showTitleIconKey";
  v10 = [NSNumber numberWithBool:v7];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v5 setUserInfo:v11];

  [v5 setControllerLoadAction:"showExposureLoggingController:"];

  return v5;
}

- (id)_activeRegionSpecifiers
{
  lastKnownStatus = [(ENUISettingsViewController *)self lastKnownStatus];
  v4 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  if (!v4)
  {
    v16 = lastKnownStatus != 4;
    v6 = ENUILocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:@"active-region" target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v14 setIdentifier:@"active-region"];
    [v14 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    [v14 setObject:v6 forKeyedSubscript:PSTitleKey];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PSValueKey];
    v17 = [NSNumber numberWithInt:v16];
    [v14 setObject:v17 forKeyedSubscript:PSEnabledKey];

    v25 = v14;
    v15 = &v25;
    v18 = 1;
LABEL_8:
    v23 = [NSArray arrayWithObjects:v15 count:v18];

    goto LABEL_9;
  }

  v5 = lastKnownStatus != 4;
  v6 = [PSSpecifier preferenceSpecifierNamed:@"active-region" target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v6 setIdentifier:@"active-region"];
  [v6 setUserInfo:v4];
  v7 = objc_opt_class();
  v8 = PSCellClassKey;
  [v6 setObject:v7 forKeyedSubscript:PSCellClassKey];
  name = [v4 name];
  [v6 setObject:name forKeyedSubscript:PSTitleKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSValueKey];
  v10 = [NSNumber numberWithInt:v5];
  [v6 setObject:v10 forKeyedSubscript:PSEnabledKey];

  regionFAQWebsiteURL = [v4 regionFAQWebsiteURL];
  absoluteString = [regionFAQWebsiteURL absoluteString];
  v13 = [absoluteString length];

  if (v13)
  {
    v14 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v14 setIdentifier:@"region-faq"];
    [v14 setObject:objc_opt_class() forKeyedSubscript:v8];
    [v14 setButtonAction:"didTapRegionFAQWebsite"];
    v28[0] = v6;
    v28[1] = v14;
    v15 = v28;
LABEL_7:
    v18 = 2;
    goto LABEL_8;
  }

  regionWebsiteURL = [v4 regionWebsiteURL];
  absoluteString2 = [regionWebsiteURL absoluteString];
  v21 = [absoluteString2 length];

  if (v21)
  {
    v22 = ENUILocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v14 setButtonAction:"didTapRegionWebsite"];
    v27[0] = v6;
    v27[1] = v14;
    v15 = v27;
    goto LABEL_7;
  }

  v26 = v6;
  v23 = [NSArray arrayWithObjects:&v26 count:1];
LABEL_9:

  return v23;
}

- (id)_featureAvailableSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"feature-available"];
  v4 = ENUILocalizedString();
  v5 = ENUILocalizedString();
  v6 = [NSString stringWithFormat:@"%@\n\n%@", v5, v4];

  [(ENUISettingsViewController *)self addFooterText:v6 withLinkText:v4 toGroup:v3 action:"didTapLearnMore"];
  v7 = ENUILocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v8 setButtonAction:"didTapTurnOnExposureNotifications:"];
  v9 = [NSNumber numberWithInt:[(ENUISettingsViewController *)self lastKnownStatus]!= &dword_4];
  [v8 setObject:v9 forKeyedSubscript:PSEnabledKey];

  v12[0] = v3;
  v12[1] = v8;
  v10 = [NSArray arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_unsupportedRegionSpecifiers
{
  v3 = ENUILocalizedString();
  v4 = ENUILocalizedString();
  v5 = [NSString stringWithFormat:@"%@\n\n%@", v3, v4];
  v6 = +[PSSpecifier emptyGroupSpecifier];
  [v6 setObject:@"EXPOSURE_NOTIFICATIONS_GROUP" forKeyedSubscript:PSIDKey];
  v7 = [v5 rangeOfString:v4];
  v9 = v8;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v6 setObject:v11 forKeyedSubscript:PSFooterCellClassGroupKey];

  v12 = [NSNumber numberWithInt:1];
  [v6 setObject:v12 forKeyedSubscript:PSFooterAlignmentGroupKey];

  v13 = [NSNumber numberWithInt:1];
  [v6 setObject:v13 forKeyedSubscript:PSAlignmentKey];

  [v6 setObject:v5 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v21.location = v7;
  v21.length = v9;
  v14 = NSStringFromRange(v21);
  [v6 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

  v15 = [NSValue valueWithNonretainedObject:self];
  [v6 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

  v16 = NSStringFromSelector("didTapLearnMore");
  [v6 setObject:v16 forKeyedSubscript:PSFooterHyperlinkViewActionKey];

  [v6 setObject:v5 forKeyedSubscript:PSFooterTextGroupKey];
  v19 = v6;
  v17 = [NSArray arrayWithObjects:&v19 count:1];

  return v17;
}

- (id)_availabilityAlertSpecifiers
{
  adapter = [(ENUISettingsViewController *)self adapter];
  isAvailabilityAlertsSwitchEnabled = [adapter isAvailabilityAlertsSwitchEnabled];

  v5 = [PSSpecifier groupSpecifierWithID:@"notify-when-available"];
  v6 = ENUILocalizedString();
  [v5 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];

  v7 = ENUILocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"toggleAvailabilityAlertsSwitch:specifier:" get:"areAvailabilityAlertsEnabled" detail:0 cell:6 edit:0];

  v9 = [NSNumber numberWithBool:isAvailabilityAlertsSwitchEnabled];
  [v8 setObject:v9 forKeyedSubscript:PSEnabledKey];

  v12[0] = v5;
  v12[1] = v8;
  v10 = [NSArray arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_loggingProfileSpecifiers
{
  if ([(ENUISettingsViewController *)self isExtraLoggingEnabled]&& +[ENUITCCUtilities isExposureNotificationsEnabledFromTCC])
  {
    v2 = +[PSSpecifier emptyGroupSpecifier];
    [v2 setObject:@"LOGGING_GROUP" forKeyedSubscript:PSIDKey];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [v2 setObject:v4 forKeyedSubscript:PSHeaderCellClassGroupKey];

    v7 = v2;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_latestNotificationSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v3 setIdentifier:@"latest-notification"];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  lastKnownStatus = [(ENUISettingsViewController *)self lastKnownStatus];
  latestNotification = self->_latestNotification;
  if (lastKnownStatus == 1)
  {
    if (!latestNotification)
    {
      lastExposureCheckTime = [(ENUISettingsViewController *)self lastExposureCheckTime];

      if (lastExposureCheckTime)
      {
        if (qword_340F8 != -1)
        {
          sub_1BA04();
        }

        v7 = qword_340F0;
        lastExposureCheckTime2 = [(ENUISettingsViewController *)self lastExposureCheckTime];
        v9 = [v7 stringFromDate:lastExposureCheckTime2];

        v10 = ENUILocalizedString();
        v11 = [NSString stringWithFormat:v10, v9];
      }

      else
      {
        v11 = ENUILocalizedString();
      }

      v45[0] = @"sectionKey";
      v39 = ENUILocalizedString();
      v46[0] = v39;
      v46[1] = &__kCFBooleanFalse;
      v45[1] = @"notificationAvailable";
      v45[2] = @"status";
      v40 = [NSNumber numberWithUnsignedInteger:1];
      v46[2] = v40;
      v45[3] = @"titleKey";
      v41 = ENUILocalizedString();
      v45[4] = @"subtitleKey";
      v46[3] = v41;
      v46[4] = v11;
      v42 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
      [v3 setUserInfo:v42];

      [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      goto LABEL_29;
    }
  }

  else if (!latestNotification)
  {
    v49[0] = @"sectionKey";
    v34 = ENUILocalizedString();
    v50[0] = v34;
    v50[1] = &__kCFBooleanFalse;
    v49[1] = @"notificationAvailable";
    v49[2] = @"status";
    v35 = [NSNumber numberWithUnsignedInteger:0];
    v50[2] = v35;
    v49[3] = @"titleKey";
    v36 = ENUILocalizedString();
    v50[3] = v36;
    v49[4] = @"subtitleKey";
    v37 = ENUILocalizedString();
    v50[4] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
    [v3 setUserInfo:v38];

    [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    goto LABEL_29;
  }

  v44 = v3;
  v12 = +[NSCalendar currentCalendar];
  classification = [(ENExposureNotification *)self->_latestNotification classification];
  date = [classification date];

  if (date)
  {
    v15 = objc_alloc_init(NSDateIntervalFormatter);
    v16 = +[NSLocale currentLocale];
    v17 = [NSDateFormatter dateFormatFromTemplate:@"MMMMd" options:0 locale:v16];
    [v15 setDateTemplate:v17];

    v18 = [v12 dateByAddingUnit:16 value:1 toDate:date options:0];
    v19 = [v12 dateByAddingUnit:128 value:-1 toDate:v18 options:0];

    notificationDate = [(ENExposureNotification *)self->_latestNotification notificationDate];
    if (notificationDate && [v19 compare:notificationDate] == &dword_0 + 1)
    {
      v21 = notificationDate;

      v19 = v21;
    }

    v22 = [v15 stringFromDate:date toDate:v19];
  }

  else
  {
    date = [(ENExposureNotification *)self->_latestNotification notificationDate];
    v15 = objc_alloc_init(NSDateFormatter);
    v19 = +[NSDate date];
    v23 = [v12 component:4 fromDate:date];
    if (v23 == [v12 component:4 fromDate:v19])
    {
      v24 = @"MMMMd";
    }

    else
    {
      v24 = @"yMMMMd";
    }

    [v15 setLocalizedDateFormatFromTemplate:v24];
    v22 = [v15 stringFromDate:date];
  }

  if (v22)
  {
    v25 = ENUILocalizedString();
    v26 = [NSString localizedStringWithFormat:v25, v22];
  }

  else
  {
    v26 = &stru_2D818;
  }

  localizedSubjectText = [(ENExposureNotification *)self->_latestNotification localizedSubjectText];
  if ([(ENExposureNotification *)self->_latestNotification revoked])
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  if (![localizedSubjectText length])
  {
    [(ENExposureNotification *)self->_latestNotification revoked];
    v29 = ENUILocalizedString();

    localizedSubjectText = v29;
  }

  v47[0] = @"sectionKey";
  v30 = ENUILocalizedString();
  v48[0] = v30;
  v48[1] = &__kCFBooleanTrue;
  v47[1] = @"notificationAvailable";
  v47[2] = @"status";
  v31 = [NSNumber numberWithUnsignedInteger:v28];
  v48[2] = v31;
  v48[3] = localizedSubjectText;
  v47[3] = @"titleKey";
  v47[4] = @"subtitleKey";
  v47[5] = @"notification";
  v32 = self->_latestNotification;
  v48[4] = v26;
  v48[5] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:6];
  [v44 setUserInfo:v33];

  v3 = v44;
  [v44 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

LABEL_29:

  return v3;
}

- (id)_viewExposureInAppSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"view-in-app-group"];
  v4 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  installedAppName = [v4 installedAppName];

  if ([installedAppName length])
  {
    v6 = ENUILocalizedString();
    v7 = [NSString stringWithFormat:v6, installedAppName];
    [v3 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
  }

  v8 = ENUILocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v9 setButtonAction:"didTapViewInApp"];
  v12[0] = v3;
  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_systemFunctionalitySpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"exposure-system"];
  v5 = ENUILocalizedString();
  v6 = ENUILocalizedString();
  v7 = [NSString stringWithFormat:v6, v5];
  [(ENUISettingsViewController *)self addFooterText:v7 withLinkText:v5 toGroup:v4 action:"didTapLearnMore"];

  v8 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  LODWORD(v6) = [v8 isRegionUsingApp];

  if (v6)
  {
    _viewExposureInAppSpecifiers = [(ENUISettingsViewController *)self _viewExposureInAppSpecifiers];
    [v3 addObjectsFromArray:_viewExposureInAppSpecifiers];
    _latestNotificationSpecifier = v4;
  }

  else
  {
    _latestNotificationSpecifier = [(ENUISettingsViewController *)self _latestNotificationSpecifier];
    [v3 addObject:v4];
    _viewExposureInAppSpecifiers = _latestNotificationSpecifier;
  }

  [v3 addObject:_latestNotificationSpecifier];

  _loggingStatusSpecifier = [(ENUISettingsViewController *)self _loggingStatusSpecifier];
  [v3 addObject:_loggingStatusSpecifier];
  _activeRegionSpecifiers = [(ENUISettingsViewController *)self _activeRegionSpecifiers];
  [v3 addObjectsFromArray:_activeRegionSpecifiers];

  return v3;
}

- (id)_exposureNotificationStatusText
{
  v2 = [(ENUISettingsViewController *)self lastKnownStatus]- 1;
  if (v2 <= 5)
  {
    v3 = off_2CDE0[v2];
  }

  v4 = ENUILocalizedString();

  return v4;
}

- (id)_shareDiagnosisSpecifiers
{
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

  if (v3)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"share-diagnosis"];
    v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
    isRegionUsingApp = [v5 isRegionUsingApp];

    v7 = ENUILocalizedString();
    if (isRegionUsingApp)
    {
      [v4 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

      v8 = ENUILocalizedString();
      v9 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
      installedAppName = [v9 installedAppName];
      v7 = [NSString stringWithFormat:v8, installedAppName];

      v11 = "didTapViewInApp";
    }

    else
    {
      v11 = "didTapShareDiagnosisLink";
    }

    v13 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v13 setButtonAction:v11];
    v15[0] = v4;
    v15[1] = v13;
    v12 = [NSArray arrayWithObjects:v15 count:2];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)_turnOffExposureNotificationSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"turn-off-exposure-notifications"];
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v5 = ENUILocalizedString();
  [v4 setObject:v5 forKeyedSubscript:PSTitleKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v4 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  [v4 setButtonAction:"didTapTurnOffExposureNotifications:"];
  v8[0] = v3;
  v8[1] = v4;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (id)_deleteExposureDataSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"delete-exposure-data"];
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v5 = ENUILocalizedString();
  [v4 setObject:v5 forKeyedSubscript:PSTitleKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v4 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  [v4 setButtonAction:"didTapDeleteExposureData:"];
  v8[0] = v3;
  v8[1] = v4;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (id)_weeklySummarySpecifiers
{
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  installedAppName = [v3 installedAppName];

  if (installedAppName)
  {
    v5 = [PSSpecifier groupSpecifierWithID:@"weekly-alert-enabled"];
    v6 = ENUILocalizedString();
    [v5 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];

    v7 = ENUILocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_toggleWeeklySummarySwitch:specifier:" get:"_isWeeklySummaryEnabled" detail:0 cell:6 edit:0];

    v11[0] = v5;
    v11[1] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:2];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (void)showExposureLoggingController:(id)controller
{
  v4 = [ENUIExposureLoggingViewController alloc];
  exposureStore = [(ENUISettingsViewController *)self exposureStore];
  v7 = [(ENUIExposureLoggingViewController *)v4 initWithStore:exposureStore];

  navigationController = [(ENUISettingsViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)didTapTurnOnExposureNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if ([(ENUISettingsViewController *)self lastKnownStatus]== &dword_0 + 2 || [(ENUISettingsViewController *)self lastKnownStatus]== &dword_4 + 2 || [(ENUISettingsViewController *)self lastKnownStatus]== &dword_4)
  {
    v5 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    objc_initWeak(&location, self);
    v6 = +[ENUIViewControllerFactory sharedInstance];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_A018;
    v12 = &unk_2C970;
    objc_copyWeak(&v13, &location);
    v7 = [v6 createOnboardingStackForAgencyModel:0 exposureManager:v5 fromAvailabilityAlert:0 fromDeepLink:0 subsequentFlow:0 completion:&v9];

    [(ENUISettingsViewController *)self presentViewController:v7 animated:1 completion:&stru_2CC88, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = ENUILogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1BA18();
    }

    [(ENUISettingsViewController *)self refreshRegionsAndReloadSpecifiers];
  }
}

- (void)didTapTurnOffExposureNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = ENUILocalizedString();
  v6 = ENUILocalizedString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  objc_initWeak(&location, self);
  v8 = ENUILocalizedString();
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_A340;
  v15 = &unk_2CCB0;
  objc_copyWeak(&v16, &location);
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:&v12];
  [v7 addAction:{v9, v12, v13, v14, v15}];

  v10 = ENUILocalizedString();
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v7 addAction:v11];

  [(ENUISettingsViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)didTapDeleteExposureData:(id)data
{
  dataCopy = data;
  v5 = ENUILocalizedString();
  v6 = ENUILocalizedString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  objc_initWeak(&location, self);
  v8 = ENUILocalizedString();
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_A560;
  v15 = &unk_2CCB0;
  objc_copyWeak(&v16, &location);
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:&v12];
  [v7 addAction:{v9, v12, v13, v14, v15}];

  v10 = ENUILocalizedString();
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v7 addAction:v11];

  [(ENUISettingsViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)toggleAvailabilityAlertsSwitch:(id)switch specifier:(id)specifier
{
  switchCopy = switch;
  adapter = [(ENUISettingsViewController *)self adapter];
  bOOLValue = [switchCopy BOOLValue];

  [adapter setAvailabilityAlertsEnabled:bOOLValue completion:&stru_2CCF0];
}

- (id)areAvailabilityAlertsEnabled
{
  adapter = [(ENUISettingsViewController *)self adapter];
  if ([adapter isAvailabilityAlertsSwitchEnabled])
  {
    adapter2 = [(ENUISettingsViewController *)self adapter];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [adapter2 areAvailabilityAlertsEnabled]);
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)_toggleWeeklySummarySwitch:(id)switch specifier:(id)specifier
{
  switchCopy = switch;
  -[ENUISettingsViewController setIsWeeklySummaryEnabled:](self, "setIsWeeklySummaryEnabled:", [switchCopy BOOLValue]);
  adapter = [(ENUISettingsViewController *)self adapter];
  bOOLValue = [switchCopy BOOLValue];

  [adapter setWeeklySummaryEnabled:bOOLValue completion:&stru_2CD10];
}

- (id)_isWeeklySummaryEnabled
{
  isWeeklySummaryEnabled = [(ENUISettingsViewController *)self isWeeklySummaryEnabled];

  return [NSNumber numberWithBool:isWeeklySummaryEnabled];
}

- (void)didConfirmTurnOffExposureNotifications
{
  view = [(ENUISettingsViewController *)self view];
  [view setUserInteractionEnabled:0];

  objc_initWeak(&location, self);
  adapter = [(ENUISettingsViewController *)self adapter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A928;
  v5[3] = &unk_2CD38;
  objc_copyWeak(&v6, &location);
  [adapter resetAllDataAndDisableExposureNotifications:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)didTapLearnMore
{
  v3 = [UINavigationController alloc];
  v4 = objc_opt_new();
  v5 = [v3 initWithRootViewController:v4];

  [(ENUISettingsViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)didTapViewInApp
{
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  if (v3)
  {
    [_TtC28HealthExposureNotificationUI20AppStoreAssetManager accessAppFor:v3 presentingViewController:self completion:&stru_2CDA0];
  }

  _objc_release_x1();
}

- (void)didTapRegionFAQWebsite
{
  v7 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  regionFAQWebsiteURL = [v7 regionFAQWebsiteURL];
  absoluteString = [regionFAQWebsiteURL absoluteString];
  v4 = [absoluteString length];

  if (v4)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    regionFAQWebsiteURL2 = [v7 regionFAQWebsiteURL];
    [v5 openURL:regionFAQWebsiteURL2 withOptions:0];
  }
}

- (void)didTapRegionWebsite
{
  v7 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  regionWebsiteURL = [v7 regionWebsiteURL];
  absoluteString = [regionWebsiteURL absoluteString];
  v4 = [absoluteString length];

  if (v4)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    regionWebsiteURL2 = [v7 regionWebsiteURL];
    [v5 openURL:regionWebsiteURL2 withOptions:0];
  }
}

- (void)didTapShareDiagnosisLink
{
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  if (v3)
  {
    v4 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    objc_initWeak(&location, self);
    v5 = +[ENUIViewControllerFactory sharedInstance];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_AEE0;
    v10 = &unk_2C970;
    objc_copyWeak(&v11, &location);
    v6 = [v5 createVerificationStackForAgencyModel:v3 exposureManager:v4 sessionIdentifier:0 reportType:0 enteredFromMainScreen:1 completion:&v7];

    [(ENUISettingsViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1BB38();
    }
  }
}

- (void)appWillEnterForeground
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B05C;
  block[3] = &unk_2C750;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end