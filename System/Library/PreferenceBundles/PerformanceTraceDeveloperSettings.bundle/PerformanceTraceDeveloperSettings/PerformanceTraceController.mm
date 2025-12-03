@interface PerformanceTraceController
- (NSArray)supportedTracePlanNames;
- (PerformanceTraceController)init;
- (id)_appIsMonitoredGetter:(id)getter;
- (id)_appListSpecifiers;
- (id)_customTracePlanArgsGroupSpecifiers;
- (id)_groupSpecifiersForInstrumentationConfigID:(id)d;
- (id)_highFrequencyMSSValue:(id *)value;
- (id)_internalPowerProfilerSpecifiers;
- (id)_lookbackIntervalGroupSpecifiers;
- (id)_passiveTraceGroupSpecifiers;
- (id)_passiveTraceInstrumentationGroupSpecifiers;
- (id)_performanceTraceGroupSpecifiers;
- (id)_traceFileListSpecifiers;
- (id)_updateMSS:(id)s;
- (id)getCustomTracePlanArgumentsText:(id)text;
- (id)instrumentationConfigGetter:(id)getter;
- (id)isAnyAppMonitoringEnabled;
- (id)isPerformanceTraceEnabled;
- (id)labelForInstrumentationConfigID:(id)d;
- (id)lookbackIntervalGetter:(id)getter;
- (id)specifiers;
- (id)specifiersForEnabledState;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)_appIsMonitoredSetter:(id)setter specifier:(id)specifier;
- (void)_presentRebootAlertForStateTransitionTo:(BOOL)to withCallback:(id)callback onCancel:(id)cancel;
- (void)_refreshAppList;
- (void)_setEnablement:(id)enablement;
- (void)_setUserSelectedTracePlanName:(id)name;
- (void)_shareLog:(id)log;
- (void)_updateCollectionDurationFooter;
- (void)_updateLocked;
- (void)forceReloadSpecifiers;
- (void)instrumentationConfigSetter:(id)setter specifier:(id)specifier;
- (void)lookbackIntervalSetter:(id)setter specifier:(id)specifier;
- (void)reloadSpecifiers;
- (void)setAnyAppMonitoringEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setCustomTracePlanArgumentsFromText:(id)text specifier:(id)specifier;
- (void)setPerformanceTraceEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidLoad;
- (void)willBecomeActive;
@end

@implementation PerformanceTraceController

- (void)_updateLocked
{
  self->_isLocked = +[PTTraceConfig globalSettingsAreLocked];
  v3 = sub_19B4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isLocked = [(PerformanceTraceController *)self isLocked];
    v5 = @"Not locked";
    if (isLocked)
    {
      v5 = @"Locked";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Locked state: %@", &v6, 0xCu);
  }
}

