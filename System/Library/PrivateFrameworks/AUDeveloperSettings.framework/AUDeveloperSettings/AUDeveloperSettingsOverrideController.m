@interface AUDeveloperSettingsOverrideController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDescriptionForSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation AUDeveloperSettingsOverrideController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AUDeveloperSettingsOverrideController;
  [(AUDeveloperSettingsOverrideController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CUSTOMER_STAGING_OVERRIDE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
  [(AUDeveloperSettingsOverrideController *)self setTitle:v4];
}

- (id)specifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    v4 = v3;
    goto LABEL_17;
  }

  v37 = *MEMORY[0x277D3FC48];
  v5 = [(AUDeveloperSettingsOverrideController *)v2 loadSpecifiersFromPlistName:*MEMORY[0x277CE5478] target:v2];
  v6 = [v5 specifierForID:*MEMORY[0x277CE5510]];
  locationRadioGroup = v2->_locationRadioGroup;
  v2->_locationRadioGroup = v6;

  v8 = [v5 specifierForID:*MEMORY[0x277CE54E8]];
  p_customerSpecifier = &v2->_customerSpecifier;
  customerSpecifier = v2->_customerSpecifier;
  v2->_customerSpecifier = v8;

  v11 = [v5 specifierForID:*MEMORY[0x277CE5500]];
  publicSeedSpecifier = v2->_publicSeedSpecifier;
  p_publicSeedSpecifier = &v2->_publicSeedSpecifier;
  v2->_publicSeedSpecifier = v11;

  v13 = [v5 specifierForID:*MEMORY[0x277CE54F8]];
  developerSeedSpecifier = v2->_developerSeedSpecifier;
  v2->_developerSeedSpecifier = v13;

  v15 = [v5 specifierForID:*MEMORY[0x277CE54F0]];
  customerStagingSpecifier = v2->_customerStagingSpecifier;
  v2->_customerStagingSpecifier = v15;

  v17 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  descriptionSpecifier = v2->_descriptionSpecifier;
  v2->_descriptionSpecifier = v17;

  v19 = [(AUDeveloperSettingsOverrideController *)v2 specifier];
  v20 = [v19 identifier];
  v21 = getInfoForAccessory();
  v22 = [v21 mutableCopy];

  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE5560]];
  if (AUDeveloperSettingsAccessoryFusingStringToType() == 1)
  {
    v24 = *MEMORY[0x277CE5530];
    v25 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE5530]];
    v26 = AUDeveloperSettingsURLStringToType();
    v27 = v2->_locationRadioGroup;
    v28 = *MEMORY[0x277D40090];
    if (v26 > 5)
    {
      if (v26 == 6)
      {
        [(PSSpecifier *)v27 setProperty:v2->_customerStagingSpecifier forKey:v28];
        p_customerSpecifier = &v2->_customerStagingSpecifier;
        goto LABEL_14;
      }

      if (v26 == 8)
      {
        [(PSSpecifier *)v27 setProperty:v2->_developerSeedSpecifier forKey:v28];
        p_customerSpecifier = &v2->_developerSeedSpecifier;
        goto LABEL_14;
      }
    }

    else
    {
      if (v26 == 2)
      {
        [(PSSpecifier *)v27 setProperty:*p_customerSpecifier forKey:v28];
        goto LABEL_14;
      }

      if (v26 == 3)
      {
        p_customerSpecifier = &v2->_publicSeedSpecifier;
        [(PSSpecifier *)v27 setProperty:*p_publicSeedSpecifier forKey:v28];
LABEL_14:
        [(AUDeveloperSettingsOverrideController *)v2 updateDescriptionForSpecifier:*p_customerSpecifier, p_publicSeedSpecifier];
        goto LABEL_15;
      }
    }

    [(PSSpecifier *)v27 setProperty:*p_customerSpecifier forKey:v28, p_publicSeedSpecifier];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:AUDeveloperSettingsURLTypeToString()];
    [v22 setObject:v29 forKeyedSubscript:v24];

    v30 = [MEMORY[0x277CE5450] sharedDatabase];
    v31 = [(AUDeveloperSettingsOverrideController *)v2 specifier];
    v32 = [v31 identifier];
    [v30 addAccessoryWithSerialNumber:v32 info:v22];

    WeakRetained = objc_loadWeakRetained((&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    [WeakRetained reloadSpecifier:*(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];

LABEL_15:
  }

  [v5 addObject:{v2->_descriptionSpecifier, p_publicSeedSpecifier}];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  [(AUDeveloperSettingsOverrideController *)v2 setSpecifiers:v34];

  v4 = *(&v2->super.super.super.super.super.isa + v37);
LABEL_17:
  objc_sync_exit(v2);

  return v4;
}

- (void)updateDescriptionForSpecifier:(id)a3
{
  v4 = *MEMORY[0x277D40170];
  v5 = a3;
  v15 = [v5 propertyForKey:v4];
  v6 = [v5 propertyForKey:*MEMORY[0x277CE54B8]];
  v7 = [v5 propertyForKey:*MEMORY[0x277CE5490]];

  v8 = [(AUDeveloperSettingsOverrideController *)self specifier];
  v9 = [v8 identifier];
  v10 = getInfoForAccessory();

  v11 = *MEMORY[0x277CE5538];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CE5538]];

  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:v11];
    v14 = [v15 stringByAppendingFormat:@" :\nProfile Asset URL Override\n\nThis resolves to a URL that looks like this :\n%@", v13];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ :\n%@\n\nThis resolves to a URL that looks like this :\n%@", v15, v6, v7];
  }

  [(PSSpecifier *)self->_descriptionSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
  [(AUDeveloperSettingsOverrideController *)self reloadSpecifier:self->_descriptionSpecifier];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AUDeveloperSettingsOverrideController *)self indexForIndexPath:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(AUDeveloperSettingsOverrideController *)self specifierAtIndex:v8];
    if (v9)
    {
      [(AUDeveloperSettingsOverrideController *)self updateDescriptionForSpecifier:v9];
      v10 = [(AUDeveloperSettingsOverrideController *)self specifier];
      v11 = [v10 identifier];
      v12 = getInfoForAccessory();
      v13 = [v12 mutableCopy];

      v14 = *MEMORY[0x277D3FFB8];
      v15 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
      LOBYTE(v12) = [v15 isEqual:*MEMORY[0x277CE54E8]];

      if (v12)
      {
        goto LABEL_7;
      }

      v16 = [v9 propertyForKey:v14];
      v17 = [v16 isEqual:*MEMORY[0x277CE5500]];

      if (v17)
      {
        goto LABEL_7;
      }

      v18 = [v9 propertyForKey:v14];
      v19 = [v18 isEqual:*MEMORY[0x277CE54F8]];

      if ((v19 & 1) != 0 || ([v9 propertyForKey:v14], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", *MEMORY[0x277CE54F0]), v20, v21))
      {
LABEL_7:
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:AUDeveloperSettingsURLTypeToString()];
        [v13 setObject:v22 forKeyedSubscript:*MEMORY[0x277CE5530]];

        [(PSSpecifier *)self->_locationRadioGroup setProperty:v9 forKey:*MEMORY[0x277D40090]];
        [(AUDeveloperSettingsOverrideController *)self reloadSpecifier:self->_locationRadioGroup animated:1];
      }

      v23 = [MEMORY[0x277CE5450] sharedDatabase];
      v24 = [(AUDeveloperSettingsOverrideController *)self specifier];
      v25 = [v24 identifier];
      [v23 addAccessoryWithSerialNumber:v25 info:v13];

      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
      [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];

      v27.receiver = self;
      v27.super_class = AUDeveloperSettingsOverrideController;
      [(AUDeveloperSettingsOverrideController *)&v27 tableView:v6 didSelectRowAtIndexPath:v7];
    }
  }
}

@end