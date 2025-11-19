@interface BatteryHealthUIController
+ (double)getMaxChargeCapacityPercentage:(int)a3;
+ (id)getHealthStateString;
+ (id)unknownString;
- (BatteryHealthUIController)init;
- (id)aboutBatteriesGroupSpecifier;
- (id)batteryInfoGroupSpecifier;
- (id)bhuiDateFormatter;
- (id)chargeCapacityGroupSpecifier;
- (id)chargeCapacityRemainingDemo:(id)a3;
- (id)cleanEnergyChargingGroupSpecifier;
- (id)cycleCountGroupSpecifier;
- (id)getChargeCapacityRemaining;
- (id)getChargingMode;
- (id)getCleanChargingSwitchState;
- (id)getCycleCount;
- (id)getDateOfFirstUse;
- (id)getDateOfManufacture;
- (id)getManualChargingSwitchState;
- (id)getSmartChargingSwitchState;
- (id)getStringFromDate:(id)a3;
- (id)headerSpecifiers;
- (id)healthStateGroupSpecifier;
- (id)manualChargingGroupSpecifier;
- (id)nonGenuineBatteryGroupSpecifier;
- (id)peakPowerCapacityGroupSpecifier;
- (id)recalibrationHeaderSpecifier;
- (id)serviceHeaderSpecifier;
- (id)setChargingMode:(id)a3 specifier:(id)a4;
- (id)setUpChargingOptionsSpecifiers;
- (id)smartChargingGroupSpecifier;
- (id)specifiers;
- (id)spinnerSpecifierGroup;
- (id)startSpinner;
- (id)unknownHeaderSpeciifer;
- (void)clearSpinner;
- (void)didTapABW;
- (void)getBatteryInformation;
- (void)handleNonGenuineBatteryTap:(id)a3;
- (void)handleRecalibrationTap:(id)a3;
- (void)handleServiceBatteryTap:(id)a3;
- (void)handleServiceBatteryTapUsingAppleCareSupport:(id)a3;
- (void)logBatteryStatusAndStates;
- (void)reloadSpecifiersFromSpinner;
- (void)setAboutBatteriesLink;
- (void)setAboutCleanEnergyChargingLink;
- (void)setBatteryServiceLink;
- (void)setCleanChargingSwitchState:(id)a3;
- (void)setCycleCountLink;
- (void)setKMLink;
- (void)setLearnMoreLink;
- (void)setManualChargingSwitchState:(id)a3;
- (void)setPerformanceManagementAlert;
- (void)setSmartChargingSwitchState:(id)a3;
- (void)showLimitToFullAlert;
- (void)startSpinnerInCell:(id)a3;
- (void)stopSpinnerInCell:(id)a3;
- (void)updateBatteryHealthServiceFlag;
- (void)updateBatteryHealthServiceState;
- (void)updateCleanEnergyChargingState;
- (void)updateData;
- (void)updateGenuineBatteryStatus;
- (void)updateMaximumCapacity;
- (void)updatePerfManagementState;
- (void)updateSmartChargingState;
- (void)userDidDisable;
- (void)userDidLeaveOn;
- (void)viewDidLoad;
@end

@implementation BatteryHealthUIController

- (void)updateMaximumCapacity
{
  v11 = 0;
  v3 = [BatteryUIResourceClass getBatteryMaximumCapacityPercentWithError:&v11];
  v4 = v11;
  v5 = 0;
  if (!v4)
  {
    v5 = [NSNumber numberWithInt:v3];
  }

  maximumCapacityPercent = self->_maximumCapacityPercent;
  self->_maximumCapacityPercent = v5;

  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111124(&self->_maximumCapacityPercent);
  }

  v7 = objc_opt_new();
  if ([BatteryUIResourceClass isBatteryUnverifiedWithStatus:self->_genuineBatteryStatus state:self->_batteryHealthServiceState])
  {
    [v7 setObject:@"batteryNotTrusted" forKeyedSubscript:@"state"];
  }

  else
  {
    batteryHealthServiceState = self->_batteryHealthServiceState;
    if (batteryHealthServiceState == 6)
    {
      [v7 setObject:@"BCDC" forKeyedSubscript:@"state"];
      if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
      {
        sub_11119C();
      }
    }

    else if (batteryHealthServiceState == 5)
    {
      [v7 setObject:@"notDeterminable" forKeyedSubscript:@"state"];
      if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
      {
        sub_1111D0();
      }
    }
  }

  if (self->_maximumCapacityPercent)
  {
    v9 = self->_maximumCapacityPercent;
  }

  else
  {
    v9 = &off_173658;
  }

  [v7 setObject:v9 forKeyedSubscript:@"maximumCapacityPercent"];
  v10 = v7;
  AnalyticsSendEventLazy();
}

- (void)updatePerfManagementState
{
  if (!+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    if (self->_userDisabledPerfManagement)
    {
      self->_perfManagementState = 3;
      self->_userDisabledPerfManagement = 0;
    }

    else
    {
      self->_perfManagementState = +[BatteryUIResourceClass getManagementState];
    }

    if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_111204(140, self);
    }
  }
}

- (void)updateBatteryHealthServiceState
{
  self->_batteryHealthServiceState = +[BatteryUIResourceClass getBatteryHealthServiceState];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111278(&self->_batteryHealthServiceState);
  }
}

- (void)updateBatteryHealthServiceFlag
{
  self->_batteryHealthServiceFlag = +[BatteryUIResourceClass getBatteryHealthServiceFlags];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_1112EC(&self->_batteryHealthServiceFlag);
  }
}

- (void)updateGenuineBatteryStatus
{
  self->_genuineBatteryStatus = +[BatteryUIResourceClass genuineBatteryStatus];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111360(&self->_genuineBatteryStatus);
  }
}

- (void)updateSmartChargingState
{
  if (!+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    v3 = [(BatteryHealthUIController *)self smartChargingClient];
    v8 = 0;
    v4 = [v3 isSmartChargingCurrentlyEnabled:&v8];
    v5 = v8;

    v6 = [(BatteryHealthUIController *)self BHUILog];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10FCEC();
      }

      v4 = &dword_0 + 1;
      ADClientAddValueForScalarKey();
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = v4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Got smart charging state: %lu", buf, 0xCu);
      }

      ADClientSetValueForScalarKey();
    }

    AnalyticsSendEventLazy();
    [(BatteryHealthUIController *)self setSmartChargingState:v4];
  }
}

- (void)updateCleanEnergyChargingState
{
  v3 = [(BatteryHealthUIController *)self smartChargingClient];
  v8 = 0;
  v4 = [v3 isCECCurrentlyEnabled:&v8];
  v5 = v8;

  v6 = [(BatteryHealthUIController *)self BHUILog];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1113D4();
    }

    [(BatteryHealthUIController *)self setSmartChargingState:1];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Got clean energy charging state: %lu", buf, 0xCu);
    }

    [(BatteryHealthUIController *)self setCleanChargingState:v4];
  }
}

- (void)updateData
{
  [(BatteryHealthUIController *)self updatePerfManagementState];
  [(BatteryHealthUIController *)self updateBatteryHealthServiceState];
  [(BatteryHealthUIController *)self updateBatteryHealthServiceFlag];
  [(BatteryHealthUIController *)self updateGenuineBatteryStatus];
  [(BatteryHealthUIController *)self updateMaximumCapacity];
  [(BatteryHealthUIController *)self logBatteryStatusAndStates];
  [(BatteryHealthUIController *)self getBatteryInformation];
  [(BatteryHealthUIController *)self updateSmartChargingState];
  v3 = [(BatteryHealthUIController *)self smartChargingClient];
  if ([v3 isCECSupported])
  {
    if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_111444();
    }

    [(BatteryHealthUIController *)self updateCleanEnergyChargingState];
  }
}

- (BatteryHealthUIController)init
{
  v12.receiver = self;
  v12.super_class = BatteryHealthUIController;
  v2 = [(BatteryHealthUIController *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryui.health", "");
    if (!v3)
    {
      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    objc_storeStrong(&v2->_BHUILog, v3);
    v2->_userDisabledPerfManagement = 0;
    v2->_spinnerCanReloadUI = 1;
    v2->_isAuthSpinner = 0;
    v5 = [PowerUISmartChargeClient alloc];
    v6 = [v5 initWithClientName:PowerUISmartChargeClientSettings];
    smartChargingClient = v2->_smartChargingClient;
    v2->_smartChargingClient = v6;

    if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
    {
      if (!+[BatteryUIResourceClass inDemoMode])
      {
        v8 = @"BATTERY_HEALTH_TITLE";
        goto LABEL_14;
      }

      +[BatteryUIResourceClass containerPath];
      v8 = @"BATTERY_HEALTH_TITLE";
    }

    else
    {
      if (!+[BatteryUIResourceClass inDemoMode])
      {
        v8 = @"BATTERY_HEALTH";
        goto LABEL_14;
      }

      +[BatteryUIResourceClass containerPath];
      v8 = @"BATTERY_HEALTH";
    }

    v9 = _CFPreferencesCopyValueWithContainer();
    if (v9)
    {
LABEL_15:
      v10 = v9;
      [(BatteryHealthUIController *)v2 setTitle:v9];

      return v2;
    }

LABEL_14:
    v9 = BatteryUILocalization(v8);
    goto LABEL_15;
  }

  return v2;
}

- (void)logBatteryStatusAndStates
{

  AnalyticsSendEventLazy();
}

- (void)setAboutBatteriesLink
{
  v3 = +[BatteryUIResourceClass deviceSupportsCPMS];
  v4 = +[BatteryUIResourceClass inDemoMode];
  if (v3)
  {
    if (v4)
    {
      +[BatteryUIResourceClass containerPath];
      v5 = @"CPMS_ABOUT_BATTERIES_URL";
      goto LABEL_6;
    }

    v5 = @"CPMS_ABOUT_BATTERIES_URL";
  }

  else
  {
    if (v4)
    {
      +[BatteryUIResourceClass containerPath];
      v5 = @"ABOUT_BATTERIES_URL";
LABEL_6:
      v6 = _CFPreferencesCopyValueWithContainer();
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v5 = @"ABOUT_BATTERIES_URL";
  }

LABEL_10:
  v6 = BatteryUILocalization(v5);
LABEL_11:
  v7 = v6;
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111478();
  }

  v8 = [NSURL URLWithString:v7];
  v9 = +[UIApplication sharedApplication];
  [v9 openURL:v8 options:&__NSDictionary0__struct completionHandler:&stru_164358];
}

- (void)handleNonGenuineBatteryTap:(id)a3
{
  v3 = FLFollowUpSingleItemKey;
  v4 = a3;
  v7 = [v4 propertyForKey:v3];
  v5 = [v4 propertyForKey:FLFollowUpSingleActionKey];

  v6 = [FLFollowUpActionHandler handlerWithItem:v7];
  [v6 handleAction:v5 completion:&stru_1643B8];
}

- (void)setBatteryServiceLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v2 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v2 = BatteryUILocalization(@"SERVICE_RECOMMENDED_URL");
  }

  v4 = [NSURL URLWithString:v2];

  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 options:&__NSDictionary0__struct completionHandler:&stru_1643F8];
}

