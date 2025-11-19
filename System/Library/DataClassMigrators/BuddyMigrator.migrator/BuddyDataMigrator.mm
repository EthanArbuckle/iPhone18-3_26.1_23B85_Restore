@interface BuddyDataMigrator
- (BOOL)_isSignificantLocationsEnabled;
- (BOOL)_needsAppleIDReauthenticationAfterMigration;
- (BOOL)_performiOSMigration;
- (BOOL)_shouldLaunchForNewFeaturesUpsell;
- (BOOL)_shouldLaunchForiPadMultitasking;
- (BOOL)_shouldLaunchMiniBuddyForOnBoarding;
- (BOOL)_shouldLaunchMiniBuddyForSafetySettings;
- (BOOL)_shouldOfferPeriocularEnrollment;
- (BOOL)_shouldOfferStolenDeviceProtection;
- (BOOL)_shouldUpsellIntelligence;
- (BOOL)_shouldUpsellVisualIntelligenceOrCameraControl;
- (BOOL)accountNeedsSecurityUpgrade;
- (BOOL)performMigration;
- (BOOL)primaryAccountNeedsEscrowRepair;
- (BOOL)primaryAccountNeedsRepair;
- (BOOL)primaryAccountRequiresTermsAcceptance;
- (BuddyDataMigrator)init;
- (unsigned)_storedBuddyMigratorVersion;
- (unsigned)_storedBuddyVersion;
- (void)_applyPreRestoreSettings;
- (void)_cleanupKeys;
- (void)_migrateChronicle;
- (void)_migrateIntelligencePresentedKeyToChronicleIfNeeded;
- (void)_migratePreferences;
- (void)_migrateStolenDeviceProtectionPreferenceKeys;
- (void)_performHSA2Migration;
- (void)_setVisualIntelligencePresentedIfIntelligenceIsDisabled;
- (void)deferDataMigratorExit;
@end

@implementation BuddyDataMigrator

- (BuddyDataMigrator)init
{
  v18.receiver = self;
  v18.super_class = BuddyDataMigrator;
  v2 = [(BuddyDataMigrator *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYCapabilities);
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;

    v5 = +[BYPreferencesController buddyPreferences];
    buddyPreferences = v2->_buddyPreferences;
    v2->_buddyPreferences = v5;

    v7 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
    buddyPreferencesExcludedFromBackup = v2->_buddyPreferencesExcludedFromBackup;
    v2->_buddyPreferencesExcludedFromBackup = v7;

    v9 = objc_alloc_init(BuddyFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v9;

    v11 = [[BYChronicle alloc] initFromBackedUpPreferences:v2->_buddyPreferences andNotBackedUpPreferences:v2->_buddyPreferencesExcludedFromBackup];
    chronicle = v2->_chronicle;
    v2->_chronicle = v11;

    v13 = +[BYDevice currentDevice];
    deviceCapabilities = v2->_deviceCapabilities;
    v2->_deviceCapabilities = v13;

    v15 = [[_TtC13BuddyMigrator19IntelligenceManager alloc] initWithFeatureFlags:v2->_featureFlags preferences:v2->_buddyPreferences chronicle:v2->_chronicle deviceProvider:v2->_deviceCapabilities];
    intelligenceManager = v2->_intelligenceManager;
    v2->_intelligenceManager = v15;
  }

  return v2;
}

- (unsigned)_storedBuddyMigratorVersion
{
  v2 = CFPreferencesCopyAppValue(@"setupMigratorVersion", BYSetupAssistantBundleIdentifier);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)_storedBuddyVersion
{
  v2 = CFPreferencesCopyAppValue(BYBuddyIOSVersionKey, BYSetupAssistantBundleIdentifier);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_performiOSMigration
{
  if ([(BuddyDataMigrator *)self didRestoreFromBackup])
  {
    v3 = BYBuddyFinishedInitialRunKey;
    v4 = BYSetupAssistantBundleIdentifier;
    if (!CFPreferencesGetAppBooleanValue(BYBuddyFinishedInitialRunKey, BYSetupAssistantBundleIdentifier, 0))
    {
      v5 = _BYLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Restored to a fresh preferences plist. Adding keys for post-cross-device restore.", &buf, 2u);
      }

      if (!self->_restoredIniTunes)
      {
        v6 = _BYLoggingFacility();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Setting SetupDone.", &buf, 2u);
        }

        CFPreferencesSetAppValue(BYBuddyDoneKey, kCFBooleanTrue, v4);
        v7 = _BYLoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Setting BuddyVersion.", &buf, 2u);
        }

        v8 = [NSNumber numberWithUnsignedInt:BYBuddyIOSCurrentVersion];
        CFPreferencesSetAppValue(BYBuddyIOSVersionKey, v8, v4);
      }

      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Setting RestoreChoice.", &buf, 2u);
      }

      CFPreferencesSetAppValue(@"RestoreChoice", kCFBooleanTrue, v4);
      CFPreferencesSetAppValue(v3, kCFBooleanTrue, v4);
    }
  }

  [(BuddyDataMigrator *)self _applyPreRestoreSettings];
  [(BuddyDataMigrator *)self _migratePreferences];
  if ([(BuddyDataMigrator *)self didRestoreFromBackup])
  {
    v10 = objc_alloc_init(ACAccountStore);
    v11 = [v10 aa_primaryAppleAccount];
    if (v11)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Detected restore, marking primary account as unauthenticated...", &buf, 2u);
      }

      [v10 setNotificationsEnabled:0];
      [v11 setAuthenticated:0];
      v164 = 0;
      v13 = [v10 saveVerifiedAccount:v11 error:&v164];
      v14 = v164;
      v15 = _BYLoggingFacility();
      v16 = v15;
      if (v13)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Saved account", &buf, 2u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (_BYIsInternalInstall())
        {
          v159 = 0;
          v160 = v14;
        }

        else if (v14)
        {
          v13 = [v14 domain];
          v160 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v13, [v14 code]);
          v159 = 1;
        }

        else
        {
          v159 = 0;
          v160 = 0;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v160;
        _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to save account: %{public}@", &buf, 0xCu);
        if (v159)
        {
        }
      }
    }
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldLaunchMiniBuddyForSafetySettings])
  {
    v17 = _BYLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Safety Settings mini-buddy", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runLocalRestoreMiniBuddies && MGGetBoolAnswer())
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Touch ID mini-buddy", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunMesaMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runLocalRestoreMiniBuddies)
  {
    applicationID = BYSetupAssistantBundleIdentifier;
  }

  else
  {
    applicationID = BYSetupAssistantBundleIdentifier;
    if (!self->_runUpgradeMiniBuddies)
    {
      goto LABEL_69;
    }
  }

  v19 = [(BuddyDataMigrator *)self capabilities];
  v20 = [v19 supportsApplePay];

  if (!v20)
  {
    goto LABEL_69;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PaymentMiniBuddy4Ran", applicationID, 0);
  v22 = _BYLoggingFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"YASE";
    if (!AppBooleanValue)
    {
      v23 = @"NERP";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Already ran payment mini-buddy = %{public}@", &buf, 0xCu);
  }

  if (AppBooleanValue)
  {
    storedBuddyMigratorVersion = self->_storedBuddyMigratorVersion;
    if (storedBuddyMigratorVersion > 2)
    {
      v26 = 0;
    }

    else
    {
      v25 = CFPreferencesGetAppBooleanValue(@"Payment2Presented", applicationID, 0);
      v26 = v25 == 0;
      if (!v25)
      {
        v27 = _BYLoggingFacility();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Running Apple Pay mini-buddy since this device is now eligible for Apple Pay and hasn't been offered it yet", &buf, 2u);
        }
      }

      storedBuddyMigratorVersion = self->_storedBuddyMigratorVersion;
    }

    if (storedBuddyMigratorVersion <= 5)
    {
      v28 = +[NSLocale currentLocale];
      v29 = [v28 countryCode];
      if ([v29 isEqualToString:@"US"])
      {

LABEL_54:
        v31 = _BYLoggingFacility();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Running Apple Pay mini-buddy for SURF", &buf, 2u);
        }

        goto LABEL_58;
      }

      v30 = self->_storedBuddyVersion < 11;

      if (v30)
      {
        goto LABEL_54;
      }
    }

    if (!v26 && !self->_runLocalRestoreMiniBuddies)
    {
      goto LABEL_69;
    }
  }

