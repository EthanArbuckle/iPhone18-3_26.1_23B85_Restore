@interface HPRFHeartRateSettingsController
+ (id)_cachedInstallStateByAppID;
- (BOOL)_areIrregularRhythmNotificationsTurnedOn;
- (BOOL)_isAppInstalled:(id)a3;
- (HPRFHeartRateSettingsController)init;
- (id)_aFibBurdenGroupSpecifierWithFooter:(id)a3;
- (id)_aFibBurdenOnboardingSpecifier;
- (id)_aFibBurdenSwitchSpecifier;
- (id)_atrialFibrillationDetectionOnboardingSpecifier;
- (id)_atrialFibrillationDetectionSwitchSpecifier;
- (id)_bradycardiaSpecifier;
- (id)_cardioFitnessGroupSpecifierWithFooter:(id)a3;
- (id)_cardioFitnessNotificationsSwitchSpecifier;
- (id)_cardioFitnessOnboardingSpecifier;
- (id)_electrocardiogramAppInstallSpecifier;
- (id)_electrocardiogramGroupSpecifierWithFooter:(id)a3;
- (id)_electrocardiogramHealthRoomSpecifier;
- (id)_electrocardiogramOnboardingSpecifier;
- (id)_heartAgeGatingSpecifier;
- (id)_hypertensionNotificationsGroupSpecifierWithFooter:(id)a3;
- (id)_hypertensionNotificationsOnboardingSpecifier;
- (id)_hypertensionNotificationsSwitchSpecifier;
- (id)_irregularRhythmNotificationsGroupSpecifierWithHeaderText:(id)a3 footer:(id)a4;
- (id)_irregularRhythmNotificationsSpecifiersWithFeatureStatus:(id)a3;
- (id)_setUpAFibBurdenFeatureStatusManager;
- (id)_setUpCardioFitnessFeatureStatusManager;
- (id)_setUpElectrocardiogramFeatureStatusManager;
- (id)_setUpHeartRateNotificationsFeatureStatusManager;
- (id)_setUpHeartRhythmAvailability;
- (id)_setUpHeartRhythmAvailabilityWithProfileIdentifier:(id)a3;
- (id)_setUpHypertensionNotificationsFeatureStatusManager;
- (id)_tachycardiaSpecifier;
- (id)aFibBurdenEnabledValueWithSpecifier:(id)a3;
- (id)atrialFibrillationDetectionEnabledValueWithSpecifier:(id)a3;
- (id)bundle;
- (id)cardioFitnessNotificationsEnabledValueWithSpecifier:(id)a3;
- (id)hypertensionNotificationsEnabledValueWithSpecifier:(id)a3;
- (id)notificationCoalescingTitles;
- (id)notificationCoalescingValue:(id)a3;
- (id)specifiers;
- (int64_t)_atrialFibrillationDetectionRescindedStatus;
- (int64_t)appInstallStateForAppBundleID:(id)a3;
- (void)_aFibBurdenFooterLinkTapped;
- (void)_aFibBurdenOnboardingButtonTapped;
- (void)_atrialFibrillationDetectionHealthRoomButtonTapped;
- (void)_cardioFitnessAboutLinkTapped;
- (void)_cardioFitnessOnboardingButtonTapped;
- (void)_electrocardiogramAppInstallButtonTapped;
- (void)_electrocardiogramFooterLinkTapped;
- (void)_electrocardiogramHealthRoomButtonTapped;
- (void)_electrocardiogramOnboardingButtonTapped;
- (void)_electrocardiogramRecordingSeedExpiredLinkTapped;
- (void)_hypertensionNotificationsAboutLinkTapped;
- (void)_hypertensionNotificationsOnboardingButtonTapped;
- (void)_irregularRhythmNotificationsLinkTapped;
- (void)_openFeatureRemoteDisabledURL;
- (void)_privacySettingsLinkTapped;
- (void)dealloc;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)heartRhythmAvailabilityDidUpdate;
- (void)setAFibBurdenEnabledValue:(id)a3 specifier:(id)a4;
- (void)setAtrialFibrillationDetectionEnabledValue:(id)a3 specifier:(id)a4;
- (void)setCardioFitnessNotificationsEnabledValue:(id)a3 specifier:(id)a4;
- (void)setHypertensionNotificationsEnabledValue:(id)a3 specifier:(id)a4;
- (void)setNotificationCoalescingValue:(id)a3 specifier:(id)a4;
- (void)setUpWatchAppAvailabilityForAppBundleID:(id)a3 device:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)watchAppAvailability:(id)a3 appInstallStateDidChange:(int64_t)a4;
@end

@implementation HPRFHeartRateSettingsController

- (HPRFHeartRateSettingsController)init
{
  v41.receiver = self;
  v41.super_class = HPRFHeartRateSettingsController;
  v3 = [(HPRFHeartRateSettingsController *)&v41 init];
  if (v3)
  {
    v4 = objc_alloc_init(HKHealthStore);
    primaryHealthStore = v3->_primaryHealthStore;
    v3->_primaryHealthStore = v4;

    v6 = [NSUserDefaults alloc];
    v7 = [v6 initWithSuiteName:kHKHeartRateNotificationsPreferencesDomain];
    notificationDefaults = v3->_notificationDefaults;
    v3->_notificationDefaults = v7;

    v9 = [NSUserDefaults alloc];
    v10 = [v9 initWithSuiteName:kHKHeartRhythmDefaultsDomain];
    heartRhythmDefaults = v3->_heartRhythmDefaults;
    v3->_heartRhythmDefaults = v10;

    v12 = +[NRPairedDeviceRegistry hprf_activeSatelliteDevice];
    if (v12)
    {
      availabilityManager = [[HKProfileStore alloc] initWithHealthStore:v3->_primaryHealthStore];
      v14 = [v12 pairingID];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_2F38;
      v38[3] = &unk_18710;
      v39 = v12;
      v40 = v3;
      [(HKHeartRhythmAvailability *)availabilityManager fetchProfileIdentifierForNRDeviceUUID:v14 completion:v38];
    }

    else
    {
      v15 = [(HPRFHeartRateSettingsController *)v3 _setUpHeartRhythmAvailability];
      availabilityManager = v3->_availabilityManager;
      v3->_availabilityManager = v15;
    }

    v16 = +[NRPairedDeviceRegistry hprf_activeDevice];
    if (v16)
    {
      [(HPRFHeartRateSettingsController *)v3 setUpWatchAppAvailabilityForAppBundleID:HKElectrocardiogramAppBundleID device:v16];
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_BC34(v3, v17, a2);
      }
    }

    v18 = objc_opt_new();
    syncManager = v3->_syncManager;
    v3->_syncManager = v18;

    v20 = [HKFeatureStatusManager alloc];
    v21 = [v20 initWithFeatureIdentifier:HKFeatureIdentifierIrregularRhythmNotifications healthStore:v3->_primaryHealthStore];
    irregularRhythmNotificationsManager = v3->_irregularRhythmNotificationsManager;
    v3->_irregularRhythmNotificationsManager = v21;

    [(HKFeatureStatusManager *)v3->_irregularRhythmNotificationsManager registerObserver:v3 queue:&_dispatch_main_q];
    v23 = [(HPRFHeartRateSettingsController *)v3 _setUpAFibBurdenFeatureStatusManager];
    aFibBurdenStatusManager = v3->_aFibBurdenStatusManager;
    v3->_aFibBurdenStatusManager = v23;

    aFibBurdenFooterURL = v3->_aFibBurdenFooterURL;
    v3->_aFibBurdenFooterURL = 0;

    v26 = [(HPRFHeartRateSettingsController *)v3 _setUpCardioFitnessFeatureStatusManager];
    cardioFitnessStatusManager = v3->_cardioFitnessStatusManager;
    v3->_cardioFitnessStatusManager = v26;

    cardioFitnessFooterURL = v3->_cardioFitnessFooterURL;
    v3->_cardioFitnessFooterURL = 0;

    v29 = [(HPRFHeartRateSettingsController *)v3 _setUpElectrocardiogramFeatureStatusManager];
    electrocardiogramStatusManager = v3->_electrocardiogramStatusManager;
    v3->_electrocardiogramStatusManager = v29;

    electrocardiogramFooterURL = v3->_electrocardiogramFooterURL;
    v3->_electrocardiogramFooterURL = 0;

    v32 = [(HPRFHeartRateSettingsController *)v3 _setUpHypertensionNotificationsFeatureStatusManager];
    hypertensionNotificationsStatusManager = v3->_hypertensionNotificationsStatusManager;
    v3->_hypertensionNotificationsStatusManager = v32;

    hypertensionNotificationsFooterURL = v3->_hypertensionNotificationsFooterURL;
    v3->_hypertensionNotificationsFooterURL = 0;

    v35 = [(HPRFHeartRateSettingsController *)v3 _setUpHeartRateNotificationsFeatureStatusManager];
    heartRateNotificationsStatusManager = v3->_heartRateNotificationsStatusManager;
    v3->_heartRateNotificationsStatusManager = v35;
  }

  return v3;
}