- (void)setPerformanceManagementAlert
{
  v3 = objc_opt_new();
  [v3 showPerfMitigationAlert:self];
  ADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
}

+ (id)unknownString
{
  v2 = +[PLBatteryUIBackendModel shouldShowChargingController];
  v3 = +[BatteryUIResourceClass inDemoMode];
  if (v2)
  {
    if (v3)
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"UNKNOWN";
      goto LABEL_6;
    }

    v4 = @"UNKNOWN";
  }

  else
  {
    if (v3)
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"EM_DASH";
LABEL_6:
      v5 = _CFPreferencesCopyValueWithContainer();
      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v4 = @"EM_DASH";
  }

LABEL_10:
  v5 = BatteryUILocalization(v4);
LABEL_11:

  return v5;
}

- (id)getChargeCapacityRemaining
{
  if (+[BatteryUIResourceClass isQMaxUnknown])
  {
    if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_1115A8();
    }
  }

  else
  {
    maximumCapacityPercent = self->_maximumCapacityPercent;
    if (!maximumCapacityPercent && os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
    {
      sub_1114E8();
    }

    BHUILog = self->_BHUILog;
    if (os_log_type_enabled(BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_111524(&self->_maximumCapacityPercent, BHUILog);
    }

    if (maximumCapacityPercent)
    {
      [BatteryHealthUIController getMaxChargeCapacityPercentage:[(NSNumber *)self->_maximumCapacityPercent intValue]];
      v5 = [NSNumber numberWithDouble:?];
      v6 = [NSNumberFormatter localizedStringFromNumber:v5 numberStyle:3];
      v7 = [NSString stringWithFormat:@"%@", v6];

      goto LABEL_13;
    }
  }

  v7 = +[BatteryHealthUIController unknownString];
LABEL_13:

  return v7;
}

+ (double)getMaxChargeCapacityPercentage:(int)a3
{
  result = fmin(a3 / 100.0, 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (id)chargeCapacityRemainingDemo:(id)a3
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode", a3) || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CHARGE_CAPACITY");
  }

  v4 = [v3 isEqualToString:&stru_16CDB8];

  if (v4)
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v5 = BatteryUILocalization(@"EM_DASH");
    }
  }

  else
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"CHARGE_CAPACITY");
    }

    v5 = [NSString stringWithFormat:@"%@%%", v6];
  }

  return v5;
}

- (id)aboutBatteriesGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithName:0];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"ABOUT_BATTERIES_TEXT"), +[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ABOUT_BATTERIES_TEXT"];
    v4 = BatteryUILocalization(v5);
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v6 = BatteryUILocalization(@"ABOUT_BATTERIES_LINK");
  }

  v7 = [NSString stringWithFormat:v4, v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v3 setProperty:v9 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v7 forKey:PSFooterHyperlinkViewTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v10 = BatteryUILocalization(@"ABOUT_BATTERIES_LINK");
  }

  v15.location = [v7 rangeOfString:v10];
  v11 = NSStringFromRange(v15);
  [v3 setProperty:v11 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v12 = [NSValue valueWithNonretainedObject:self];
  [v3 setProperty:v12 forKey:PSFooterHyperlinkViewTargetKey];

  [v3 setProperty:@"setAboutBatteriesLink" forKey:PSFooterHyperlinkViewActionKey];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_1115DC();
  }

  return v3;
}

- (id)nonGenuineBatteryGroupSpecifier
{
  v42 = +[NSMutableArray array];
  v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
  v4 = +[BatteryUIResourceClass deviceSupportsCPMS];
  v5 = +[BatteryUIResourceClass inDemoMode];
  if (v4)
  {
    if (!v5)
    {
      v6 = @"CPMS_NONGENUINE_BATTERY_URL";
      goto LABEL_11;
    }

    +[BatteryUIResourceClass containerPath];
    v6 = @"CPMS_NONGENUINE_BATTERY_URL";
  }

  else
  {
    if (!v5)
    {
      v6 = @"NONGENUINE_BATTERY_URL";
      goto LABEL_11;
    }

    +[BatteryUIResourceClass containerPath];
    v6 = @"NONGENUINE_BATTERY_URL";
  }

  v7 = _CFPreferencesCopyValueWithContainer();
  if (v7)
  {
    v8 = v7;
    v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
LABEL_11:
  v8 = BatteryUILocalization(v6);
LABEL_12:
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111610();
  }

  v9 = [NSURL URLWithString:v8];
  if (![v3 + 752 inDemoMode] || (+[BatteryUIResourceClass containerPath](BatteryUIResourceClass, "containerPath"), v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints, (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v10 = BatteryUILocalization(@"NONGENUINE_BATTERY_LINK");
  }

  v41 = [FLFollowUpAction actionWithLabel:v10 url:v9];

  v11 = objc_alloc_init(FLFollowUpItem);
  v12 = +[PLBatteryUIBackendModel shouldShowChargingController];
  v13 = [v3 + 752 inDemoMode];
  if (v12)
  {
    if (v13)
    {
      [v3 + 752 containerPath];
      v14 = @"BATTERY_HEALTH_TITLE";
      goto LABEL_22;
    }

    v14 = @"BATTERY_HEALTH_TITLE";
LABEL_26:
    v15 = BatteryUILocalization(v14);
    goto LABEL_27;
  }

  if (!v13)
  {
    v14 = @"NONGENUINE_BATTERY_TITLE";
    goto LABEL_26;
  }

  [v3 + 752 containerPath];
  v14 = @"NONGENUINE_BATTERY_TITLE";
LABEL_22:
  v15 = _CFPreferencesCopyValueWithContainer();
  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_27:
  v16 = v15;
  v39 = v9;
  v40 = v8;
  [v11 setTitle:v15];

  if (![v3 + 752 inDemoMode] || (objc_msgSend(v3 + 752, "containerPath"), (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v17 = BatteryUILocalization(@"NONGENUINE_BATTERY_TEXT");
  }

  [v11 setInformativeText:v17];

  v18 = [NSArray arrayWithObject:v41];
  [v11 setActions:v18];

  v19 = [v11 uniqueIdentifier];
  v20 = [PSSpecifier groupSpecifierWithID:v19];

  [v42 addObject:v20];
  v21 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v21 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v22 = FLFollowUpSingleItemKey;
  [v21 setProperty:v11 forKey:FLFollowUpSingleItemKey];
  if (+[PLBatteryUIBackendModel shouldShowChargingController])
  {
    v23 = self;
    v24 = [NSAttributedString alloc];
    if (![v3 + 752 inDemoMode] || (objc_msgSend(v3 + 752, "containerPath"), (v25 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v25 = BatteryUILocalization(@"BATTERY_UNVERIFIED");
    }

    v26 = [v24 initWithString:v25];
    [v21 setObject:v26 forKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationAttributedStringKey"];

    self = v23;
  }

  [v42 addObject:v21];
  v27 = [v41 label];
  v28 = self;
  v29 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v29 setProperty:v41 forKey:FLFollowUpSingleActionKey];
  [v29 setProperty:v11 forKey:v22];
  [v29 setButtonAction:"handleNonGenuineBatteryTap:"];
  [v29 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v42 addObject:v29];
  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v30 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v30 = BatteryUILocalization(@"BATTERY_HEALTH_STATE_FOOTER_UNKNOWN");
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v31 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v31 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
    }

    v32 = [NSString stringWithFormat:v30, v31];

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v20 setProperty:v34 forKey:PSFooterCellClassGroupKey];

    [v20 setProperty:v32 forKey:PSFooterHyperlinkViewTitleKey];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v35 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v35 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
    }

    v44.location = [v32 rangeOfString:v35];
    v36 = NSStringFromRange(v44);
    [v20 setProperty:v36 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v37 = [NSValue valueWithNonretainedObject:v28];
    [v20 setProperty:v37 forKey:PSFooterHyperlinkViewTargetKey];

    [v20 setProperty:@"didTapABW" forKey:PSFooterHyperlinkViewActionKey];
    [v20 setObject:v32 forKeyedSubscript:PSFooterTextGroupKey];
  }

  if (os_log_type_enabled(v28->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111680();
  }

  return v42;
}

- (void)startSpinnerInCell:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v4 startAnimating];
    [v3 setAccessoryView:v4];
  }
}

- (void)stopSpinnerInCell:(id)a3
{
  if (a3)
  {
    [a3 setAccessoryView:0];
  }
}

- (void)handleServiceBatteryTap:(id)a3
{
  v3 = FLFollowUpSingleItemKey;
  v4 = a3;
  v7 = [v4 propertyForKey:v3];
  v5 = [v4 propertyForKey:FLFollowUpSingleActionKey];

  v6 = [FLFollowUpActionHandler handlerWithItem:v7];
  [v6 handleAction:v5 completion:&stru_164458];
}

- (void)handleServiceBatteryTapUsingAppleCareSupport:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:PSTableCellKey];
  objc_initWeak(&location, v5);

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v6 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A3D8;
  block[3] = &unk_1644A0;
  block[4] = self;
  block[5] = v15;
  objc_copyWeak(&v14, &location);
  dispatch_after(v6, &_dispatch_main_q, block);
  v7 = objc_initWeak(&from, self);
  v8 = [(BatteryHealthUIController *)self batteryServiceBookingCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1A440;
  v9[3] = &unk_1644F0;
  v9[4] = v15;
  objc_copyWeak(&v10, &from);
  objc_copyWeak(&v11, &location);
  [v8 launchBatteryServiceBookingFlowWithCompletionHandler:v9];

  ADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v14);
  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&location);
}