LABEL_58:
  v165 = 0;
  v166 = &v165;
  v167 = 0x2050000000;
  v32 = qword_30220;
  v168 = qword_30220;
  if (!qword_30220)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v170 = sub_7158;
    v171 = &unk_28AA0;
    v172 = &v165;
    sub_7158(&buf);
    v32 = v166[3];
  }

  v33 = v32;
  _Block_object_dispose(&v165, 8);
  v34 = [[v32 alloc] initWithSetupAssistant:1];
  v165 = 0;
  v166 = &v165;
  v167 = 0x2050000000;
  v35 = qword_30230;
  v168 = qword_30230;
  if (!qword_30230)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v170 = sub_7320;
    v171 = &unk_28AA0;
    v172 = &v165;
    sub_7320(&buf);
    v35 = v166[3];
  }

  v36 = v35;
  _Block_object_dispose(&v165, 8);
  v37 = [[v35 alloc] initWithSetupAssistantContext:v34];
  v38 = [v37 setupAssistantNeedsToRunReturningRequirements:0];
  v39 = _BYLoggingFacility();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v38;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Payment mini-buddy needs to run: %d", &buf, 8u);
  }

  if (v38)
  {
    v40 = _BYLoggingFacility();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Payment mini-buddy", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunPaymentMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

LABEL_69:
  CFPreferencesSetAppValue(@"PaymentMiniBuddy4Ran", kCFBooleanTrue, applicationID);
  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldLaunchForNewFeaturesUpsell])
  {
    v41 = _BYLoggingFacility();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy to show new features", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldLaunchMiniBuddyForOnBoarding])
  {
    v42 = _BYLoggingFacility();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for user onboarding", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  [(BuddyDataMigrator *)self _performHSA2Migration];
  CFPreferencesSetAppValue(@"HSA2UpgradeMiniBuddy3Ran", kCFBooleanTrue, applicationID);
  if (self->_runLocalRestoreMiniBuddies || self->_runUpgradeMiniBuddies)
  {
    if (CFPreferencesGetAppBooleanValue(@"DiagnosticsAutoOptInSet", applicationID, 0) && !self->_isMultiUser)
    {
      v43 = _BYLoggingFacility();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Diagnostics & Usage mini-buddy for re-opt-in", &buf, 2u);
      }

      CFPreferencesSetAppValue(BYBuddyRunDiagnosticsMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }

    else
    {
      CFPreferencesSetAppValue(@"DiagnosticsAutoOptInSet", 0, applicationID);
    }
  }

  if (self->_runUpgradeMiniBuddies || self->_runLocalRestoreMiniBuddies)
  {
    v44 = [(BuddyDataMigrator *)self chronicle];
    v45 = [v44 entryForFeature:2];
    v46 = [v45 createdOnCurrentMajorVersion];

    v47 = +[MCProfileConnection sharedConnection];
    v48 = [v47 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    v49 = [(BuddyDataMigrator *)self capabilities];
    v50 = [v49 isDeviceAnalyticsRestricted];

    v51 = +[MCProfileConnection sharedConnection];
    v52 = [v51 skipSetupKeys];
    v53 = [v52 containsObject:kMCCCSkipSetupDiagnostics];

    v54 = [(BuddyDataMigrator *)self capabilities];
    LODWORD(v52) = [v54 eligibleForChlorine];

    if ((v52 ^ 1 | v50))
    {
      goto LABEL_90;
    }

    if (v53)
    {
      goto LABEL_100;
    }

    v57 = +[MCProfileConnection sharedConnection];
    v58 = [v57 effectiveBoolValueForSetting:MCFeatureAppAnalyticsAllowed];

    v59 = [(BuddyDataMigrator *)self capabilities];
    v60 = [v59 isAppAnalyticsRestricted];

    if (v60 & 1 | (v48 == 1) ^ (v58 != 1))
    {
LABEL_90:
      if ((v48 == 1) | (v46 | v50 | v53) & 1)
      {
        goto LABEL_100;
      }

      v55 = _BYLoggingFacility();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Diagnostics & Usage mini-buddy (once per major OS)", &buf, 2u);
      }

      CFPreferencesSetAppValue(@"PBDiagnostics4Presented", 0, applicationID);
      v56 = &BYBuddyRunStandardMiniBuddy;
    }

    else
    {
      v61 = _BYLoggingFacility();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing Diagnostics & Usage mini-buddy for chlorine", &buf, 2u);
      }

      v56 = &BYBuddyRunCombinedDiagnosticsMismatchMiniBuddy;
    }

    CFPreferencesSetAppValue(*v56, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

LABEL_100:
  if ((self->_runUpgradeMiniBuddies || self->_runLocalRestoreMiniBuddies) && BYAssistantScreenShouldRunForPHSUpgrade())
  {
    v62 = _BYLoggingFacility();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Need to show Siri to offer PHS upgrade", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyAssistantPresentedKey, kCFBooleanFalse, applicationID);
  }

  v63 = +[MCProfileConnection sharedConnection];
  v64 = [v63 skipSetupKeys];
  v65 = [v64 containsObject:kMCCCSkipSetupSiri];

  if ((self->_runUpgradeMiniBuddies & v65 & 1) != 0 && [(BuddyDataMigrator *)self _needsVoiceTriggerConfirmation])
  {
    v66 = _BYLoggingFacility();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Posting follow-up for voice trigger confirmation", &buf, 2u);
    }

    v67 = objc_alloc_init(BYFlowSkipController);
    [v67 didSkipFlow:BYFlowSkipIdentifierSiri];
  }

  BYAssistantFixUpVoiceTriggerStateIfNeeded();
  v68 = CFPreferencesGetAppBooleanValue(@"RestoreChoice", applicationID, 0);
  v69 = CFPreferencesGetAppBooleanValue(BYBuddyFinishedInitialRunKey, applicationID, 0);
  if (self->_runUpgradeMiniBuddies)
  {
    if (v68)
    {
      if (!v69)
      {
        v70 = [(BuddyDataMigrator *)self buddyPreferences];
        v71 = [BuddyRestoreState hasStateFromPreferences:v70];

        if ((v71 & 1) == 0)
        {
          v72 = _BYLoggingFacility();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Resetting RestoreChoice. Did we just update while in Buddy?", &buf, 2u);
          }

          CFPreferencesSetAppValue(@"RestoreChoice", 0, applicationID);
        }
      }
    }
  }

  if ((self->_runLocalRestoreMiniBuddies || self->_runUpgradeMiniBuddies) && self->_storedBuddyMigratorVersion <= 3)
  {
    v165 = 0;
    v166 = &v165;
    v167 = 0x2050000000;
    v73 = qword_30238;
    v168 = qword_30238;
    if (!qword_30238)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v170 = sub_7378;
      v171 = &unk_28AA0;
      v172 = &v165;
      sub_7378(&buf);
      v73 = v166[3];
    }

    v74 = v73;
    _Block_object_dispose(&v165, 8);
    if ([v73 buddyOfferMightNeedPresenting])
    {
      v75 = _BYLoggingFacility();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for iCloud Quota", &buf, 2u);
      }

      CFPreferencesSetAppValue(@"AppleIDPB10Presented", 0, applicationID);
      CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }
  }

  if (self->_runLocalRestoreMiniBuddies && +[BuddyMandatoryUpdateUtilities isUpdateRequired])
  {
    v76 = _BYLoggingFacility();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for required software update", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies || self->_runLocalRestoreMiniBuddies)
  {
    v165 = 0;
    v166 = &v165;
    v167 = 0x2050000000;
    v77 = qword_30248;
    v168 = qword_30248;
    if (!qword_30248)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v170 = sub_7530;
      v171 = &unk_28AA0;
      v172 = &v165;
      sub_7530(&buf);
      v77 = v166[3];
    }

    v78 = v77;
    _Block_object_dispose(&v165, 8);
    v79 = [v77 bundleWithIdentifier:BYPrivacyPrivacyPaneIdentifier];
    v80 = [v79 privacyFlow];

    v81 = CFPreferencesCopyAppValue(@"PrivacyContentVersion", applicationID);
    v82 = +[MCProfileConnection sharedConnection];
    v83 = [v82 skipSetupKeys];
    v84 = [v83 containsObject:kMCCCSkipSetupPrivacy];

    v85 = [v80 contentVersion];
    if (v85 > [v81 unsignedIntegerValue])
    {
      v86 = _BYLoggingFacility();
      v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
      if (v84)
      {
        if (v87)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Not queueing mini-buddy to show the privacy pane due to skip key", &buf, 2u);
        }
      }

      else
      {
        if (v87)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy to show the privacy pane", &buf, 2u);
        }

        CFPreferencesSetAppValue(@"PrivacyPresented", 0, applicationID);
        CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
      }
    }

    if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self primaryAccountNeedsRepair])
    {
      v88 = _BYLoggingFacility();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy to show flow to repair primary account", &buf, 2u);
      }

      CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self accountNeedsSecurityUpgrade])
  {
    v89 = _BYLoggingFacility();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy because an account is available for security upgrade.", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self primaryAccountRequiresTermsAcceptance])
  {
    v90 = _BYLoggingFacility();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy because the primary account requires terms acceptance", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self primaryAccountNeedsEscrowRepair])
  {
    v91 = _BYLoggingFacility();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy because the primary account needs escrow record repair", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldUpsellADP])
  {
    v92 = _BYLoggingFacility();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for ADP upsell", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (!(v65 & 1 | !self->_runUpgradeMiniBuddies) && [(BuddyDataMigrator *)self shouldUpsellSiri])
  {
    v93 = _BYLoggingFacility();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Siri upsell", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldUpsellIntelligence])
  {
    v94 = _BYLoggingFacility();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Intelligence features upsell", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldUpsellVisualIntelligenceOrCameraControl])
  {
    v95 = _BYLoggingFacility();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Visual Intelligence or Camera Control features upsell", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldLaunchForiPadMultitasking])
  {
    v96 = _BYLoggingFacility();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for iPad Multitasking features upsell", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if ((self->_runUpgradeMiniBuddies || [(BuddyDataMigrator *)self didRestoreFromBackup]) && self->_storedBuddyMigratorVersion <= 8)
  {
    v97 = CFPreferencesGetAppBooleanValue(@"ScreenTimePresented", applicationID, 0) != 0;
    v98 = CFPreferencesGetAppBooleanValue(@"AutoUpdatePresented", applicationID, 0);
    v99 = +[MCProfileConnection sharedConnection];
    v100 = [v99 skipSetupKeys];
    v101 = [v100 containsObject:kMCCCSkipScreenTime];

    v102 = +[MCProfileConnection sharedConnection];
    v103 = [v102 skipSetupKeys];
    v104 = [v103 containsObject:kMCCCSkipSoftwareUpdate];

    if ((v97 | v101))
    {
      if ((v98 != 0) | v104 & 1)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v105 = _BYLoggingFacility();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Screen Time", &buf, 2u);
      }

      if ((v98 != 0) | v104 & 1)
      {
        goto LABEL_201;
      }
    }

    v106 = _BYLoggingFacility();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Auto Software Update", &buf, 2u);
    }

LABEL_201:
    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

LABEL_202:
  v107 = +[MCProfileConnection sharedConnection];
  v108 = [v107 skipSetupKeys];
  v109 = [v108 containsObject:kMCCCSkipSetupAppearance];

  v110 = [(BuddyDataMigrator *)self buddyPreferences];
  v111 = [v110 BOOLForKey:@"UserInterfaceStyleModePresented"];

  if (self->_runUpgradeMiniBuddies)
  {
    if ((v111 | v109))
    {
      goto LABEL_209;
    }
  }

  else if (v111 & 1 | (([(BuddyDataMigrator *)self didRestoreFromBackup]& 1) == 0) | v109 & 1)
  {
    goto LABEL_209;
  }

  v112 = _BYLoggingFacility();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v112, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Appearance", &buf, 2u);
  }

  CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
LABEL_209:
  if ([(BuddyDataMigrator *)self _needsAppleIDReauthenticationAfterMigration])
  {
    v113 = _BYLoggingFacility();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Apple ID reauthentication after migration w/ software update", &buf, 2u);
    }

    v114 = BYBuddyNotBackedUpIdentifier;
    CFPreferencesSetAppValue(@"ForcePrimaryAppleIDAuthentication", kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, v114);
  }

  if (self->_runUpgradeMiniBuddies)
  {
    if (v65)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  if (!(v65 & 1 | (([(BuddyDataMigrator *)self didRestoreFromBackup]& 1) == 0)))
  {
LABEL_217:
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_4704;
    v162[3] = &unk_289D8;
    v115 = dispatch_semaphore_create(0);
    v163 = v115;
    [BYSiriUtilities requiresAcknowledgementForDataSharing:v162];
    dispatch_semaphore_wait(v115, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_218:
  if ([(BuddyDataMigrator *)self didRestoreFromBackup])
  {
    v116 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
    v117 = [BuddySuspendTask hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:v116];

    if (v117)
    {
      v118 = _BYLoggingFacility();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v118, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for suspend task", &buf, 2u);
      }

      CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }
  }

  if (self->_runUpgradeMiniBuddies && [(BuddyDataMigrator *)self _shouldOfferPeriocularEnrollment])
  {
    v119 = _BYLoggingFacility();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v119, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Face ID periocular enrollment", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runLocalRestoreMiniBuddies)
  {
    v120 = +[ACAccountStore defaultStore];
    v121 = [v120 aa_primaryAppleAccount];
    v122 = v121 == 0;

    if (!v122)
    {
      v123 = _BYLoggingFacility();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v123, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Apple ID re-authentication after local restore", &buf, 2u);
      }

      CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }
  }

  if (self->_runUpgradeMiniBuddies)
  {
    v124 = [BYSUManagerClient createWithQueue:0 clientType:0];
    if ([v124 isAutomaticDownloadEnabled])
    {
      v125 = [v124 isAutomaticUpdateV2Enabled];
    }

    else
    {
      v125 = 0;
    }

    v126 = [(BuddyDataMigrator *)self chronicle];
    v127 = [v126 entryForFeature:3];

    if (v127)
    {
      v128 = +[BYDeviceConfiguration currentConfiguration];
      v129 = [v128 productVersion];
      v130 = [v127 hasCrossedEBoundarySinceCreationForCurrentProductVersion:v129];

      v131 = v130 ^ 1;
    }

    else
    {
      v131 = 0;
    }

    v132 = +[MCProfileConnection sharedConnection];
    v133 = [v132 skipSetupKeys];
    v134 = [v133 containsObject:kMCCCSkipSoftwareUpdate];

    if (((v134 | v125 | v131) & 1) == 0)
    {
      v135 = _BYLoggingFacility();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v135, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Auto Software Update re-prompt", &buf, 2u);
      }

      CFPreferencesSetAppValue(@"AutoUpdatePresented", 0, applicationID);
      CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    }
  }

  if ([(BuddyDataMigrator *)self didUpgrade]&& BYIsRunningInStoreDemoMode())
  {
    v136 = _BYLoggingFacility();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v136, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Dequeueing mini-buddy for store demo device", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
  }

  if ([(BuddyDataMigrator *)self didRestoreFromBackup]&& BYIsRunningInStoreDemoMode())
  {
    v137 = _BYLoggingFacility();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v137, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for post demo restore", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunPostDemoRestoreMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  if (self->_runUpgradeMiniBuddies)
  {
    v138 = [(BuddyDataMigrator *)self featureFlags];
    if ([v138 isStolenDeviceProtectionEnabled])
    {
      v139 = [(BuddyDataMigrator *)self _shouldOfferStolenDeviceProtection];

      if (v139)
      {
        v140 = _BYLoggingFacility();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v140, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Stolen Device Protection", &buf, 2u);
        }

        CFPreferencesSetAppValue(BYBuddyRunStolenDeviceProtectionMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
      }
    }

    else
    {
    }
  }

  if (self->_runUpgradeMiniBuddies)
  {
    v141 = [(BuddyDataMigrator *)self featureFlags];
    if ([v141 isMDMEnrollmentFlowControllerAdoptionEnabled])
    {
      v142 = [(BuddyDataMigrator *)self _shouldOfferMDMMigrationUI];

      if (v142)
      {
        v143 = _BYLoggingFacility();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_0, v143, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for MDM migration after software update", &buf, 2u);
        }

        CFPreferencesSetAppValue(BYBuddyRunMDMMigrationAfterSoftwareUpdateMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
      }
    }

    else
    {
    }
  }

  v144 = BYBuddyNotBackedUpIdentifier;
  v145 = CFPreferencesGetAppBooleanValue(@"ShouldShowSIMSetupInRestoreMiniBuddy", BYBuddyNotBackedUpIdentifier, 0);
  v146 = [(BuddyDataMigrator *)self didRestoreFromBackup];
  if (v145)
  {
    v147 = v146;
  }

  else
  {
    v147 = 0;
  }

  if (v147 == 1)
  {
    v148 = _BYLoggingFacility();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v148, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for SIM transfer", &buf, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunRestoreSIMSetupMiniBuddy, kCFBooleanTrue, v144);
  }

  CFPreferencesSetAppValue(@"ShouldShowSIMSetupInRestoreMiniBuddy", 0, v144);
  v149 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  [v149 migrateWithStoredMigratorVersion:self->_storedBuddyMigratorVersion userDataDisposition:{-[BuddyDataMigrator userDataDisposition](self, "userDataDisposition")}];
  v150 = objc_alloc_init(BYAnalyticsManager);
  if (([(BuddyDataMigrator *)self userDataDisposition]& 0x40) != 0)
  {
    v151 = 2;
  }

  else
  {
    if (([(BuddyDataMigrator *)self userDataDisposition]& 0x10) == 0)
    {
      goto LABEL_281;
    }

    v151 = 1;
  }

  v152 = [NSNumber numberWithUnsignedInteger:v151];
  [v150 addPowerLogEvent:1 withPayload:v152];

LABEL_281:
  v153 = +[BYSetupUserDisposition current];
  v154 = [v153 date];
  [v154 timeIntervalSince1970];
  v156 = v155;

  if (v156 != 0.0)
  {
    v157 = [NSNumber numberWithDouble:v156];
    [v150 addPowerLogEvent:0 withPayload:v157];
  }

  [v150 commit];

  return 1;
}

- (void)_performHSA2Migration
{
  if (self->_runLocalRestoreMiniBuddies || self->_runUpgradeMiniBuddies)
  {
    v3 = +[ACAccountStore defaultStore];
    v4 = [v3 aa_primaryAppleAccount];

    if (!v4)
    {
LABEL_21:

      return;
    }

    if (CFPreferencesGetAppBooleanValue(@"HSA2UpgradeMiniBuddy3Ran", BYSetupAssistantBundleIdentifier, 0) || ([v4 aa_personID], v5 = objc_claimAutoreleasedReturnValue(), v6 = +[CDPAccount isICDPEnabledForDSID:](CDPAccount, "isICDPEnabledForDSID:", v5), v5, (v6 & 1) != 0))
    {
      if (self->_storedBuddyMigratorVersion > 1 || ([v4 aa_personID], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[CDPAccount isICDPEnabledForDSID:](CDPAccount, "isICDPEnabledForDSID:", v7), v7, !v8))
      {
        if (!self->_runUpgradeMiniBuddies)
        {
          goto LABEL_21;
        }

        if (self->_storedBuddyMigratorVersion > 7)
        {
          goto LABEL_21;
        }

        v12 = [v4 aa_personID];
        v13 = [CDPAccount isICDPEnabledForDSID:v12];

        if (!v13)
        {
          goto LABEL_21;
        }

        v9 = _BYLoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing silent ICDP record upgrade", v15, 2u);
        }

        v14 = &BYBuddyRunSilentICDPUpgrade;
        goto LABEL_20;
      }

      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v10 = "BuddyMigrator: Queueing HSA2 mini-buddy for record update";
        v11 = &v16;
LABEL_18:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "BuddyMigrator: Queueing HSA2 mini-buddy";
        v11 = buf;
        goto LABEL_18;
      }
    }

    v14 = &BYBuddyRunHSA2MiniBuddy;
LABEL_20:

    CFPreferencesSetAppValue(*v14, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    goto LABEL_21;
  }
}

- (void)_applyPreRestoreSettings
{
  if (([(BuddyDataMigrator *)self userDataDisposition]& 4) != 0)
  {
    v3 = [(BuddyDataMigrator *)self userDataDisposition]& 0x10;
    if (v3 | [(BuddyDataMigrator *)self userDataDisposition]& 0x40)
    {
      v4 = objc_alloc_init(BFFSettingsManager);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_4AF4;
      v6[3] = &unk_289D8;
      v6[4] = self;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_4B48;
      v5[3] = &unk_28A00;
      v5[4] = self;
      [v4 applySafeHavenStashWithIsIntelligenceEnabledBlock:v6 notificationOnboardingDefaultsBlock:v5];
    }
  }
}

- (void)_migratePreferences
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_18B08();
  }

  [(BuddyDataMigrator *)self _migrateStolenDeviceProtectionPreferenceKeys];
}

- (void)_cleanupKeys
{
  v3 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  [v3 removeObjectForKey:BYBuddySoftwareUpdateMigration onlyFromMemory:0];

  v4 = [(BuddyDataMigrator *)self buddyPreferences];
  [v4 removeObjectForKey:@"DebugFlowItemClassNames" onlyFromMemory:0];

  CFPreferencesSetAppValue(@"AppleIDForceUpgrade", 0, @"com.apple.purplebuddy");
  CFPreferencesSetAppValue(@"AnimateLanugageChoice", 0, @"com.apple.purplebuddy");
  CFPreferencesSetAppValue(@"MagnifyPresented", 0, @"com.apple.purplebuddy");
  v5 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  v6 = [BuddyMigrationState loadFromPreferences:v5];

  if (v6)
  {
    if (!self->_runUpgradeMiniBuddies)
    {
      v7 = _BYLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Clearing migration state as we are not in a Post Upgrade state";
        v9 = buf;
        goto LABEL_8;
      }

LABEL_9:

      v10 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
      [BuddyMigrationState removeFromPreferences:v10];

      goto LABEL_10;
    }

    if ([v6 intent] == &dword_0 + 1)
    {
      v7 = _BYLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        v8 = "Clearing migration state as the intent was set to source device";
        v9 = &v19;
LABEL_8:
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = +[BYPreferencesController buddyPreferences];
  v12 = [v11 objectForKey:@"AppStorePresented"];

  if (v12)
  {
    v13 = [(BuddyDataMigrator *)self didUpgrade];
    v14 = +[BYPreferencesController buddyPreferences];
    [v14 removeObjectForKey:@"AppStorePresented" onlyFromMemory:0];

    if (v13)
    {
      v15 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
      [v15 setObject:v12 forKey:@"AppStorePresented" persistImmediately:1];
    }
  }

  v16 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  [BuddySetupAnalytics removeFromDiskWithPreferences:v16];

  CFPreferencesSetAppValue(@"DisplayZoomRestart", 0, @"com.apple.purplebuddy.notbackedup");
  v17 = [(BuddyDataMigrator *)self buddyPreferences];
  [v17 removeObjectForKey:@"IntelligencePresented" onlyFromMemory:0];

  v18 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  [v18 removeObjectForKey:@"IntelligencePresented" onlyFromMemory:0];
}

- (void)_migrateChronicle
{
  v3 = [(BuddyDataMigrator *)self buddyPreferences];
  v7 = [v3 objectForKey:@"LastPresentedApplePay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[BYChronicleEntry alloc] initWithProductVersion:v7];
    v5 = [(BuddyDataMigrator *)self chronicle];
    [v5 addEntry:v4 forFeature:1];

    v6 = [(BuddyDataMigrator *)self buddyPreferences];
    [v6 removeObjectForKey:@"LastPresentedApplePay" onlyFromMemory:0];
  }

  [(BuddyDataMigrator *)self _migrateIntelligencePresentedKeyToChronicleIfNeeded];
}

- (void)_migrateIntelligencePresentedKeyToChronicleIfNeeded
{
  if ([(BuddyDataMigrator *)self didUpgrade])
  {
    v3 = [(BuddyDataMigrator *)self chronicle];
    v4 = [v3 entryForFeature:4];

    if (!v4)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v5 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
      v6 = [v5 BOOLForKey:@"IntelligencePresented"];

      if (v6)
      {
        v7 = _BYLoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "IntelligencePresented key found in notBackedUp preferences", buf, 2u);
        }

        *(v22 + 24) = 1;
      }

      else
      {
        v8 = [(BuddyDataMigrator *)self buddyPreferences];
        v9 = [v8 BOOLForKey:@"IntelligencePresented"];

        if (v9)
        {
          v10 = _BYLoggingFacility();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "IntelligencePresented key found in preferences", buf, 2u);
          }

          v11 = dispatch_semaphore_create(0);
          v12 = [(BuddyDataMigrator *)self intelligenceManager];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_5284;
          v17[3] = &unk_28A28;
          v19 = &v21;
          v13 = v11;
          v18 = v13;
          [v12 isIntelligenceEnabledWithCompletionHandler:v17];

          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      if (*(v22 + 24) == 1)
      {
        v14 = _BYLoggingFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Migrating IntelligencePresented key to chronicle", buf, 2u);
        }

        v15 = [[BYChronicleEntry alloc] initWithProductVersion:@"18.3"];
        v16 = [(BuddyDataMigrator *)self chronicle];
        [v16 addEntry:v15 forFeature:4];
      }

      _Block_object_dispose(&v21, 8);
    }
  }
}