- (void)dealloc
{
  availabilityManager = self->_availabilityManager;
  if (availabilityManager)
  {
    [(HKHeartRhythmAvailability *)availabilityManager removeHeartRhythmAvailabilityObserver:self];
  }

  appAvailability = self->_appAvailability;
  if (appAvailability)
  {
    [(HKWatchAppAvailability *)appAvailability removeObserver:self];
  }

  cardioFitnessStatusManager = self->_cardioFitnessStatusManager;
  if (cardioFitnessStatusManager)
  {
    [(HKFeatureStatusManager *)cardioFitnessStatusManager unregisterObserver:self];
  }

  electrocardiogramStatusManager = self->_electrocardiogramStatusManager;
  if (electrocardiogramStatusManager)
  {
    [(HKFeatureStatusManager *)electrocardiogramStatusManager unregisterObserver:self];
  }

  aFibBurdenStatusManager = self->_aFibBurdenStatusManager;
  if (aFibBurdenStatusManager)
  {
    [(HKFeatureStatusManager *)aFibBurdenStatusManager unregisterObserver:self];
  }

  hypertensionNotificationsStatusManager = self->_hypertensionNotificationsStatusManager;
  if (hypertensionNotificationsStatusManager)
  {
    [(HKFeatureStatusManager *)hypertensionNotificationsStatusManager unregisterObserver:self];
  }

  heartRateNotificationsStatusManager = self->_heartRateNotificationsStatusManager;
  if (heartRateNotificationsStatusManager)
  {
    [(HKFeatureStatusManager *)heartRateNotificationsStatusManager unregisterObserver:self];
  }

  v10.receiver = self;
  v10.super_class = HPRFHeartRateSettingsController;
  [(HPRFHeartRateSettingsController *)&v10 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(HPRFHeartRateSettingsController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4 != v6)
  {

    [(HPRFHeartRateSettingsController *)self reload];
  }
}

- (id)_setUpAFibBurdenFeatureStatusManager
{
  v3 = self->_primaryHealthStore;
  v4 = [HKFeatureStatusManager alloc];
  v5 = [v4 initWithFeatureIdentifier:HKFeatureIdentifierAFibBurden healthStore:v3 countryCodeSource:1];

  [v5 registerObserver:self queue:&_dispatch_main_q];

  return v5;
}

- (id)_setUpCardioFitnessFeatureStatusManager
{
  v3 = self->_primaryHealthStore;
  v4 = [HKFeatureStatusManager alloc];
  v5 = [v4 initWithFeatureIdentifier:HKFeatureIdentifierCardioFitness healthStore:v3 countryCodeSource:1];

  [v5 registerObserver:self queue:&_dispatch_main_q];

  return v5;
}

- (id)_setUpElectrocardiogramFeatureStatusManager
{
  v3 = self->_primaryHealthStore;
  v4 = [HKFeatureStatusManager alloc];
  v5 = [v4 initWithFeatureIdentifier:HKFeatureIdentifierElectrocardiogramRecording healthStore:v3 countryCodeSource:1];

  [v5 registerObserver:self queue:&_dispatch_main_q];

  return v5;
}

- (id)_setUpHeartRhythmAvailability
{
  v3 = self->_primaryHealthStore;
  v4 = [[HKHeartRhythmAvailability alloc] initWithHealthStore:v3];

  [v4 addHeartRhythmAvailabilityObserver:self];

  return v4;
}

- (id)_setUpHypertensionNotificationsFeatureStatusManager
{
  v3 = self->_primaryHealthStore;
  v4 = [HKFeatureStatusManager alloc];
  v5 = [v4 initWithFeatureIdentifier:HKFeatureIdentifierHypertensionNotifications healthStore:v3 countryCodeSource:1];

  [v5 registerObserver:self queue:&_dispatch_main_q];

  return v5;
}

- (id)_setUpHeartRateNotificationsFeatureStatusManager
{
  v3 = self->_primaryHealthStore;
  v4 = [HKFeatureStatusManager alloc];
  v5 = [v4 initWithFeatureIdentifier:HKFeatureIdentifierHighHeartRateNotifications healthStore:v3];

  [v5 registerObserver:self queue:&_dispatch_main_q];

  return v5;
}

- (id)_setUpHeartRhythmAvailabilityWithProfileIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKHealthStore);
  [v5 setProfileIdentifier:v4];

  [v5 resume];
  v6 = [[HKHeartRhythmAvailability alloc] initWithHealthStore:v5];
  [v6 addHeartRhythmAvailabilityObserver:self];

  return v6;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (int64_t)_atrialFibrillationDetectionRescindedStatus
{
  v2 = [(HKFeatureStatusManager *)self->_irregularRhythmNotificationsManager featureAvailabilityProviding];
  v7 = 0;
  v3 = [v2 onboardedCountryCodeSupportedStateWithError:&v7];
  v4 = v7;

  if (v3)
  {
    [v3 integerValue];
    v5 = HKFeatureAvailabilityRescindedStatusFromHKFeatureAvailabilityOnboardedCountrySupportedState();
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      sub_BDE0();
    }

    v5 = 0;
  }

  return v5;
}

