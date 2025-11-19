@interface HKBridgeHealthController
- (HKBridgeControllerDelegate)secondaryUserDelegate;
- (HKBridgeHealthController)initWithHealthStore:(id)a3;
- (HKBridgeHealthController)initWithHealthStore:(id)a3 activeTinkerDevice:(id)a4;
- (id)_healthDataGroupSpecifier;
- (id)_healthDataTinkerGroupSpecifier;
- (id)_healthProfileSpecifier;
- (id)_loadingMedicalIDSpecifier;
- (id)_medicalIDSpecifier;
- (id)_setUpMedicalIDSpecifier;
- (id)_stopReceivingSharedHealthDataGroupSpecifier;
- (id)_stoppedReceivingSharedHealthDataSpecifier;
- (id)_viewMedicalIDSpecifier;
- (id)_viewPrimaryDataGroupSpecifier;
- (id)_viewPrimaryDataSpecifier;
- (id)_viewTinkerDataGroupSpecifier;
- (id)_viewTinkerDataSpecifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_contactStoreDidChange:(id)a3;
- (void)_dismissMedicalIDEditorWithCompletion:(id)a3;
- (void)_loadProfileData;
- (void)_stopReceivingSharedHealthData;
- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4;
- (void)dealloc;
- (void)medicalIDViewControllerDidDelete:(id)a3;
- (void)openBrowseViewInHealthApp:(id)a3;
- (void)setUpMedicalID:(id)a3;
- (void)showHealthProfileController:(id)a3;
- (void)showMedicalIDController:(id)a3;
- (void)stopReceivingSharedHealthDataButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKBridgeHealthController

- (HKBridgeHealthController)initWithHealthStore:(id)a3 activeTinkerDevice:(id)a4
{
  v7 = a4;
  v8 = [(HKBridgeHealthController *)self initWithHealthStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_activeTinkerDevice, a4);
    v10 = [HKSecondaryDevicePairingAgent alloc];
    v11 = objc_alloc_init(HKHealthStore);
    v12 = [v10 initWithHealthStore:v11];
    secondaryDevicePairingAgent = v9->_secondaryDevicePairingAgent;
    v9->_secondaryDevicePairingAgent = v12;

    v14 = [[HKCloudSyncObserver alloc] initWithHealthStore:v9->_healthStore delegate:v9];
    cloudSyncObserver = v9->_cloudSyncObserver;
    v9->_cloudSyncObserver = v14;

    [(HKCloudSyncObserver *)v9->_cloudSyncObserver startObservingSyncStatus];
  }

  return v9;
}