- (BOOL)performMigration
{
  v3 = +[NSDate date];
  v4 = [(BuddyDataMigrator *)self didRestoreFromBackup];
  v5 = +[BYSetupStateManager sharedManager];
  self->_restoredIniTunes = [v5 restoreType] == &dword_0 + 1;

  v6 = [(BuddyDataMigrator *)self didUpgrade];
  v7 = +[BYManagedAppleIDBootstrap isMultiUser];
  self->_isMultiUser = v7 & 1;
  self->_runUpgradeMiniBuddies = v6 & (v7 ^ 1);
  if (v4)
  {
    restoredIniTunes = self->_restoredIniTunes;
  }

  else
  {
    restoredIniTunes = 0;
  }

  self->_runLocalRestoreMiniBuddies = restoredIniTunes;
  self->_storedBuddyMigratorVersion = [(BuddyDataMigrator *)self _storedBuddyMigratorVersion];
  self->_storedBuddyVersion = [(BuddyDataMigrator *)self _storedBuddyVersion];
  [(BuddyDataMigrator *)self _migrateChronicle];
  v9 = [(BuddyDataMigrator *)self userDataDisposition];
  v10 = _BYLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_restoredIniTunes;
    isMultiUser = self->_isMultiUser;
    v33 = 67110144;
    *v34 = v4;
    *&v34[4] = 1024;
    *&v34[6] = (v9 >> 6) & 1;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = isMultiUser;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: didRestore=%d, restoredFromDevice=%d, restoredIniTunes=%d, didUpgrade=%d, isMultiUser=%d", &v33, 0x20u);
  }

  v13 = _BYLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CFCopySystemVersionString();
    v33 = 138543362;
    *v34 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Running %{public}@", &v33, 0xCu);
  }

  v15 = [(BuddyDataMigrator *)self _performiOSMigration];
  if (([(BuddyDataMigrator *)self didUpgrade]& 1) != 0 || [(BuddyDataMigrator *)self didRestoreFromBackup])
  {
    v16 = objc_alloc_init(BYFlowSkipController);
    [v16 revisePendingFollowUpsForcingRepost:1];
  }

  [(BuddyDataMigrator *)self _updatePreferenceKeys];
  [(BuddyDataMigrator *)self _cleanupKeys];
  v17 = BYSetupAssistantBundleIdentifier;
  CFPreferencesSetAppValue(@"setupMigratorVersion", &off_2A0F8, BYSetupAssistantBundleIdentifier);
  CFPreferencesAppSynchronize(v17);
  CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
  v18 = [(BuddyDataMigrator *)self chronicle];
  v19 = [(BuddyDataMigrator *)self buddyPreferences];
  v20 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  [v18 persistBackedUpFeaturesInPreferences:v19 andNotBackedFeaturesInPreferences:v20 persistImmediately:1];

  v21 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  if ([BuddyMigrationState hasStateFromPreferences:v21])
  {
  }

  else
  {
    v22 = [(BuddyDataMigrator *)self buddyPreferences];
    v23 = [BuddyRestoreState hasStateFromPreferences:v22];

    if (!v23)
    {
      goto LABEL_19;
    }
  }

  if (BYSetupAssistantHasCompletedInitialRun())
  {
    v24 = _BYLoggingFacility();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_18B3C();
    }

    v25 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
    [BuddyMigrationState removeFromPreferences:v25];

    v26 = [(BuddyDataMigrator *)self buddyPreferences];
    [BuddyRestoreState removeFromPreferences:v26];
  }

  else
  {
    [(BuddyDataMigrator *)self deferDataMigratorExit];
  }