- (id)specifiers
{
  if (!self->_availabilityManager)
  {
    v11 = &__NSArray0__struct;
    goto LABEL_104;
  }

  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_103;
  }

  v136 = OBJC_IVAR___PSListController__specifiers;
  v4 = [(HPRFHeartRateSettingsController *)self localizedPaneTitle];
  [(HPRFHeartRateSettingsController *)self setTitle:v4];

  v5 = +[NSMutableArray array];
  electrocardiogramStatusManager = self->_electrocardiogramStatusManager;
  v144 = 0;
  v7 = [(HKFeatureStatusManager *)electrocardiogramStatusManager featureStatusWithError:&v144];
  v8 = v144;
  v134 = v8;
  v135 = v7;
  if (v7)
  {
    v9 = [HKHRElectrocardiogramRecordingBridgeSettings alloc];
    v10 = [v9 initWithFeatureStatus:v7 isAppInstalled:{-[HPRFHeartRateSettingsController _isAppInstalled:](self, "_isAppInstalled:", HKElectrocardiogramAppBundleID)}];
  }

  else
  {
    v12 = v8;
    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_BE88(v12);
    }

    v10 = 0;
  }

  v14 = [PSSpecifier groupSpecifierWithID:@"HEADER"];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 setProperty:v16 forKey:PSHeaderCellClassGroupKey];

  v137 = v5;
  if (v10)
  {
    v17 = v10;
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 settingVisible]);
    [v14 setObject:v18 forKeyedSubscript:@"ElectrocardiogramSupported"];
  }

  else
  {
    v17 = 0;
    [v14 setObject:&__kCFBooleanFalse forKeyedSubscript:@"ElectrocardiogramSupported"];
  }

  availabilityManager = self->_availabilityManager;
  v20 = +[NRPairedDeviceRegistry hprf_activePrimaryOrSatelliteDevice];
  v21 = +[NSDate date];
  v22 = [NSNumber numberWithBool:[(HKHeartRhythmAvailability *)availabilityManager isHeartAgeGatingEnabledOnWatch:v20 currentDate:v21]];
  [v14 setObject:v22 forKeyedSubscript:@"HeartAgeGatingEnabled"];

  v23 = objc_alloc_init(NSMutableString);
  v24 = +[NRPairedDeviceRegistry hprf_activeDeviceIsSatelliteDevice];
  v133 = v23;
  if (+[_HKHeartSettingsUtilities isHeartRateEnabled]& 1) != 0 || (v24)
  {
    v31 = [v23 copy];
    [v14 setProperty:v31 forKey:PSFooterTextGroupKey];
  }

  else
  {
    v25 = HKHeartRateLocalizedString();
    [v23 appendFormat:@"\n\n%@", v25];

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v14 setObject:v27 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v14 setObject:v23 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v28 = HKHeartRateLocalizedString();
    v151.location = [v23 rangeOfString:v28];
    v29 = NSStringFromRange(v151);
    [v14 setObject:v29 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v30 = [NSValue valueWithNonretainedObject:self];
    [v14 setObject:v30 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    [v14 setObject:@"_privacySettingsLinkTapped" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  }

  v32 = v5;
  [v5 addObject:v14];
  v33 = self->_availabilityManager;
  v34 = +[NRPairedDeviceRegistry hprf_activeDevice];
  v35 = +[NSDate date];
  v11 = [(HKHeartRhythmAvailability *)v33 isHeartAgeGatingEnabledOnWatch:v34 currentDate:v35];

  if (!v11)
  {
    v40 = v17;
    if (v24)
    {
      v41 = [NSArray arrayWithArray:v5];
      v37 = v136;
      v42 = *&self->BPSNotificationAppController_opaque[v136];
      *&self->BPSNotificationAppController_opaque[v136] = v41;

      v11 = *&self->BPSNotificationAppController_opaque[v136];
      v39 = 0;
      goto LABEL_101;
    }

    if (!v17)
    {
LABEL_29:
      hypertensionNotificationsStatusManager = self->_hypertensionNotificationsStatusManager;
      v143 = 0;
      v50 = [(HKFeatureStatusManager *)hypertensionNotificationsStatusManager featureStatusWithError:&v143];
      v131 = v143;
      v128 = v50;
      if (!v50)
      {
        _HKInitializeLogging();
        v51 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_BF1C(v131);
        }

LABEL_43:

        cardioFitnessStatusManager = self->_cardioFitnessStatusManager;
        v142 = 0;
        v62 = [(HKFeatureStatusManager *)cardioFitnessStatusManager featureStatusWithError:&v142];
        v130 = v142;
        v127 = v62;
        if (!v62)
        {
          _HKInitializeLogging();
          v63 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_BFB0();
          }

LABEL_59:

          irregularRhythmNotificationsManager = self->_irregularRhythmNotificationsManager;
          v141 = 0;
          v76 = [(HKFeatureStatusManager *)irregularRhythmNotificationsManager featureStatusWithError:&v141];
          v125 = v141;
          v126 = v76;
          if (v76)
          {
            v132 = [(HPRFHeartRateSettingsController *)self _irregularRhythmNotificationsSpecifiersWithFeatureStatus:v76];
            [v32 addObjectsFromArray:?];
          }

          else
          {
            _HKInitializeLogging();
            v11 = HKLogHeartRateCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_C05C();
            }

            v132 = &__NSArray0__struct;
          }

          heartRateNotificationsStatusManager = self->_heartRateNotificationsStatusManager;
          v140 = 0;
          v78 = [(HKFeatureStatusManager *)heartRateNotificationsStatusManager featureStatusWithError:&v140];
          v129 = v140;
          _HKInitializeLogging();
          v79 = HKLogHeartRateCategory();
          v80 = v79;
          v124 = v78;
          if (v78)
          {
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v81 = objc_opt_class();
              *buf = 138412546;
              v147 = v81;
              v148 = 2112;
              v149[0] = v78;
              v82 = v81;
              _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "[%@]: Loading notifications section with status %@", buf, 0x16u);
            }

            v11 = [v78 objectForKeyedSubscript:HKFeatureAvailabilityContextSettingsVisibility];
            v83 = [v11 areAllRequirementsSatisfied];

            if ((v83 & 1) == 0)
            {
              goto LABEL_81;
            }

            v80 = HKHeartRateLocalizedString();
            if ((+[_HKHeartSettingsUtilities isWristDetectionEnabled]& 1) != 0)
            {
              v84 = 0;
            }

            else
            {
              v84 = HKHeartRateLocalizedString();
            }

            if ([v132 count])
            {

              v84 = 0;
              v80 = 0;
            }

            v122 = v40;
            v85 = [PSSpecifier groupSpecifierWithID:@"HEART_NOTIFICATION_TACHYCARDIA_GROUP_ID" name:v80];
            v86 = v84;
            if (v84)
            {
              v87 = HKHeartRateLocalizedString();
              [v85 setObject:v87 forKeyedSubscript:PSHeaderDetailTextGroupKey];
            }

            v88 = [objc_opt_class() footerText];
            v89 = PSFooterTextGroupKey;
            [v85 setObject:v88 forKeyedSubscript:PSFooterTextGroupKey];

            [v32 addObject:v85];
            v90 = [(HPRFHeartRateSettingsController *)self _tachycardiaSpecifier];
            v91 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[_HKHeartSettingsUtilities isBackgroundHeartRateEnabled]);
            v11 = PSEnabledKey;
            [v90 setObject:v91 forKeyedSubscript:PSEnabledKey];

            v32 = v137;
            [v137 addObject:v90];
            if (+[_HKHeartSettingsUtilities isBradycardiaDetectionSupportedOnActiveWatch])
            {
              v92 = [PSSpecifier groupSpecifierWithID:@"HEART_NOTIFICATION_BRADYCARDIA_GROUP_ID" name:0];
              v93 = [objc_opt_class() footerText];
              [v92 setObject:v93 forKeyedSubscript:v89];

              [v137 addObject:v92];
              v94 = [(HPRFHeartRateSettingsController *)self _bradycardiaSpecifier];
              v95 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[_HKHeartSettingsUtilities isBackgroundHeartRateEnabled]);
              [v94 setObject:v95 forKeyedSubscript:v11];

              [v137 addObject:v94];
              v32 = v137;
            }

            v40 = v122;
          }

          else if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            sub_C0EC();
          }

