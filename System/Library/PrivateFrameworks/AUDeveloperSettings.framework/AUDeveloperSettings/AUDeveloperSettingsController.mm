@interface AUDeveloperSettingsController
- (AUDeveloperSettingsController)init;
- (BOOL)needLegalConsent;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (id)createCustomerSpecifiers;
- (id)createSeedCustomerSpecifiers;
- (id)getOverrideLocation:(id)a3;
- (id)isSeedParticipationEnabled:(id)a3;
- (id)islogCollectionEnabled:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_agreePrivacyConsent;
- (void)_agreeToLegalConsent;
- (void)_notNowToLegalConsent;
- (void)_notNowToPrivacyConsent;
- (void)handleBTUserSettingsChangedNotification:(int)a3;
- (void)handleLogCollectionToggle:(id)a3 specifier:(id)a4;
- (void)registerForNotifications;
- (void)removedSpecifier:(id)a3;
- (void)setSeedParticipation:(id)a3;
- (void)setSeedParticipationLegacy:(id)a3 specifier:(id)a4;
- (void)setlogCollection:(id)a3 specifier:(id)a4;
- (void)showLegalConsent:(id)a3;
- (void)showLegalConsentLearnMoreLink:(id)a3;
- (void)showParticipateInSeedOffAlert:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
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
  v6 = a1;
  _os_log_error_impl(&dword_23D433000, a2, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed for %s (%u)", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__AUDeveloperSettingsController_registerForNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBTUserSettingsChangedNotification:a2];
}

