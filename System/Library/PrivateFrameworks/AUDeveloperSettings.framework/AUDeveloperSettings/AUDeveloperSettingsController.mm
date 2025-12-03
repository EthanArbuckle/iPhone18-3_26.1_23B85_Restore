@interface AUDeveloperSettingsController
- (AUDeveloperSettingsController)init;
- (BOOL)needLegalConsent;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)createCustomerSpecifiers;
- (id)createSeedCustomerSpecifiers;
- (id)getOverrideLocation:(id)location;
- (id)isSeedParticipationEnabled:(id)enabled;
- (id)islogCollectionEnabled:(id)enabled;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_agreePrivacyConsent;
- (void)_agreeToLegalConsent;
- (void)_notNowToLegalConsent;
- (void)_notNowToPrivacyConsent;
- (void)handleBTUserSettingsChangedNotification:(int)notification;
- (void)handleLogCollectionToggle:(id)toggle specifier:(id)specifier;
- (void)registerForNotifications;
- (void)removedSpecifier:(id)specifier;
- (void)setSeedParticipation:(id)participation;
- (void)setSeedParticipationLegacy:(id)legacy specifier:(id)specifier;
- (void)setlogCollection:(id)collection specifier:(id)specifier;
- (void)showLegalConsent:(id)consent;
- (void)showLegalConsentLearnMoreLink:(id)link;
- (void)showParticipateInSeedOffAlert:(id)alert;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AUDeveloperSettingsController

- (AUDeveloperSettingsController)init
{
  v9.receiver = self;
  v9.super_class = AUDeveloperSettingsController;
  v2 = [(AUDeveloperSettingsController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE0A8]);
    loggingController = v2->_loggingController;
    v2->_loggingController = v3;

    customerOverrideCollectionSpecifier = v2->_customerOverrideCollectionSpecifier;
    v2->_customerOverrideCollectionSpecifier = 0;

    v6 = os_log_create([*MEMORY[0x277CE5470] UTF8String], "developerSettings");
    log = v2->_log;
    v2->_log = v6;

    [(AUDeveloperSettingsController *)v2 registerForNotifications];
  }

  return v2;
}

- (void)registerForNotifications
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "com.apple.bluetoothuser.settingsChanged";
  v5 = 1024;
  selfCopy = self;
  _os_log_error_impl(&dword_23D433000, a2, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed for %s (%u)", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__AUDeveloperSettingsController_registerForNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBTUserSettingsChangedNotification:a2];
}