LABEL_81:
          aFibBurdenStatusManager = self->_aFibBurdenStatusManager;
          v139 = 0;
          v97 = [(HKFeatureStatusManager *)aFibBurdenStatusManager featureStatusWithError:&v139];
          v98 = v139;
          _HKInitializeLogging();
          v99 = HKHRAFibBurdenLogForCategory();
          v100 = v99;
          v123 = v98;
          if (v97)
          {
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              v101 = objc_opt_class();
              *buf = 138412546;
              v147 = v101;
              v148 = 2112;
              v149[0] = v97;
              v102 = v101;
              _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "[%@]: Loading AFibBurden section with status %@", buf, 0x16u);
            }

            v11 = [[HKHRAFibBurdenNotificationSettingsFactory alloc] initWithFeatureStatus:v97];
            v100 = [v11 bridgeSettings];

            if ([v100 settingVisible])
            {
              v103 = v40;
              v104 = [v100 footer];
              v105 = [(HPRFHeartRateSettingsController *)self _aFibBurdenGroupSpecifierWithFooter:v104];

              [v32 addObject:v105];
              LODWORD(v104) = [v100 showOnboarding];
              _HKInitializeLogging();
              v106 = HKHRAFibBurdenLogForCategory();
              v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
              if (v104)
              {
                if (v107)
                {
                  v108 = objc_opt_class();
                  *buf = 138412290;
                  v147 = v108;
                  v109 = v108;
                  _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "[%@]: AFibBurden not onboarded. Showing onboarding specifier", buf, 0xCu);
                }

                v110 = [(HPRFHeartRateSettingsController *)self _aFibBurdenOnboardingSpecifier];
              }

              else
              {
                if (v107)
                {
                  v112 = objc_opt_class();
                  *buf = 138412290;
                  v147 = v112;
                  v113 = v112;
                  _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "[%@]: AFibBurden onboarded. Showing toggle", buf, 0xCu);
                }

                v110 = [(HPRFHeartRateSettingsController *)self _aFibBurdenSwitchSpecifier];
              }

              v11 = v110;
              v114 = [NSNumber numberWithBool:[v100 settingEnabled]];
              [v11 setObject:v114 forKeyedSubscript:PSEnabledKey];

              v32 = v137;
              [v137 addObject:v11];

              v40 = v103;
            }

            else
            {
              _HKInitializeLogging();
              v105 = HKHRAFibBurdenLogForCategory();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                v111 = objc_opt_class();
                *buf = 138412290;
                v147 = v111;
                v11 = v111;
                _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "[%@]: Omitting AFibBurden section. Feature unavailable", buf, 0xCu);
              }
            }

            v37 = v136;
          }

          else
          {
            v37 = v136;
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              sub_C198();
            }
          }

          if (+[_HKHeartSettingsUtilities isBackgroundHeartRateEnabled])
          {
            v138.receiver = self;
            v138.super_class = HPRFHeartRateSettingsController;
            v115 = [(HPRFHeartRateSettingsController *)&v138 specifiers];
            v116 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_COALESCING_GROUP_ID"];
            v11 = [PSSpecifier preferenceSpecifierNamed:@"HEART_NOTIFICATION_COALESCING_TITLE" target:self set:"setNotificationCoalescingValue:specifier:" get:"notificationCoalescingValue:" detail:objc_opt_class() cell:2 edit:0, v123, v124, v125, v126, v127, v128];
            v117 = HKHeartRateLocalizedString();
            [v11 setName:v117];

            [v11 setIdentifier:@"NOTIFICATION_COALESCING_ID"];
            [v11 setProperty:@"notificationCoalescingTitles" forKey:PSTitlesDataSourceKey];
            [v11 setProperty:@"notificationCoalescingValues" forKey:PSValuesDataSourceKey];
            v145[0] = v116;
            v145[1] = v11;
            v118 = [NSArray arrayWithObjects:v145 count:2];
            [v137 addObjectsFromArray:v118];

            v32 = v137;
            v37 = v136;
          }

          v119 = [NSArray arrayWithArray:v32];
          v120 = *&self->BPSNotificationAppController_opaque[v37];
          *&self->BPSNotificationAppController_opaque[v37] = v119;

          v39 = 1;
          goto LABEL_101;
        }

        v11 = [[HKHRCardioFitnessNotificationSettingsFactory alloc] initWithFeatureStatus:v62];
        v63 = [v11 bridgeSettings];

        if ([v63 settingVisible])
        {
          v64 = [v63 footer];
          v65 = [(HPRFHeartRateSettingsController *)self _cardioFitnessGroupSpecifierWithFooter:v64];

          [v32 addObject:v65];
          LODWORD(v64) = [v63 showOnboarding];
          _HKInitializeLogging();
          v66 = HKLogHeartRateCategory();
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
          if (v64)
          {
            if (v67)
            {
              v68 = objc_opt_class();
              *buf = 138543362;
              v147 = v68;
              v69 = v68;
              _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "[%{public}@]: CardioFitness not onboarded. Showing onboarding specifier", buf, 0xCu);
            }

            v70 = [(HPRFHeartRateSettingsController *)self _cardioFitnessOnboardingSpecifier];
          }

          else
          {
            if (v67)
            {
              v72 = objc_opt_class();
              *buf = 138543362;
              v147 = v72;
              v73 = v72;
              _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "[%{public}@]: CardioFitness onboarded. Showing notification toggle", buf, 0xCu);
            }

            v70 = [(HPRFHeartRateSettingsController *)self _cardioFitnessNotificationsSwitchSpecifier];
          }

          v11 = v70;
          v74 = [NSNumber numberWithBool:[v63 settingEnabled]];
          [v11 setObject:v74 forKeyedSubscript:PSEnabledKey];

          v32 = v137;
          [v137 addObject:v11];
        }

        else
        {
          _HKInitializeLogging();
          v65 = HKLogHeartRateCategory();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
LABEL_58:

            goto LABEL_59;
          }

          v71 = objc_opt_class();
          *buf = 138543362;
          v147 = v71;
          v11 = v71;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Omitting CardioFitness section. Notifications unavailable", buf, 0xCu);
        }

        goto LABEL_58;
      }

      v51 = [[HKHRHypertensionNotificationsSettings alloc] initWithFeatureStatus:v50];
      v52 = [v51 bridgeSettings];
      _HKInitializeLogging();
      v11 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_opt_class();
        v54 = v53;
        v55 = [v52 settingVisible];
        v56 = [v52 showOnboarding];
        *buf = 138543874;
        v147 = v53;
        v148 = 1026;
        LODWORD(v149[0]) = v55;
        v32 = v137;
        WORD2(v149[0]) = 1026;
        *(v149 + 6) = v56;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Loading Hypertension Notifications section with setting visible: %{public}i showOnboarding: %{public}i", buf, 0x18u);

        v40 = v17;
      }

      if ([v52 settingVisible])
      {
        v57 = [v52 footer];
        v58 = [(HPRFHeartRateSettingsController *)self _hypertensionNotificationsGroupSpecifierWithFooter:v57];

        [v32 addObject:v58];
        if ([v52 showOnboarding])
        {
          [(HPRFHeartRateSettingsController *)self _hypertensionNotificationsOnboardingSpecifier];
        }

        else
        {
          [(HPRFHeartRateSettingsController *)self _hypertensionNotificationsSwitchSpecifier];
        }
        v11 = ;
        v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v52 userInteractionEnabled]);
        [v11 setObject:v60 forKeyedSubscript:PSEnabledKey];

        v32 = v137;
        [v137 addObject:v11];
      }

      else
      {
        _HKInitializeLogging();
        v58 = HKLogHeartRateCategory();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
LABEL_42:

          goto LABEL_43;
        }

        v59 = objc_opt_class();
        *buf = 138543362;
        v147 = v59;
        v11 = v59;
        _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Omitting Hypertension Notifications section. Feature is unavailable", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if ([v17 settingVisible])
    {
      v43 = [v17 footer];
      v44 = [(HPRFHeartRateSettingsController *)self _electrocardiogramGroupSpecifierWithFooter:v43];

      [v5 addObject:v44];
      if ([v17 showOnboarding])
      {
        v11 = [(HPRFHeartRateSettingsController *)self _electrocardiogramOnboardingSpecifier];
        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 userInteractionEnabled]);
        [v11 setObject:v45 forKeyedSubscript:PSEnabledKey];

        [v5 addObject:v11];
      }

      else
      {
        v11 = [(HPRFHeartRateSettingsController *)self _electrocardiogramAppInstallSpecifier];
        v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 userInteractionEnabled]);
        [v11 setObject:v47 forKeyedSubscript:PSEnabledKey];

        [v5 addObject:v11];
        v48 = [(HPRFHeartRateSettingsController *)self _electrocardiogramHealthRoomSpecifier];
        [v5 addObject:v48];
      }
    }

    else
    {
      _HKInitializeLogging();
      v44 = HKLogHeartRateCategory();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      v46 = objc_opt_class();
      *buf = 138543362;
      v147 = v46;
      v11 = v46;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Omitting Electrocardiogram section. Feature is unavailable", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v36 = [NSArray arrayWithArray:v5];
  v37 = v136;
  v38 = *&self->BPSNotificationAppController_opaque[v136];
  *&self->BPSNotificationAppController_opaque[v136] = v36;

  v11 = *&self->BPSNotificationAppController_opaque[v136];
  v39 = 0;
  v40 = v17;
LABEL_101:

  if (!v39)
  {
    goto LABEL_104;
  }

  v3 = *&self->BPSNotificationAppController_opaque[v37];
LABEL_103:
  v11 = v3;
LABEL_104:

  return v11;
}