LABEL_19:
  self->_done = 1;
  v27 = +[NSDate date];
  [v27 timeIntervalSinceDate:v3];
  v29 = v28;

  v30 = _BYLoggingFacility();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 134217984;
    *v34 = v29;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "BuddyMigrator took %fs", &v33, 0xCu);
  }

  v31 = _BYLoggingFacility();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Finished.", &v33, 2u);
  }

  return v15;
}

- (BOOL)primaryAccountNeedsRepair
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 repairStateForAccount:v3];

    v6 = v5 != &dword_0 + 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)accountNeedsSecurityUpgrade
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [v2 accountEligibleForUpdate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)primaryAccountRequiresTermsAcceptance
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [v2 store];
  v4 = [v3 aa_primaryAppleAccount];

  if (v4)
  {
    v5 = [v4 aa_altDSID];
    v11 = 0;
    v6 = [SecureBackup getAcceptedTermsForAltDSID:v5 withError:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_18B7C(v4, v7, v8);
      }

      v9 = 0;
    }

    else
    {
      v9 = v6 == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)primaryAccountNeedsEscrowRepair
{
  v2 = +[CDPAccount sharedInstance];
  v3 = [v2 primaryAccountNeedsEscrowRecordRepair];

  return v3;
}

- (BOOL)_shouldUpsellIntelligence
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Checking Intelligence upsell", buf, 2u);
  }

  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 skipSetupKeys];
  v6 = [v5 containsObject:kCCSkipKeyIntelligence];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = [(BuddyDataMigrator *)self intelligenceManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5B2C;
    v12[3] = &unk_28A28;
    v14 = buf;
    v10 = v8;
    v13 = v10;
    [v9 shouldShowIntelligenceWithServerCheck:0 completionHandler:v12];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v16[24];

    _Block_object_dispose(buf, 8);
  }

  return v7 & 1;
}

