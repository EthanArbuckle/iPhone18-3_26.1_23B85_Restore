@interface ASTLockScreenSuggestionsDetailListController
- (ASTLockScreenSuggestionsDetailListController)init;
- (id)specifiers;
- (void)_handleGlobalToggleChangeWithEnabled:(BOOL)a3;
@end

@implementation ASTLockScreenSuggestionsDetailListController

- (ASTLockScreenSuggestionsDetailListController)init
{
  v23.receiver = self;
  v23.super_class = ASTLockScreenSuggestionsDetailListController;
  v2 = [(ASTLockScreenSuggestionsDetailListController *)&v23 init];
  if (v2)
  {
    v3 = +[AssistantController bundle];
    v4 = [v3 localizedStringForKey:@"ASSISTANT_SUGGESTIONS" value:&stru_285317CF0 table:@"AssistantSettings"];
    [(ASTLockScreenSuggestionsDetailListController *)v2 setTitle:v4];

    objc_initWeak(&location, v2);
    v5 = [ASTLockScreenSuggestionsGlobalController alloc];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __52__ASTLockScreenSuggestionsDetailListController_init__block_invoke;
    v20 = &unk_278CD1A50;
    objc_copyWeak(&v21, &location);
    v6 = [(ASTLockScreenSuggestionsGlobalController *)v5 initWithOnChangeCallback:&v17];
    globalController = v2->_globalController;
    v2->_globalController = v6;

    v8 = [(ASTLockScreenSuggestionsGlobalController *)v2->_globalController specifier:v17];
    globalSpecifier = v2->_globalSpecifier;
    v2->_globalSpecifier = v8;

    v10 = objc_opt_new();
    lockScreenSpecifier = v2->_lockScreenSpecifier;
    v2->_lockScreenSpecifier = v10;

    v12 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
    perAppGroup = v2->_perAppGroup;
    v2->_perAppGroup = v12;

    v14 = [(ASTLockScreenSuggestionSpecifier *)v2->_lockScreenSpecifier specifiers];
    perAppSpecifiers = v2->_perAppSpecifiers;
    v2->_perAppSpecifiers = v14;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __52__ASTLockScreenSuggestionsDetailListController_init__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleGlobalToggleChangeWithEnabled:a2];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
  [v3 addObject:v4];

  [v3 addObject:self->_globalSpecifier];
  v5 = [(ASTLockScreenSuggestionsGlobalController *)self->_globalController isLockScreenSuggestionEnabled:self->_globalSpecifier];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [v3 addObject:self->_perAppGroup];
    [v3 addObjectsFromArray:self->_perAppSpecifiers];
  }

  v7 = *MEMORY[0x277D3FC48];
  v8 = *(&self->super.super.super.super.super.isa + v7);
  *(&self->super.super.super.super.super.isa + v7) = v3;
  v9 = v3;

  v10 = *(&self->super.super.super.super.super.isa + v7);
  v11 = v10;

  return v10;
}

- (void)_handleGlobalToggleChangeWithEnabled:(BOOL)a3
{
  if (a3)
  {
    [(ASTLockScreenSuggestionsDetailListController *)self insertSpecifier:self->_perAppGroup afterSpecifier:self->_globalSpecifier animated:1];
    perAppSpecifiers = self->_perAppSpecifiers;
    perAppGroup = self->_perAppGroup;

    [(ASTLockScreenSuggestionsDetailListController *)self insertContiguousSpecifiers:perAppSpecifiers afterSpecifier:perAppGroup animated:1];
  }

  else
  {
    [(ASTLockScreenSuggestionsDetailListController *)self removeContiguousSpecifiers:self->_perAppSpecifiers animated:1];
    v6 = self->_perAppGroup;

    [(ASTLockScreenSuggestionsDetailListController *)self removeSpecifier:v6 animated:1];
  }
}

@end