- (void)_privacySettingsLinkTapped
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"bridge:root=PRIVACY_ID"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (id)notificationCoalescingTitles
{
  v2 = HKHeartRateLocalizedString();
  v7[0] = v2;
  v3 = HKHeartRateLocalizedString();
  v7[1] = v3;
  v4 = HKHeartRateLocalizedString();
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)notificationCoalescingValue:(id)a3
{
  v3 = [(HPRFHeartRateSettingsController *)self sectionInfo];
  v4 = [v3 objectForKey:BPSNanoBulletinCoalescingBehavior];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &off_19450;
  }

  v6 = v5;

  return v5;
}

- (void)setNotificationCoalescingValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(HPRFHeartRateSettingsController *)self sectionInfo];
  [v6 setObject:v5 forKey:BPSNanoBulletinCoalescingBehavior];

  [(HPRFHeartRateSettingsController *)self writeSectionState];
}

- (void)_electrocardiogramRecordingSeedExpiredLinkTapped
{
  v4 = +[UIApplication sharedApplication];
  v2 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  v3 = [NSURL URLWithString:v2];
  [v4 openURL:v3 withCompletionHandler:0];
}

- (void)_openFeatureRemoteDisabledURL
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:HKElectrocardiogramRemoteDisabledSupportURL];
  [v3 openURL:v2 withCompletionHandler:0];
}

- (id)_electrocardiogramGroupSpecifierWithFooter:(id)a3
{
  v4 = a3;
  v5 = HKHeartRateLocalizedString();
  v6 = [PSSpecifier groupSpecifierWithID:@"ELECTROCARDIOGRAM_GROUP_ID" name:v5];

  v7 = [v4 linkURL];
  [(HPRFHeartRateSettingsController *)self setElectrocardiogramFooterURL:v7];

  v8 = [v4 footerLink];
  if (v8 && ([v4 linkURL], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v4 footerText];
    v11 = [NSString stringWithFormat:@"%@\n%@", v10, v8];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v6 setObject:v13 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v6 setObject:v11 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v19.location = [v11 rangeOfString:v8];
    v14 = NSStringFromRange(v19);
    [v6 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v15 = [NSValue valueWithNonretainedObject:self];
    [v6 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v16 = NSStringFromSelector("_electrocardiogramFooterLinkTapped");
    [v6 setObject:v16 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    v11 = [v4 footerText];
    [v6 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v6;
}

- (void)_electrocardiogramFooterLinkTapped
{
  v3 = [(HPRFHeartRateSettingsController *)self electrocardiogramFooterURL];

  if (v3)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [(HPRFHeartRateSettingsController *)self electrocardiogramFooterURL];
    v5 = [NSURL URLWithString:v4];
    [v7 openSensitiveURL:v5 withOptions:0];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_C244();
    }
  }
}

- (id)_electrocardiogramOnboardingSpecifier
{
  v3 = HKHeartRateLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"ELECTROCARDIOGRAM_ONBOARDING_BUTTON"];
  [v4 setButtonAction:"_electrocardiogramOnboardingButtonTapped"];
  v5 = NSStringFromSelector("_electrocardiogramOnboardingButtonTapped");
  [v4 setObject:v5 forKeyedSubscript:PSButtonActionKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (id)_electrocardiogramHealthRoomSpecifier
{
  v3 = HKHeartRateLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"ELECTROCARDIOGRAM_HEALTH_ROOM_BUTTON"];
  [v4 setButtonAction:"_electrocardiogramHealthRoomButtonTapped"];
  v5 = NSStringFromSelector("_electrocardiogramHealthRoomButtonTapped");
  [v4 setObject:v5 forKeyedSubscript:PSButtonActionKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (id)_electrocardiogramAppInstallSpecifier
{
  v3 = HKHeartRateLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v4 setIdentifier:@"ELECTROCARDIOGRAM_APP_INSTALL_BUTTON"];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = HKElectrocardiogramAppBundleID;
  [v4 setProperty:HKElectrocardiogramAppBundleID forKey:@"HPRFAppBundleID"];
  [v4 setProperty:v5 forKey:PSLazyIconAppID];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  v6 = NSStringFromSelector("_electrocardiogramAppInstallButtonTapped");
  [v4 setObject:v6 forKeyedSubscript:@"HPRFAppInstallAction"];

  return v4;
}

- (void)_electrocardiogramHealthRoomButtonTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = +[NSURL _hk_urlForElectrocardiogramType];
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_electrocardiogramOnboardingButtonTapped
{
  v2 = [NSSet setWithObject:HKElectrocardiogramOnboardingVersionCompletedDefaultKey];
  HKSynchronizeNanoPreferencesUserDefaults();

  v4 = +[UIApplication sharedApplication];
  v3 = +[NSURL _hk_urlForElectrocardiogramType];
  [v4 openURL:v3 withCompletionHandler:0];
}

- (void)_electrocardiogramAppInstallButtonTapped
{
  _HKInitializeLogging();
  v3 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[HPRFHeartRateSettingsController _electrocardiogramAppInstallButtonTapped]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s]: App install button tapped", &v6, 0xCu);
  }

  v4 = [(HPRFHeartRateSettingsController *)self availabilityManager];
  [v4 updateOnboardingCompletionVersionCache];

  v5 = [(HPRFHeartRateSettingsController *)self availabilityManager];
  [v5 updateElectrocardiogramWatchAppInstallIsAllowed];
}

- (id)_irregularRhythmNotificationsSpecifiersWithFeatureStatus:(id)a3
{
  v4 = HKHRIrregularRhythmNotificationsBridgeSettingsWithFeatureStatus();
  if ([v4 isSettingHidden])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [v4 headerText];
    v7 = [v4 footer];
    v8 = [(HPRFHeartRateSettingsController *)self _irregularRhythmNotificationsGroupSpecifierWithHeaderText:v6 footer:v7];

    if ([v4 shouldLinkToOnboarding])
    {
      [(HPRFHeartRateSettingsController *)self _atrialFibrillationDetectionOnboardingSpecifier];
    }

    else
    {
      [(HPRFHeartRateSettingsController *)self _atrialFibrillationDetectionSwitchSpecifier];
    }
    v9 = ;
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isUserInteractionEnabled]);
    [v9 setObject:v10 forKeyedSubscript:PSEnabledKey];

    v12[0] = v8;
    v12[1] = v9;
    v5 = [NSArray arrayWithObjects:v12 count:2];
  }

  return v5;
}