- (void)_setVisualIntelligencePresentedIfIntelligenceIsDisabled
{
  v3 = [(BuddyDataMigrator *)self deviceCapabilities];
  v4 = [v3 hasCameraButton];

  if ((v4 & 1) == 0)
  {
    v5 = [(BuddyDataMigrator *)self buddyPreferences];
    v6 = [v5 BOOLForKey:@"StaccatoVisualIntelligencePresented"];

    if ((v6 & 1) == 0)
    {
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x3032000000;
      v17[3] = sub_5D20;
      v17[4] = sub_5D30;
      v7 = [_TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager alloc];
      v8 = [(BuddyDataMigrator *)self buddyPreferences];
      v9 = [(BuddyDataMigrator *)self deviceCapabilities];
      v10 = [(BuddyDataMigrator *)self chronicle];
      v18 = [(BuddyControlCenterVisualIntelligencePresentationManager *)v7 initWithPreferenceController:v8 deviceProvider:v9 chronicle:v10];

      v11 = dispatch_semaphore_create(0);
      v12 = [(BuddyDataMigrator *)self intelligenceManager];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_5D38;
      v14[3] = &unk_28A28;
      v16 = v17;
      v13 = v11;
      v15 = v13;
      [v12 isIntelligenceEnabledWithCompletionHandler:v14];

      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      _Block_object_dispose(v17, 8);
    }
  }
}