- (void)handleBTUserSettingsChangedNotification:(int)notification
{
  v11 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    logCollectionSpecifier = self->_logCollectionSpecifier;
    v7 = 136315394;
    v8 = "[AUDeveloperSettingsController handleBTUserSettingsChangedNotification:]";
    v9 = 2112;
    v10 = logCollectionSpecifier;
    _os_log_impl(&dword_23D433000, log, OS_LOG_TYPE_DEFAULT, "%s: Reloading %@", &v7, 0x16u);
  }

  self->_btQueried = 0;
  [(AUDeveloperSettingsController *)self reloadSpecifier:self->_logCollectionSpecifier];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AUDeveloperSettingsController;
  [(AUDeveloperSettingsController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AIRPODS_TESTING" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  [(AUDeveloperSettingsController *)self setTitle:v4];

  [(AUDeveloperSettingsController *)self setEditing:0];
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INSTALL_PRE_RELEASE_BETA_FIRMWARE_ON" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    [emptyGroupSpecifier setName:v9];

    [v6 addObject:emptyGroupSpecifier];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ImprovedSeedingUI", @"com.apple.HeadphoneSettings", 0);
    if (AppBooleanValue)
    {
      [(AUDeveloperSettingsController *)self createSeedCustomerSpecifiers];
    }

    else
    {
      [(AUDeveloperSettingsController *)self createCustomerSpecifiers];
    }
    v11 = ;
    if (v11)
    {
      v43 = emptyGroupSpecifier;
      v44 = v2;
      v42 = v11;
      [v6 addObjectsFromArray:v11];
      emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v40 = AppBooleanValue;
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [MEMORY[0x277D75410] modelSpecificLocalizedStringKeyForKey:@"HOW_TO_INSTALL"];
      v15 = [v13 localizedStringForKey:v14 value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v39 = *MEMORY[0x277D3FF88];
      [emptyGroupSpecifier2 setProperty:v15 forKey:?];

      v41 = emptyGroupSpecifier2;
      [v6 addObject:emptyGroupSpecifier2];
      emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"LEGAL_CONSENT_BRIEF" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"LEARN_MORE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v22 = [v17 stringWithFormat:@"%@ %@", v19, v21];

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [emptyGroupSpecifier3 setProperty:v24 forKey:*MEMORY[0x277D3FF48]];

      [emptyGroupSpecifier3 setProperty:v22 forKey:v39];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"LEARN_MORE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v46.location = [v22 rangeOfString:v26];
      v27 = NSStringFromRange(v46);
      [emptyGroupSpecifier3 setProperty:v27 forKey:*MEMORY[0x277D3FF58]];

      v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [emptyGroupSpecifier3 setProperty:v28 forKey:*MEMORY[0x277D3FF68]];

      [emptyGroupSpecifier3 setProperty:@"showLegalConsentLearnMoreLink:" forKey:*MEMORY[0x277D3FF50]];
      [v6 addObject:emptyGroupSpecifier3];
      if (!v40)
      {
        emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"ENABLE_LOG_COLLECTION_FOR_AIRPODS" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        [emptyGroupSpecifier4 setName:v31];

        [v6 addObject:emptyGroupSpecifier4];
        v32 = MEMORY[0x277D3FAD8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"LOG_COLLECTION" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v35 = [v32 preferenceSpecifierNamed:v34 target:self set:sel_handleLogCollectionToggle_specifier_ get:sel_islogCollectionEnabled_ detail:0 cell:6 edit:0];
        logCollectionSpecifier = self->_logCollectionSpecifier;
        self->_logCollectionSpecifier = v35;

        [v6 addObject:self->_logCollectionSpecifier];
      }

      emptyGroupSpecifier = v43;
      v2 = v44;
      v11 = v42;
    }

    v37 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
    [(AUDeveloperSettingsController *)self setSpecifiers:v37];

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (id)createCustomerSpecifiers
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
  accessoriesDictionary = [mEMORY[0x277CE5450] accessoriesDictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [accessoriesDictionary countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v37 = *v42;
    v35 = *MEMORY[0x277CE5560];
    v36 = *MEMORY[0x277CE5580];
    v3 = *MEMORY[0x277CE5530];
    v30 = *MEMORY[0x277CE5530];
    v31 = *MEMORY[0x277D3FF38];
    v34 = *MEMORY[0x277D3FD80];
    v32 = accessoriesDictionary;
    v33 = *MEMORY[0x277D3FF00];
    do
    {
      v4 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(accessoriesDictionary);
        }

        v5 = *(*(&v41 + 1) + 8 * v4);
        v6 = [accessoriesDictionary objectForKeyedSubscript:v5];
        v7 = [v6 objectForKeyedSubscript:v36];
        if ([v7 isEqualToString:&stru_284F76208])
        {
          v8 = v5;

          v7 = v8;
        }

        v9 = [v6 objectForKeyedSubscript:v35];
        v10 = AUDeveloperSettingsAccessoryFusingStringToType();
        if (v10 == 2)
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = v11;
          v13 = @"UNFUSED_NOT_ELIGIBLE";
          goto LABEL_12;
        }

        if (!v10)
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = v11;
          v13 = @"DEV_FUSED_NOT_ELIGIBLE";
LABEL_12:
          v14 = [v11 localizedStringForKey:v13 value:&stru_284F76208 table:@"AUDeveloperSettings"];
          v15 = [v7 stringByAppendingString:v14];
          v16 = 1;
          goto LABEL_13;
        }

        v12 = [v6 objectForKeyedSubscript:v30];
        v17 = AUDeveloperSettingsURLStringToType();
        v16 = v17 - 4 < 0xFFFFFFFFFFFFFFFELL && v17 != 6;
        if (v17 <= 6 && ((1 << v17) & 0x4C) != 0)
        {
          goto LABEL_21;
        }

        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v14 localizedStringForKey:@"LOCATION_NOT_ELIGIBLE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v15 = [v7 stringByAppendingString:v24];

        v7 = v24;
LABEL_13:

        v7 = v15;
        accessoriesDictionary = v32;
LABEL_21:

        mEMORY[0x277D75130] = [MEMORY[0x277D75130] sharedApplication];
        v20 = [MEMORY[0x277CBEBC0] URLWithString:@"appleconnect://settings"];
        v21 = [mEMORY[0x277D75130] canOpenURL:v20];

        if (v16 || !v21)
        {
          [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:sel_setSeedParticipationLegacy_specifier_ get:sel_isSeedParticipationEnabled_ detail:0 cell:6 edit:0];
        }

        else
        {
          [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:sel_getOverrideLocation_ detail:objc_opt_class() cell:1 edit:0];
        }
        v22 = ;
        updateSeedEnablementForAccessory();
        if (v16)
        {
          [v22 setProperty:MEMORY[0x277CBEC28] forKey:v31];
        }

        [v22 setProperty:MEMORY[0x277CBEC38] forKey:v34];
        [v22 setIdentifier:v5];
        v23 = NSStringFromSelector(sel_removedSpecifier_);
        [v22 setProperty:v23 forKey:v33];

        [v39 addObject:v22];
        ++v4;
      }

      while (v40 != v4);
      v25 = [accessoriesDictionary countByEnumeratingWithState:&v41 objects:v45 count:16];
      v40 = v25;
    }

    while (v25);
  }

  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v39];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)createSeedCustomerSpecifiers
{
  v65 = *MEMORY[0x277D85DE8];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
  accessoriesDictionary = [mEMORY[0x277CE5450] accessoriesDictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = [accessoriesDictionary countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v52)
  {
    v51 = *v60;
    v46 = *MEMORY[0x277CE5560];
    v47 = *MEMORY[0x277CE5580];
    v44 = *MEMORY[0x277D3FF38];
    v45 = *MEMORY[0x277CE5520];
    v43 = *MEMORY[0x277D3FD80];
    v42 = *MEMORY[0x277D3FF00];
    v49 = accessoriesDictionary;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(accessoriesDictionary);
        }

        v4 = *(*(&v59 + 1) + 8 * i);
        v5 = [accessoriesDictionary objectForKeyedSubscript:v4];
        v6 = [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x800000 error:0];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v8)
        {
          v9 = v8;
          v53 = v5;
          v54 = i;
          v10 = *v56;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v56 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * v11);
            serialNumber = [v12 serialNumber];
            if ([serialNumber isEqualToString:v4])
            {
              goto LABEL_19;
            }

            serialNumberRight = [v12 serialNumberRight];
            if ([serialNumberRight isEqualToString:v4])
            {
              break;
            }

            serialNumberLeft = [v12 serialNumberLeft];
            v16 = [serialNumberLeft isEqualToString:v4];

            if (v16)
            {
              goto LABEL_20;
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              v17 = 0;
              v18 = v7;
              accessoriesDictionary = v49;
              goto LABEL_41;
            }
          }

