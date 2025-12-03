@interface BYConcreteEnvironment
- (AppearanceModeProvider)appearanceModeProvider;
- (BFFBackupDeviceController)backupDeviceController;
- (BFFSettingsManager)settingsManager;
- (BYAnalyticsEventAppearance)analyticsEventAppearance;
- (BYAnalyticsManager)analyticsManager;
- (BYCapabilities)capabilities;
- (BYChronicle)chronicle;
- (BYDeviceConfiguration)deviceConfiguration;
- (BYDiagnosticsThreadDecorator)diagnosticsThreadDecorator;
- (BYFlowSkipController)flowSkipController;
- (BYPaneFeatureAnalyticsManager)paneFeatureAnalyticsManager;
- (BYPasscodeCacheManager)passcodeCacheManager;
- (BYPreferencesController)buddyPreferences;
- (BYPreferencesController)buddyPreferencesExcludedFromBackup;
- (BYRunState)runState;
- (BYSeedProgramManager)seedProgramManager;
- (BYSoftwareUpdateCache)softwareUpdateCache;
- (BuddyActivationRecord)activationRecord;
- (BuddyActivationState)activationState;
- (BuddyBackgroundViewController)buddyBackgroundViewController;
- (BuddyBetaEnrollmentStateManager)betaEnrollmentStateManager;
- (BuddyButtonMonitor)buttonMonitor;
- (BuddyChildSetupPresenter)childSetupPresenter;
- (BuddyCombinedTermsProvider)combinedTermsProvider;
- (BuddyEmergencyExecutor)emergencyExecutor;
- (BuddyEnrollmentCoordinator)enrollmentCoordinator;
- (BuddyFeatureFlags)featureFlags;
- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider;
- (BuddyMiscState)miscState;
- (BuddyPendingRestoreState)pendingRestoreState;
- (BuddyProximityAutomatedDeviceEnrollmentController)proximityAutomatedDeviceEnrollmentController;
- (BuddySafetySettingsUIProvider)safetySettingsUIProvider;
- (BuddySystemTimeUpdateManager)systemTimeUpdateManager;
- (BuddyThreatNotificationProviding)threatNotificationProvider;
- (MCProfileConnection)managedConfiguration;
- (ProximitySetupController)proximitySetupController;
- (SetupUserDispositionProvider)userDispositionProvider;
- (id)doesRestartFlowCauseEraseBlock;
- (id)exitBuddyForDemoSetUpBlock;
- (id)menuButtonPressedBlock;
- (id)prepareForCloudRestoreRebootBlock;
- (id)prepareForDeviceMigrationBlock;
- (id)showModalWiFiSettingsBlock;
- (id)startDeviceMigrationBlock;
- (id)writeGreenInformedDefaultPlistIfNecessaryBlock;
- (void)_faultForNilPropertyWithDescription:(char *)description;
@end

@implementation BYConcreteEnvironment

- (BuddyPendingRestoreState)pendingRestoreState
{
  if (!self->_pendingRestoreState)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"pendingRestoreState", a2];
  }

  pendingRestoreState = self->_pendingRestoreState;

  return pendingRestoreState;
}

- (BYChronicle)chronicle
{
  if (!self->_chronicle)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"chronicle", a2];
  }

  chronicle = self->_chronicle;

  return chronicle;
}

- (BuddyMiscState)miscState
{
  if (!self->_miscState)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"miscState", a2];
  }

  miscState = self->_miscState;

  return miscState;
}

- (ProximitySetupController)proximitySetupController
{
  if (!self->_proximitySetupController)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"proximitySetupController", a2];
  }

  proximitySetupController = self->_proximitySetupController;

  return proximitySetupController;
}

- (BuddyProximityAutomatedDeviceEnrollmentController)proximityAutomatedDeviceEnrollmentController
{
  if (!self->_proximityAutomatedDeviceEnrollmentController)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"proximityAutomatedDeviceEnrollmentController", a2];
  }

  proximityAutomatedDeviceEnrollmentController = self->_proximityAutomatedDeviceEnrollmentController;

  return proximityAutomatedDeviceEnrollmentController;
}

- (BFFBackupDeviceController)backupDeviceController
{
  if (!self->_backupDeviceController)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"backupDeviceController", a2];
  }

  backupDeviceController = self->_backupDeviceController;

  return backupDeviceController;
}

- (BuddySystemTimeUpdateManager)systemTimeUpdateManager
{
  if (!self->_systemTimeUpdateManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"systemTimeUpdateManager", a2];
  }

  systemTimeUpdateManager = self->_systemTimeUpdateManager;

  return systemTimeUpdateManager;
}

- (BuddyEnrollmentCoordinator)enrollmentCoordinator
{
  if (!self->_enrollmentCoordinator)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"enrollmentCoordinator", a2];
  }

  enrollmentCoordinator = self->_enrollmentCoordinator;

  return enrollmentCoordinator;
}