- (BOOL)_shouldUpsellVisualIntelligenceOrCameraControl
{
  v3 = [(BuddyDataMigrator *)self deviceCapabilities];
  v4 = [v3 hasCameraButton];

  v5 = _BYLoggingFacility();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Visual Intelligence is not applicable", buf, 2u);
    }

    goto LABEL_9;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Checking Visual Intelligence upsell", buf, 2u);
  }

  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 skipSetupKeys];
  v9 = [v8 containsObject:kCCSkipKeyCameraButton];

  if (v9)
  {
LABEL_9:
    v13 = 0;
    return v13 & 1;
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = dispatch_semaphore_create(0);
  v11 = [(BuddyDataMigrator *)self intelligenceManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_5FAC;
  v15[3] = &unk_28A28;
  v17 = buf;
  v12 = v10;
  v16 = v12;
  [v11 isIntelligenceEnabledWithCompletionHandler:v15];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v19[24];

  _Block_object_dispose(buf, 8);
  return v13 & 1;
}

- (BOOL)_needsAppleIDReauthenticationAfterMigration
{
  if (([(BuddyDataMigrator *)self userDataDisposition]& 0x40) == 0)
  {
    return 0;
  }

  v4 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  v5 = [v4 BOOLForKey:BYBuddySoftwareUpdateMigration];

  v6 = +[ACAccountStore defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  if (v7)
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deferDataMigratorExit
{
  v2 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  [v2 deferDataMigratorExit];
}

- (BOOL)_shouldOfferPeriocularEnrollment
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 skipSetupKeys];
  v5 = [v4 containsObject:kMCCCSkipSetupBiometric];

  if (v5)
  {
    return 0;
  }

  v6 = [(BuddyDataMigrator *)self buddyPreferences];
  v7 = [v6 BOOLForKey:@"FaceIDPeriocularPresented"];

  if (v7)
  {
    return 0;
  }

  v8 = +[MCProfileConnection sharedConnection];
  v9 = [v8 isPasscodeSet];

  if (!v9)
  {
    return 0;
  }

  v10 = [(BuddyDataMigrator *)self capabilities];
  v11 = [v10 supportsPeriocularFaceID];

  v12 = [(BuddyDataMigrator *)self capabilities];
  LOBYTE(v10) = [v12 hasEligibleEnrolledIdentityForPeriocularFaceIDEnrollment];

  return v11 & v10;
}

- (BOOL)_isSignificantLocationsEnabled
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Will call routine manager.", buf, 2u);
  }

  v4 = +[RTRoutineManager defaultManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_661C;
  v18[3] = &unk_28A50;
  v20 = &v26;
  v21 = &v22;
  v5 = v2;
  v19 = v5;
  [v4 fetchRoutineStateWithHandler:v18];
  v6 = dispatch_time(0, 10000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Did finish waiting for routine manager (wait result %ld)", buf, 0xCu);
  }

  if (*(v23 + 24) == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_6724;
    v15[3] = &unk_28A78;
    v17 = &v26;
    v9 = v5;
    v16 = v9;
    [v4 fetchRoutineStateWithHandler:v15];
    v10 = dispatch_time(0, 10000000000);
    v11 = dispatch_semaphore_wait(v9, v10);
    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Did finish waiting for routine manager (wait result %ld)", buf, 0xCu);
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v13 & 1;
}

- (void)_migrateStolenDeviceProtectionPreferenceKeys
{
  if ([(BuddyDataMigrator *)self didRestoreFromBackup])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_18CF4();
    }

    v4 = 0;
LABEL_9:

    v7 = +[LARatchetManager sharedInstance];
    v8 = [v7 isFeatureEnabled];

    v9 = [BYStolenDeviceProtectionPreferenceMigrator alloc];
    v10 = [(BuddyDataMigrator *)self buddyPreferences];
    v11 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
    v3 = [(BYStolenDeviceProtectionPreferenceMigrator *)v9 initWithMigrationContext:v4 sourcePreferences:v10 targetPreferences:v11];

    [v3 migratePreferenceWithSDPEnabledState:v8];
    goto LABEL_12;
  }

  v5 = [(BuddyDataMigrator *)self didUpgrade];
  v3 = _BYLoggingFacility();
  v6 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v6)
    {
      sub_18CC0();
    }

    v4 = 1;
    goto LABEL_9;
  }

  if (v6)
  {
    sub_18C8C();
  }