LABEL_19:
LABEL_20:
          v17 = v12;

          if (!v17)
          {
            accessoriesDictionary = v49;
            v5 = v53;
            i = v54;
            goto LABEL_43;
          }

          productID = [v17 productID];
          v20 = (productID - 8194) > 0x26 || ((1 << (productID - 2)) & 0x6472863101) == 0;
          accessoriesDictionary = v49;
          v5 = v53;
          i = v54;
          if (!v20)
          {
            productID2 = [v17 productID];
            if ((productID2 - 8212) <= 0x14 && ((1 << (productID2 - 20)) & 0x1916A1) != 0)
            {
              connectedServices = [v17 connectedServices];
              v18 = [v53 objectForKeyedSubscript:v47];
              if (![v18 length])
              {
                v24 = v4;

                v18 = v24;
              }

              v25 = [v53 objectForKeyedSubscript:v46];
              v26 = AUDeveloperSettingsAccessoryFusingStringToType();
              v50 = v25;
              v27 = connectedServices;
              if (v26)
              {
                if (v26 == 2)
                {
                  v28 = @"UNFUSED_NOT_ELIGIBLE";
                  goto LABEL_36;
                }

                v32 = 1;
              }

              else
              {
                v28 = @"DEV_FUSED_NOT_ELIGIBLE";
LABEL_36:
                v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v30 = [v29 localizedStringForKey:v28 value:&stru_284F76208 table:@"AUDeveloperSettings"];
                v31 = [v18 stringByAppendingString:v30];

                v32 = 0;
                v18 = v31;
              }

              v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:1 edit:0];
              [v33 setButtonAction:sel_setSeedParticipation_];
              v34 = [MEMORY[0x277CCABB0] numberWithBool:v27 != 0];
              [v33 setProperty:v34 forKey:v45];

              updateSeedEnablementForAccessory();
              v35 = [MEMORY[0x277CCABB0] numberWithBool:v32];
              [v33 setProperty:v35 forKey:v44];

              [v33 setProperty:MEMORY[0x277CBEC38] forKey:v43];
              [v33 setIdentifier:v4];
              v36 = NSStringFromSelector(sel_removedSpecifier_);
              [v33 setProperty:v36 forKey:v42];

              if (v27)
              {
                [v41 addObject:v33];
              }

LABEL_41:
              v5 = v53;
              i = v54;
              goto LABEL_42;
            }
          }
        }

        else
        {
          v17 = 0;
          v18 = v7;
LABEL_42:
        }