- (PerformanceTraceController)init
{
  v21.receiver = self;
  v21.super_class = PerformanceTraceController;
  v2 = [(PerformanceTraceController *)&v21 init];
  if (!v2)
  {
LABEL_9:
    v7 = v2;
    goto LABEL_10;
  }

  v20 = 0;
  v3 = [PTPassiveTraceConfig sharedConfig:&v20];
  v4 = v20;
  if (!v4)
  {
    [(PerformanceTraceController *)v2 setPassiveTraceConfig:v3];

    v8 = objc_alloc_init(HTDeveloperAppsFinder);
    appsFinder = v2->_appsFinder;
    v2->_appsFinder = v8;

    if (sub_1C30())
    {
      appsFinder = [(PerformanceTraceController *)v2 appsFinder];
      [appsFinder setDoNotFilter:1];
    }

    appsFinder2 = [(PerformanceTraceController *)v2 appsFinder];
    [appsFinder2 setDelegate:v2];

    cachedDeveloperAppsSpecifiers = v2->_cachedDeveloperAppsSpecifiers;
    v2->_cachedDeveloperAppsSpecifiers = &__NSArray0__struct;

    [(PerformanceTraceController *)v2 _refreshAppList];
    [(PerformanceTraceController *)v2 _updateLocked];
    v13 = [PTGlobalStateChangeMonitor alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1DA4;
    v18[3] = &unk_C508;
    v14 = v2;
    v19 = v14;
    v15 = [v13 initWithQueue:&_dispatch_main_q stateChangeBlock:v18];
    stateChangeMonitor = v14->_stateChangeMonitor;
    v14->_stateChangeMonitor = v15;

    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_1BEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_6BB0();
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (NSArray)supportedTracePlanNames
{
  supportedTracePlanNames = self->_supportedTracePlanNames;
  if (!supportedTracePlanNames)
  {
    v4 = +[PTTraceConfig availableTracePlanNames];
    v5 = self->_supportedTracePlanNames;
    self->_supportedTracePlanNames = v4;

    supportedTracePlanNames = self->_supportedTracePlanNames;
  }

  return supportedTracePlanNames;
}

- (void)willBecomeActive
{
  [(PerformanceTraceController *)self forceReloadSpecifiers];
  v3.receiver = self;
  v3.super_class = PerformanceTraceController;
  [(PerformanceTraceController *)&v3 willBecomeActive];
}

- (id)isPerformanceTraceEnabled
{
  v2 = +[PTTraceConfig isControlCenterModuleAvailable];

  return [NSNumber numberWithBool:v2];
}

- (void)setPerformanceTraceEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FD4;
  v7[3] = &unk_C528;
  v8 = bOOLValue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1FE8;
  v6[3] = &unk_C508;
  v6[4] = self;
  [(PerformanceTraceController *)self _presentRebootAlertForStateTransitionTo:bOOLValue withCallback:v7 onCancel:v6];
}

- (void)_presentRebootAlertForStateTransitionTo:(BOOL)to withCallback:(id)callback onCancel:(id)cancel
{
  toCopy = to;
  callbackCopy = callback;
  cancelCopy = cancel;
  if (toCopy)
  {
    v10 = @"Enabling Performance Trace requires a restart of your device.";
  }

  else
  {
    v10 = @"Disabling Performance Trace requires a restart of your device.";
  }

  v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_21B0;
  v21[3] = &unk_C550;
  v22 = callbackCopy;
  v12 = callbackCopy;
  v13 = [UIAlertAction actionWithTitle:@"Restart" style:2 handler:v21];
  [v11 addAction:v13];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_224C;
  v19 = &unk_C550;
  v20 = cancelCopy;
  v14 = cancelCopy;
  v15 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&v16];
  [v11 addAction:{v15, v16, v17, v18, v19}];

  [(PerformanceTraceController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_setUserSelectedTracePlanName:(id)name
{
  nameCopy = name;
  identifier = [nameCopy identifier];
  performanceTracePlansGroupSpecifier = [(PerformanceTraceController *)self performanceTracePlansGroupSpecifier];
  v7 = PSRadioGroupCheckedSpecifierKey;
  v8 = [performanceTracePlansGroupSpecifier objectForKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
  v9 = [nameCopy isEqualToSpecifier:v8];

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = identifier;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Selected trace plan name didn't change (%{public}@)", &v13, 0xCu);
    }
  }

  else if (identifier && (-[PerformanceTraceController supportedTracePlanNames](self, "supportedTracePlanNames"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:identifier], v10, (v11 & 1) != 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = identifier;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User selected trace plan named %{public}@", &v13, 0xCu);
    }

    [PTTraceConfig setUserSelectedTracePlanName:identifier];
    -[PerformanceTraceController setIsCustomTracePlanSelected:](self, "setIsCustomTracePlanSelected:", [identifier isEqualToString:kPTTracePlanNameCustom]);
    -[PerformanceTraceController setIsPassiveTracePlanSelected:](self, "setIsPassiveTracePlanSelected:", [identifier isEqualToString:kPTPassiveTracePlanNamePassive]);
    -[PerformanceTraceController setIsPowerProfilerPlanSelected:](self, "setIsPowerProfilerPlanSelected:", [identifier isEqualToString:kPTPassiveTracePlanNameLightweightPowerMetrics]);
    performanceTracePlansGroupSpecifier2 = [(PerformanceTraceController *)self performanceTracePlansGroupSpecifier];
    [performanceTracePlansGroupSpecifier2 setObject:nameCopy forKeyedSubscript:v7];

    [(PerformanceTraceController *)self forceReloadSpecifiers];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_6C2C();
  }
}

- (id)getCustomTracePlanArgumentsText:(id)text
{
  v3 = +[PTTraceConfig userSpecifiedCustomTracePlanArguments];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

- (void)setCustomTracePlanArgumentsFromText:(id)text specifier:(id)specifier
{
  textCopy = text;
  specifierCopy = specifier;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = textCopy;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "User entered custom trace plan arguments: %{public}@", &v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [textCopy componentsSeparatedByString:@" "];
    [PTTraceConfig setUserSpecifiedCustomTracePlanArguments:v8];
  }

  [(PerformanceTraceController *)self reloadSpecifier:specifierCopy];
}

- (void)_setEnablement:(id)enablement
{
  enablementCopy = enablement;
  if ([(PerformanceTraceController *)self isLocked])
  {
    v4 = &__kCFBooleanFalse;
  }

  else
  {
    v4 = &__kCFBooleanTrue;
  }

  [enablementCopy setObject:v4 forKeyedSubscript:PSEnabledKey];
}

- (id)_performanceTraceGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithName:@"Tracing Mode"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
  [v4 setObject:@"The selected mode will be used when a trace is gathered using the Performance Trace control in Control Center. This selection can also be changed in the options for the Performance Trace control (touch and hold)." forKeyedSubscript:PSFooterTextGroupKey];
  [v3 addObject:v4];
  v15 = v4;
  [(PerformanceTraceController *)self setPerformanceTracePlansGroupSpecifier:v4];
  v5 = +[PTTraceConfig userSelectedTracePlanName];
  -[PerformanceTraceController setIsCustomTracePlanSelected:](self, "setIsCustomTracePlanSelected:", [v5 isEqualToString:kPTTracePlanNameCustom]);
  -[PerformanceTraceController setIsPassiveTracePlanSelected:](self, "setIsPassiveTracePlanSelected:", [v5 isEqualToString:kPTPassiveTracePlanNamePassive]);
  -[PerformanceTraceController setIsPowerProfilerPlanSelected:](self, "setIsPowerProfilerPlanSelected:", [v5 isEqualToString:kPTPassiveTracePlanNameLightweightPowerMetrics]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(PerformanceTraceController *)self supportedTracePlanNames];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v14 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [PTTraceConfig displayNameForTracePlanName:v10];
        v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

        [v12 setIdentifier:v10];
        [v12 setButtonAction:"_setUserSelectedTracePlanName:"];
        [v3 addObject:v12];
        if ([v10 isEqualToString:v5])
        {
          [v15 setObject:v12 forKeyedSubscript:v14];
        }

        [(PerformanceTraceController *)self _setEnablement:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_customTracePlanArgsGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(PerformanceTraceController *)self isCustomTracePlanSelected])
  {
    v4 = [PSSpecifier groupSpecifierWithName:@"Custom Trace Plan Arguments"];
    [v3 addObject:v4];
    v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setCustomTracePlanArgumentsFromText:specifier:" get:"getCustomTracePlanArgumentsText:" detail:0 cell:8 edit:0];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSEditableTableCellTextFieldShouldPopOnReturn];
    [v5 setKeyboardType:12 autoCaps:0 autoCorrection:1];
    [(PerformanceTraceController *)self _setEnablement:v5];
    [v3 addObject:v5];
  }

  return v3;
}

- (id)_passiveTraceGroupSpecifiers
{
  if ([(PerformanceTraceController *)self isPassiveTracePlanSelected])
  {
    _passiveTraceInstrumentationGroupSpecifiers = [(PerformanceTraceController *)self _passiveTraceInstrumentationGroupSpecifiers];
  }

  else if ([(PerformanceTraceController *)self isPowerProfilerPlanSelected])
  {
    _passiveTraceInstrumentationGroupSpecifiers = [(PerformanceTraceController *)self _appListSpecifiers];
  }

  else
  {
    _passiveTraceInstrumentationGroupSpecifiers = &__NSArray0__struct;
  }

  return _passiveTraceInstrumentationGroupSpecifiers;
}

- (id)_traceFileListSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithName:@"Available Trace Files"];
  [v4 setObject:@"Use share button to transfer individual trace files to cloud storage or to other devices.\n\nSwipe to manually delete trace files.\n\nYour device will automatically delete trace files when device storage is running low." forKeyedSubscript:PSFooterTextGroupKey];
  [v3 addObject:v4];

  v25 = 0;
  v5 = PTDefaultTraceDirectoryAvailableTraceFileURLs();
  v6 = 0;
  if (v6)
  {
    v7 = @"Unable to access trace files";
LABEL_3:
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
    [v3 addObject:v8];
    goto LABEL_4;
  }

  if (![v5 count])
  {
    v7 = @"No Trace Files";
    goto LABEL_3;
  }

  v8 = [v5 sortedArrayUsingComparator:&stru_C590];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v20 = v5;
    v13 = *v22;
    v14 = PSCellClassKey;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        lastPathComponent = [v16 lastPathComponent];
        v18 = [PSSpecifier preferenceSpecifierNamed:lastPathComponent target:self set:0 get:0 detail:0 cell:4 edit:0];

        path = [v16 path];
        [v18 setObject:path forKeyedSubscript:kPTFileKeyPath];

        [v18 setObject:objc_opt_class() forKeyedSubscript:v14];
        [v3 addObject:v18];
      }

      v12 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
    v6 = 0;
    v5 = v20;
  }