- (id)serviceHeaderSpecifier
{
  v41 = +[NSMutableArray array];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"SERVICE_RECOMMENDED_URL");
  }

  v4 = [NSURL URLWithString:v3];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"SERVICE_RECOMMENDED_LINK");
  }

  v6 = [FLFollowUpAction actionWithLabel:v5 url:v4];

  v7 = objc_alloc_init(FLFollowUpItem);
  v39 = v4;
  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    v8 = v41;
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v9 = @"BATTERY_HEALTH_TITLE";
      goto LABEL_14;
    }

    v9 = @"BATTERY_HEALTH_TITLE";
LABEL_17:
    v10 = BatteryUILocalization(v9);
    goto LABEL_18;
  }

  v8 = v41;
  if (!+[BatteryUIResourceClass inDemoMode])
  {
    v9 = @"NONGENUINE_BATTERY_TITLE";
    goto LABEL_17;
  }

  +[BatteryUIResourceClass containerPath];
  v9 = @"NONGENUINE_BATTERY_TITLE";
LABEL_14:
  v10 = _CFPreferencesCopyValueWithContainer();
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_18:
  v11 = v10;
  [v7 setTitle:v10];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"SERVICE_RECOMMENDED"), +[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v13 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SERVICE_RECOMMENDED"];
    v12 = BatteryUILocalization(v13);
  }

  [v7 setInformativeText:v12];

  v14 = [NSArray arrayWithObject:v6];
  [v7 setActions:v14];

  v15 = [v7 uniqueIdentifier];
  v16 = [PSSpecifier groupSpecifierWithID:v15];

  [v8 addObject:v16];
  v17 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v17 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v18 = FLFollowUpSingleItemKey;
  [v17 setProperty:v7 forKey:FLFollowUpSingleItemKey];
  [v17 setIdentifier:@"BATTERY_HEALTH_STATE_IDENTIFIER"];
  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v19 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v19 = BatteryUILocalization(@"BATTERY_SERVICE");
    }

    [v17 setObject:v19 forKeyedSubscript:@"PLBatteryUIFollowUpHeaderInformationStringKey"];
  }

  [v8 addObject:v17];
  v40 = v6;
  v20 = [v6 label];
  v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v22 = [(BatteryHealthUIController *)self isImprovedServiceHandoffEnabled];
  v23 = &selRef_handleServiceBatteryTapUsingAppleCareSupport_;
  if (!v22)
  {
    v23 = &selRef_handleServiceBatteryTap_;
  }

  v24 = *v23;
  if ([(BatteryHealthUIController *)self isImprovedServiceHandoffEnabled])
  {
    v25 = [ACSBatteryServiceBookingCoordinator alloc];
    v42 = kACSBatteryServiceOptionsServiceStateKey;
    v26 = [NSNumber numberWithInt:self->_batteryHealthServiceState];
    v43 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v28 = [v25 initWithOptions:v27];
    batteryServiceBookingCoordinator = self->_batteryServiceBookingCoordinator;
    self->_batteryServiceBookingCoordinator = v28;

    v8 = v41;
  }

  if (![(BatteryHealthUIController *)self isImprovedServiceHandoffEnabled])
  {
    [v21 setProperty:v40 forKey:FLFollowUpSingleActionKey];
  }

  [v21 setProperty:v7 forKey:v18];
  [v21 setButtonAction:v24];
  [v21 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v8 addObject:v21];
  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v30 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v30 = BatteryUILocalization(@"BATTERY_HEALTH_STATE_FOOTER_SERVICE");
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v31 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v31 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
    }

    v32 = [NSString stringWithFormat:v30, v31];

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v16 setProperty:v34 forKey:PSFooterCellClassGroupKey];

    [v16 setProperty:v32 forKey:PSFooterHyperlinkViewTitleKey];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v35 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v35 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
    }

    v45.location = [v32 rangeOfString:v35];
    v36 = NSStringFromRange(v45);
    [v16 setProperty:v36 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v37 = [NSValue valueWithNonretainedObject:self];
    [v16 setProperty:v37 forKey:PSFooterHyperlinkViewTargetKey];

    [v16 setProperty:@"didTapABW" forKey:PSFooterHyperlinkViewActionKey];
    [v16 setObject:v32 forKeyedSubscript:PSFooterTextGroupKey];

    v8 = v41;
  }

  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111724();
  }

  return v8;
}

- (void)handleRecalibrationTap:(id)a3
{
  v3 = FLFollowUpSingleItemKey;
  v4 = a3;
  v7 = [v4 propertyForKey:v3];
  v5 = [v4 propertyForKey:FLFollowUpSingleActionKey];

  v6 = [FLFollowUpActionHandler handlerWithItem:v7];
  [v6 handleAction:v5 completion:&stru_164530];
}

- (id)recalibrationHeaderSpecifier
{
  v3 = +[NSMutableArray array];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"RECALIBRATION_URL");
  }

  v5 = [NSURL URLWithString:v4];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v6 = BatteryUILocalization(@"RECALIBRATION_LINK");
  }

  v7 = [FLFollowUpAction actionWithLabel:v6 url:v5];

  v8 = objc_alloc_init(FLFollowUpItem);
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v9 = BatteryUILocalization(@"RECALIBRATION_TITLE");
  }

  [v8 setTitle:v9];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v10 = BatteryUILocalization(@"RECALIBRATION_TEXT");
  }

  [v8 setInformativeText:v10];

  batteryHealthServiceState = self->_batteryHealthServiceState;
  if (batteryHealthServiceState == 11)
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v13 = BatteryUILocalization(@"RECALIBRATION_FAILED_TEXT");
    }

    [v8 setInformativeText:v13];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"SERVICE_RECOMMENDED_URL");
    }

    v12 = [NSURL URLWithString:v14];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v15 = BatteryUILocalization(@"SERVICE_RECOMMENDED_LINK");
    }

    v16 = [FLFollowUpAction actionWithLabel:v15 url:v12];

    v7 = v16;
  }

  else
  {
    if (batteryHealthServiceState != 10)
    {
      goto LABEL_30;
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v12 = BatteryUILocalization(@"RECALIBRATION_SERVICE_RECOMMENDED_TEXT");
    }

    [v8 setInformativeText:v12];
  }

LABEL_30:
  v17 = [NSArray arrayWithObject:v7];
  [v8 setActions:v17];

  v18 = [v8 uniqueIdentifier];
  v19 = [PSSpecifier groupSpecifierWithID:v18];

  [v3 addObject:v19];
  v20 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v20 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v21 = FLFollowUpSingleItemKey;
  [v20 setProperty:v8 forKey:FLFollowUpSingleItemKey];
  [v3 addObject:v20];
  v22 = [v7 label];
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v23 setProperty:v7 forKey:FLFollowUpSingleActionKey];
  [v23 setProperty:v8 forKey:v21];
  [v23 setButtonAction:"handleRecalibrationTap:"];
  [v23 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v3 addObject:v23];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111758();
  }

  return v3;
}

- (id)unknownHeaderSpeciifer
{
  if ([(BatteryHealthUIController *)self genuineBatteryStatus])
  {
    v3 = [(BatteryHealthUIController *)self nonGenuineBatteryGroupSpecifier];
  }

  else
  {
    v3 = +[NSMutableArray array];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v4 = BatteryUILocalization(@"SERVICE_RECOMMENDED_URL");
    }

    v5 = [NSURL URLWithString:v4];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"PPC_BATTERY_HEALTH_UNKNOWN_LINK");
    }

    v7 = [FLFollowUpAction actionWithLabel:v6 url:v5];

    v8 = objc_alloc_init(FLFollowUpItem);
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v9 = BatteryUILocalization(@"NONGENUINE_BATTERY_TITLE");
    }

    [v8 setTitle:v9];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v10 = BatteryUILocalization(@"PPC_BATTERY_HEALTH_UNKNOWN");
    }

    [v8 setInformativeText:v10];

    v11 = [NSArray arrayWithObject:v7];
    [v8 setActions:v11];

    v12 = [v8 uniqueIdentifier];
    v13 = [PSSpecifier groupSpecifierWithID:v12];

    [v3 addObject:v13];
    v14 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v15 = FLFollowUpSingleItemKey;
    [v14 setProperty:v8 forKey:FLFollowUpSingleItemKey];
    [v3 addObject:v14];
    v16 = [v7 label];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v17 setProperty:v7 forKey:FLFollowUpSingleActionKey];
    [v17 setProperty:v8 forKey:v15];
    [v17 setButtonAction:"handleServiceBatteryTap:"];
    [v17 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v3 addObject:v17];
    if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_11178C();
    }
  }

  return v3;
}