LABEL_12:
}

- (BOOL)_shouldOfferStolenDeviceProtection
{
  v3 = [(BuddyDataMigrator *)self buddyPreferencesExcludedFromBackup];
  v4 = [v3 BOOLForKey:@"StolenDeviceProtectionPresented"];

  if (v4)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "BuddyMigrator: StolenDeviceProtectionPresented is true";
LABEL_23:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v7 = +[LARatchetManager sharedInstance];
  v8 = [v7 isFeatureEnabled];

  if (!v8)
  {
    v9 = +[LARatchetManager sharedInstance];
    v10 = [v9 isFeatureAvailable];

    if ((v10 & 1) == 0)
    {
      v5 = _BYLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "BuddyMigrator: ratchet manager feature not available";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (!+[CLLocationManager locationServicesEnabled])
    {
      v5 = _BYLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "BuddyMigrator: location services disabled";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v11 = +[AKAccountManager sharedInstance];
    v5 = [v11 primaryAuthKitAccount];

    if (v5)
    {
      v12 = +[AKAccountManager sharedInstance];
      v13 = [v12 securityLevelForAccount:v5];

      if (v13 == &dword_4)
      {
        v14 = objc_alloc_init(CDPStateController);
        v25 = 0;
        v15 = [v14 isManateeAvailable:&v25];
        v16 = v25;

        if (v16)
        {
          v17 = _BYLoggingFacility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_18D28(v16, v17);
          }
        }

        if (v15)
        {
          if ([(BuddyDataMigrator *)self _isSignificantLocationsEnabled])
          {
            v18 = objc_alloc_init(BYFindMyManager);
            v19 = [v18 isFindMyEnabled];

            if (v19)
            {
              v20 = 1;
LABEL_40:

              goto LABEL_25;
            }

            v23 = _BYLoggingFacility();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_38;
            }

            *buf = 0;
            v24 = "BuddyMigrator: find my disabled";
            goto LABEL_37;
          }

          v23 = _BYLoggingFacility();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v24 = "BuddyMigrator: significant locations disabled";
            goto LABEL_37;
          }
        }

        else
        {
          v23 = _BYLoggingFacility();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v24 = "BuddyMigrator: manatee not available";
LABEL_37:
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
          }
        }

LABEL_38:

        goto LABEL_39;
      }

      v16 = _BYLoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "BuddyMigrator: primary authkit account not HSA2";
        goto LABEL_30;
      }
    }

    else
    {
      v16 = _BYLoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "BuddyMigrator: no primary authkit account";
LABEL_30:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

LABEL_39:
    v20 = 0;
    goto LABEL_40;
  }

  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "BuddyMigrator: ratchet manager feature already enabled";
    goto LABEL_23;
  }

