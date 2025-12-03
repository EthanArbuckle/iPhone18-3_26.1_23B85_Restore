@interface AUDeveloperSettingsOverrideController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDescriptionForSpecifier:(id)specifier;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    v4 = v3;
    goto LABEL_17;
  }

  v37 = *MEMORY[0x277D3FC48];
  v5 = [(AUDeveloperSettingsOverrideController *)selfCopy loadSpecifiersFromPlistName:*MEMORY[0x277CE5478] target:selfCopy];
  v6 = [v5 specifierForID:*MEMORY[0x277CE5510]];
  locationRadioGroup = selfCopy->_locationRadioGroup;
  selfCopy->_locationRadioGroup = v6;

  v8 = [v5 specifierForID:*MEMORY[0x277CE54E8]];
  p_customerSpecifier = &selfCopy->_customerSpecifier;
  customerSpecifier = selfCopy->_customerSpecifier;
  selfCopy->_customerSpecifier = v8;

  v11 = [v5 specifierForID:*MEMORY[0x277CE5500]];
  publicSeedSpecifier = selfCopy->_publicSeedSpecifier;
  p_publicSeedSpecifier = &selfCopy->_publicSeedSpecifier;
  selfCopy->_publicSeedSpecifier = v11;

  v13 = [v5 specifierForID:*MEMORY[0x277CE54F8]];
  developerSeedSpecifier = selfCopy->_developerSeedSpecifier;
  selfCopy->_developerSeedSpecifier = v13;

  v15 = [v5 specifierForID:*MEMORY[0x277CE54F0]];
  customerStagingSpecifier = selfCopy->_customerStagingSpecifier;
  selfCopy->_customerStagingSpecifier = v15;

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  descriptionSpecifier = selfCopy->_descriptionSpecifier;
  selfCopy->_descriptionSpecifier = emptyGroupSpecifier;

  specifier = [(AUDeveloperSettingsOverrideController *)selfCopy specifier];
  identifier = [specifier identifier];
  v21 = getInfoForAccessory();
  v22 = [v21 mutableCopy];

  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE5560]];
  if (AUDeveloperSettingsAccessoryFusingStringToType() == 1)
  {
    v24 = *MEMORY[0x277CE5530];
    v25 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE5530]];
    v26 = AUDeveloperSettingsURLStringToType();
    v27 = selfCopy->_locationRadioGroup;
    v28 = *MEMORY[0x277D40090];
    if (v26 > 5)
    {
      if (v26 == 6)
      {
        [(PSSpecifier *)v27 setProperty:selfCopy->_customerStagingSpecifier forKey:v28];
        p_customerSpecifier = &selfCopy->_customerStagingSpecifier;
        goto LABEL_14;
      }

      if (v26 == 8)
      {
        [(PSSpecifier *)v27 setProperty:selfCopy->_developerSeedSpecifier forKey:v28];
        p_customerSpecifier = &selfCopy->_developerSeedSpecifier;
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
        p_customerSpecifier = &selfCopy->_publicSeedSpecifier;
        [(PSSpecifier *)v27 setProperty:*p_publicSeedSpecifier forKey:v28];
LABEL_14:
        [(AUDeveloperSettingsOverrideController *)selfCopy updateDescriptionForSpecifier:*p_customerSpecifier, p_publicSeedSpecifier];
        goto LABEL_15;
      }
    }

    [(PSSpecifier *)v27 setProperty:*p_customerSpecifier forKey:v28, p_publicSeedSpecifier];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:AUDeveloperSettingsURLTypeToString()];
    [v22 setObject:v29 forKeyedSubscript:v24];

    mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
    specifier2 = [(AUDeveloperSettingsOverrideController *)selfCopy specifier];
    identifier2 = [specifier2 identifier];
    [mEMORY[0x277CE5450] addAccessoryWithSerialNumber:identifier2 info:v22];

    WeakRetained = objc_loadWeakRetained((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    [WeakRetained reloadSpecifier:*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];

LABEL_15:
  }

  [v5 addObject:{selfCopy->_descriptionSpecifier, p_publicSeedSpecifier}];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  [(AUDeveloperSettingsOverrideController *)selfCopy setSpecifiers:v34];

  v4 = *(&selfCopy->super.super.super.super.super.isa + v37);
LABEL_17:
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)updateDescriptionForSpecifier:(id)specifier
{
  v4 = *MEMORY[0x277D40170];
  specifierCopy = specifier;
  v15 = [specifierCopy propertyForKey:v4];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277CE54B8]];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277CE5490]];

  specifier = [(AUDeveloperSettingsOverrideController *)self specifier];
  identifier = [specifier identifier];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AUDeveloperSettingsOverrideController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(AUDeveloperSettingsOverrideController *)self specifierAtIndex:v8];
    if (v9)
    {
      [(AUDeveloperSettingsOverrideController *)self updateDescriptionForSpecifier:v9];
      specifier = [(AUDeveloperSettingsOverrideController *)self specifier];
      identifier = [specifier identifier];
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

      mEMORY[0x277CE5450] = [MEMORY[0x277CE5450] sharedDatabase];
      specifier2 = [(AUDeveloperSettingsOverrideController *)self specifier];
      identifier2 = [specifier2 identifier];
      [mEMORY[0x277CE5450] addAccessoryWithSerialNumber:identifier2 info:v13];

      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
      [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];

      v27.receiver = self;
      v27.super_class = AUDeveloperSettingsOverrideController;
      [(AUDeveloperSettingsOverrideController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }
}

@end