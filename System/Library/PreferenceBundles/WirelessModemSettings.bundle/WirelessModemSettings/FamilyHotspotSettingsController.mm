@interface FamilyHotspotSettingsController
- (BOOL)_shouldShareHotspotWithFamily;
- (FamilyHotspotSettingsController)init;
- (id)_generateFamilyPreferencesArray;
- (id)_generatePrefDictionaryForMember:(id)member;
- (id)_getFamilyMembers;
- (id)_joinOption:(id)option;
- (id)_specifierForFamilyMember:(id)member;
- (id)_switchSpecifier;
- (id)specifiers;
- (void)_setFamilyPreferences;
- (void)_setFamilyShare:(id)share;
- (void)_setJoinOption:(id)option specifier:(id)specifier;
- (void)_updateMemberWithMember:(id)member;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation FamilyHotspotSettingsController

- (FamilyHotspotSettingsController)init
{
  v5.receiver = self;
  v5.super_class = FamilyHotspotSettingsController;
  v2 = [(FamilyHotspotSettingsController *)&v5 init];
  if (v2)
  {
    [(FamilyHotspotSettingsController *)v2 setWifiClient:WiFiManagerClientCreate()];
    _getFamilyMembers = [(FamilyHotspotSettingsController *)v2 _getFamilyMembers];
    [(FamilyHotspotSettingsController *)v2 setFamilyMembers:_getFamilyMembers];

    [(FamilyHotspotSettingsController *)v2 setShouldShareWithFamily:[(FamilyHotspotSettingsController *)v2 _shouldShareHotspotWithFamily]];
  }

  return v2;
}

- (void)dealloc
{
  wifiClient = self->_wifiClient;
  if (wifiClient)
  {
    CFRelease(wifiClient);
  }

  v4.receiver = self;
  v4.super_class = FamilyHotspotSettingsController;
  [(FamilyHotspotSettingsController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FamilyHotspotSettingsController;
  [(FamilyHotspotSettingsController *)&v3 viewDidLoad];
  v2 = WMSUIEventDictionary(@"view-ph-password", 0);
  WMSubmitUIEventMetric(v2);
}

- (id)specifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    switchSpecifier = self->_switchSpecifier;
    if (!switchSpecifier)
    {
      _switchSpecifier = [(FamilyHotspotSettingsController *)self _switchSpecifier];
      v9 = self->_switchSpecifier;
      self->_switchSpecifier = _switchSpecifier;

      switchSpecifier = self->_switchSpecifier;
    }

    v10 = switchSpecifier;
    v20[0] = emptyGroupSpecifier;
    v20[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v5 addObjectsFromArray:v11];

    if (self->_shouldShareWithFamily && [(NSArray *)self->_familyMembers count])
    {
      emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v5 addObject:emptyGroupSpecifier2];
      familyMembers = self->_familyMembers;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __45__FamilyHotspotSettingsController_specifiers__block_invoke;
      v17[3] = &unk_278BB5198;
      v18 = v5;
      selfCopy = self;
      [(NSArray *)familyMembers enumerateObjectsUsingBlock:v17];
    }

    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
    v15 = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __45__FamilyHotspotSettingsController_specifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _specifierForFamilyMember:a2];
  [v2 addObject:v3];
}

- (id)_specifierForFamilyMember:(id)member
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  memberCopy = member;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_HOTSPOT_ASK" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[0] = v8;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FAMILY_HOTSPOT_AUTOMATIC" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v6 initWithArray:v11];

  v13 = MEMORY[0x277D3FAD8];
  displayName = [memberCopy displayName];
  v15 = [v13 preferenceSpecifierNamed:displayName target:self set:sel__setJoinOption_specifier_ get:sel__joinOption_ detail:objc_opt_class() cell:2 edit:{0, v17[0]}];

  [v15 setValues:&unk_284EEFBA0 titles:v12];
  [v15 setProperty:memberCopy forKey:@"FamilyMemberDetailKey"];

  return v15;
}

- (id)_joinOption:(id)option
{
  v3 = [option propertyForKey:@"FamilyMemberDetailKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "shareOption")}];

  return v4;
}

- (void)_setJoinOption:(id)option specifier:(id)specifier
{
  specifierCopy = specifier;
  optionCopy = option;
  v9 = [specifierCopy propertyForKey:@"FamilyMemberDetailKey"];
  intValue = [optionCopy intValue];

  [v9 setShareOption:intValue];
  [specifierCopy setProperty:v9 forKey:@"FamilyMemberDetailKey"];

  [(FamilyHotspotSettingsController *)self _updateMemberWithMember:v9];
  [(FamilyHotspotSettingsController *)self _setFamilyPreferences];
}

- (id)_switchSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SHARING" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel__setFamilyShare_ get:sel__getFamilyShare detail:0 cell:6 edit:0];

  return v6;
}