- (HKBridgeHealthController)initWithHealthStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKBridgeHealthController;
  v6 = [(HKBridgeHealthController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = [[HKMedicalIDStore alloc] initWithHealthStore:v5];
    medicalIDStore = v7->_medicalIDStore;
    v7->_medicalIDStore = v8;
  }

  return v7;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_LABEL" value:&stru_188B0 table:@"Localizable"];

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HKBridgeHealthController;
  [(HKBridgeHealthController *)&v9 viewDidLoad];
  [(HKBridgeHealthController *)self _loadProfileData];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];

  objc_initWeak(&location, self);
  v4 = kHKMedicalIDDidChangeNotification;
  v5 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7058;
  v6[3] = &unk_18708;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v4, &self->_medicalIDChangedToken, &_dispatch_main_q, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

  notify_cancel(self->_medicalIDChangedToken);
  v4.receiver = self;
  v4.super_class = HKBridgeHealthController;
  [(HKBridgeHealthController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(HKBridgeHealthController *)self localizedPaneTitle];
    [(HKBridgeHealthController *)self setTitle:v5];

    v6 = +[NSMutableArray array];
    if (!self->_loadingProfileData)
    {
      if ([(HKBridgeHealthController *)self _isTinkerDevice])
      {
        v7 = [(HKBridgeHealthController *)self _healthDataTinkerGroupSpecifier];
        [v6 addObject:v7];

        v8 = [(HKBridgeHealthController *)self _healthProfileSpecifier];
        [v6 addObject:v8];

        v9 = [(HKBridgeHealthController *)self _medicalIDSpecifier];
        [v6 addObject:v9];

        v10 = [(HKBridgeHealthController *)self _viewTinkerDataGroupSpecifier];
        [v6 addObject:v10];

        v11 = [(HKBridgeHealthController *)self _viewTinkerDataSpecifier];
        [v6 addObject:v11];

        v12 = [(HKBridgeHealthController *)self _stopReceivingSharedHealthDataGroupSpecifier];
        [v6 addObject:v12];

        v13 = [(HKBridgeHealthController *)self _stoppedReceivingSharedHealthDataSpecifier];
        [v6 addObject:v13];
      }

      else
      {
        v14 = [(HKBridgeHealthController *)self _healthDataGroupSpecifier];
        [v6 addObject:v14];

        v15 = [(HKBridgeHealthController *)self _healthProfileSpecifier];
        [v6 addObject:v15];

        v16 = [(HKBridgeHealthController *)self _medicalIDSpecifier];
        [v6 addObject:v16];

        v17 = [(HKBridgeHealthController *)self _viewPrimaryDataGroupSpecifier];
        [v6 addObject:v17];

        v18 = [(HKBridgeHealthController *)self _viewPrimaryDataSpecifier];
        [v6 addObject:v18];

        v28.receiver = self;
        v28.super_class = HKBridgeHealthController;
        v19 = [(HKBridgeHealthController *)&v28 specifiers];
        v20 = v19;
        v21 = &__NSArray0__struct;
        if (v19)
        {
          v21 = v19;
        }

        v22 = v21;

        v23 = [v22 specifierForID:BPSMirrorGroupID];
        v24 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"NOTIFICATION_SETTINGS" value:&stru_188B0 table:@"Localizable"];
        [v23 setName:v25];

        [v6 addObjectsFromArray:v22];
      }
    }

    v26 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v6;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (id)_healthDataGroupSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithID:@"HealthDataGroupIdentifier"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEDICAL_ID_EXPLANATION" value:&stru_188B0 table:@"Localizable"];
  [v2 setObject:v4 forKeyedSubscript:PSFooterTextGroupKey];

  return v2;
}

- (id)_healthDataTinkerGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"HealthDataTinkerGroupIdentifier"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MEDICAL_ID_EXPLANATION_TINKER_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v6 = [NSString stringWithFormat:v5, self->_firstName];
  [v3 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];

  return v3;
}

- (id)_healthProfileSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEALTH_DETAILS" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v5 setControllerLoadAction:"showHealthProfileController:"];
  [v5 setIdentifier:@"HealthProfileIdentifier"];

  return v5;
}

- (id)_setUpMedicalIDSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SET_UP_MEDICAL_ID" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:"setUpMedicalID:"];
  [v5 setIdentifier:@"SetUpMedicalIDIdentifier"];

  return v5;
}

- (id)_viewMedicalIDSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEDICAL_ID" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v5 setControllerLoadAction:"showMedicalIDController:"];
  [v5 setIdentifier:@"MedicalIDIdentifier"];

  return v5;
}

- (id)_loadingMedicalIDSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEDICAL_ID" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setIdentifier:@"LoadingMedicalIDIdentifier"];

  return v5;
}

- (id)_medicalIDSpecifier
{
  v3 = [(HKCloudSyncObserver *)self->_cloudSyncObserver status];
  v4 = [v3 lastPullDate];

  if (self->_shouldShowSetupMedicalID && v4 == 0)
  {
    v6 = [(HKBridgeHealthController *)self _loadingMedicalIDSpecifier];
  }

  else
  {
    if (self->_shouldShowSetupMedicalID)
    {
      [(HKBridgeHealthController *)self _setUpMedicalIDSpecifier];
    }

    else
    {
      [(HKBridgeHealthController *)self _viewMedicalIDSpecifier];
    }
    v6 = ;
  }

  return v6;
}

- (id)_viewTinkerDataGroupSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEALTH_DATA_SECTION_TITLE" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier groupSpecifierWithID:@"ViewTinkerDataInHealthAppGroupIdentifier" name:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"VIEW_TINKER_HEALTH_DATA_IN_HEALTH_DESCRIPTION_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v8 = [NSString stringWithFormat:v7, self->_firstName];
  [v5 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];

  return v5;
}

- (id)_viewTinkerDataSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VIEW_TINKER_HEALTH_DATA_IN_HEALTH_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v5 = [NSString stringWithFormat:v4, self->_firstName];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:"openBrowseViewInHealthApp:"];
  [v6 setIdentifier:@"ViewTinkerDataInHealthAppIdentifier"];

  return v6;
}

- (id)_stopReceivingSharedHealthDataGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"StopReceivingSharedDataGroupIdentifier"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STOP_RECEIVING_SHARED_HEALTH_DATA_DESCRIPTION_%@_%@_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v6 = [NSString stringWithFormat:v5, self->_firstName, self->_firstName, self->_firstName];
  [v3 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];

  return v3;
}

- (id)_stoppedReceivingSharedHealthDataSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STOP_RECEIVING_SHARED_HEALTH_DATA_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v5 = [NSString stringWithFormat:v4, self->_firstName];
  v6 = [PSSpecifier deleteButtonSpecifierWithName:v5 target:self action:"stopReceivingSharedHealthDataButton:"];

  [v6 setProperty:&off_194D0 forKey:PSAlignmentKey];
  [v6 setIdentifier:@"StopReceivingSharedDataIdentifier"];

  return v6;
}

- (id)_viewPrimaryDataGroupSpecifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_DATA_SECTION_TITLE" value:&stru_188B0 table:@"Localizable"];
  v4 = [PSSpecifier groupSpecifierWithID:@"ViewDataInHealthAppGroupIdentifier" name:v3];

  return v4;
}

- (id)_viewPrimaryDataSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"VIEW_PRIMARY_HEALTH_DATA_IN_HEALTH" value:&stru_188B0 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:"openBrowseViewInHealthApp:"];
  [v5 setIdentifier:@"ViewDataInHealthAppIdentifier"];

  return v5;
}

- (void)medicalIDViewControllerDidDelete:(id)a3
{
  medicalIDData = self->_medicalIDData;
  self->_medicalIDData = 0;
  v5 = a3;

  self->_shouldShowSetupMedicalID = 1;
  v6 = [(HKBridgeHealthController *)self medicalIDStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8188;
  v9[3] = &unk_18588;
  v9[4] = self;
  [v6 deleteMedicalIDDataWithCompletion:v9];

  [(HKBridgeHealthController *)self reloadSpecifiers];
  v7 = [v5 navigationController];

  v8 = [v7 popViewControllerAnimated:1];
}

- (void)showHealthProfileController:(id)a3
{
  v4 = [[HKBridgeHealthProfileController alloc] initWithHealthStore:self->_healthStore activeTinkerDevice:self->_activeTinkerDevice];
  [(HKBridgeHealthController *)self showController:v4 animate:1];
}

- (void)showMedicalIDController:(id)a3
{
  v5 = +[MIUIDisplayConfiguration standardConfiguration];
  [v5 setAccessPoint:8];
  [v5 setIsDeletionAvailable:!self->_shouldShowSetupMedicalID];
  v4 = [[MIUIMedicalIDViewController alloc] initWithHealthStore:self->_healthStore medicalIDData:self->_medicalIDData displayConfiguration:v5];
  [(HKBridgeHealthController *)self showController:v4 animate:1];
}

- (void)setUpMedicalID:(id)a3
{
  v9 = +[MIUIDisplayConfiguration standardConfiguration];
  [v9 setAccessPoint:8];
  [v9 setSuggestHealthData:1];
  [v9 setIsDeletionAvailable:!self->_shouldShowSetupMedicalID];
  v4 = [[MIUIMedicalIDViewController alloc] initWithHealthStore:self->_healthStore medicalIDData:self->_medicalIDData displayConfiguration:v9];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissMedicalID"];
  v6 = [v4 navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [[HKNavigationController alloc] initWithRootViewController:v4];
  [(HKBridgeHealthController *)self presentViewController:v7 animated:1 completion:0];
  medicalIDEditor = self->_medicalIDEditor;
  self->_medicalIDEditor = v7;
}

- (void)openBrowseViewInHealthApp:(id)a3
{
  v4 = +[_HKBehavior sharedBehavior];
  v5 = [v4 healthAppHiddenOrNotInstalled];

  if (v5)
  {
    v6 = +[HAServicesDefines internalHealthSettingsURLString];
    v14 = [NSURL URLWithString:v6];

LABEL_7:
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 openSensitiveURL:v14 withOptions:&__NSDictionary0__struct];

    return;
  }

  v7 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v8 = [v7 type];

  if (v8 != &dword_0 + 3)
  {
    v14 = [NSURL URLWithString:@"x-apple-health://browse"];
    goto LABEL_7;
  }

  v9 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v10 = [NSURL _hk_urlForHKProfileIdentifier:v9];

  if (v10)
  {
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openSensitiveURL:v10 withOptions:&__NSDictionary0__struct];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_C220(v13);
    }
  }
}