LABEL_4:
  v9 = v3;

  return v3;
}

- (void)_shareLog:(id)log
{
  v4 = [log propertyForKey:kPTFileKeyPath];
  if ([v4 length])
  {
    v5 = [NSURL fileURLWithPath:v4 isDirectory:0];
    v6 = [UIActivityViewController alloc];
    v14 = v5;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

    v13[0] = UIActivityTypeAssignToContact;
    v13[1] = UIActivityTypeOpenInIBooks;
    v13[2] = UIActivityTypeAddToReadingList;
    v13[3] = UIActivityTypeSaveToCameraRoll;
    v13[4] = UIActivityTypePrint;
    v13[5] = @"com.apple.mobilenotes.SharingExtension";
    v13[6] = @"com.apple.reminders.RemindersEditorExtension";
    v9 = [NSArray arrayWithObjects:v13 count:7];
    [v8 setExcludedActivityTypes:v9];

    navigationItem = [(PerformanceTraceController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];

    [(PerformanceTraceController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)forceReloadSpecifiers
{
  [(PerformanceTraceController *)self setCachedSpecifiersForEnabledState:0];
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier];
  *&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] = 0;

  [(PerformanceTraceController *)self _updateLocked];

  [(PerformanceTraceController *)self reloadSpecifiers];
}

- (id)_internalPowerProfilerSpecifiers
{
  if (HTDeveloperSettingsIsInternalBuild())
  {
    v3 = [PSSpecifier groupSpecifierWithID:@"INTERNAL_SETTINGS" name:@"Internal Settings"];
    v4 = [PSSpecifier preferenceSpecifierNamed:@"Enable Any App Power Monitoring" target:self set:"setAnyAppMonitoringEnabled:forSpecifier:" get:"isAnyAppMonitoringEnabled" detail:0 cell:6 edit:0];
    v7[0] = v3;
    v7[1] = v4;
    v5 = [NSArray arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)specifiersForEnabledState
{
  cachedSpecifiersForEnabledState = [(PerformanceTraceController *)self cachedSpecifiersForEnabledState];

  if (!cachedSpecifiersForEnabledState)
  {
    v4 = objc_alloc_init(NSMutableArray);
    _performanceTraceGroupSpecifiers = [(PerformanceTraceController *)self _performanceTraceGroupSpecifiers];
    [v4 addObjectsFromArray:_performanceTraceGroupSpecifiers];

    _customTracePlanArgsGroupSpecifiers = [(PerformanceTraceController *)self _customTracePlanArgsGroupSpecifiers];
    [v4 addObjectsFromArray:_customTracePlanArgsGroupSpecifiers];

    _passiveTraceGroupSpecifiers = [(PerformanceTraceController *)self _passiveTraceGroupSpecifiers];
    [v4 addObjectsFromArray:_passiveTraceGroupSpecifiers];

    _traceFileListSpecifiers = [(PerformanceTraceController *)self _traceFileListSpecifiers];
    [v4 addObjectsFromArray:_traceFileListSpecifiers];

    [(PerformanceTraceController *)self setCachedSpecifiersForEnabledState:v4];
  }

  return [(PerformanceTraceController *)self cachedSpecifiersForEnabledState];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v6 setTarget:self];
    [v5 addObject:v6];
    v7 = [PSSpecifier preferenceSpecifierNamed:@"Enable Performance Trace" target:self set:"setPerformanceTraceEnabled:forSpecifier:" get:"isPerformanceTraceEnabled" detail:0 cell:6 edit:0];
    [v7 setIdentifier:@"PERFORMANCE_TRACE_ENABLED"];
    [v5 addObject:v7];
    if ([(PerformanceTraceController *)self isLocked])
    {
      v8 = @"Settings cannot be changed while trace recording is in progress.";
    }

    else
    {
      v8 = @"Enabling or disabling Performance Trace requires a device restart.";
    }

    [v6 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];
    isPerformanceTraceEnabled = [(PerformanceTraceController *)self isPerformanceTraceEnabled];
    bOOLValue = [isPerformanceTraceEnabled BOOLValue];

    if (bOOLValue)
    {
      specifiersForEnabledState = [(PerformanceTraceController *)self specifiersForEnabledState];
      [v5 addObjectsFromArray:specifiersForEnabledState];
    }

    [(PerformanceTraceController *)self _setEnablement:v7];
    v12 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)labelForInstrumentationConfigID:(id)d
{
  dCopy = d;
  if ([@"mss" isEqualToString:dCopy])
  {
    dCopy = @"Increased CPU Sampling Rate";
  }

  else if ([@"logging-metal-frame-pacing" isEqualToString:dCopy])
  {
    dCopy = @"Per-Frame Metal Metrics";
  }

  else
  {
    dCopy = [NSString stringWithFormat:@"UNKNOWN (%@)", dCopy];
  }

  return dCopy;
}

- (id)_updateMSS:(id)s
{
  sCopy = s;
  v5 = sub_1BEC();
  passiveTraceConfig = v5;
  if (!sCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_6D48(passiveTraceConfig, v12, v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_6C9C();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    passiveTraceConfig = sub_1BEC();
    if (os_log_type_enabled(passiveTraceConfig, OS_LOG_TYPE_ERROR))
    {
      sub_6D10(passiveTraceConfig, v19, v20, v21, v22, v23, v24, v25);
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  bOOLValue = [sCopy BOOLValue];
  if (bOOLValue)
  {
    v8 = &off_CF88;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1BEC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Default";
    v27 = 138543874;
    if (bOOLValue)
    {
      v10 = @"High";
    }

    v28 = v10;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = sCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating MSS interval to: %{public}@ (new raw value: %{public}@, value: %{public}@)", &v27, 0x20u);
  }

  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v11 = [passiveTraceConfig updateMSSPMICycleInterval:v8];
LABEL_18:

  return v11;
}

- (void)instrumentationConfigSetter:(id)setter specifier:(id)specifier
{
  setterCopy = setter;
  identifier = [specifier identifier];
  if ([@"mss" isEqualToString:identifier])
  {
    v8 = [(PerformanceTraceController *)self _updateMSS:setterCopy];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (![@"logging-metal-frame-pacing" isEqualToString:identifier])
    {
      v11 = sub_1BEC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_6D80();
      }

      goto LABEL_12;
    }

    passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
    v8 = [passiveTraceConfig updateMetalPerDrawableSignpostsEnabled:setterCopy];

    if (!v8)
    {
LABEL_12:
      v8 = sub_1BEC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = setterCopy;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Update value: %{public}@", &v12, 0xCu);
      }

      goto LABEL_14;
    }
  }

  v10 = sub_1BEC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_6DE8();
  }

LABEL_14:
  [(PerformanceTraceController *)self reloadSpecifiers];
}

- (id)_highFrequencyMSSValue:(id *)value
{
  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v5 = [passiveTraceConfig fetchMSSPMICycleInterval:value];

  if (v5)
  {
    if ([v5 unsignedLongLongValue] >= 0x5F5E101)
    {
      v6 = &__kCFBooleanFalse;
    }

    else
    {
      v6 = &__kCFBooleanTrue;
    }
  }

  else
  {
    v7 = sub_1BEC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_6E50(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (id)instrumentationConfigGetter:(id)getter
{
  identifier = [getter identifier];
  if ([@"mss" isEqualToString:identifier])
  {
    v12 = 0;
    v5 = [(PerformanceTraceController *)self _highFrequencyMSSValue:&v12];
    v6 = v12;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (![@"logging-metal-frame-pacing" isEqualToString:identifier])
    {
      v9 = sub_1BEC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_6D80();
      }

      v5 = 0;
      goto LABEL_11;
    }

    passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
    v11 = 0;
    v5 = [passiveTraceConfig fetchMetalPerDrawableSignpostsEnabled:&v11];
    v6 = v11;

    if (!v6)
    {
LABEL_11:
      v8 = sub_1BEC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Fetched: %{public}@", buf, 0xCu);
      }

      v6 = 0;
      goto LABEL_14;
    }
  }

  v8 = sub_1BEC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_6E88();
  }

LABEL_14:

  return v5;
}

- (id)lookbackIntervalGetter:(id)getter
{
  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v10 = 0;
  v4 = [passiveTraceConfig fetchCollectLookbackInterval:&v10];
  v5 = v10;

  if (v5)
  {
    v6 = sub_1BEC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_6E88();
    }
  }

  [v4 doubleValue];
  v8 = [NSNumber numberWithDouble:v7 / 3600.0];

  return v8;
}

- (void)lookbackIntervalSetter:(id)setter specifier:(id)specifier
{
  setterCopy = setter;
  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v7 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [setterCopy integerValue] * 3600.0);
  v8 = [passiveTraceConfig updateCollectLookbackInterval:v7];

  v9 = sub_1BEC();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_6DE8();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_6EF0();
  }

  [(PerformanceTraceController *)self _updateCollectionDurationFooter];
  [(PerformanceTraceController *)self reloadSpecifierID:@"lookback-interval-group"];
}