- (void)_setFamilyShare:(id)share
{
  bOOLValue = [share BOOLValue];
  self->_shouldShareWithFamily = bOOLValue;
  familyMembers = [(FamilyHotspotSettingsController *)self familyMembers];
  v6 = familyMembers;
  if (bOOLValue)
  {
    v7 = &__block_literal_global_76;
  }

  else
  {
    v7 = &__block_literal_global_1;
  }

  [familyMembers enumerateObjectsUsingBlock:v7];

  [(FamilyHotspotSettingsController *)self _setFamilyPreferences];
  [(FamilyHotspotSettingsController *)self reloadSpecifiers];
  if (self->_shouldShareWithFamily)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = WMSUIEventDictionary(@"toggle-ph-family", v8);
  WMSubmitUIEventMetric(v9);
}

void __51__FamilyHotspotSettingsController__setFamilyShare___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 shareOption])
  {
    [v2 setShareOption:1];
  }
}

- (BOOL)_shouldShareHotspotWithFamily
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  familyMembers = [(FamilyHotspotSettingsController *)self familyMembers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__FamilyHotspotSettingsController__shouldShareHotspotWithFamily__block_invoke;
  v4[3] = &unk_278BB51E0;
  v4[4] = &v5;
  [familyMembers enumerateObjectsUsingBlock:v4];

  LOBYTE(familyMembers) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return familyMembers;
}

uint64_t __64__FamilyHotspotSettingsController__shouldShareHotspotWithFamily__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shareOption];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateMemberWithMember:(id)member
{
  memberCopy = member;
  familyMembers = [(FamilyHotspotSettingsController *)self familyMembers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__FamilyHotspotSettingsController__updateMemberWithMember___block_invoke;
  v7[3] = &unk_278BB5208;
  v8 = memberCopy;
  v6 = memberCopy;
  [familyMembers enumerateObjectsUsingBlock:v7];
}

void __59__FamilyHotspotSettingsController__updateMemberWithMember___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 altDSID];
  v4 = [*(a1 + 32) altDSID];

  if (v3 == v4)
  {
    [v5 setShareOption:{objc_msgSend(*(a1 + 32), "shareOption")}];
  }
}

- (id)_getFamilyMembers
{
  v2 = WiFiManagerClientCopyFamilyHotspotPreferences();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__FamilyHotspotSettingsController__getFamilyMembers__block_invoke;
  v6[3] = &unk_278BB5230;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __52__FamilyHotspotSettingsController__getFamilyMembers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"FamilyHotspotIdentifier"];
  v4 = [v3 objectForKeyedSubscript:@"FamilyHotspotDisplayName"];
  v5 = [v3 objectForKeyedSubscript:@"FamilyHotspotSharingMode"];

  v6 = -[HotspotFamilyMember initWithAltDSID:displayName:shareOption:]([HotspotFamilyMember alloc], "initWithAltDSID:displayName:shareOption:", v7, v4, [v5 intValue]);
  [*(a1 + 32) addObject:v6];
}

- (void)_setFamilyPreferences
{
  _generateFamilyPreferencesArray = [(FamilyHotspotSettingsController *)self _generateFamilyPreferencesArray];
  WiFiManagerClientSetFamilyHotspotPreferences();
}

- (id)_generateFamilyPreferencesArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  familyMembers = [(FamilyHotspotSettingsController *)self familyMembers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__FamilyHotspotSettingsController__generateFamilyPreferencesArray__block_invoke;
  v8[3] = &unk_278BB5198;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [familyMembers enumerateObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

void __66__FamilyHotspotSettingsController__generateFamilyPreferencesArray__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _generatePrefDictionaryForMember:a2];
  [v2 addObject:v3];
}

- (id)_generatePrefDictionaryForMember:(id)member
{
  v3 = MEMORY[0x277CBEB38];
  memberCopy = member;
  v5 = objc_alloc_init(v3);
  altDSID = [memberCopy altDSID];
  displayName = [memberCopy displayName];
  v8 = MEMORY[0x277CCABB0];
  shareOption = [memberCopy shareOption];

  v10 = [v8 numberWithUnsignedInt:shareOption];
  [v5 setValue:altDSID forKey:@"FamilyHotspotIdentifier"];
  [v5 setValue:displayName forKey:@"FamilyHotspotDisplayName"];
  [v5 setValue:v10 forKey:@"FamilyHotspotSharingMode"];

  return v5;
}

@end