@interface AssistantMultilingualDetailController
+ (id)bundle;
- (id)_languageSpecificLocalizedStringForKey:(id)a3;
- (id)specifiers;
- (void)_addLinkAttributesToHeaderSpecifier;
- (void)_learnMoreTapped;
- (void)_refreshFooterForSpecifier:(id)a3;
- (void)_syncSelectionToPrefs;
- (void)listItemSelected:(id)a3;
- (void)setParentController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AssistantMultilingualDetailController

+ (id)bundle
{
  v2 = bundle_sAssistantMultilingualBundle;
  if (!bundle_sAssistantMultilingualBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantMultilingualBundle;
    bundle_sAssistantMultilingualBundle = v3;

    v2 = bundle_sAssistantMultilingualBundle;
  }

  return v2;
}

- (void)setParentController:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_languageController, a3);
  }

  v6.receiver = self;
  v6.super_class = AssistantMultilingualDetailController;
  [(AssistantMultilingualDetailController *)&v6 setParentController:v5];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(AssistantMultilingualDetailController *)self loadSpecifiersFromPlistName:@"AssistantMultilingualDetail" target:self];
    v6 = [v5 specifierForID:@"MULTILINGUAL_DETAIL_HEADER_GROUP_ID"];
    headerSpecifier = self->_headerSpecifier;
    self->_headerSpecifier = v6;

    [(AssistantMultilingualDetailController *)self _addLinkAttributesToHeaderSpecifier];
    v8 = [v5 specifierForID:@"MULTILINGUAL_DETAIL_GROUP_ID"];
    groupSpecifier = self->super._groupSpecifier;
    self->super._groupSpecifier = v8;

    v10 = [v5 specifierForID:@"MULTILINGUAL_DETAIL_OPTION_ENGLISH_ONLY_ID"];
    preferEnglishOnlySpecifier = self->_preferEnglishOnlySpecifier;
    self->_preferEnglishOnlySpecifier = v10;

    v12 = [v5 specifierForID:@"MULTILINGUAL_DETAIL_OPTION_MIXED_ID"];
    preferMultilingualSpecifier = self->_preferMultilingualSpecifier;
    self->_preferMultilingualSpecifier = v12;

    v14 = self->_preferEnglishOnlySpecifier;
    v15 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_OPTION_ENGLISH_ONLY"];
    [(PSSpecifier *)v14 setName:v15];

    v16 = self->_preferEnglishOnlySpecifier;
    v17 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_FOOTER_ENGLISH_ONLY"];
    v18 = *MEMORY[0x277D3FF88];
    [(PSSpecifier *)v16 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

    [(AssistantMultilingualDetailController *)self reloadSpecifier:self->_preferEnglishOnlySpecifier];
    v19 = self->_preferMultilingualSpecifier;
    v20 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_OPTION_MIXED"];
    [(PSSpecifier *)v19 setName:v20];

    v21 = self->_preferMultilingualSpecifier;
    v22 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_FOOTER_MIXED"];
    [(PSSpecifier *)v21 setProperty:v22 forKey:v18];

    [(AssistantMultilingualDetailController *)self reloadSpecifier:self->_preferMultilingualSpecifier];
    v23 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v24 = v5;

    [(AssistantDetailListController *)self setChecked:0 forSpecifier:self->_preferMultilingualSpecifier];
    [(AssistantDetailListController *)self setChecked:0 forSpecifier:self->_preferEnglishOnlySpecifier];
    [(AssistantMultilingualDetailController *)self _syncSelectionToPrefs];
    v25 = [(AssistantMultilingualDetailController *)self specifier];
    v26 = [v25 name];
    [(AssistantMultilingualDetailController *)self setTitle:v26];

    v27 = [(AssistantMultilingualDetailController *)self specifier];
    v28 = [v27 values];
    v29 = [v28 firstObject];
    setterValue = self->_setterValue;
    self->_setterValue = v29;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)listItemSelected:(id)a3
{
  v4 = [(AssistantMultilingualDetailController *)self indexForIndexPath:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v4];
    v6 = self->super._previousSelectedSpecifier;
    if (v6)
    {
      [(AssistantDetailListController *)self setChecked:0 forSpecifier:v6];
    }

    [(AssistantDetailListController *)self setChecked:1 forSpecifier:v5];
    [(AssistantMultilingualDetailController *)self _refreshFooterForSpecifier:v5];
    previousSelectedSpecifier = self->super._previousSelectedSpecifier;
    self->super._previousSelectedSpecifier = v5;
    v8 = v5;

    [(AssistantLanguageController *)self->_languageController setMultilingualEnabled:v8 == self->_preferMultilingualSpecifier forLanguageCode:self->_setterValue];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AssistantMultilingualDetailController *)self listItemSelected:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_syncSelectionToPrefs
{
  v3 = [(AssistantMultilingualDetailController *)self specifier];
  v4 = [v3 values];
  v10 = [v4 objectAtIndexedSubscript:0];

  v5 = [(AssistantLanguageController *)self->_languageController multilingualEnabledForLanguageCode:v10];
  v6 = &OBJC_IVAR___AssistantMultilingualDetailController__preferEnglishOnlySpecifier;
  if (v5)
  {
    v6 = &OBJC_IVAR___AssistantMultilingualDetailController__preferMultilingualSpecifier;
  }

  v7 = *(&self->super.super.super.super.super.super.isa + *v6);
  previousSelectedSpecifier = self->super._previousSelectedSpecifier;
  self->super._previousSelectedSpecifier = v7;
  v9 = v7;

  [(AssistantDetailListController *)self setChecked:1 forSpecifier:v9];
  [(AssistantMultilingualDetailController *)self reloadSpecifier:v9];
  [(AssistantMultilingualDetailController *)self _refreshFooterForSpecifier:v9];
}