- (id)menuButtonPressedBlock
{
  if (!self->_menuButtonPressedBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"menuButtonPressedBlock", a2];
  }

  v2 = objc_retainBlock(self->_menuButtonPressedBlock);

  return v2;
}

- (id)showModalWiFiSettingsBlock
{
  if (!self->_showModalWiFiSettingsBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"showModalWiFiSettingsBlock", a2];
  }

  v2 = objc_retainBlock(self->_showModalWiFiSettingsBlock);

  return v2;
}

- (id)writeGreenInformedDefaultPlistIfNecessaryBlock
{
  if (!self->_writeGreenInformedDefaultPlistIfNecessaryBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"writeGreenInformedDefaultPlistIfNecessaryBlock", a2];
  }

  v2 = objc_retainBlock(self->_writeGreenInformedDefaultPlistIfNecessaryBlock);

  return v2;
}

- (id)doesRestartFlowCauseEraseBlock
{
  if (!self->_doesRestartFlowCauseEraseBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"doesRestartFlowCauseEraseBlock", a2];
  }

  v2 = objc_retainBlock(self->_doesRestartFlowCauseEraseBlock);

  return v2;
}

- (id)prepareForCloudRestoreRebootBlock
{
  if (!self->_prepareForCloudRestoreRebootBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"prepareForCloudRestoreRebootBlock", a2];
  }

  v2 = objc_retainBlock(self->_prepareForCloudRestoreRebootBlock);

  return v2;
}

- (id)exitBuddyForDemoSetUpBlock
{
  if (!self->_exitBuddyForDemoSetUpBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"exitBuddyForDemoSetUpBlock", a2];
  }

  v2 = objc_retainBlock(self->_exitBuddyForDemoSetUpBlock);

  return v2;
}

- (id)prepareForDeviceMigrationBlock
{
  if (!self->_prepareForDeviceMigrationBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"prepareForDeviceMigrationBlock", a2];
  }

  v2 = objc_retainBlock(self->_prepareForDeviceMigrationBlock);

  return v2;
}

- (id)startDeviceMigrationBlock
{
  if (!self->_startDeviceMigrationBlock)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"startDeviceMigrationBlock", a2];
  }

  v2 = objc_retainBlock(self->_startDeviceMigrationBlock);

  return v2;
}

- (BYSeedProgramManager)seedProgramManager
{
  if (!self->_seedProgramManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"seedProgramManager", a2];
  }

  seedProgramManager = self->_seedProgramManager;

  return seedProgramManager;
}

- (BYPreferencesController)buddyPreferences
{
  if (!self->_buddyPreferences)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"buddyPreferences", a2];
  }

  buddyPreferences = self->_buddyPreferences;

  return buddyPreferences;
}

- (BYPreferencesController)buddyPreferencesExcludedFromBackup
{
  if (!self->_buddyPreferencesExcludedFromBackup)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"buddyPreferencesExcludedFromBackup", a2];
  }

  buddyPreferencesExcludedFromBackup = self->_buddyPreferencesExcludedFromBackup;

  return buddyPreferencesExcludedFromBackup;
}

- (BuddyBetaEnrollmentStateManager)betaEnrollmentStateManager
{
  if (!self->_betaEnrollmentStateManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"betaEnrollmentStateManager", a2];
  }

  betaEnrollmentStateManager = self->_betaEnrollmentStateManager;

  return betaEnrollmentStateManager;
}

- (BYCapabilities)capabilities
{
  if (!self->_capabilities)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"capabilities", a2];
  }

  capabilities = self->_capabilities;

  return capabilities;
}

- (BYSoftwareUpdateCache)softwareUpdateCache
{
  if (!self->_softwareUpdateCache)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"softwareUpdateCache", a2];
  }

  softwareUpdateCache = self->_softwareUpdateCache;

  return softwareUpdateCache;
}

- (BFFSettingsManager)settingsManager
{
  if (!self->_settingsManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"settingsManager", a2];
  }

  settingsManager = self->_settingsManager;

  return settingsManager;
}

- (BYPasscodeCacheManager)passcodeCacheManager
{
  if (!self->_passcodeCacheManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"passcodeCacheManager", a2];
  }

  passcodeCacheManager = self->_passcodeCacheManager;

  return passcodeCacheManager;
}

- (BYRunState)runState
{
  if (!self->_runState)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"runState", a2];
  }

  runState = self->_runState;

  return runState;
}

- (BYAnalyticsManager)analyticsManager
{
  if (!self->_analyticsManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"analyticsManager", a2];
  }

  analyticsManager = self->_analyticsManager;

  return analyticsManager;
}