- (id)headerSpecifiers
{
  if ([BatteryUIResourceClass isBatteryUnverifiedWithStatus:[(BatteryHealthUIController *)self genuineBatteryStatus] state:[(BatteryHealthUIController *)self batteryHealthServiceState]])
  {
    [(BatteryHealthUIController *)self clearSpinner];
LABEL_3:
    v3 = [(BatteryHealthUIController *)self nonGenuineBatteryGroupSpecifier];
LABEL_4:
    v4 = v3;
    goto LABEL_5;
  }

  v6 = [(BatteryHealthUIController *)self genuineBatteryStatus];
  switch(v6)
  {
    case 2u:
      goto LABEL_3;
    case 1u:
      [(BatteryHealthUIController *)self clearSpinner];
      break;
    case 0xFFFFFFFF:
LABEL_11:
      v7 = [(BatteryHealthUIController *)self startSpinner];
      goto LABEL_12;
  }

  v9 = [(BatteryHealthUIController *)self batteryHealthServiceState];
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if ((v9 - 9) < 3)
      {
        BHUILog = self->_BHUILog;
        if (os_log_type_enabled(BHUILog, OS_LOG_TYPE_DEBUG))
        {
          sub_1117C0(BHUILog);
        }

        v3 = [(BatteryHealthUIController *)self recalibrationHeaderSpecifier];
        goto LABEL_4;
      }

      if (v9 == 12)
      {
        goto LABEL_3;
      }

      goto LABEL_35;
    }

    if (v9 == 6)
    {
      goto LABEL_16;
    }

    if (v9 != 7)
    {
      v12 = self->_BHUILog;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_111844(v12);
      }

      goto LABEL_16;
    }
  }

  else
  {
    if ((v9 - 1) < 4)
    {
LABEL_16:
      v10 = self->_BHUILog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1117C0(v10);
      }

      v3 = [(BatteryHealthUIController *)self serviceHeaderSpecifier];
      goto LABEL_4;
    }

    if ((v9 + 1) >= 2)
    {
      if (v9 == 5)
      {
        v3 = [(BatteryHealthUIController *)self unknownHeaderSpeciifer];
        goto LABEL_4;
      }

LABEL_35:
      v13 = self->_BHUILog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1118D8(v13);
      }

      goto LABEL_11;
    }
  }

  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    v3 = [(BatteryHealthUIController *)self healthStateGroupSpecifier];
    goto LABEL_4;
  }

  v7 = [(BatteryHealthUIController *)self aboutBatteriesGroupSpecifier];
LABEL_12:
  v8 = v7;
  v4 = [NSArray arrayWithObject:v7];

LABEL_5:

  return v4;
}

- (id)chargeCapacityGroupSpecifier
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:0];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"MAXIMUM_CAPACITY_NAME");
  }

  if (+[BatteryUIResourceClass isQMaxUnknown])
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"KM_MC_FOOTER_TEXT");
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v7 = BatteryUILocalization(@"KM_LM_TEXT");
    }

    v8 = [NSString stringWithFormat:v6, v7];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v4 setProperty:v10 forKey:PSFooterCellClassGroupKey];

    [v4 setProperty:v8 forKey:PSFooterHyperlinkViewTitleKey];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v11 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v11 = BatteryUILocalization(@"KM_LM_TEXT");
    }

    v19.location = [v8 rangeOfString:v11];
    v12 = NSStringFromRange(v19);
    [v4 setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v13 = [NSValue valueWithNonretainedObject:self];
    [v4 setProperty:v13 forKey:PSFooterHyperlinkViewTargetKey];

    [v4 setProperty:@"setKMLink" forKey:PSFooterHyperlinkViewActionKey];
  }

  else if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"MAXIMUM_CAPACITY_FOOTER_TEXT");
  }

  if ((self->_batteryHealthServiceState - 9) > 1)
  {
    v14 = v5;
  }

  else
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"MAXIMUM_CAPACITY_NAME_RECALIBRATING");
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v15 = BatteryUILocalization(@"MAXIMUM_CAPACITY_FOOTER_TEXT_RECALIBRATING");
    }

    v8 = v15;
  }

  v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"getChargeCapacityRemaining" detail:0 cell:4 edit:0];
  [v4 setProperty:v8 forKey:PSFooterTextGroupKey];
  [v16 setIdentifier:@"MAXIMUM_CAPACITY_IDENTIFIER"];
  [v3 addObject:v4];
  [v3 addObject:v16];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_11196C();
  }

  return v3;
}

- (void)setKMLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v2 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v2 = BatteryUILocalization(@"KM_LM_URL");
  }

  v5 = v2;
  v3 = [NSURL URLWithString:v2];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:&stru_164570];
}

- (id)peakPowerCapacityGroupSpecifier
{
  v3 = +[PLBatteryUIBackendModel shouldShowModifiedHealthController];
  v4 = +[NSMutableArray array];
  if (v3)
  {
    goto LABEL_29;
  }

  v5 = [PSSpecifier groupSpecifierWithID:@"PEAK_POWER_CAPACITY"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v6 = BatteryUILocalization(@"PPC_NAME");
  }

  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  if (self->_genuineBatteryStatus != 2)
  {
    batteryHealthServiceState = self->_batteryHealthServiceState;
    if (batteryHealthServiceState == 6)
    {
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v8 = BatteryUILocalization(@"PPC_BCDC");
      }

      goto LABEL_25;
    }

    if (batteryHealthServiceState == 5)
    {
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v8 = BatteryUILocalization(@"PPC_NOT_DETERMINABLE");
      }

      goto LABEL_25;
    }

    perfManagementState = self->_perfManagementState;
    if ((batteryHealthServiceState & 0xFFFFFFFE) == 2 && perfManagementState == 2)
    {
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v8 = BatteryUILocalization(@"PPC_BCDC");
      }

      goto LABEL_25;
    }

    v12 = 0;
    if (perfManagementState > 2)
    {
      if (perfManagementState == 3)
      {
        if (+[BatteryUIResourceClass inDemoMode])
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_57;
          }
        }

        v15 = @"PPC_PERFMGMT_USER_DISABLED";
        goto LABEL_56;
      }

      if (perfManagementState == 4)
      {
        if (+[BatteryUIResourceClass inDemoMode])
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_57;
          }
        }

        v15 = @"PPC_PERFMGMT_DYNAMIC";
        goto LABEL_56;
      }
    }

    else
    {
      if (perfManagementState == 1)
      {
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v16 = BatteryUILocalization(@"PPC_PERFMGMT_ENABLED");
        }

        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v17 = BatteryUILocalization(@"PPC_PERFMGMT_ENABLED_LINK");
        }

        v12 = [NSString stringWithFormat:v16, v17];

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        [v5 setProperty:v19 forKey:PSFooterCellClassGroupKey];

        [v5 setProperty:v12 forKey:PSFooterHyperlinkViewTitleKey];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v20 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v20 = BatteryUILocalization(@"PPC_PERFMGMT_ENABLED_LINK");
        }

        v25.location = [v12 rangeOfString:v20];
        v21 = NSStringFromRange(v25);
        [v5 setProperty:v21 forKey:PSFooterHyperlinkViewLinkRangeKey];

        v22 = [NSValue valueWithNonretainedObject:self];
        [v5 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];

        [v5 setProperty:@"setPerformanceManagementAlert" forKey:PSFooterHyperlinkViewActionKey];
        goto LABEL_58;
      }

      if (perfManagementState == 2)
      {
        if (+[BatteryUIResourceClass inDemoMode])
        {
          +[BatteryUIResourceClass containerPath];
          v14 = _CFPreferencesCopyValueWithContainer();
          if (v14)
          {
            goto LABEL_57;
          }
        }

        v15 = @"PPC_PERFMGMT_DISABLED";
LABEL_56:
        v14 = BatteryUILocalization(v15);
LABEL_57:
        v12 = v14;
      }
    }

LABEL_58:
    v23 = self->_perfManagementState;
    ADClientSetValueForScalarKey();
    AnalyticsSendEventLazy();
    v11 = PSFooterTextGroupKey;
    goto LABEL_26;
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"PPC_NOT_DETERMINABLE");
  }

LABEL_25:
  v11 = PSFooterTextGroupKey;
  [v5 setProperty:v8 forKey:PSFooterTextGroupKey];

  ADClientSetValueForScalarKey();
  AnalyticsSendEventLazy();
  v12 = 0;
LABEL_26:
  [v5 setProperty:v12 forKey:v11];
  [v4 addObject:v5];
  [v4 addObject:v7];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_1119A0();
  }

LABEL_29:

  return v4;
}

- (id)healthStateGroupSpecifier
{
  v16 = +[NSMutableArray array];
  v3 = [PSSpecifier groupSpecifierWithID:@"BATTERY_HEALTH_TITLE"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"BATTERY_HEALTH_TITLE");
  }

  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"healthStateString" detail:0 cell:4 edit:0];
  [v5 setIdentifier:@"BATTERY_HEALTH_STATE_IDENTIFIER"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"BATTERY_HEALTH_STATE_FOOTER_NORMAL"), +[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"BATTERY_HEALTH_STATE_FOOTER_NORMAL"];
    v6 = BatteryUILocalization(v7);
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
  }

  v9 = [NSString stringWithFormat:v6, v8];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v3 setProperty:v11 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v12 = BatteryUILocalization(@"ABOUT_BATTERY_LINK");
  }

  v18.location = [v9 rangeOfString:v12];
  v13 = NSStringFromRange(v18);
  [v3 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v14 = [NSValue valueWithNonretainedObject:self];
  [v3 setProperty:v14 forKey:PSFooterHyperlinkViewTargetKey];

  [v3 setProperty:@"didTapABW" forKey:PSFooterHyperlinkViewActionKey];
  [v3 setObject:v9 forKeyedSubscript:PSFooterTextGroupKey];
  [v16 addObject:v3];
  [v16 addObject:v5];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_1119D4();
  }

  return v16;
}