- (id)_groupSpecifiersForInstrumentationConfigID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(PerformanceTraceController *)self labelForInstrumentationConfigID:dCopy];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"instrumentationConfigSetter:specifier:" get:"instrumentationConfigGetter:" detail:0 cell:6 edit:0];
  [v7 setIdentifier:dCopy];

  [(PerformanceTraceController *)self _setEnablement:v7];
  [v5 addObject:v7];

  return v5;
}

- (void)_updateCollectionDurationFooter
{
  v3 = [(PerformanceTraceController *)self lookbackIntervalGetter:0];
  v4 = v3;
  v5 = &off_D000;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  [v6 doubleValue];
  v8 = v7;

  if (v8 == 1.0)
  {
    v9 = &stru_CCB0;
  }

  else
  {
    v9 = @"s";
  }

  v12 = [(PerformanceTraceController *)self lookbackIntervalGetter:0];
  v10 = [NSString stringWithFormat:@"The last %@ hour%@ of available data will be collected.", v12, v9];
  sliderGroupSpecifier = [(PerformanceTraceController *)self sliderGroupSpecifier];
  [sliderGroupSpecifier setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];
}

- (id)_lookbackIntervalGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSString stringWithFormat:@"Lookback Duration (Hours)"];
  v5 = [PSSpecifier groupSpecifierWithID:@"lookback-interval-group" name:v4];

  [v3 addObject:v5];
  sliderGroupSpecifier = self->_sliderGroupSpecifier;
  self->_sliderGroupSpecifier = v5;
  v7 = v5;

  v8 = [PSSpecifier preferenceSpecifierNamed:@"lookback-interval" target:self set:"lookbackIntervalSetter:specifier:" get:"lookbackIntervalGetter:" detail:0 cell:5 edit:0];

  v9 = [(PerformanceTraceController *)self lookbackIntervalGetter:0];
  [v8 setObject:v9 forKeyedSubscript:PSDefaultValueKey];

  [v8 setObject:&off_CFA0 forKeyedSubscript:PSControlMinimumKey];
  [v8 setObject:&off_CFB8 forKeyedSubscript:PSControlMaximumKey];
  [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:PSSliderIsContinuous];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSSliderIsSegmented];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSSliderSnapsToSegment];
  [v8 setObject:&off_CFD0 forKeyedSubscript:PSSliderSegmentCount];
  [v3 addObject:v8];
  [(PerformanceTraceController *)self _updateCollectionDurationFooter];

  return v3;
}

- (id)_passiveTraceInstrumentationGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithName:@"Always-On Data Configuration"];
  [v4 setObject:@"Changes to Metal Metrics settings will not take effect for open apps until they are quit and reopened." forKeyedSubscript:PSFooterTextGroupKey];
  [v3 addObject:v4];
  v18[0] = @"mss";
  v18[1] = @"logging-metal-frame-pacing";
  [NSArray arrayWithObjects:v18 count:2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(PerformanceTraceController *)self _groupSpecifiersForInstrumentationConfigID:*(*(&v13 + 1) + 8 * i), v13];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  _lookbackIntervalGroupSpecifiers = [(PerformanceTraceController *)self _lookbackIntervalGroupSpecifiers];
  [v3 addObjectsFromArray:_lookbackIntervalGroupSpecifiers];

  return v3;
}

- (void)setAnyAppMonitoringEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  if (HTDeveloperSettingsIsInternalBuild())
  {
    v7 = sub_5878();
    v8 = [NSNumber numberWithBool:bOOLValue];
    [v7 setObject:v8 forKey:@"MonitorAnyApp"];

    v9 = sub_58BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"disabled";
      if (bOOLValue)
      {
        v10 = @"enabled";
      }

      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MonitorAnyApp set to %{public}@", &v13, 0xCu);
    }
  }

  bOOLValue2 = [enabledCopy BOOLValue];
  appsFinder = [(PerformanceTraceController *)self appsFinder];
  [appsFinder setDoNotFilter:bOOLValue2];

  [(PerformanceTraceController *)self forceReloadSpecifiers];
}