- (BYPaneFeatureAnalyticsManager)paneFeatureAnalyticsManager
{
  if (!self->_paneFeatureAnalyticsManager)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"paneFeatureAnalyticsManager", a2];
  }

  paneFeatureAnalyticsManager = self->_paneFeatureAnalyticsManager;

  return paneFeatureAnalyticsManager;
}

- (MCProfileConnection)managedConfiguration
{
  if (!self->_managedConfiguration)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"managedConfiguration", a2];
  }

  managedConfiguration = self->_managedConfiguration;

  return managedConfiguration;
}

- (BuddyActivationRecord)activationRecord
{
  if (!self->_activationRecord)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"activationRecord", a2];
  }

  activationRecord = self->_activationRecord;

  return activationRecord;
}

- (BuddyCombinedTermsProvider)combinedTermsProvider
{
  if (!self->_combinedTermsProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"combinedTermsProvider", a2];
  }

  combinedTermsProvider = self->_combinedTermsProvider;

  return combinedTermsProvider;
}

- (BuddyFeatureFlags)featureFlags
{
  if (!self->_featureFlags)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"featureFlags", a2];
  }

  featureFlags = self->_featureFlags;

  return featureFlags;
}

- (BuddyButtonMonitor)buttonMonitor
{
  if (!self->_buttonMonitor)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"buttonMonitor", a2];
  }

  buttonMonitor = self->_buttonMonitor;

  return buttonMonitor;
}

- (BuddyEmergencyExecutor)emergencyExecutor
{
  if (!self->_emergencyExecutor)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"emergencyExecutor", a2];
  }

  emergencyExecutor = self->_emergencyExecutor;

  return emergencyExecutor;
}

- (BuddyActivationState)activationState
{
  if (!self->_activationState)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"activationState", a2];
  }

  activationState = self->_activationState;

  return activationState;
}

- (BYFlowSkipController)flowSkipController
{
  if (!self->_flowSkipController)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"flowSkipController", a2];
  }

  flowSkipController = self->_flowSkipController;

  return flowSkipController;
}

- (AppearanceModeProvider)appearanceModeProvider
{
  if (!self->_appearanceModeProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"appearanceModeProvider", a2];
  }

  appearanceModeProvider = self->_appearanceModeProvider;

  return appearanceModeProvider;
}

- (SetupUserDispositionProvider)userDispositionProvider
{
  if (!self->_userDispositionProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"userDispositionProvider", a2];
  }

  userDispositionProvider = self->_userDispositionProvider;

  return userDispositionProvider;
}

- (BYDeviceConfiguration)deviceConfiguration
{
  if (!self->_deviceConfiguration)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"deviceConfiguration", a2];
  }

  deviceConfiguration = self->_deviceConfiguration;

  return deviceConfiguration;
}

- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider
{
  if (!self->_flowItemDispositionProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"flowItemDispositionProvider", a2];
  }

  flowItemDispositionProvider = self->_flowItemDispositionProvider;

  return flowItemDispositionProvider;
}

- (BYAnalyticsEventAppearance)analyticsEventAppearance
{
  if (!self->_analyticsEventAppearance)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"analyticsEventAppearance", a2];
  }

  analyticsEventAppearance = self->_analyticsEventAppearance;

  return analyticsEventAppearance;
}

- (BuddyChildSetupPresenter)childSetupPresenter
{
  if (!self->_childSetupPresenter)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"childSetupPresenter", a2];
  }

  childSetupPresenter = self->_childSetupPresenter;

  return childSetupPresenter;
}

- (BYDiagnosticsThreadDecorator)diagnosticsThreadDecorator
{
  if (!self->_diagnosticsThreadDecorator)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"diagnosticsThreadDecorator", a2];
  }

  diagnosticsThreadDecorator = self->_diagnosticsThreadDecorator;

  return diagnosticsThreadDecorator;
}

- (BuddyThreatNotificationProviding)threatNotificationProvider
{
  if (!self->_threatNotificationProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"threatNotificationProvider", a2];
  }

  threatNotificationProvider = self->_threatNotificationProvider;

  return threatNotificationProvider;
}

- (BuddySafetySettingsUIProvider)safetySettingsUIProvider
{
  if (!self->_safetySettingsUIProvider)
  {
    [(BYConcreteEnvironment *)self _faultForNilPropertyWithDescription:"safetySettingsUIProvider", a2];
  }

  safetySettingsUIProvider = self->_safetySettingsUIProvider;

  return safetySettingsUIProvider;
}

- (void)_faultForNilPropertyWithDescription:(char *)description
{
  selfCopy = self;
  v5 = a2;
  descriptionCopy = description;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    sub_10018AC1C(buf, descriptionCopy);
    _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, "Environment has nil %{public}s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

- (BuddyBackgroundViewController)buddyBackgroundViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyBackgroundViewController);

  return WeakRetained;
}

@end