- (void)didTapABW
{
  v2 = [OBWelcomeController alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"BATTERY_WARRANTY_TITLE");
  }

  v4 = [v2 initWithTitle:v3 detailText:0 symbolName:0 contentLayout:2];

  v121 = v4;
  v5 = [v4 headerView];
  v6 = [v5 subviews];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 font];
    [v8 pointSize];
    v10 = v9;

    if (v10 < 45.0)
    {
      [v7 setAdjustsFontSizeToFitWidth:1];
      [v7 setNumberOfLines:1];
    }
  }

  v113 = v7;
  [v121 setAccessibilityIdentifier:@"BATTERY_WARRANTY_TITLE"];
  v11 = objc_alloc_init(UITextView);
  v12 = [NSMutableAttributedString alloc];
  v120 = v11;
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"BATTERY_WARRANTY_P1"), +[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"BATTERY_WARRANTY_P1"];
    v13 = BatteryUILocalization(v14);
  }

  v15 = [v12 initWithString:v13];

  v112 = v15;
  [v11 setAttributedText:v15];
  [v11 setScrollEnabled:0];
  [v11 setEditable:0];
  v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v11 setFont:v16];

  [v11 setTextAlignment:1];
  v17 = +[UIColor labelColor];
  [v11 setTextColor:v17];

  v119 = objc_alloc_init(UITextView);
  v18 = [NSAttributedString alloc];
  v19 = [NSNumberFormatter localizedStringFromNumber:&off_174D50 numberStyle:3];
  v118 = [v18 initWithString:v19];

  v20 = [NSAttributedString alloc];
  v21 = [NSNumberFormatter localizedStringFromNumber:&off_1736B8 numberStyle:0];
  v117 = [v20 initWithString:v21];

  v22 = [NSAttributedString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"BATTERY_WARRANTY_P2"), +[BatteryUIResourceClass containerPath], (v23 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v24 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"BATTERY_WARRANTY_P2"];
    v23 = BatteryUILocalization(v24);
  }

  v116 = [v22 initWithString:v23];

  v25 = [NSURL alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"BW_LM_URL_2"), +[BatteryUIResourceClass containerPath], (v26 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v27 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"BW_LM_URL_2"];
    v26 = BatteryUILocalization(v27);
  }

  v28 = [v25 initWithString:v26];

  v29 = [NSAttributedString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v30 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v30 = BatteryUILocalization(@"LM_TEXT");
  }

  v128 = NSLinkAttributeName;
  v129 = v28;
  v111 = v28;
  v31 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  v32 = [v29 initWithString:v30 attributes:v31];

  v110 = v32;
  v33 = [NSMutableAttributedString localizedAttributedStringWithFormat:v116, v118, v117, v32];
  [v33 setAccessibilityIdentifier:@"BW_LM_URL_2"];
  v34 = v119;
  v109 = v33;
  [v119 setAttributedText:v33];
  [v119 setUserInteractionEnabled:1];
  [v119 setScrollEnabled:0];
  [v119 setEditable:0];
  v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v119 setFont:v35];

  v36 = +[UIColor labelColor];
  [v119 setTextColor:v36];

  v37 = [v121 contentView];
  [v37 setUserInteractionEnabled:1];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v37 addSubview:v11];
  [v37 addSubview:v119];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  [v119 setAdjustsFontForContentSizeCategory:1];
  v115 = objc_alloc_init(UITextView);
  if (!+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    v38 = [NSURL alloc];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v39 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v39 = BatteryUILocalization(@"BW_LM_URL_3");
    }

    v40 = [v38 initWithString:v39];

    v41 = [NSAttributedString alloc];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v42 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v42 = BatteryUILocalization(@"BATTERY_WARRANTY_P3");
    }

    v43 = [v41 initWithString:v42];

    v44 = [NSAttributedString alloc];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v45 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v45 = BatteryUILocalization(@"LM_TEXT");
    }

    v126 = NSLinkAttributeName;
    v127 = v40;
    v46 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v47 = [v44 initWithString:v45 attributes:v46];

    v48 = [NSMutableAttributedString localizedAttributedStringWithFormat:v43, v47];
    [v48 setAccessibilityIdentifier:@"BW_LM_URL_3"];
    [v115 setAttributedText:v48];
    [v115 setUserInteractionEnabled:1];
    [v115 setScrollEnabled:0];
    [v115 setEditable:0];
    v49 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v115 setFont:v49];

    v50 = +[UIColor labelColor];
    [v115 setTextColor:v50];

    [v37 addSubview:v115];
    [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v115 setAdjustsFontForContentSizeCategory:1];

    v34 = v119;
    v11 = v120;
  }

  v51 = +[PLBatteryUIBackendModel shouldShowModifiedHealthController];
  v52 = [v11 topAnchor];
  v53 = [v37 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v55 = v54;
  if (v51)
  {
    v125[0] = v54;
    v56 = [v11 leftAnchor];
    v108 = [v37 leftAnchor];
    v107 = [v56 constraintEqualToAnchor:8.0 constant:?];
    v125[1] = v107;
    v57 = [v11 rightAnchor];
    v105 = [v37 rightAnchor];
    v106 = v57;
    v104 = [v57 constraintEqualToAnchor:-8.0 constant:?];
    v125[2] = v104;
    v58 = [v34 topAnchor];
    v102 = [v11 bottomAnchor];
    v103 = v58;
    v59 = [v58 constraintEqualToAnchor:10.0 constant:?];
    v125[3] = v59;
    v60 = [v34 leftAnchor];
    v100 = [v37 leftAnchor];
    v101 = v60;
    v99 = [v60 constraintEqualToAnchor:?];
    v125[4] = v99;
    v61 = [v34 rightAnchor];
    v97 = [v37 rightAnchor];
    v98 = v61;
    v96 = [v61 constraintEqualToAnchor:?];
    v125[5] = v96;
    v62 = [v34 bottomAnchor];
    v94 = [v37 bottomAnchor];
    v95 = v62;
    v93 = [v62 constraintEqualToAnchor:?];
    v125[6] = v93;
    v92 = [NSArray arrayWithObjects:v125 count:7];
    [NSLayoutConstraint activateConstraints:?];
    v63 = v111;
    v64 = v115;
  }

  else
  {
    v124[0] = v54;
    v89 = [v11 leftAnchor];
    v108 = [v37 leftAnchor];
    v107 = [v89 constraintEqualToAnchor:8.0 constant:?];
    v124[1] = v107;
    v65 = [v11 rightAnchor];
    v105 = [v37 rightAnchor];
    v106 = v65;
    v104 = [v65 constraintEqualToAnchor:-8.0 constant:?];
    v124[2] = v104;
    v66 = [v34 topAnchor];
    v102 = [v11 bottomAnchor];
    v103 = v66;
    v88 = [v66 constraintEqualToAnchor:10.0 constant:?];
    v124[3] = v88;
    v67 = [v34 leftAnchor];
    v100 = [v37 leftAnchor];
    v101 = v67;
    v99 = [v67 constraintEqualToAnchor:?];
    v124[4] = v99;
    v68 = [v34 rightAnchor];
    v97 = [v37 rightAnchor];
    v98 = v68;
    v96 = [v68 constraintEqualToAnchor:?];
    v124[5] = v96;
    v69 = [v115 topAnchor];
    v94 = [v34 bottomAnchor];
    v95 = v69;
    v93 = [v69 constraintEqualToAnchor:10.0 constant:?];
    v124[6] = v93;
    v70 = [v115 leftAnchor];
    v87 = [v34 leftAnchor];
    v92 = v70;
    v86 = [v70 constraintEqualToAnchor:v87];
    v124[7] = v86;
    v85 = [v115 rightAnchor];
    v71 = [v34 rightAnchor];
    [v85 constraintEqualToAnchor:v71];
    v72 = v91 = v52;
    v124[8] = v72;
    [v115 bottomAnchor];
    v73 = v90 = v53;
    [v37 bottomAnchor];
    v74 = v55;
    v76 = v75 = v37;
    v77 = [v73 constraintEqualToAnchor:v76];
    v124[9] = v77;
    v78 = [NSArray arrayWithObjects:v124 count:10];
    [NSLayoutConstraint activateConstraints:v78];

    v64 = v115;
    v56 = v89;

    v37 = v75;
    v55 = v74;
    v59 = v88;

    v53 = v90;
    v52 = v91;

    v11 = v120;
    v63 = v111;
  }

  v79 = [UIBarButtonItem alloc];
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_1E0B8;
  v122[3] = &unk_164638;
  v123 = v121;
  v80 = v121;
  v81 = [UIAction actionWithHandler:v122];
  v82 = [v79 initWithBarButtonSystemItem:0 primaryAction:v81];

  v83 = [v80 navigationItem];
  [v83 setRightBarButtonItem:v82];

  v84 = [[UINavigationController alloc] initWithRootViewController:v80];
  [(BatteryHealthUIController *)self presentModalViewController:v84 withTransition:3];
}

- (id)cycleCountGroupSpecifier
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:0];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"CYCLE_COUNT_TITLE");
  }

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"getCycleCount" detail:0 cell:4 edit:0];
  [v6 setIdentifier:@"CYCLE_COUNT_IDENTIFIER"];
  [v4 setAccessibilityIdentifier:@"CYCLE_COUNT_TITLE"];
  [v3 addObject:v4];
  [v3 addObject:v6];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"CYCLE_COUNT_FOOTER"), +[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CYCLE_COUNT_FOOTER"];
    v7 = BatteryUILocalization(v8);
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v9 = BatteryUILocalization(@"CYCLE_COUNT_LEARN_MORE");
  }

  v10 = [NSString stringWithFormat:@"%@ %@", v7, v9];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v4 setProperty:v12 forKey:PSFooterCellClassGroupKey];

  [v4 setProperty:v10 forKey:PSFooterHyperlinkViewTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v13 = BatteryUILocalization(@"CYCLE_COUNT_LEARN_MORE");
  }

  v18.location = [v10 rangeOfString:v13];
  v14 = NSStringFromRange(v18);
  [v4 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v15 = [NSValue valueWithNonretainedObject:self];
  [v4 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

  [v4 setProperty:@"setCycleCountLink" forKey:PSFooterHyperlinkViewActionKey];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111A08();
  }

  return v3;
}

- (void)setCycleCountLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CYCLE_COUNT_LINK");
  }

  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111A3C();
  }

  v4 = [NSURL URLWithString:v3];
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:&stru_164658];
}

- (id)getCycleCount
{
  v3 = [(BatteryHealthUIController *)self batteryCycleCount];

  if (v3)
  {
    v4 = [(BatteryHealthUIController *)self batteryCycleCount];
    v5 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:0];
  }

  else
  {
    v5 = +[BatteryHealthUIController unknownString];
  }

  return v5;
}