- (void)_refreshFooterForSpecifier:(id)a3
{
  v4 = *MEMORY[0x277D3FF88];
  v5 = [a3 propertyForKey:*MEMORY[0x277D3FF88]];
  [(PSSpecifier *)self->super._groupSpecifier setProperty:v5 forKey:v4];
  [(AssistantMultilingualDetailController *)self reloadSpecifier:self->super._groupSpecifier];
}

- (void)_addLinkAttributesToHeaderSpecifier
{
  v11 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_HEADER"];
  v3 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_HEADER_LINK_TEXT"];
  headerSpecifier = self->_headerSpecifier;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(PSSpecifier *)headerSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF48]];

  [(PSSpecifier *)self->_headerSpecifier setProperty:v11 forKey:*MEMORY[0x277D3FF88]];
  v7 = self->_headerSpecifier;
  v13.location = [v11 rangeOfString:v3];
  v8 = NSStringFromRange(v13);
  [(PSSpecifier *)v7 setProperty:v8 forKey:*MEMORY[0x277D3FF58]];

  v9 = self->_headerSpecifier;
  v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [(PSSpecifier *)v9 setProperty:v10 forKey:*MEMORY[0x277D3FF68]];

  [(PSSpecifier *)self->_headerSpecifier setProperty:@"_learnMoreTapped" forKey:*MEMORY[0x277D3FF50]];
  [(AssistantMultilingualDetailController *)self reloadSpecifier:self->_headerSpecifier];
}

- (void)_learnMoreTapped
{
  v2 = [(AssistantMultilingualDetailController *)self _languageSpecificLocalizedStringForKey:@"MULTILINGUAL_DETAIL_HEADER_LINK_URL"];
  if (v2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__AssistantMultilingualDetailController__learnMoreTapped__block_invoke;
    block[3] = &unk_278CD1548;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __57__AssistantMultilingualDetailController__learnMoreTapped__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (id)_languageSpecificLocalizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(AssistantMultilingualDetailController *)self specifier];
  v7 = [v6 values];
  v8 = [v7 firstObject];
  v9 = [v5 stringWithFormat:@"%@_%@", v4, v8, 0];

  v10 = +[AssistantMultilingualDetailController bundle];
  v11 = [v10 localizedStringForKey:v9 value:&stru_285317CF0 table:@"AssistantMultilingualDetail"];

  if ([v11 isEqualToString:v9])
  {
    v12 = +[AssistantMultilingualDetailController bundle];
    v13 = [v12 localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantMultilingualDetail"];

    v11 = v13;
  }

  return v11;
}

@end