LABEL_43:
      }

      v52 = [accessoriesDictionary countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v52);
  }

  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v41];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)showLegalConsentLearnMoreLink:(id)link
{
  v4 = objc_opt_new();
  [(AUDeveloperSettingsController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)setSeedParticipationLegacy:(id)legacy specifier:(id)specifier
{
  specifierCopy = specifier;
  if ([legacy BOOLValue])
  {
    if ([(AUDeveloperSettingsController *)self needLegalConsent])
    {
      [(AUDeveloperSettingsController *)self showLegalConsent:specifierCopy];
    }

    else
    {
      mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
      identifier = [specifierCopy identifier];
      [mEMORY[0x277CE5450] updateAccessory:identifier locationType:3];

      [(AUDeveloperSettingsController *)self reloadSpecifier:self->_customerOverrideCollectionSpecifier];
    }
  }

  else
  {
    [(AUDeveloperSettingsController *)self showParticipateInSeedOffAlert:specifierCopy];
  }
}

- (void)setSeedParticipation:(id)participation
{
  v37 = *MEMORY[0x277D85DE8];
  identifier = [participation identifier];
  [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x800000 error:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v4)
  {
LABEL_19:

    v17 = 0;
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AUDeveloperSettingsController setSeedParticipation:identifier];
    }

    goto LABEL_32;
  }

  v5 = v4;
  v6 = *v31;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v31 != v6)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v30 + 1) + 8 * v7);
    productID = [v8 productID];
    if ((productID - 8194) > 0x26 || ((1 << (productID - 2)) & 0x6472863101) == 0)
    {
      goto LABEL_17;
    }

    productID2 = [v8 productID];
    if ((productID2 - 8212) > 0x14 || ((1 << (productID2 - 20)) & 0x1916A1) == 0)
    {
      goto LABEL_17;
    }

    serialNumber = [v8 serialNumber];
    if ([serialNumber isEqualToString:identifier])
    {
      goto LABEL_21;
    }

    serialNumberRight = [v8 serialNumberRight];
    if ([serialNumberRight isEqualToString:identifier])
    {
      break;
    }

    serialNumberLeft = [v8 serialNumberLeft];
    v16 = [serialNumberLeft isEqualToString:identifier];

    if (v16)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (v5 == ++v7)
    {
      v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      goto LABEL_19;
    }
  }