- (void)getBatteryInformation
{
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111AAC();
  }

  if (IOPSCopyPowerSourcesByTypePrecise())
  {
    if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
    {
      sub_111AE0();
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = IOPSCopyPowerSourcesList(0);
    v4 = v8;
    if ((!v8 || ![(__CFArray *)v8 count]) && os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
    {
      sub_111B1C();
    }

    v9 = [(__CFArray *)v4 objectAtIndexedSubscript:0];
    v3 = IOPSGetPowerSourceDescription(v4, v9);

    if (!v3 && os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
    {
      sub_111B58();
    }

    v5 = [v3 objectForKeyedSubscript:@"Date of manufacture"];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
      {
        sub_111B94();
      }
    }

    v7 = [v3 objectForKeyedSubscript:@"Cycle count"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
      {
        sub_111BD0();
      }
    }

    v6 = [v3 objectForKeyedSubscript:@"Date of first use"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
      {
        sub_111C0C();
      }
    }
  }

  BHUILog = self->_BHUILog;
  if (os_log_type_enabled(BHUILog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_0, BHUILog, OS_LOG_TYPE_DEBUG, "Cycle Count: %@ First Use: %@ Manufacture: %@", buf, 0x20u);
  }

  [(BatteryHealthUIController *)self setBatteryCycleCount:v7];
  [(BatteryHealthUIController *)self setBatteryDateOfFirstUse:v6];
  [(BatteryHealthUIController *)self setBatteryDateOfManufacture:v5];
}

- (id)batteryInfoGroupSpecifier
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"BATTERY_INFO"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"MANUFACTURE_DATE_TITLE");
  }

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"getDateOfManufacture" detail:0 cell:4 edit:0];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v6 setAccessibilityIdentifier:@"MANUFACTURE_DATE_TITLE"];
  [v6 setIdentifier:@"MANUFACTURE_DATE_IDENTIFIER"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = BatteryUILocalization(@"FIRST_USE_TITLE");
  }

  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"getDateOfFirstUse" detail:0 cell:4 edit:0];

  [v8 setAccessibilityIdentifier:@"FIRST_USE_TITLE"];
  [v8 setIdentifier:@"FIRST_USE_IDENTIFIER"];
  [v3 addObject:v4];
  [v3 addObject:v6];
  [v3 addObject:v8];
  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_111C48();
  }

  return v3;
}

- (id)bhuiDateFormatter
{
  if (qword_187B80 != -1)
  {
    sub_111C7C();
  }

  v3 = qword_187B78;

  return v3;
}

- (id)getDateOfManufacture
{
  v3 = [(BatteryHealthUIController *)self batteryDateOfManufacture];
  v4 = [(BatteryHealthUIController *)self getStringFromDate:v3];

  return v4;
}

- (id)getDateOfFirstUse
{
  v3 = [(BatteryHealthUIController *)self batteryDateOfFirstUse];
  v4 = [(BatteryHealthUIController *)self getStringFromDate:v3];

  return v4;
}

- (id)getStringFromDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BatteryHealthUIController *)self bhuiDateFormatter];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = +[BatteryHealthUIController unknownString];
  }

  return v6;
}

- (id)manualChargingGroupSpecifier
{
  v3 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_111C90();
  }

  if (!+[PLBatteryUIBackendModel supportsChargingFixedLimit])
  {
    v11 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_111CC4();
    }

    goto LABEL_13;
  }

  if (!+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    v11 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_111D04();
    }

LABEL_13:

    v4 = +[NSMutableArray array];
    goto LABEL_14;
  }

  v4 = +[NSMutableArray array];
  v5 = [PSSpecifier groupSpecifierWithID:@"MANUAL_CHARGE_LIMIT_TOGGLE_GROUP_IDENTIFIER"];
  [v4 addObject:v5];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v6 = BatteryUILocalization(@"CHARGING_FIXED_LIMIT");
  }

  v7 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
  v8 = [NSString stringWithFormat:v6, v7];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setManualChargingSwitchState:" get:"getManualChargingSwitchState" detail:0 cell:6 edit:0];
  [v9 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  v10 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v9 setObject:v10 forKeyedSubscript:PSTableCellHeightKey];

  [v9 setAccessibilityIdentifier:v8];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v9 setIdentifier:@"MANUAL_CHARGE_LIMIT_TOGGLE_IDENTIFIER"];
  [v4 addObject:v9];

LABEL_14:

  return v4;
}

- (id)getManualChargingSwitchState
{
  v3 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_111D44();
  }

  v4 = [(BatteryHealthUIController *)self smartChargingClient];
  v26 = 0;
  v5 = [v4 isMCLCurrentlyEnabled:&v26];

  v6 = [(BatteryHealthUIController *)self specifierForID:@"MANUAL_CHARGE_LIMIT_TOGGLE_GROUP_IDENTIFIER"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"FIXED_FOOTER"), +[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"FIXED_FOOTER"];
    v7 = BatteryUILocalization(v8);
  }

  v9 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
  v10 = [NSString stringWithFormat:v7, v9];

  if (v5 == &dword_0 + 3)
  {
    v25 = v9;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v11 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v11 = BatteryUILocalization(@"CHARGING_LIMIT_TEMP_DISABLE_FOOTER");
    }

    v12 = objc_alloc_init(NSDateComponents);
    [v12 setHour:6];
    v13 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
    v14 = [PLBatteryUIUtilities localizedStringForDateComponents:v12];
    v15 = [NSString stringWithFormat:v11, v13, v14];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v16 = BatteryUILocalization(@"LEARN_MORE_LINK");
    }

    v17 = [NSString stringWithFormat:@"%@ %@ %@", v10, v15, v16];

    v10 = v12;
    v9 = v25;
    v5 = (&dword_0 + 3);
  }

  else
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v15 = BatteryUILocalization(@"LEARN_MORE_LINK");
    }

    v17 = [NSString stringWithFormat:@"%@ %@", v10, v15];
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  [v6 setProperty:v19 forKey:PSFooterCellClassGroupKey];

  [v6 setProperty:v17 forKey:PSFooterHyperlinkViewTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v20 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v20 = BatteryUILocalization(@"LEARN_MORE_LINK");
  }

  v27.location = [v17 rangeOfString:v20];
  v21 = NSStringFromRange(v27);
  [v6 setProperty:v21 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v22 = [NSValue valueWithNonretainedObject:self];
  [v6 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];

  [v6 setProperty:@"setLearnMoreLink" forKey:PSFooterHyperlinkViewActionKey];
  if (v5 == &dword_0 + 1)
  {
    v23 = &off_1736D0;
  }

  else
  {
    v23 = &off_1736E8;
  }

  return v23;
}

- (void)setManualChargingSwitchState:(id)a3
{
  v4 = a3;
  v5 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_111D78();
  }

  v6 = [v4 BOOLValue];
  if (v6)
  {
    v7 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_111DAC();
    }

    v8 = [(BatteryHealthUIController *)self smartChargingClient];
    v13 = 0;
    v9 = [v8 enableMCL:&v13];
    v10 = v13;

    v11 = [(BatteryHealthUIController *)self BHUILog];
    v12 = v11;
    if (!v9 || v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_111DE0();
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_111E50();
    }

    [(BatteryHealthUIController *)self reloadSpecifiers];
  }

  else
  {
    [(BatteryHealthUIController *)self showLimitToFullAlert];
  }
}

- (void)showLimitToFullAlert
{
  objc_initWeak(location, self);
  v3 = [NSString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_BODY");
  }

  v5 = [PLBatteryUIUtilities localizedStringWithPercentage:100.0];
  v6 = [v3 initWithFormat:v4, v5];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_TITLE");
  }

  v8 = [UIAlertController alertControllerWithTitle:v7 message:v6 preferredStyle:1];

  v9 = [NSString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v10 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_SET_TO_FULL");
  }

  v11 = [PLBatteryUIUtilities localizedStringWithPercentage:100.0];
  v12 = [v9 initWithFormat:v10, v11];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1FC90;
  v22[3] = &unk_1646C0;
  objc_copyWeak(&v23, location);
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v22];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v14 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_CANCEL");
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1FD64;
  v20[3] = &unk_1646C0;
  objc_copyWeak(&v21, location);
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v20];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v16 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_ALLOW_ONCE");
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1FDE0;
  v18[3] = &unk_1646C0;
  objc_copyWeak(&v19, location);
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v18];

  [v8 addAction:v17];
  [v8 addAction:v13];
  [v8 addAction:v15];
  [v8 setPreferredAction:v17];
  [(BatteryHealthUIController *)self presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

- (void)setLearnMoreLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"LEARN_MORE_URL"), +[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v2 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"LEARN_MORE_URL"];
    v5 = BatteryUILocalization(v2);
  }

  v3 = [NSURL URLWithString:v5];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:&stru_1646E0];
}

- (id)spinnerSpecifierGroup
{
  spinnerGroup = self->_spinnerGroup;
  if (!spinnerGroup)
  {
    v4 = [(BatteryHealthUIController *)self isAuthSpinner];
    v5 = [(BatteryHealthUIController *)self BHUILog];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        sub_111FBC();
      }
    }

    else if (v6)
    {
      sub_111F88();
    }

    v7 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v8 = self->_spinnerGroup;
    self->_spinnerGroup = v7;

    [(PSSpecifier *)self->_spinnerGroup setObject:@"PSHeaderSpinnerCell" forKeyedSubscript:PSHeaderCellClassGroupKey];
    [(PSSpecifier *)self->_spinnerGroup setObject:&__kCFBooleanTrue forKeyedSubscript:@"PSHeaderSpinner_Animate"];
    spinnerGroup = self->_spinnerGroup;
  }

  return spinnerGroup;
}

- (id)startSpinner
{
  if ([(BatteryHealthUIController *)self genuineBatteryStatus]== -1)
  {
    [(BatteryHealthUIController *)self setIsAuthSpinner:1];
  }

  spinnerTimer = self->_spinnerTimer;
  if (!spinnerTimer)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, &_dispatch_main_q);
    v5 = self->_spinnerTimer;
    self->_spinnerTimer = v4;

    dispatch_source_set_timer(self->_spinnerTimer, 0, 0x12A05F200uLL, 0);
    v6 = self->_spinnerTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_20404;
    handler[3] = &unk_163FF8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    spinnerTimer = self->_spinnerTimer;
  }

  dispatch_activate(spinnerTimer);
  v7 = [(BatteryHealthUIController *)self spinnerSpecifierGroup];

  return v7;
}