- (id)_irregularRhythmNotificationsGroupSpecifierWithHeaderText:(id)a3 footer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HKHeartRateLocalizedString();
  v9 = [PSSpecifier groupSpecifierWithID:@"ATRIAL_FIBRILLATION_GROUP_ID" name:v8];

  if (v6)
  {
    [v9 setObject:v6 forKeyedSubscript:PSHeaderDetailTextGroupKey];
  }

  v10 = [v7 linkText];
  if (v10 && (v11 = v10, [v7 linkURL], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v13 = [v7 linkURL];
    irregularRhythmNotificationsFooterURL = self->_irregularRhythmNotificationsFooterURL;
    self->_irregularRhythmNotificationsFooterURL = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v9 setObject:v16 forKeyedSubscript:PSFooterCellClassGroupKey];

    v17 = [v7 text];
    [v9 setObject:v17 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];

    v18 = [v7 text];
    v19 = [v7 linkText];
    v27.location = [v18 rangeOfString:v19];
    v20 = NSStringFromRange(v27);
    [v9 setObject:v20 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v21 = [NSValue valueWithNonretainedObject:self];
    [v9 setObject:v21 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v22 = NSStringFromSelector("_irregularRhythmNotificationsLinkTapped");
    v23 = &PSFooterHyperlinkViewActionKey;
  }

  else
  {
    v24 = self->_irregularRhythmNotificationsFooterURL;
    self->_irregularRhythmNotificationsFooterURL = 0;

    v22 = [v7 text];
    v23 = &PSFooterTextGroupKey;
  }

  [v9 setObject:v22 forKeyedSubscript:*v23];

  return v9;
}

- (void)_irregularRhythmNotificationsLinkTapped
{
  if (self->_irregularRhythmNotificationsFooterURL)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v3 = [NSURL URLWithString:self->_irregularRhythmNotificationsFooterURL];
    [v5 openSensitiveURL:v3 withOptions:0];
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_C2CC();
    }
  }
}