- (void)stopReceivingSharedHealthDataButton:(id)a3
{
  v4 = objc_alloc_init(PSConfirmationSpecifier);
  v13 = PSConfirmationTitleKey;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"STOP_RECEIVING_SHARED_HEALTH_DATA_CONFIRMATION" value:&stru_188B0 table:@"Localizable-tinker"];
  v16[0] = v6;
  v14 = PSConfirmationPromptKey;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"STOP_RECEIVING_SHARED_HEALTH_DATA_ALERT_%@" value:&stru_188B0 table:@"Localizable-tinker"];
  v9 = [NSString stringWithFormat:v8, self->_firstName, v13, v14];
  v16[1] = v9;
  v15 = PSConfirmationCancelKey;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_188B0 table:@"Localizable"];
  v16[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v13 count:3];
  [v4 setupWithDictionary:v12];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v4 setTarget:self];
  [v4 setConfirmationAction:"_stopReceivingSharedHealthData"];
  [(HKBridgeHealthController *)self showConfirmationViewForSpecifier:v4];
}

- (void)_stopReceivingSharedHealthData
{
  self->_isTearingDownSharing = 1;
  v3 = [(HKBridgeHealthController *)self table];
  [v3 reloadData];

  secondaryDevicePairingAgent = self->_secondaryDevicePairingAgent;
  v5 = [(NRDevice *)self->_activeTinkerDevice pairingID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_89D4;
  v6[3] = &unk_18588;
  v6[4] = self;
  [(HKSecondaryDevicePairingAgent *)secondaryDevicePairingAgent tearDownHealthSharingWithTinkerDeviceWithNRUUID:v5 completion:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = HKBridgeHealthController;
  v5 = [(HKBridgeHealthController *)&v15 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 textLabel];
  [v6 setNumberOfLines:0];

  LOBYTE(v6) = self->_isTearingDownSharing;
  [v5 setUserInteractionEnabled:(v6 & 1) == 0];
  [v5 setCellEnabled:(v6 & 1) == 0];
  v7 = [v5 specifier];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"LoadingMedicalIDIdentifier"];

  if (v9)
  {
    [v5 setUserInteractionEnabled:0];
    [v5 setCellEnabled:0];
LABEL_3:
    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v10 setHidesWhenStopped:1];
    [v5 setAccessoryView:v10];
    [v10 startAnimating];

    goto LABEL_7;
  }

  v11 = [v5 specifier];
  v12 = [v11 identifier];
  v13 = [v12 isEqualToString:@"StopReceivingSharedDataIdentifier"];

  if (v13 && self->_isTearingDownSharing)
  {
    goto LABEL_3;
  }

  [v5 setAccessoryView:0];
LABEL_7:

  return v5;
}

- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8D84;
  block[3] = &unk_18510;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_loadProfileData
{
  if (!self->_loadingProfileData)
  {
    self->_loadingProfileData = 1;
    v3 = [HKProfileStore alloc];
    v4 = [(HKBridgeHealthController *)self healthStore];
    v5 = [v3 initWithHealthStore:v4];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_8E80;
    v6[3] = &unk_18560;
    v6[4] = self;
    [v5 fetchDisplayName:v6];
  }
}

- (void)_dismissMedicalIDEditorWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(HKBridgeHealthController *)self presentedViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(HKBridgeHealthController *)self presentedViewController];
    medicalIDEditor = self->_medicalIDEditor;

    if (v6 == medicalIDEditor)
    {
      [(HKBridgeHealthController *)self dismissViewControllerAnimated:1 completion:v9];
      v8 = self->_medicalIDEditor;
      self->_medicalIDEditor = 0;
    }
  }
}

- (void)_contactStoreDidChange:(id)a3
{
  if ([(_HKMedicalIDData *)self->_medicalIDData updateEmergencyContacts])
  {
    [(HKBridgeHealthController *)self reloadSpecifiers];
    medicalIDStore = self->_medicalIDStore;
    medicalIDData = self->_medicalIDData;

    [(HKMedicalIDStore *)medicalIDStore updateMedicalIDData:medicalIDData completion:0];
  }
}

- (HKBridgeControllerDelegate)secondaryUserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryUserDelegate);

  return WeakRetained;
}

@end