- (void)clearSpinner
{
  spinnerGroup = self->_spinnerGroup;
  if (spinnerGroup)
  {
    self->_spinnerGroup = 0;

    v4 = [(BatteryHealthUIController *)self isAuthSpinner];
    v5 = [(BatteryHealthUIController *)self BHUILog];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        sub_11208C();
      }
    }

    else if (v6)
    {
      sub_112058();
    }
  }

  spinnerTimer = self->_spinnerTimer;
  if (spinnerTimer)
  {
    dispatch_source_cancel(spinnerTimer);
    v8 = self->_spinnerTimer;
    self->_spinnerTimer = 0;
  }
}

- (void)reloadSpecifiersFromSpinner
{
  if ([(BatteryHealthUIController *)self spinnerCanReloadUI])
  {

    [(BatteryHealthUIController *)self reloadSpecifiers];
  }

  else
  {
    v3 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1120C0();
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BatteryHealthUIController;
  [(BatteryHealthUIController *)&v4 viewDidLoad];
  ADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  notify_post([@"com.apple.powerlogd.logBatteryHealthUIVisit" UTF8String]);
  v3 = mach_absolute_time();
  self->__batteryHealthUILoadEndTime = v3;
  [BatteryUIResourceClass millisecondsFromMachTime:v3];
  [BatteryUIResourceClass millisecondsFromMachTime:self->__batteryHealthUILoadStartTime];
  ADClientSetValueForScalarKey();
  AnalyticsSendEventLazy();
}

- (id)specifiers
{
  self->__batteryHealthUILoadStartTime = mach_absolute_time();
  v3 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1120F4();
  }

  [(BatteryHealthUIController *)self setSpinnerCanReloadUI:1];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    [(BatteryHealthUIController *)self updateData];
    v6 = +[NSMutableArray array];
    if (+[BatteryUIResourceClass batteryDataUnavailable])
    {
      v7 = [(BatteryHealthUIController *)self startSpinner];
      [v6 addObject:v7];
    }

    else
    {
      [(BatteryHealthUIController *)self clearSpinner];
      if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
      {
        v8 = [(BatteryHealthUIController *)self BHUILog];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_11215C();
        }

        v9 = [(BatteryHealthUIController *)self headerSpecifiers];
        [v6 addObjectsFromArray:v9];

        v10 = [(BatteryHealthUIController *)self chargeCapacityGroupSpecifier];
        [v6 addObjectsFromArray:v10];

        v11 = [(BatteryHealthUIController *)self cycleCountGroupSpecifier];
        [v6 addObjectsFromArray:v11];

        v12 = [(BatteryHealthUIController *)self manualChargingGroupSpecifier];
        [v6 addObjectsFromArray:v12];

        v13 = [(BatteryHealthUIController *)self batteryInfoGroupSpecifier];
      }

      else
      {
        v14 = [(BatteryHealthUIController *)self BHUILog];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_112128();
        }

        v15 = [(BatteryHealthUIController *)self headerSpecifiers];
        [v6 addObjectsFromArray:v15];

        v16 = [(BatteryHealthUIController *)self chargeCapacityGroupSpecifier];
        [v6 addObjectsFromArray:v16];

        v13 = [(BatteryHealthUIController *)self peakPowerCapacityGroupSpecifier];
      }

      v7 = v13;
      [v6 addObjectsFromArray:v13];
    }

    if (!+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") && !+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
    {
      v17 = [(BatteryHealthUIController *)self setUpChargingOptionsSpecifiers];
      [v6 addObjectsFromArray:v17];
    }

    if (!+[PLBatteryUIBackendModel shouldShowChargingController])
    {
      v18 = [(BatteryHealthUIController *)self cleanEnergyChargingGroupSpecifier];
      [v6 addObjectsFromArray:v18];
    }

    v19 = *&self->PSListController_opaque[v4];
    *&self->PSListController_opaque[v4] = v6;

    v5 = *&self->PSListController_opaque[v4];
  }

  return v5;
}

- (void)userDidDisable
{
  BHUILog = self->_BHUILog;
  if (os_log_type_enabled(BHUILog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, BHUILog, OS_LOG_TYPE_INFO, "User disabled mitigations", buf, 2u);
  }

  if (notify_post("com.apple.thermalmonitor.ageAwareMitigationsDisabled") && os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_ERROR))
  {
    sub_112190();
  }

  self->_userDisabledPerfManagement = 1;
  v4 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20BD8;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
  [(BatteryHealthUIController *)self reloadSpecifiers];
}

- (void)userDidLeaveOn
{
  BHUILog = self->_BHUILog;
  if (os_log_type_enabled(BHUILog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, BHUILog, OS_LOG_TYPE_INFO, "User left mitigations enabled", v3, 2u);
  }
}

- (id)getChargingMode
{
  v3 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1122A4();
  }

  if (+[PLBatteryUIBackendModel supportsChargingFixedLimit])
  {
    v4 = [(BatteryHealthUIController *)self smartChargingClient];
    v16 = 0;
    v5 = [v4 isMCLCurrentlyEnabled:&v16];
    v6 = v16;

    v7 = [(BatteryHealthUIController *)self smartChargingClient];
    v15 = 0;
    v8 = [v7 isSmartChargingCurrentlyEnabled:&v15];

    v9 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_11230C();
    }

    if (v5)
    {
      v10 = [(BatteryHealthUIController *)self BHUILog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_112388();
      }

      v11 = 1;
    }

    else
    {
      v10 = [(BatteryHealthUIController *)self BHUILog];
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v8 == &dword_0 + 1)
      {
        if (v13)
        {
          sub_1123F0();
        }

        v11 = 0;
      }

      else
      {
        if (v13)
        {
          sub_1123BC();
        }

        v11 = 2;
      }
    }

    v12 = [NSNumber numberWithInt:v11];
  }

  else
  {
    v6 = [(BatteryHealthUIController *)self BHUILog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1122D8();
    }

    v12 = 0;
  }

  return v12;
}

- (id)setChargingMode:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_112424();
  }

  if (+[PLBatteryUIBackendModel supportsChargingFixedLimit])
  {
    if ([v5 intValue])
    {
      if ([v5 intValue] != 1)
      {
LABEL_14:
        v13 = [NSNumber numberWithInt:[(BatteryHealthUIController *)self curChargingMode]];
        goto LABEL_15;
      }

      v7 = [(BatteryHealthUIController *)self smartChargingClient];
      v19 = 0;
      [v7 disableDEoC:&v19];
      v8 = v19;

      v9 = [(BatteryHealthUIController *)self smartChargingClient];
      v18 = v8;
      [v9 enableMCL:&v18];
      v10 = v18;

      [(BatteryHealthUIController *)self setCurChargingMode:1];
      v11 = [(BatteryHealthUIController *)self BHUILog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_112494(self);
      }
    }

    else
    {
      v14 = [(BatteryHealthUIController *)self smartChargingClient];
      v21 = 0;
      [v14 enableSmartCharging:&v21];
      v15 = v21;

      v16 = [(BatteryHealthUIController *)self smartChargingClient];
      v20 = v15;
      [v16 disableMCL:&v20];
      v10 = v20;

      [(BatteryHealthUIController *)self setCurChargingMode:0];
      v11 = [(BatteryHealthUIController *)self BHUILog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_112494(self);
      }
    }

    goto LABEL_14;
  }

  v12 = [(BatteryHealthUIController *)self BHUILog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1122D8();
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)setUpChargingOptionsSpecifiers
{
  v3 = +[PLBatteryUIBackendModel supportsChargingFixedLimit];
  v4 = [(BatteryHealthUIController *)self BHUILog];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      sub_11250C();
    }

    v27 = +[NSMutableArray array];
    v26 = [PSSpecifier groupSpecifierWithID:@"CHARGING_OPTIMIZATION_GROUP_ID"];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"CHARGING_TITLE");
    }

    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setChargingMode:specifier:" get:"getChargingMode" detail:objc_opt_class() cell:2 edit:0];

    [(BatteryHealthUIController *)self setChargingOptionsSpecifier:v7];
    [v7 setIdentifier:@"CHARGING_OPTIONS_IDENTIFIER"];
    v8 = [NSNumber numberWithInt:0];
    v30[0] = v8;
    v9 = [NSNumber numberWithInt:1];
    v30[1] = v9;
    v10 = [NSNumber numberWithInt:2];
    v30[2] = v10;
    v25 = [NSArray arrayWithObjects:v30 count:3];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v11 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v11 = BatteryUILocalization(@"CHARGING_FIXED_LIMIT");
    }

    v12 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
    v13 = [NSString stringWithFormat:v11, v12];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"SC_TITLE");
    }

    v29[0] = v14;
    v29[1] = v13;
    v24 = v13;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v15 = BatteryUILocalization(@"CHARGING_OFF");
    }

    v29[2] = v15;
    v16 = [NSArray arrayWithObjects:v29 count:3];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v17 = BatteryUILocalization(@"SHORT_FIXED");
    }

    v18 = [NSString stringWithFormat:v17, v12];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v19 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v19 = BatteryUILocalization(@"SHORT_OPTIMIZED");
    }

    v28[0] = v19;
    v28[1] = v18;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v20 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v20 = BatteryUILocalization(@"CHARGING_OFF");
    }

    v28[2] = v20;
    v21 = [NSArray arrayWithObjects:v28 count:3];

    [v7 setIdentifier:@"CHARGING_OPTIMIZATION"];
    [v7 setValues:v25 titles:v16 shortTitles:v21];
    v22 = v27;
    [v27 addObject:v26];
    [v27 addObject:v7];
  }

  else
  {
    if (v5)
    {
      sub_1122D8();
    }

    v22 = [(BatteryHealthUIController *)self smartChargingGroupSpecifier];
  }

  return v22;
}