LABEL_24:
  v20 = 0;
LABEL_25:

  return v20;
}

- (BOOL)_shouldLaunchForiPadMultitasking
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 skipSetupKeys];
  v5 = [v4 containsObject:kCCSkipKeyMultitasking];

  if (v5)
  {
    return 0;
  }

  v7 = [_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager alloc];
  v8 = [(BuddyDataMigrator *)self deviceCapabilities];
  v9 = [(BuddyDataMigrator *)self buddyPreferences];
  v10 = [(BuddyMultitaskingSelectionManager *)v7 initWithDeviceProvider:v8 preferences:v9];

  LOBYTE(v9) = [(BuddyMultitaskingSelectionManager *)v10 shouldShowFlow];
  return v9;
}

- (BOOL)_shouldLaunchForNewFeaturesUpsell
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 skipSetupKeys];
  v5 = [v4 containsObject:kCCSkipKeyOSShowcase];

  if (v5)
  {
    return 0;
  }

  v7 = [_TtC13BuddyMigrator22NewFeaturesFlowManager alloc];
  v8 = [(BuddyDataMigrator *)self chronicle];
  v9 = [(BuddyDataMigrator *)self featureFlags];
  v10 = [(NewFeaturesFlowManager *)v7 initWithChronicle:v8 featureFlags:v9];

  LOBYTE(v9) = [(NewFeaturesFlowManager *)v10 needsToRun];
  return v9;
}

- (BOOL)_shouldLaunchMiniBuddyForOnBoarding
{
  v3 = [_TtC13BuddyMigrator25SolariumOnBoardingManager alloc];
  v4 = [(BuddyDataMigrator *)self chronicle];
  v5 = [(BuddyDataMigrator *)self featureFlags];
  v6 = [(SolariumOnBoardingManager *)v3 initWithChronicle:v4 featureFlags:v5];
  v7 = [(SolariumOnBoardingManager *)v6 shouldLaunchToOnBoardUserToSolarium];

  return v7;
}

- (BOOL)_shouldLaunchMiniBuddyForSafetySettings
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 skipSetupKeys];
  v4 = [v3 containsObject:kCCSkipKeyAgeBasedSafetySettings];

  if (v4)
  {
    return 0;
  }

  v6 = objc_alloc_init(BuddySafetySettingsPresentationManager);
  v7 = [(BuddySafetySettingsPresentationManager *)v6 shouldPresentSafetySettingsUsingOnlyLocalChecksWithHasCompletedInitialRun:1];

  return v7;
}

@end