- (void)handleBTUserSettingsChangedNotification:(int)a3
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
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INSTALL_PRE_RELEASE_BETA_FIRMWARE_ON" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    [v7 setName:v9];

    [v6 addObject:v7];
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
      v43 = v7;
      v44 = v2;
      v42 = v11;
      [v6 addObjectsFromArray:v11];
      v12 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v40 = AppBooleanValue;
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [MEMORY[0x277D75410] modelSpecificLocalizedStringKeyForKey:@"HOW_TO_INSTALL"];
      v15 = [v13 localizedStringForKey:v14 value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v39 = *MEMORY[0x277D3FF88];
      [v12 setProperty:v15 forKey:?];

      v41 = v12;
      [v6 addObject:v12];
      v16 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"LEGAL_CONSENT_BRIEF" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"LEARN_MORE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v22 = [v17 stringWithFormat:@"%@ %@", v19, v21];

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [v16 setProperty:v24 forKey:*MEMORY[0x277D3FF48]];

      [v16 setProperty:v22 forKey:v39];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"LEARN_MORE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
      v46.location = [v22 rangeOfString:v26];
      v27 = NSStringFromRange(v46);
      [v16 setProperty:v27 forKey:*MEMORY[0x277D3FF58]];

      v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v16 setProperty:v28 forKey:*MEMORY[0x277D3FF68]];

      [v16 setProperty:@"showLegalConsentLearnMoreLink:" forKey:*MEMORY[0x277D3FF50]];
      [v6 addObject:v16];
      if (!v40)
      {
        v29 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"ENABLE_LOG_COLLECTION_FOR_AIRPODS" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        [v29 setName:v31];

        [v6 addObject:v29];
        v32 = MEMORY[0x277D3FAD8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"LOG_COLLECTION" value:&stru_284F76208 table:@"AUDeveloperSettings"];
        v35 = [v32 preferenceSpecifierNamed:v34 target:self set:sel_handleLogCollectionToggle_specifier_ get:sel_islogCollectionEnabled_ detail:0 cell:6 edit:0];
        logCollectionSpecifier = self->_logCollectionSpecifier;
        self->_logCollectionSpecifier = v35;

        [v6 addObject:self->_logCollectionSpecifier];
      }

      v7 = v43;
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
  v29 = [MEMORY[0x277CE5450] sharedDatabase];
  v2 = [v29 accessoriesDictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [v2 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v37 = *v42;
    v35 = *MEMORY[0x277CE5560];
    v36 = *MEMORY[0x277CE5580];
    v3 = *MEMORY[0x277CE5530];
    v30 = *MEMORY[0x277CE5530];
    v31 = *MEMORY[0x277D3FF38];
    v34 = *MEMORY[0x277D3FD80];
    v32 = v2;
    v33 = *MEMORY[0x277D3FF00];
    do
    {
      v4 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v41 + 1) + 8 * v4);
        v6 = [v2 objectForKeyedSubscript:v5];
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
        v2 = v32;
LABEL_21:

        v19 = [MEMORY[0x277D75130] sharedApplication];
        v20 = [MEMORY[0x277CBEBC0] URLWithString:@"appleconnect://settings"];
        v21 = [v19 canOpenURL:v20];

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
      v25 = [v2 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
  v40 = [MEMORY[0x277CE5450] sharedDatabase];
  v2 = [v40 accessoriesDictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = [v2 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v52)
  {
    v51 = *v60;
    v46 = *MEMORY[0x277CE5560];
    v47 = *MEMORY[0x277CE5580];
    v44 = *MEMORY[0x277D3FF38];
    v45 = *MEMORY[0x277CE5520];
    v43 = *MEMORY[0x277D3FD80];
    v42 = *MEMORY[0x277D3FF00];
    v49 = v2;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(v2);
        }

        v4 = *(*(&v59 + 1) + 8 * i);
        v5 = [v2 objectForKeyedSubscript:v4];
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
            v13 = [v12 serialNumber];
            if ([v13 isEqualToString:v4])
            {
              goto LABEL_19;
            }

            v14 = [v12 serialNumberRight];
            if ([v14 isEqualToString:v4])
            {
              break;
            }

            v15 = [v12 serialNumberLeft];
            v16 = [v15 isEqualToString:v4];

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
              v2 = v49;
              goto LABEL_41;
            }
          }

LABEL_19:
LABEL_20:
          v17 = v12;

          if (!v17)
          {
            v2 = v49;
            v5 = v53;
            i = v54;
            goto LABEL_43;
          }

          v19 = [v17 productID];
          v20 = (v19 - 8194) > 0x26 || ((1 << (v19 - 2)) & 0x6472863101) == 0;
          v2 = v49;
          v5 = v53;
          i = v54;
          if (!v20)
          {
            v21 = [v17 productID];
            if ((v21 - 8212) <= 0x14 && ((1 << (v21 - 20)) & 0x1916A1) != 0)
            {
              v23 = [v17 connectedServices];
              v18 = [v53 objectForKeyedSubscript:v47];
              if (![v18 length])
              {
                v24 = v4;

                v18 = v24;
              }

              v25 = [v53 objectForKeyedSubscript:v46];
              v26 = AUDeveloperSettingsAccessoryFusingStringToType();
              v50 = v25;
              v27 = v23;
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

      v52 = [v2 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v52);
  }

  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v41];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)showLegalConsentLearnMoreLink:(id)a3
{
  v4 = objc_opt_new();
  [(AUDeveloperSettingsController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)setSeedParticipationLegacy:(id)a3 specifier:(id)a4
{
  v8 = a4;
  if ([a3 BOOLValue])
  {
    if ([(AUDeveloperSettingsController *)self needLegalConsent])
    {
      [(AUDeveloperSettingsController *)self showLegalConsent:v8];
    }

    else
    {
      v6 = [MEMORY[0x277CE5450] sharedDatabase];
      v7 = [v8 identifier];
      [v6 updateAccessory:v7 locationType:3];

      [(AUDeveloperSettingsController *)self reloadSpecifier:self->_customerOverrideCollectionSpecifier];
    }
  }

  else
  {
    [(AUDeveloperSettingsController *)self showParticipateInSeedOffAlert:v8];
  }
}

- (void)setSeedParticipation:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [a3 identifier];
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
      [AUDeveloperSettingsController setSeedParticipation:v3];
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
    v9 = [v8 productID];
    if ((v9 - 8194) > 0x26 || ((1 << (v9 - 2)) & 0x6472863101) == 0)
    {
      goto LABEL_17;
    }

    v11 = [v8 productID];
    if ((v11 - 8212) > 0x14 || ((1 << (v11 - 20)) & 0x1916A1) == 0)
    {
      goto LABEL_17;
    }

    v13 = [v8 serialNumber];
    if ([v13 isEqualToString:v3])
    {
      goto LABEL_21;
    }

    v14 = [v8 serialNumberRight];
    if ([v14 isEqualToString:v3])
    {
      break;
    }

    v15 = [v8 serialNumberLeft];
    v16 = [v15 isEqualToString:v3];

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

  v18 = [v17 btAddressData];
  v19 = [v18 length];

  if (v19 != 6)
  {
    goto LABEL_30;
  }

  v20 = [v17 btAddressData];
  v21 = [v20 bytes];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *v21, v21[1], v21[2], v21[3], v21[4], v21[5]];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=Bluetooth&path=HeadphoneDetail/SeedingUI&identifier=%@", v22];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v23;
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Navigating to Bluetooth settings at URL: %{public}@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v25 = [MEMORY[0x277CBEBC0] URLWithString:v23];
  v29 = 0;
  [v24 openSensitiveURL:v25 withOptions:0 error:&v29];
  v26 = v29;

  if (v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AUDeveloperSettingsController setSeedParticipation:v26];
  }

LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)isSeedParticipationEnabled:(id)a3
{
  v3 = MEMORY[0x277CE5450];
  v4 = a3;
  v5 = [v3 sharedDatabase];
  v6 = [v4 identifier];

  v7 = [v5 isSeedParticipationEnabled:v6];
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithBool:v7];
}

- (BOOL)needLegalConsent
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE5450] sharedDatabase];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 accessoriesDictionary];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([v2 isSeedParticipationEnabled:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [MEMORY[0x277CE5450] sharedDatabase];
  v4 = [(PSSpecifier *)self->_currentAccessorySpecifier identifier];
  [v3 updateAccessory:v4 locationType:3];

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

- (void)showLegalConsent:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_currentAccessorySpecifier, a3);
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

    v22 = [(OBTextWelcomeController *)self->_legalConsentController navigationItem];
    [v22 setRightBarButtonItem:v17];

    v23 = [(OBTextWelcomeController *)self->_legalConsentController navigationItem];
    [v23 setLeftBarButtonItem:v21];
  }

  v24 = objc_opt_new();
  v27[0] = self->_legalConsentController;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v24 setViewControllers:v25];

  [v24 setModalPresentationStyle:2];
  [(AUDeveloperSettingsController *)self presentViewController:v24 animated:1 completion:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)showParticipateInSeedOffAlert:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE5450] sharedDatabase];
  v27 = [v4 accessoriesDictionary];

  v5 = [v3 identifier];
  v26 = [v27 objectForKeyedSubscript:v5];

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
  v16 = v3;
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

- (void)setlogCollection:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  objc_initWeak(&location, self);
  loggingController = self->_loggingController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__AUDeveloperSettingsController_setlogCollection_specifier___block_invoke;
  v11[3] = &unk_278BD0D78;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [(CBUserController *)loggingController setAppleAudioAccessoryLimitedLogging:v8 completion:v11];

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

- (void)handleLogCollectionToggle:(id)a3 specifier:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  if (self->_isLoggingEnabled != v8)
  {
    v9 = v8;
    objc_storeStrong(&self->_currentAccessorySpecifier, a4);
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

        v26 = [(OBTextWelcomeController *)self->_privacyConsentController navigationItem];
        [v26 setRightBarButtonItem:v21];

        v27 = [(OBTextWelcomeController *)self->_privacyConsentController navigationItem];
        [v27 setLeftBarButtonItem:v25];
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
      [(AUDeveloperSettingsController *)self setlogCollection:v6 specifier:v7];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)islogCollectionEnabled:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    v13 = self;
    v14 = v4;
    [(CBUserController *)loggingController appleAudioAccessoryLimitedLoggingWithCompletion:&v9];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isLoggingEnabled, v9, v10, v11, v12, v13}];
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

- (id)getOverrideLocation:(id)a3
{
  v3 = [a3 identifier];
  v4 = getInfoForAccessory();

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CE5530]];
  if (v5 && AUDeveloperSettingsURLStringToType() == 6)
  {
    v6 = *MEMORY[0x277CE5468];

    v5 = v6;
  }

  return v5;
}

- (void)removedSpecifier:(id)a3
{
  v3 = MEMORY[0x277CE5450];
  v4 = a3;
  v6 = [v3 sharedDatabase];
  v5 = [v4 identifier];

  [v6 removeAccessoryWithSerialNumber:v5];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = [(AUDeveloperSettingsController *)self indexForIndexPath:a4];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  v7 = [v6 isEqualToSpecifier:self->_logCollectionSpecifier] ^ 1;

  return v7;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = self;
  v5 = [(AUDeveloperSettingsController *)self indexForIndexPath:a4];
  v6 = [*(&v4->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  LOBYTE(v4) = [v6 isEqualToSpecifier:v4->_logCollectionSpecifier];

  return v4 ^ 1;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = [(AUDeveloperSettingsController *)self indexForIndexPath:a5, a4];
  v7 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v6];
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