+ (id)getHealthStateString
{
  v2 = +[BatteryUIResourceClass getBatteryHealthServiceState];
  if (v2 - 1 < 6 || v2 == 11)
  {
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"BATTERY_SERVICE";
      goto LABEL_8;
    }

    v4 = @"BATTERY_SERVICE";
  }

  else
  {
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"NORMAL_STATE";
LABEL_8:
      v5 = _CFPreferencesCopyValueWithContainer();
      if (v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = @"NORMAL_STATE";
  }

LABEL_11:
  v5 = BatteryUILocalization(v4);
LABEL_12:

  return v5;
}

- (id)smartChargingGroupSpecifier
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:0];
  [v3 addObject:v4];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"SC_TITLE");
  }

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setSmartChargingSwitchState:" get:"getSmartChargingSwitchState" detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"OBC_TOGGLE_IDENTIFIER"];
  [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  v7 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v6 setObject:v7 forKeyedSubscript:PSTableCellHeightKey];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"SC_FOOTER_TEXT");
  }

  v9 = [NSNumberFormatter localizedStringFromNumber:&off_174D50 numberStyle:3];
  v10 = [NSString stringWithFormat:v8, v9];

  if ([(BatteryHealthUIController *)self smartChargingState]== &dword_0 + 3)
  {
    v23 = v3;
    v11 = +[NSCalendar currentCalendar];
    v12 = objc_alloc_init(NSDateFormatter);
    v13 = +[NSLocale currentLocale];
    [v12 setLocale:v13];

    if (+[PLBatteryUIUtilities is24HourClock])
    {
      v14 = @"H:mm";
    }

    else
    {
      v14 = @"h:mm a";
    }

    [v12 setLocalizedDateFormatFromTemplate:v14];
    v15 = objc_alloc_init(NSDateComponents);
    [v15 setHour:6];
    v22 = v11;
    v16 = [v11 dateFromComponents:v15];
    v17 = [v12 stringFromDate:v16];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(@"SC_FOOTER_TEXT_TEMP_DISABLE_ADDITION");
    }

    v19 = [NSString stringWithFormat:v18, v17];

    v20 = [NSString stringWithFormat:@"%@ %@", v10, v19];

    v10 = v20;
    v3 = v23;
  }

  [v4 setProperty:v10 forKey:PSFooterTextGroupKey];
  [v3 addObject:v6];

  return v3;
}

- (id)getSmartChargingSwitchState
{
  if ([(BatteryHealthUIController *)self smartChargingState]== &dword_0 + 1)
  {
    return &off_1736D0;
  }

  else
  {
    return &off_1736E8;
  }
}

- (void)setSmartChargingSwitchState:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(BatteryHealthUIController *)self BHUILog];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User enabled smart charging", buf, 2u);
    }

    v7 = [(BatteryHealthUIController *)self smartChargingClient];
    v36 = 0;
    v8 = [v7 enableSmartCharging:&v36];
    v9 = v36;

    v10 = [(BatteryHealthUIController *)self BHUILog];
    v11 = v10;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10FE80();
      }

      ADClientAddValueForScalarKey();
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Smart charging enabled", buf, 2u);
      }

      ADClientAddValueForScalarKey();
      ADClientSetValueForScalarKey();
    }

    AnalyticsSendEventLazy();
    [(BatteryHealthUIController *)self reloadSpecifiers];
  }

  else
  {
    v12 = [(BatteryHealthUIController *)self smartChargingClient];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v13 = BatteryUILocalization(@"SC_ALERT_TITLE");
    }

    v9 = [UIAlertController alertControllerWithTitle:v13 message:0 preferredStyle:1];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"SC_ALERT_DISABLE");
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_223BC;
    v32[3] = &unk_164298;
    v15 = v6;
    v33 = v15;
    v16 = v12;
    v34 = v16;
    v35 = self;
    v17 = [UIAlertAction actionWithTitle:v14 style:0 handler:v32];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(@"SC_ALERT_LEAVE_ON");
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_22538;
    v29[3] = &unk_164190;
    v19 = v15;
    v30 = v19;
    v31 = self;
    v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v29];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v21 = BatteryUILocalization(@"SC_ALERT_TEMP_DISABLE");
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_225D4;
    v25[3] = &unk_164298;
    v26 = v19;
    v27 = v16;
    v28 = self;
    v22 = v16;
    v23 = v19;
    v24 = [UIAlertAction actionWithTitle:v21 style:0 handler:v25];

    [v9 addAction:v24];
    [v9 addAction:v17];
    [v9 addAction:v20];
    [v9 setPreferredAction:v24];
    [(BatteryHealthUIController *)self setSpinnerCanReloadUI:0];
    [(BatteryHealthUIController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (id)cleanEnergyChargingGroupSpecifier
{
  v3 = +[PLBatteryUIBackendModel shouldShowModifiedHealthController];
  v4 = +[NSMutableArray array];
  if ((v3 & 1) == 0)
  {
    v5 = [(BatteryHealthUIController *)self smartChargingClient];
    if ([v5 isCECSupported])
    {
      v6 = [PSSpecifier groupSpecifierWithID:0];
      [v4 addObject:v6];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v7 = BatteryUILocalization(@"CLEAN_ENERGY_TITLE");
      }

      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setCleanChargingSwitchState:" get:"getCleanChargingSwitchState" detail:0 cell:6 edit:0];

      [v8 setIdentifier:@"CEC_TOGGLE_IDENTIFIER"];
      [v8 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v9 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v8 setObject:v9 forKeyedSubscript:PSTableCellHeightKey];

      [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v10 = BatteryUILocalization(@"CLEAN_ENERGY_FOOTER");
      }

      v11 = [(BatteryHealthUIController *)self cleanChargingState];
      v12 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
      if (v11 == 3)
      {
        v33 = v5;
        v13 = +[NSCalendar currentCalendar];
        v14 = objc_alloc_init(NSDateFormatter);
        v15 = +[NSLocale currentLocale];
        [v14 setLocale:v15];

        if (+[PLBatteryUIUtilities is24HourClock])
        {
          v16 = @"H:mm";
        }

        else
        {
          v16 = @"h:mm a";
        }

        [v14 setLocalizedDateFormatFromTemplate:v16];
        v17 = objc_alloc_init(NSDateComponents);
        [v17 setHour:6];
        v32 = v13;
        v31 = [v13 dateFromComponents:v17];
        v18 = [v14 stringFromDate:?];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v19 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v19 = BatteryUILocalization(@"CEC_FOOTER_TEXT_TEMP_DISABLE_ADDITION");
        }

        v20 = [NSString stringWithFormat:v19, v18];

        v21 = [NSString stringWithFormat:@"%@ %@", v10, v20];

        v10 = v21;
        v12 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
        v5 = v33;
      }

      v22 = v12[459];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v23 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v23 = BatteryUILocalization(@"CEC_LINK");
      }

      v24 = [v22 stringWithFormat:@"%@ %@", v10, v23];

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v6 setProperty:v26 forKey:PSFooterCellClassGroupKey];

      [v6 setProperty:v24 forKey:PSFooterHyperlinkViewTitleKey];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v27 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v27 = BatteryUILocalization(@"CEC_LINK");
      }

      v35.location = [v24 rangeOfString:v27];
      v28 = NSStringFromRange(v35);
      [v6 setProperty:v28 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v29 = [NSValue valueWithNonretainedObject:self];
      [v6 setProperty:v29 forKey:PSFooterHyperlinkViewTargetKey];

      [v6 setProperty:@"setAboutCleanEnergyChargingLink" forKey:PSFooterHyperlinkViewActionKey];
      [v4 addObject:v8];
    }

    else if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
    {
      sub_112540();
    }
  }

  return v4;
}

- (void)setAboutCleanEnergyChargingLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CEC_URL");
  }

  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_112574();
  }

  v4 = [NSURL URLWithString:v3];
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:&stru_164860];
}

- (id)getCleanChargingSwitchState
{
  if ([(BatteryHealthUIController *)self cleanChargingState]== &dword_0 + 1)
  {
    return &off_1736D0;
  }

  else
  {
    return &off_1736E8;
  }
}

- (void)setCleanChargingSwitchState:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(BatteryHealthUIController *)self BHUILog];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User enabled clean energy charging", buf, 2u);
    }

    v7 = [(BatteryHealthUIController *)self smartChargingClient];
    v36 = 0;
    v8 = [v7 enableCEC:&v36];
    v9 = v36;

    v10 = [(BatteryHealthUIController *)self BHUILog];
    v11 = v10;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1125E4();
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Clean energy charging enabled", buf, 2u);
    }

    [(BatteryHealthUIController *)self reloadSpecifiers];
  }

  else
  {
    v12 = [(BatteryHealthUIController *)self smartChargingClient];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v13 = BatteryUILocalization(@"CEC_ALERT_TITLE");
    }

    v9 = [UIAlertController alertControllerWithTitle:v13 message:0 preferredStyle:1];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"CEC_ALERT_DISABLE");
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_233E4;
    v32[3] = &unk_164298;
    v15 = v6;
    v33 = v15;
    v16 = v12;
    v34 = v16;
    v35 = self;
    v17 = [UIAlertAction actionWithTitle:v14 style:0 handler:v32];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(@"CEC_ALERT_LEAVE_ON");
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_234F8;
    v29[3] = &unk_164190;
    v19 = v15;
    v30 = v19;
    v31 = self;
    v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v29];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v21 = BatteryUILocalization(@"CEC_ALERT_TEMP_DISABLE");
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_23564;
    v25[3] = &unk_164298;
    v26 = v19;
    v27 = v16;
    v28 = self;
    v22 = v16;
    v23 = v19;
    v24 = [UIAlertAction actionWithTitle:v21 style:0 handler:v25];

    [v9 addAction:v24];
    [v9 addAction:v17];
    [v9 addAction:v20];
    [v9 setPreferredAction:v24];
    [(BatteryHealthUIController *)self setSpinnerCanReloadUI:0];
    [(BatteryHealthUIController *)self presentViewController:v9 animated:1 completion:0];
  }
}

@end