- (id)_atrialFibrillationDetectionOnboardingSpecifier
{
  v3 = +[_HKHeartSettingsUtilities irregularHeartRhythmSetupTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"ATRIAL_FIBRILLATION_ONBOARDING_BUTTON"];
  [v4 setObject:@"_atrialFibrillationDetectionHealthRoomButtonTapped" forKeyedSubscript:PSButtonActionKey];
  [v4 setButtonAction:"_atrialFibrillationDetectionHealthRoomButtonTapped"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (id)_atrialFibrillationDetectionSwitchSpecifier
{
  v3 = +[_HKHeartSettingsUtilities irregularHeartRhythmTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setAtrialFibrillationDetectionEnabledValue:specifier:" get:"atrialFibrillationDetectionEnabledValueWithSpecifier:" detail:0 cell:6 edit:0];

  [v4 setIdentifier:@"ATRIAL_FIBRILLATION_HEALTH_ROOM_BUTTON"];

  return v4;
}

- (void)_atrialFibrillationDetectionHealthRoomButtonTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = +[NSURL _hk_urlForAtrialFibrillationEventType];
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)setAtrialFibrillationDetectionEnabledValue:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = objc_opt_class();
  v7 = [(HKFeatureStatusManager *)self->_irregularRhythmNotificationsManager featureAvailabilityProviding];
  v8 = [NSNumber numberWithBool:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_61B0;
  v9[3] = &unk_18730;
  v9[4] = v6;
  [v7 setFeatureSettingNumber:v8 forKey:HKFeatureSettingsKeyEnabled completion:v9];
}

- (id)atrialFibrillationDetectionEnabledValueWithSpecifier:(id)a3
{
  v3 = [(HPRFHeartRateSettingsController *)self _areIrregularRhythmNotificationsTurnedOn];

  return [NSNumber numberWithBool:v3];
}

- (BOOL)_areIrregularRhythmNotificationsTurnedOn
{
  irregularRhythmNotificationsManager = self->_irregularRhythmNotificationsManager;
  v8 = 0;
  v3 = [(HKFeatureStatusManager *)irregularRhythmNotificationsManager featureStatusWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = HKHRIrregularRhythmNotificationsBridgeSettingsWithFeatureStatus();
    v6 = [v5 areNotificationsOn];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C3DC();
    }

    v6 = 0;
  }

  return v6;
}

- (id)_tachycardiaSpecifier
{
  if (+[_HKHeartSettingsUtilities isBackgroundHeartRateEnabled])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  v3 = HKHeartRateLocalizedString();
  v4 = objc_opt_class();
  v5 = [PSSpecifier preferenceSpecifierNamed:v3 target:v4 set:0 get:"localizedThresholdHeartRateString" detail:objc_opt_class() cell:v2 edit:0];

  [v5 setIdentifier:@"HEART_NOTIFICATION_TACHYCARDIA_ID"];

  return v5;
}

- (id)_bradycardiaSpecifier
{
  if (+[_HKHeartSettingsUtilities isBackgroundHeartRateEnabled])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  v3 = HKHeartRateLocalizedString();
  v4 = objc_opt_class();
  v5 = [PSSpecifier preferenceSpecifierNamed:v3 target:v4 set:0 get:"localizedThresholdHeartRateString" detail:objc_opt_class() cell:v2 edit:0];

  [v5 setIdentifier:@"HEART_NOTIFICATION_BRADYCARDIA_ID"];

  return v5;
}

- (id)_aFibBurdenGroupSpecifierWithFooter:(id)a3
{
  v4 = a3;
  v5 = +[_HKHeartSettingsUtilities aFibBurdenSectionTitle];
  v6 = [PSSpecifier groupSpecifierWithID:@"AFIB_BURDEN_GROUP_ID" name:v5];

  v7 = [v4 footerText];
  v8 = [v4 footerLink];
  v9 = [v4 linkURL];
  [(HPRFHeartRateSettingsController *)self setAFibBurdenFooterURL:v9];

  if (v8 && ([v4 linkURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v6 setObject:v12 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v6 setObject:v7 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v18.location = [v7 rangeOfString:v8];
    v13 = NSStringFromRange(v18);
    [v6 setObject:v13 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v14 = [NSValue valueWithNonretainedObject:self];
    [v6 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v15 = NSStringFromSelector("_aFibBurdenFooterLinkTapped");
    [v6 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v6;
}

- (id)_aFibBurdenOnboardingSpecifier
{
  v3 = +[_HKHeartSettingsUtilities aFibBurdenSetupTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"AFIB_BURDEN_ONBOARDING_BUTTON_ID"];
  [v4 setButtonAction:"_aFibBurdenOnboardingButtonTapped"];
  v5 = NSStringFromSelector("_aFibBurdenOnboardingButtonTapped");
  [v4 setObject:v5 forKeyedSubscript:PSButtonActionKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (id)_aFibBurdenSwitchSpecifier
{
  v3 = +[_HKHeartSettingsUtilities aFibBurdenTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setAFibBurdenEnabledValue:specifier:" get:"aFibBurdenEnabledValueWithSpecifier:" detail:0 cell:6 edit:0];

  [v4 setIdentifier:@"AFIB_BURDEN_SWITCH_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (void)_aFibBurdenOnboardingButtonTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = HKHRAFibBurdenOnboardingDeepLink();
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_aFibBurdenFooterLinkTapped
{
  v3 = [(HPRFHeartRateSettingsController *)self aFibBurdenFooterURL];

  if (v3)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [(HPRFHeartRateSettingsController *)self aFibBurdenFooterURL];
    v5 = [NSURL URLWithString:v4];
    [v7 openSensitiveURL:v5 withOptions:0];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_C468();
    }
  }
}

- (void)setAFibBurdenEnabledValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HKFeatureStatusManager *)self->_aFibBurdenStatusManager featureAvailabilityProviding];
  v9 = HKFeatureSettingsKeyEnabled;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B00;
  v10[3] = &unk_18780;
  objc_copyWeak(&v11, &location);
  [v8 setFeatureSettingNumber:v6 forKey:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)aFibBurdenEnabledValueWithSpecifier:(id)a3
{
  aFibBurdenStatusManager = self->_aFibBurdenStatusManager;
  v14 = 0;
  v4 = [(HKFeatureStatusManager *)aFibBurdenStatusManager featureStatusWithError:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [[HKHRAFibBurdenNotificationSettingsFactory alloc] initWithFeatureStatus:v4];
    v7 = [v6 bridgeSettings];
    v8 = [v7 settingEnabled];

    v9 = [v4 requirementsEvaluationByContext];
    v10 = [v9 objectForKeyedSubscript:HKFeatureAvailabilityContextUsage];
    v11 = [v10 isRequirementSatisfiedWithIdentifier:HKFeatureAvailabilityRequirementIdentifierFeatureIsOn];

    v12 = [NSNumber numberWithInt:v8 & v11];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C58C(v5);
    }

    v12 = &__kCFBooleanFalse;
  }

  return v12;
}

- (id)_cardioFitnessGroupSpecifierWithFooter:(id)a3
{
  v4 = a3;
  v5 = +[_HKHeartSettingsUtilities cardioFitnessSectionTitle];
  v6 = [PSSpecifier groupSpecifierWithID:@"CARDIO_FITNESS_GROUP_ID" name:v5];

  v7 = [v4 footerText];
  v8 = [v4 footerLink];
  v9 = [v4 linkURL];
  [(HPRFHeartRateSettingsController *)self setCardioFitnessFooterURL:v9];

  if (v8 && ([v4 linkURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v6 setObject:v12 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v6 setObject:v7 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v18.location = [v7 rangeOfString:v8];
    v13 = NSStringFromRange(v18);
    [v6 setObject:v13 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v14 = [NSValue valueWithNonretainedObject:self];
    [v6 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v15 = NSStringFromSelector("_cardioFitnessAboutLinkTapped");
    [v6 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v6;
}

- (id)_cardioFitnessOnboardingSpecifier
{
  v3 = +[_HKHeartSettingsUtilities cardioFitnessSetupTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"CARDIO_FITNESS_ONBOARDING_BUTTON_ID"];
  [v4 setButtonAction:"_cardioFitnessOnboardingButtonTapped"];
  v5 = NSStringFromSelector("_cardioFitnessOnboardingButtonTapped");
  [v4 setObject:v5 forKeyedSubscript:PSButtonActionKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (id)_cardioFitnessNotificationsSwitchSpecifier
{
  v3 = +[_HKHeartSettingsUtilities cardioFitnessTitleDescription];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setCardioFitnessNotificationsEnabledValue:specifier:" get:"cardioFitnessNotificationsEnabledValueWithSpecifier:" detail:0 cell:6 edit:0];

  [v4 setIdentifier:@"CARDIO_FITNESS_NOTIFICATION_SWITCH_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (void)_cardioFitnessOnboardingButtonTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = HKHRCardioFitnessEventOnboardingDeepLink();
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_cardioFitnessAboutLinkTapped
{
  v3 = [(HPRFHeartRateSettingsController *)self cardioFitnessFooterURL];

  if (v3)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [(HPRFHeartRateSettingsController *)self cardioFitnessFooterURL];
    v5 = [NSURL URLWithString:v4];
    [v7 openSensitiveURL:v5 withOptions:0];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_C620();
    }
  }
}

- (void)setCardioFitnessNotificationsEnabledValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HKFeatureStatusManager *)self->_cardioFitnessStatusManager featureAvailabilityProviding];
  v9 = HKFeatureSettingsKeyEnabled;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_739C;
  v10[3] = &unk_18780;
  objc_copyWeak(&v11, &location);
  [v8 setFeatureSettingNumber:v6 forKey:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)cardioFitnessNotificationsEnabledValueWithSpecifier:(id)a3
{
  cardioFitnessStatusManager = self->_cardioFitnessStatusManager;
  v14 = 0;
  v4 = [(HKFeatureStatusManager *)cardioFitnessStatusManager featureStatusWithError:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [[HKHRCardioFitnessNotificationSettingsFactory alloc] initWithFeatureStatus:v4];
    v7 = [v6 bridgeSettings];
    v8 = [v7 settingEnabled];

    v9 = [v4 requirementsEvaluationByContext];
    v10 = [v9 objectForKeyedSubscript:HKFeatureAvailabilityContextUsage];
    v11 = [v10 isRequirementSatisfiedWithIdentifier:HKFeatureAvailabilityRequirementIdentifierFeatureIsOn];

    v12 = [NSNumber numberWithInt:v8 & v11];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C744(v5);
    }

    v12 = &__kCFBooleanFalse;
  }

  return v12;
}

- (id)_hypertensionNotificationsGroupSpecifierWithFooter:(id)a3
{
  v4 = a3;
  v5 = HKHRHypertensionNotificationsSettingsLocstr();
  v6 = [PSSpecifier groupSpecifierWithID:@"HYPERTENSION_NOTIFICATIONS_GROUP_ID" name:v5];

  v7 = [v4 footerText];
  v8 = [v4 footerLink];
  v9 = [v4 linkURL];
  [(HPRFHeartRateSettingsController *)self setHypertensionNotificationsFooterURL:v9];

  if (v8 && ([v4 linkURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v6 setObject:v12 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v6 setObject:v7 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v18.location = [v7 rangeOfString:v8];
    v13 = NSStringFromRange(v18);
    [v6 setObject:v13 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v14 = [NSValue valueWithNonretainedObject:self];
    [v6 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v15 = NSStringFromSelector("_hypertensionNotificationsAboutLinkTapped");
    [v6 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v6;
}

- (id)_hypertensionNotificationsOnboardingSpecifier
{
  v3 = HKHRHypertensionNotificationsSettingsLocstr();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"HYPERTENSION_NOTIFICATIONS_ONBOARDING_BUTTON_ID"];
  [v4 setButtonAction:"_hypertensionNotificationsOnboardingButtonTapped"];
  v5 = NSStringFromSelector("_hypertensionNotificationsOnboardingButtonTapped");
  [v4 setObject:v5 forKeyedSubscript:PSButtonActionKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v4;
}

- (void)_hypertensionNotificationsOnboardingButtonTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = HKHRHypertensionNotificationsOnboardingDeepLink();
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_hypertensionNotificationsAboutLinkTapped
{
  v3 = [(HPRFHeartRateSettingsController *)self hypertensionNotificationsFooterURL];

  if (v3)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [(HPRFHeartRateSettingsController *)self hypertensionNotificationsFooterURL];
    v5 = [NSURL URLWithString:v4];
    [v7 openSensitiveURL:v5 withOptions:0];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_C7D8();
    }
  }
}

- (id)_hypertensionNotificationsSwitchSpecifier
{
  v3 = HKHRHypertensionNotificationsSettingsLocstr();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setHypertensionNotificationsEnabledValue:specifier:" get:"hypertensionNotificationsEnabledValueWithSpecifier:" detail:0 cell:6 edit:0];

  [v4 setIdentifier:@"HYPERTENSION_NOTIFICATIONS_SWITCH_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (void)setHypertensionNotificationsEnabledValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HKFeatureStatusManager *)self->_hypertensionNotificationsStatusManager featureAvailabilityProviding];
  v9 = HKFeatureSettingsKeyEnabled;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7C30;
  v10[3] = &unk_18780;
  objc_copyWeak(&v11, &location);
  [v8 setFeatureSettingNumber:v6 forKey:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)hypertensionNotificationsEnabledValueWithSpecifier:(id)a3
{
  hypertensionNotificationsStatusManager = self->_hypertensionNotificationsStatusManager;
  v11 = 0;
  v4 = [(HKFeatureStatusManager *)hypertensionNotificationsStatusManager featureStatusWithError:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [[HKHRHypertensionNotificationsSettings alloc] initWithFeatureStatus:v4];
    v7 = [v6 bridgeSettings];
    if ([v7 userInteractionEnabled])
    {
      v8 = [v7 settingEnabled];
    }

    else
    {
      v8 = 0;
    }

    v9 = [NSNumber numberWithInt:v8];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C8FC(v5);
    }

    v9 = &__kCFBooleanFalse;
  }

  return v9;
}

- (void)heartRhythmAvailabilityDidUpdate
{
  _HKInitializeLogging();
  v3 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[HPRFHeartRateSettingsController heartRhythmAvailabilityDidUpdate]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s]: Heart rhythm availability update notification received.", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7EC0;
  block[3] = &unk_187A8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v5 featureIdentifier];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ onboarding status updated.", &v10, 0x16u);
  }

  [(HPRFHeartRateSettingsController *)self reloadSpecifiers];
}

- (id)_heartAgeGatingSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithID:@"HEART_AGE_GATING_GROUP_ID"];
  v3 = HKHeartRateLocalizedString();
  [v2 setObject:v3 forKeyedSubscript:PSFooterTextGroupKey];

  return v2;
}

- (void)setUpWatchAppAvailabilityForAppBundleID:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  appAvailability = self->_appAvailability;
  if (appAvailability)
  {
    v10 = [(HKWatchAppAvailability *)appAvailability bundleID];
    v11 = [v10 isEqualToString:v7];

    if (v11)
    {
      goto LABEL_7;
    }

    [(HKWatchAppAvailability *)self->_appAvailability removeObserver:self];
  }

  _HKInitializeLogging();
  v12 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544130;
    v23 = self;
    v24 = 2114;
    v25 = v14;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Setting up watch app availability for app bundle identifier(%@) on watch(%@)", buf, 0x2Au);
  }

  v15 = [[HKWatchAppAvailability alloc] initWithBundleID:v7];
  v16 = self->_appAvailability;
  self->_appAvailability = v15;

  [(HKWatchAppAvailability *)self->_appAvailability addObserver:self queue:&_dispatch_main_q];
  objc_initWeak(buf, self);
  v17 = self->_appAvailability;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_828C;
  v18[3] = &unk_187F8;
  objc_copyWeak(&v21, buf);
  v19 = v7;
  v20 = self;
  [(HKWatchAppAvailability *)v17 appInstallStateOnWatch:v8 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
LABEL_7:
}

+ (id)_cachedInstallStateByAppID
{
  if (qword_1E390 != -1)
  {
    sub_C990();
  }

  v3 = qword_1E388;

  return v3;
}

- (BOOL)_isAppInstalled:(id)a3
{
  v5 = a3;
  if (v5 && (appAvailability = self->_appAvailability) != 0)
  {
    v7 = [(HKWatchAppAvailability *)appAvailability bundleID];
    v8 = [(HPRFHeartRateSettingsController *)self appInstallStateForAppBundleID:v7];

    if ((v8 + 1) >= 5)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v9 = 8u >> (v8 + 1);
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = NSStringFromSelector(a2);
      v14 = 138543874;
      v15 = self;
      v16 = 2114;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to retrieve app install state for app bundle identifier(%@) ", &v14, 0x20u);
    }

    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (int64_t)appInstallStateForAppBundleID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _cachedInstallStateByAppID];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_19480;
  }

  v7 = [v6 integerValue];

  return v7;
}

- (void)watchAppAvailability:(id)a3 appInstallStateDidChange:(int64_t)a4
{
  v7 = a3;
  _HKInitializeLogging();
  v8 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v11 = [NSNumber numberWithInteger:a4];
    v12 = [v7 bundleID];
    *buf = 138544130;
    v18 = self;
    v19 = 2114;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> App install state did change(%@) for app with bundle identifier(%@)", buf, 0x2Au);
  }

  v13 = [objc_opt_class() _cachedInstallStateByAppID];
  v14 = [NSNumber numberWithInteger:a4];
  v15 = [v7 bundleID];
  [v13 setObject:v14 forKey:v15];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8810;
  block[3] = &unk_187A8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end