- (id)isAnyAppMonitoringEnabled
{
  v2 = sub_1C30();

  return [NSNumber numberWithBool:v2];
}

- (id)_appListSpecifiers
{
  v3 = +[NSMutableArray array];
  _internalPowerProfilerSpecifiers = [(PerformanceTraceController *)self _internalPowerProfilerSpecifiers];
  [v3 addObjectsFromArray:_internalPowerProfilerSpecifiers];

  v5 = [PSSpecifier groupSpecifierWithID:@"MONITORABLE_APPS" name:@"Monitored apps"];
  if (sub_1C30())
  {
    v6 = @"INTERNAL ONLY: Any installed app can be monitored.";
  }

  else
  {
    v6 = @"Only apps installed by Xcode, by TestFlight, or via the enterprise program can be monitored.";
  }

  [v5 setObject:v6 forKeyedSubscript:PSFooterTextGroupKey];
  [v3 addObject:v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  cachedDeveloperAppsSpecifiers = [(PerformanceTraceController *)self cachedDeveloperAppsSpecifiers];
  v8 = [cachedDeveloperAppsSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(cachedDeveloperAppsSpecifiers);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [(PerformanceTraceController *)self _setEnablement:v12];
        [v3 addObject:v12];
      }

      v9 = [cachedDeveloperAppsSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)_appIsMonitoredSetter:(id)setter specifier:(id)specifier
{
  specifierCopy = specifier;
  setterCopy = setter;
  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v19 = 0;
  v9 = [passiveTraceConfig fetchPerfPowerMetricMonitoredProcesses:&v19];
  v10 = v19;

  if (v10)
  {
    v11 = sub_47D4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_6F64();
    }
  }

  if (!v9)
  {
    v9 = &__NSArray0__struct;
  }

  v12 = [v9 mutableCopy];
  bOOLValue = [setterCopy BOOLValue];

  v14 = [specifierCopy objectForKeyedSubscript:@"AppBundleExecutable"];
  if (bOOLValue)
  {
    [v12 addObject:v14];
  }

  else
  {
    [v12 removeObject:v14];
  }

  passiveTraceConfig2 = [(PerformanceTraceController *)self passiveTraceConfig];
  v16 = [passiveTraceConfig2 updatePerfPowerMetricMonitoredProcesses:v12];

  v17 = sub_47D4();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_6FCC();
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Updated monitored process list: %{public}@", buf, 0xCu);
  }

  [(PerformanceTraceController *)self reloadSpecifiers];
}