LABEL_21:
LABEL_22:
  v17 = v8;

  if (!v17)
  {
    goto LABEL_30;
  }

  btAddressData = [v17 btAddressData];
  v19 = [btAddressData length];

  if (v19 != 6)
  {
    goto LABEL_30;
  }

  btAddressData2 = [v17 btAddressData];
  bytes = [btAddressData2 bytes];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=Bluetooth&path=HeadphoneDetail/SeedingUI&identifier=%@", v22];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v23;
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Navigating to Bluetooth settings at URL: %{public}@", buf, 0xCu);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v25 = [MEMORY[0x277CBEBC0] URLWithString:v23];
  v29 = 0;
  [defaultWorkspace openSensitiveURL:v25 withOptions:0 error:&v29];
  v26 = v29;

  if (v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AUDeveloperSettingsController setSeedParticipation:v26];
  }

LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)isSeedParticipationEnabled:(id)enabled
{
  v3 = MEMORY[0x277CE5450];
  enabledCopy = enabled;
  sharedDatabase = [v3 sharedDatabase];
  identifier = [enabledCopy identifier];

  v7 = [sharedDatabase isSeedParticipationEnabled:identifier];
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithBool:v7];
}

- (BOOL)needLegalConsent
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessoriesDictionary = [mEMORY[0x277CE5450] accessoriesDictionary];
  v4 = [accessoriesDictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(accessoriesDictionary);
        }

        if ([mEMORY[0x277CE5450] isSeedParticipationEnabled:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [accessoriesDictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_agreeToLegalConsent
{
  mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
  identifier = [(PSSpecifier *)self->_currentAccessorySpecifier identifier];
  [mEMORY[0x277CE5450] updateAccessory:identifier locationType:3];

  [(AUDeveloperSettingsController *)self reloadSpecifier:self->_customerOverrideCollectionSpecifier];

  [(AUDeveloperSettingsController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_notNowToLegalConsent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AUDeveloperSettingsController__notNowToLegalConsent__block_invoke;
  v2[3] = &unk_278BD0BD8;
  v2[4] = self;
  [(AUDeveloperSettingsController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)showLegalConsent:(id)consent
{
  v27[1] = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  objc_storeStrong(&self->_currentAccessorySpecifier, consent);
  if (!self->_legalConsentController)
  {
    v6 = objc_alloc(getOBTextWelcomeControllerClass());
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"LEGAL_CONSENT_TITLE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    v9 = [v6 initWithTitle:v8 detailText:0 symbolName:0];
    legalConsentController = self->_legalConsentController;
    self->_legalConsentController = v9;

    v11 = self->_legalConsentController;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"LEGAL_CONSENT_TEXT" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    [(OBTextWelcomeController *)v11 addSectionWithHeader:0 content:v13];

    v14 = objc_alloc(MEMORY[0x277D751E8]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"AGREE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    v17 = [v14 initWithTitle:v16 style:2 target:self action:sel__agreeToLegalConsent];

    v18 = objc_alloc(MEMORY[0x277D751E8]);
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"NOT_NOW" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    v21 = [v18 initWithTitle:v20 style:2 target:self action:sel__notNowToLegalConsent];

    navigationItem = [(OBTextWelcomeController *)self->_legalConsentController navigationItem];
    [navigationItem setRightBarButtonItem:v17];

    navigationItem2 = [(OBTextWelcomeController *)self->_legalConsentController navigationItem];
    [navigationItem2 setLeftBarButtonItem:v21];
  }

  v24 = objc_opt_new();
  v27[0] = self->_legalConsentController;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v24 setViewControllers:v25];

  [v24 setModalPresentationStyle:2];
  [(AUDeveloperSettingsController *)self presentViewController:v24 animated:1 completion:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)showParticipateInSeedOffAlert:(id)alert
{
  alertCopy = alert;
  mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
  accessoriesDictionary = [mEMORY[0x277CE5450] accessoriesDictionary];

  identifier = [alertCopy identifier];
  v26 = [accessoriesDictionary objectForKeyedSubscript:identifier];

  v24 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE5580]];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TURN_OFF_AIRPODS_TESTING_TEXT" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  v23 = [v6 stringWithFormat:v8, v24];

  v9 = MEMORY[0x277D75108];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"TURN_OFF_AIRPODS_TESTING_TITLE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  v12 = [v9 alertControllerWithTitle:v11 message:v23 preferredStyle:1];

  v13 = MEMORY[0x277D75100];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"TURN_OFF" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__AUDeveloperSettingsController_showParticipateInSeedOffAlert___block_invoke;
  v30[3] = &unk_278BD0D00;
  v16 = alertCopy;
  v31 = v16;
  v17 = [v13 actionWithTitle:v15 style:1 handler:v30];
  [v12 addAction:v17];

  v18 = MEMORY[0x277D75100];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"NOT_NOW" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__AUDeveloperSettingsController_showParticipateInSeedOffAlert___block_invoke_2;
  v28[3] = &unk_278BD0D28;
  v28[4] = self;
  v29 = v16;
  v21 = v16;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v28];
  [v12 addAction:v22];

  [(AUDeveloperSettingsController *)self presentViewController:v12 animated:1 completion:0];
}

void __63__AUDeveloperSettingsController_showParticipateInSeedOffAlert___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CE5450] sharedDatabase];
  v2 = [*(a1 + 32) identifier];
  [v3 updateAccessory:v2 locationType:2];
}

- (void)_agreePrivacyConsent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__AUDeveloperSettingsController__agreePrivacyConsent__block_invoke;
  v2[3] = &unk_278BD0BD8;
  v2[4] = self;
  [(AUDeveloperSettingsController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)_notNowToPrivacyConsent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__AUDeveloperSettingsController__notNowToPrivacyConsent__block_invoke;
  v2[3] = &unk_278BD0BD8;
  v2[4] = self;
  [(AUDeveloperSettingsController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)setlogCollection:(id)collection specifier:(id)specifier
{
  collectionCopy = collection;
  specifierCopy = specifier;
  bOOLValue = [collectionCopy BOOLValue];
  objc_initWeak(&location, self);
  loggingController = self->_loggingController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__AUDeveloperSettingsController_setlogCollection_specifier___block_invoke;
  v11[3] = &unk_278BD0D78;
  objc_copyWeak(&v13, &location);
  v10 = specifierCopy;
  v12 = v10;
  [(CBUserController *)loggingController setAppleAudioAccessoryLimitedLogging:bOOLValue completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __60__AUDeveloperSettingsController_setlogCollection_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__AUDeveloperSettingsController_setlogCollection_specifier___block_invoke_2;
  block[3] = &unk_278BD0D50;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __60__AUDeveloperSettingsController_setlogCollection_specifier___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[AUDeveloperSettingsController setlogCollection:specifier:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: inError=%@", &v5, 0x16u);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 40)];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleLogCollectionToggle:(id)toggle specifier:(id)specifier
{
  v31[1] = *MEMORY[0x277D85DE8];
  toggleCopy = toggle;
  specifierCopy = specifier;
  bOOLValue = [toggleCopy BOOLValue];
  if (self->_isLoggingEnabled != bOOLValue)
  {
    v9 = bOOLValue;
    objc_storeStrong(&self->_currentAccessorySpecifier, specifier);
    if (v9)
    {
      if (!self->_privacyConsentController)
      {
        v10 = objc_alloc(getOBTextWelcomeControllerClass());
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"PRIVACY_CONSENT_TITLE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v13 = [v10 initWithTitle:v12 detailText:0 symbolName:0];
        privacyConsentController = self->_privacyConsentController;
        self->_privacyConsentController = v13;

        v15 = self->_privacyConsentController;
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"PRIVACY_CONSENT_TEXT" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        [(OBTextWelcomeController *)v15 addSectionWithHeader:0 content:v17];

        v18 = objc_alloc(MEMORY[0x277D751E8]);
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"AGREE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v21 = [v18 initWithTitle:v20 style:2 target:self action:sel__agreePrivacyConsent];

        v22 = objc_alloc(MEMORY[0x277D751E8]);
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"NOT_NOW" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v25 = [v22 initWithTitle:v24 style:2 target:self action:sel__notNowToPrivacyConsent];

        navigationItem = [(OBTextWelcomeController *)self->_privacyConsentController navigationItem];
        [navigationItem setRightBarButtonItem:v21];

        navigationItem2 = [(OBTextWelcomeController *)self->_privacyConsentController navigationItem];
        [navigationItem2 setLeftBarButtonItem:v25];
      }

      v28 = objc_opt_new();
      v31[0] = self->_privacyConsentController;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [v28 setViewControllers:v29];

      [v28 setModalPresentationStyle:2];
      [(AUDeveloperSettingsController *)self presentViewController:v28 animated:1 completion:0];
    }

    else
    {
      [(AUDeveloperSettingsController *)self setlogCollection:toggleCopy specifier:specifierCopy];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)islogCollectionEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = enabledCopy;
  if (self->_btQueried)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLoggingEnabled];
  }

  else
  {
    loggingController = self->_loggingController;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __56__AUDeveloperSettingsController_islogCollectionEnabled___block_invoke;
    v12 = &unk_278BD0DC8;
    selfCopy = self;
    v14 = enabledCopy;
    [(CBUserController *)loggingController appleAudioAccessoryLimitedLoggingWithCompletion:&v9];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isLoggingEnabled, v9, v10, v11, v12, selfCopy}];
  }

  return v6;
}

void __56__AUDeveloperSettingsController_islogCollectionEnabled___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__AUDeveloperSettingsController_islogCollectionEnabled___block_invoke_2;
  v8[3] = &unk_278BD0DA0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __56__AUDeveloperSettingsController_islogCollectionEnabled___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1456);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[AUDeveloperSettingsController islogCollectionEnabled:]_block_invoke_2";
    v9 = 1024;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23D433000, v2, OS_LOG_TYPE_DEFAULT, "%s: inEnabled=%d, error=%@", &v7, 0x1Cu);
  }

  *(*(a1 + 32) + 1513) = *(a1 + 56);
  *(*(a1 + 32) + 1512) = 1;
  result = [*(a1 + 32) reloadSpecifier:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getOverrideLocation:(id)location
{
  identifier = [location identifier];
  v4 = getInfoForAccessory();

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CE5530]];
  if (v5 && AUDeveloperSettingsURLStringToType() == 6)
  {
    v6 = *MEMORY[0x277CE5468];

    v5 = v6;
  }

  return v5;
}

- (void)removedSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CE5450];
  specifierCopy = specifier;
  sharedDatabase = [v3 sharedDatabase];
  identifier = [specifierCopy identifier];

  [sharedDatabase removeAccessoryWithSerialNumber:identifier];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(AUDeveloperSettingsController *)self indexForIndexPath:path];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  v7 = [v6 isEqualToSpecifier:self->_logCollectionSpecifier] ^ 1;

  return v7;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(AUDeveloperSettingsController *)self indexForIndexPath:path];
  v6 = [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  LOBYTE(selfCopy) = [v6 isEqualToSpecifier:selfCopy->_logCollectionSpecifier];

  return selfCopy ^ 1;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(AUDeveloperSettingsController *)self indexForIndexPath:path, style];
  v7 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:style];
  if (([v7 isEqualToSpecifier:self->_logCollectionSpecifier] & 1) == 0)
  {
    [(AUDeveloperSettingsController *)self removedSpecifier:v7];
    [(AUDeveloperSettingsController *)self removeSpecifier:v7];
  }
}

- (void)setSeedParticipation:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error navigating to bluetooth settings: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setSeedParticipation:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find paired bluetooth device matching: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end