- (id)_appIsMonitoredGetter:(id)getter
{
  getterCopy = getter;
  passiveTraceConfig = [(PerformanceTraceController *)self passiveTraceConfig];
  v13 = 0;
  v6 = [passiveTraceConfig fetchPerfPowerMetricMonitoredProcesses:&v13];
  v7 = v13;

  v8 = sub_47D4();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_7048();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Fetched monitored process list: %{public}@", buf, 0xCu);
  }

  if (!v6)
  {
    v6 = &__NSArray0__struct;
  }

  v10 = [getterCopy objectForKeyedSubscript:@"AppBundleExecutable"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 containsObject:v10]);

  return v11;
}

- (void)_refreshAppList
{
  objc_initWeak(&location, self);
  appsFinder = [(PerformanceTraceController *)self appsFinder];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A80;
  v4[3] = &unk_C5B8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [appsFinder findApps:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = PerformanceTraceController;
  [(PerformanceTraceController *)&v3 reloadSpecifiers];
  if ([(PerformanceTraceController *)self isPowerProfilerPlanSelected])
  {
    [(PerformanceTraceController *)self _refreshAppList];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v5 = [(PerformanceTraceController *)self indexForIndexPath:path];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
    v8 = [v7 objectForKeyedSubscript:kPTFileKeyPath];
    v9 = v8;
    if (v8)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_5450;
      v16 = &unk_C5E0;
      v17 = v8;
      selfCopy = self;
      v10 = [UIContextualAction contextualActionWithStyle:1 title:@"Delete" handler:&v13];
      v19 = v10;
      v11 = [NSArray arrayWithObjects:&v19 count:1, v13, v14, v15, v16];
      v6 = [UISwipeActionsConfiguration configurationWithActions:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PerformanceTraceController;
  [(PerformanceTraceController *)&v6 viewDidLoad];
  table = [(PerformanceTraceController *)self table];
  v4 = objc_opt_class();
  v5 = +[PerformanceTraceFileTableViewCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

@end