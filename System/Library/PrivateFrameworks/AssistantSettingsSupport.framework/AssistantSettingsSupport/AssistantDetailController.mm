@interface AssistantDetailController
- (BOOL)_isApplicationHiddenCheck:(id)check;
- (BOOL)_isApplicationLockedCheck:(id)check;
- (id)_appName;
- (id)_bundleId;
- (id)_siriSuggestionsClients;
- (id)_suggestionsFooterString;
- (id)_suggestionsShowToggleLableString;
- (id)_watchBundleToMirrorWithBundleId:(id)id;
- (id)inAppLearnFromAppEnabled:(id)enabled;
- (id)specifiers;
- (id)suggestionsShowInAppEnabled:(id)enabled;
- (id)suggestionsShowOnHomeScreenEnabled:(id)enabled;
- (id)suggestionsSuggestAppEnabled:(id)enabled;
- (id)suggestionsSuggestionNotificationEnabled:(id)enabled;
- (void)_addInAppSpecifiersToSpecifiers:(id)specifiers;
- (void)_addSuggestionsSpecifiersToSpecifiers:(id)specifiers;
- (void)_asyncAddAskSiriSettingsIfNecessary;
- (void)_authenticateForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)_fetchIntentsSpecifiersWithCompletion:(id)completion;
- (void)setAskSiriUseWithAskSiriEnabled:(id)enabled specifier:(id)specifier;
- (void)setInAppLearnFromAppEnabled:(id)enabled specifier:(id)specifier;
- (void)setNanoInAppShowSiriSuggestionsEnabled:(BOOL)enabled bundleId:(id)id;
- (void)setSuggestionsShowInAppEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestionsShowOnHomeScreenEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestionsSuggestAppEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestionsSuggestionNotificationsEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation AssistantDetailController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if (!self->_suggestionsController)
    {
      mEMORY[0x277CEF610] = [MEMORY[0x277CEF610] sharedController];
      suggestionsController = self->_suggestionsController;
      self->_suggestionsController = mEMORY[0x277CEF610];
    }

    _bundleId = [(AssistantDetailController *)self _bundleId];
    self->_isApplicationHidden = [(AssistantDetailController *)self _isApplicationHiddenCheck:_bundleId];

    _bundleId2 = [(AssistantDetailController *)self _bundleId];
    self->_isApplicationLocked = [(AssistantDetailController *)self _isApplicationLockedCheck:_bundleId2];

    array = [MEMORY[0x277CBEB18] array];
    [(AssistantDetailController *)self _addInAppSpecifiersToSpecifiers:array];
    [(AssistantDetailController *)self _addSuggestionsSpecifiersToSpecifiers:array];
    [(AssistantDetailController *)self _asyncAddAskSiriSettingsIfNecessary];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (BOOL)_isApplicationHiddenCheck:(id)check
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:check];
  hiddenApplications = [MEMORY[0x277CEBE80] hiddenApplications];
  v5 = [hiddenApplications containsObject:v3];

  return v5;
}

- (BOOL)_isApplicationLockedCheck:(id)check
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:check];
  lockedApplications = [MEMORY[0x277CEBE80] lockedApplications];
  v5 = [lockedApplications containsObject:v3];

  return v5;
}

- (void)_addInAppSpecifiersToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = MEMORY[0x277D3FAD8];
  v5 = MEMORY[0x277CCACA8];
  v6 = +[AssistantController bundle];
  v7 = [v6 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  _appName = [(AssistantDetailController *)self _appName];
  v9 = [v5 stringWithFormat:v7, _appName];
  v10 = [v4 groupSpecifierWithName:v9];

  v11 = MEMORY[0x277CCACA8];
  v12 = +[AssistantController bundle];
  v13 = [v12 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  _appName2 = [(AssistantDetailController *)self _appName];
  _appName3 = [(AssistantDetailController *)self _appName];
  v16 = [v11 stringWithFormat:v13, _appName2, _appName3];
  v17 = *MEMORY[0x277D3FF88];
  [v10 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];

  v18 = MEMORY[0x277D3FF38];
  if (self->_isApplicationHidden)
  {
    v19 = MEMORY[0x277D3FAD8];
    v20 = MEMORY[0x277CCACA8];
    v21 = +[AssistantController bundle];
    v22 = [v21 localizedStringForKey:&stru_285317CF0 value:&stru_285317CF0 table:@"AssistantSettings"];
    v23 = [v20 stringWithFormat:v22];
    v24 = [v19 groupSpecifierWithName:v23];

    v25 = MEMORY[0x277CCACA8];
    v26 = +[AssistantController bundle];
    v27 = [v26 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_HEADER_DETAIL" value:&stru_285317CF0 table:@"AssistantSettings"];
    _appName4 = [(AssistantDetailController *)self _appName];
    _appName5 = [(AssistantDetailController *)self _appName];
    v30 = [v25 stringWithFormat:v27, _appName4, _appName5];
    [v24 setProperty:v30 forKey:v17];

    v18 = MEMORY[0x277D3FF38];
    [specifiersCopy addObject:v24];
    [v10 setProperty:MEMORY[0x277CBEC28] forKey:*v18];
  }

  [specifiersCopy addObject:v10];
  v31 = MEMORY[0x277D3FAD8];
  v32 = +[AssistantController bundle];
  v33 = [v32 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_LEARNFROMAPP_TOGGLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v34 = [v31 preferenceSpecifierNamed:v33 target:self set:sel_setInAppLearnFromAppEnabled_specifier_ get:sel_inAppLearnFromAppEnabled_ detail:0 cell:6 edit:0];

  [v34 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if (self->_isApplicationHidden)
  {
    [v34 setProperty:MEMORY[0x277CBEC28] forKey:*v18];
  }

  [specifiersCopy addObject:v34];
}

- (void)setNanoInAppShowSiriSuggestionsEnabled:(BOOL)enabled bundleId:(id)id
{
  enabledCopy = enabled;
  idCopy = id;
  v5 = CFPreferencesCopyAppValue(@"NanoAppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (enabledCopy)
  {
    [v7 removeObject:idCopy];
  }

  else if (([v7 containsObject:idCopy] & 1) == 0)
  {
    [v8 addObject:idCopy];
  }

  CFPreferencesSetAppValue(@"NanoAppCanShowSiriSuggestionsBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (id)inAppLearnFromAppEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v5 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v6 = [v5 containsObject:_bundleId];

  v7 = [v3 numberWithBool:v6 ^ 1u];

  return v7;
}

- (void)_authenticateForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_isApplicationLocked)
  {
    v8 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:identifier];
    mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__AssistantDetailController__authenticateForBundleIdentifier_completion___block_invoke;
    v10[3] = &unk_278CD1F30;
    v11 = v7;
    [mEMORY[0x277CEBE98] authenticateForSubject:v8 relayingAuditToken:1 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)setInAppLearnFromAppEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke;
  aBlock[3] = &unk_278CD1AF0;
  objc_copyWeak(&v21, &location);
  v8 = enabledCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke_2;
  v17[3] = &unk_278CD1520;
  objc_copyWeak(&v18, &location);
  v10 = _Block_copy(v17);
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke_3;
  v14[3] = &unk_278CD1F58;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(AssistantDetailController *)self _authenticateForBundleIdentifier:_bundleId completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _bundleId];
  v3 = [*(a1 + 32) BOOLValue];
  v4 = v2;
  v5 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (v3)
  {
    [v7 removeObject:v4];
  }

  else if (([v7 containsObject:v4] & 1) == 0)
  {
    [v8 addObject:v4];
  }

  CFPreferencesSetAppValue(@"SiriCanLearnFromAppBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);

  v10 = [WeakRetained _bundleId];
  +[AssistantMetrics didDetailToggle:bundleId:on:](AssistantMetrics, "didDetailToggle:bundleId:on:", @"inAppLearn", v10, [*(a1 + 32) BOOLValue]);
}

void __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __67__AssistantDetailController_setInAppLearnFromAppEnabled_specifier___block_invoke_3(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + v2));
}

- (void)_addSuggestionsSpecifiersToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = MEMORY[0x277D3FAD8];
  v5 = MEMORY[0x277CCACA8];
  v6 = +[AssistantController bundle];
  v7 = [v6 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_SUGGESTIONS_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  _appName = [(AssistantDetailController *)self _appName];
  v9 = [v5 stringWithFormat:v7, _appName];
  v10 = [v4 groupSpecifierWithName:v9];

  v11 = MEMORY[0x277CCACA8];
  _suggestionsFooterString = [(AssistantDetailController *)self _suggestionsFooterString];
  _appName2 = [(AssistantDetailController *)self _appName];
  _appName3 = [(AssistantDetailController *)self _appName];
  v15 = [v11 stringWithFormat:_suggestionsFooterString, _appName2, _appName3];
  [v10 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];

  if (self->_isApplicationHidden)
  {
    [v10 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [specifiersCopy addObject:v10];
  _siriSuggestionsClients = [(AssistantDetailController *)self _siriSuggestionsClients];
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v18 = [_siriSuggestionsClients containsObject:_bundleId];

  if (v18)
  {
    v19 = MEMORY[0x277D3FAD8];
    _suggestionsShowToggleLableString = [(AssistantDetailController *)self _suggestionsShowToggleLableString];
    v21 = [v19 preferenceSpecifierNamed:_suggestionsShowToggleLableString target:self set:sel_setSuggestionsShowInAppEnabled_specifier_ get:sel_suggestionsShowInAppEnabled_ detail:0 cell:6 edit:0];

    v22 = *MEMORY[0x277D3FD80];
    [v21 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    if (self->_isApplicationHidden)
    {
      [v21 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [specifiersCopy addObject:v21];
  }

  else
  {
    v22 = *MEMORY[0x277D3FD80];
  }

  v23 = MEMORY[0x277D3FAD8];
  v24 = +[AssistantController bundle];
  v25 = [v24 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SHOWONHOMESCREEN_TOGGLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v26 = [v23 preferenceSpecifierNamed:v25 target:self set:sel_setSuggestionsShowOnHomeScreenEnabled_specifier_ get:sel_suggestionsShowOnHomeScreenEnabled_ detail:0 cell:6 edit:0];

  [v26 setProperty:MEMORY[0x277CBEC38] forKey:v22];
  if (self->_isApplicationHidden)
  {
    [v26 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [specifiersCopy addObject:v26];
  v27 = MEMORY[0x277D3FAD8];
  v28 = +[AssistantController bundle];
  v29 = [v28 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SUGGESTAPP_TOGGLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v30 = [v27 preferenceSpecifierNamed:v29 target:self set:sel_setSuggestionsSuggestAppEnabled_specifier_ get:sel_suggestionsSuggestAppEnabled_ detail:0 cell:6 edit:0];

  [v30 setProperty:MEMORY[0x277CBEC38] forKey:v22];
  if (self->_isApplicationHidden)
  {
    [v30 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [specifiersCopy addObject:v30];
  v31 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
  if (!v31 || (v32 = v31, v33 = [v31 BOOLValue], v32, (v33 & 1) == 0))
  {
    if (!+[AssistantUtilities deviceIsVision])
    {
      v34 = MEMORY[0x277D3FAD8];
      v35 = +[AssistantController bundle];
      v36 = [v35 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SUGGESTION_NOTIFICATIONS_TOGGLE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v37 = [v34 preferenceSpecifierNamed:v36 target:self set:sel_setSuggestionsSuggestionNotificationsEnabled_specifier_ get:sel_suggestionsSuggestionNotificationEnabled_ detail:0 cell:6 edit:0];

      [v37 setProperty:MEMORY[0x277CBEC38] forKey:v22];
      if (self->_isApplicationHidden)
      {
        [v37 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      }

      [specifiersCopy addObject:v37];
    }
  }
}

- (id)_suggestionsShowToggleLableString
{
  _bundleId = [(AssistantDetailController *)self _bundleId];
  if ([_bundleId isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v3 = +[AssistantController bundle];
    v4 = v3;
    v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SHOWINAPP_TOGGLE_CONTACTSAPP";
  }

  else
  {
    v6 = [_bundleId isEqualToString:@"com.apple.mobilephone"];
    v3 = +[AssistantController bundle];
    v4 = v3;
    if (v6)
    {
      v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SHOWINAPP_TOGGLE_PHONEAPP";
    }

    else
    {
      v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_SHOWINAPP_TOGGLE";
    }
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];

  return v7;
}

- (id)_suggestionsFooterString
{
  _bundleId = [(AssistantDetailController *)self _bundleId];
  if ([_bundleId isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v4 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
    v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_CONTACTSAPP_WITHNOTIFICATIONS";
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = v4;
    bOOLValue = [v4 BOOLValue];

    v8 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_CONTACTSAPP_NONOTIFICATIONS";
    goto LABEL_7;
  }

  if ([_bundleId isEqualToString:@"com.apple.mobilephone"])
  {
    v9 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
    v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_PHONEAPP_WITHNOTIFICATIONS";
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = v9;
    bOOLValue = [v9 BOOLValue];

    v8 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_PHONEAPP_NONOTIFICATIONS";
    goto LABEL_7;
  }

  _siriSuggestionsClients = [(AssistantDetailController *)self _siriSuggestionsClients];
  v15 = [_siriSuggestionsClients containsObject:_bundleId];

  v16 = +[AssistantUtilities deviceIsVision];
  if (v15)
  {
    if (v16)
    {
      v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_WITHSHOW_VISION";
      goto LABEL_9;
    }

    v17 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
    v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_WITHSHOW_WITHNOTIFICATIONS";
    if (v17)
    {
      v18 = v17;
      bOOLValue = [v17 BOOLValue];

      v8 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_WITHSHOW_NONOTIFICATIONS";
      goto LABEL_7;
    }
  }

  else
  {
    if (v16)
    {
      v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_NOSHOW_VISION";
      goto LABEL_9;
    }

    v19 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
    v5 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_NOSHOW_NONOTIFICATIONS";
    if (v19)
    {
      v20 = v19;
      bOOLValue = [v19 BOOLValue];

      v8 = @"SIRIANDSEARCH_PERAPP_SUGGESTIONS_FOOTER_NOSHOW_WITHNOTIFICATIONS";
LABEL_7:
      if (bOOLValue)
      {
        v5 = v8;
      }
    }
  }

LABEL_9:
  v11 = +[AssistantController bundle];
  v12 = [v11 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];

  return v12;
}

- (id)suggestionsShowInAppEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v5 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v6 = [v5 containsObject:_bundleId];

  v7 = [v3 numberWithBool:v6 ^ 1u];

  return v7;
}

- (void)setSuggestionsShowInAppEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v6 = [(AssistantDetailController *)self _watchBundleToMirrorWithBundleId:_bundleId];

  if (v6)
  {
    -[AssistantDetailController setNanoInAppShowSiriSuggestionsEnabled:bundleId:](self, "setNanoInAppShowSiriSuggestionsEnabled:bundleId:", [enabledCopy BOOLValue], v6);
  }

  _bundleId2 = [(AssistantDetailController *)self _bundleId];
  bOOLValue = [enabledCopy BOOLValue];
  v9 = _bundleId2;
  v10 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mutableCopy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  if (bOOLValue)
  {
    [v12 removeObject:v9];
  }

  else if (([v12 containsObject:v9] & 1) == 0)
  {
    [v13 addObject:v9];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v13, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);

  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"NanoAppCanShowSiriSuggestionsBlacklist", @"AppCanShowSiriSuggestionsBlacklist", 0}];
  v16 = objc_opt_new();
  [v16 synchronizeUserDefaultsDomain:@"com.apple.suggestions" keys:v15];

  _bundleId3 = [(AssistantDetailController *)self _bundleId];
  +[AssistantMetrics didDetailToggle:bundleId:on:](AssistantMetrics, "didDetailToggle:bundleId:on:", @"inAppShow", _bundleId3, [enabledCopy BOOLValue]);
}

- (id)suggestionsShowOnHomeScreenEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  suggestionsController = self->_suggestionsController;
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v6 = [v3 numberWithBool:{-[ASFSuggestionsController suggestionsShowOnHomeScreenEnabledForBundleId:](suggestionsController, "suggestionsShowOnHomeScreenEnabledForBundleId:", _bundleId)}];

  return v6;
}

- (void)setSuggestionsShowOnHomeScreenEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke;
  aBlock[3] = &unk_278CD1AF0;
  objc_copyWeak(&v21, &location);
  v8 = enabledCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke_2;
  v17[3] = &unk_278CD1520;
  objc_copyWeak(&v18, &location);
  v10 = _Block_copy(v17);
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke_3;
  v14[3] = &unk_278CD1F58;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(AssistantDetailController *)self _authenticateForBundleIdentifier:_bundleId completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) BOOLValue];
  v3 = [WeakRetained _bundleId];
  [WeakRetained[182] setSuggestionsShowOnHomeScreenEnabled:v2 bundleId:v3];
}

void __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __77__AssistantDetailController_setSuggestionsShowOnHomeScreenEnabled_specifier___block_invoke_3(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + v2));
}

- (id)suggestionsSuggestAppEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  suggestionsController = self->_suggestionsController;
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v6 = [v3 numberWithBool:{-[ASFSuggestionsController suggestionsSuggestAppEnabledForBundleId:](suggestionsController, "suggestionsSuggestAppEnabledForBundleId:", _bundleId)}];

  return v6;
}

- (void)setSuggestionsSuggestAppEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  _bundleId = [(AssistantDetailController *)self _bundleId];
  [(ASFSuggestionsController *)self->_suggestionsController setSuggestionsSuggestAppEnabled:bOOLValue bundleId:_bundleId];
}

- (id)suggestionsSuggestionNotificationEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  suggestionsController = self->_suggestionsController;
  _bundleId = [(AssistantDetailController *)self _bundleId];
  v6 = [v3 numberWithBool:{-[ASFSuggestionsController suggestionsNotificationEnabledForBundleId:](suggestionsController, "suggestionsNotificationEnabledForBundleId:", _bundleId)}];

  return v6;
}

- (void)setSuggestionsSuggestionNotificationsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  specifier = [(AssistantDetailController *)self specifier];
  v7 = [specifier propertyForKey:@"BUNDLE_ID"];

  [(ASFSuggestionsController *)self->_suggestionsController setSuggestionsNotificationsEnabled:bOOLValue bundleId:v7];
}

- (void)_asyncAddAskSiriSettingsIfNecessary
{
  if (+[AssistantUtilities assistantEnabled])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__AssistantDetailController__asyncAddAskSiriSettingsIfNecessary__block_invoke;
    v3[3] = &unk_278CD1F80;
    objc_copyWeak(&v4, &location);
    [(AssistantDetailController *)self _fetchIntentsSpecifiersWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __64__AssistantDetailController__asyncAddAskSiriSettingsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __64__AssistantDetailController__asyncAddAskSiriSettingsIfNecessary__block_invoke_2;
    v4[3] = &unk_278CD1AF0;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __64__AssistantDetailController__asyncAddAskSiriSettingsIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained insertContiguousSpecifiers:*(a1 + 32) afterSpecifier:0 animated:0];
    WeakRetained = v3;
  }
}

- (void)_fetchIntentsSpecifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__AssistantDetailController__fetchIntentsSpecifiersWithCompletion___block_invoke;
  v6[3] = &unk_278CD15E8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [IntentsUtilities intentsAppsWithCompletion:v6];
}

void __67__AssistantDetailController__fetchIntentsSpecifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v17 = v3;
      v7 = *v19;
      v8 = MEMORY[0x277CBEBF8];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 appID];
          v12 = [*(a1 + 32) _bundleId];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = [v10 appID];
            v8 = [v14 _enableSiriAppSpecifiersWithAppId:v15 accessGranted:{objc_msgSend(v10, "accessGranted")}];

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v3 = v17;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setAskSiriUseWithAskSiriEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = *MEMORY[0x277D401A8];
  v9 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  v10 = [enabledCopy isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [specifierCopy propertyForKey:@"intentsAppID"];
    v12 = objc_alloc_init(MEMORY[0x277CF3580]);
    v13 = [v12 sectionInfoForSectionID:v11];
    if ([v13 spokenNotificationSetting] == 2 && (objc_msgSend(enabledCopy, "BOOLValue") & 1) == 0)
    {
      v14 = MEMORY[0x277D750F8];
      v15 = +[AssistantController bundle];
      [v15 localizedStringForKey:@"ASSISTANT_USE_WITH_SIRI_DISABLE_OK" value:&stru_285317CF0 table:@"AssistantSettings"];
      v16 = v30 = v12;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__AssistantDetailController_setAskSiriUseWithAskSiriEnabled_specifier___block_invoke;
      v33[3] = &unk_278CD1FA8;
      v34 = enabledCopy;
      v35 = v11;
      v17 = specifierCopy;
      v36 = v17;
      v37 = v13;
      v29 = [v14 actionWithTitle:v16 style:0 handler:v33];

      v18 = MEMORY[0x277D750F8];
      v19 = +[AssistantController bundle];
      v20 = [v19 localizedStringForKey:@"ASSISTANT_USE_WITH_SIRI_DISABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __71__AssistantDetailController_setAskSiriUseWithAskSiriEnabled_specifier___block_invoke_2;
      v31[3] = &unk_278CD1798;
      v32 = v17;
      v28 = [v18 actionWithTitle:v20 style:1 handler:v31];

      v27 = MEMORY[0x277D75110];
      v21 = +[AssistantController bundle];
      v22 = [v21 localizedStringForKey:@"ASSISTANT_USE_WITH_SIRI_DISABLE_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v23 = +[AssistantController bundle];
      v24 = [v23 localizedStringForKey:@"ASSISTANT_USE_WITH_SIRI_DISABLE_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v25 = [v27 alertControllerWithTitle:v22 message:v24 preferredStyle:0];

      v12 = v30;
      [v25 addAction:v29];
      [v25 addAction:v28];
      [(AssistantDetailController *)self presentViewController:v25 animated:1 completion:0];
    }

    else
    {
      +[IntentsUtilities setAccess:appID:](IntentsUtilities, "setAccess:appID:", [enabledCopy BOOLValue], v11);
      [specifierCopy setProperty:enabledCopy forKey:v8];
      PSResetCachedSiriKitTCCEnabledAppIds();
    }
  }

  _bundleId = [(AssistantDetailController *)self _bundleId];
  +[AssistantMetrics didDetailToggle:bundleId:on:](AssistantMetrics, "didDetailToggle:bundleId:on:", @"sirikit", _bundleId, [enabledCopy BOOLValue]);
}

uint64_t __71__AssistantDetailController_setAskSiriUseWithAskSiriEnabled_specifier___block_invoke(uint64_t a1)
{
  +[IntentsUtilities setAccess:appID:](IntentsUtilities, "setAccess:appID:", [*(a1 + 32) BOOLValue], *(a1 + 40));
  [*(a1 + 48) setProperty:*(a1 + 32) forKey:*MEMORY[0x277D401A8]];
  PSResetCachedSiriKitTCCEnabledAppIds();
  v2 = *(a1 + 56);

  return [v2 setSpokenNotificationSetting:1];
}

void __71__AssistantDetailController_setAskSiriUseWithAskSiriEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyForKey:*MEMORY[0x277D3FEB0]];
  [v1 setOn:1 animated:1];
}

- (id)_siriSuggestionsClients
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.store.Jolly", @"com.apple.mobilecal", @"com.apple.MobileAddressBook", @"com.apple.Home", @"com.apple.mobilemail", @"com.apple.Maps", @"com.apple.MobileSMS", @"com.apple.news", @"com.apple.mobilephone", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.mobilesafari", @"com.apple.tips", @"com.apple.iBooks", @"com.apple.Fitness", 0}];

  return v2;
}

- (id)_watchBundleToMirrorWithBundleId:(id)id
{
  v3 = [&unk_285320078 objectForKeyedSubscript:id];
  v4 = CFPreferencesCopyAppValue(@"AppHasCustomBridgeSettings", @"com.apple.suggestions");
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_bundleId
{
  specifier = [(AssistantDetailController *)self specifier];
  v3 = [specifier propertyForKey:@"BUNDLE_ID"];

  return v3;
}

- (id)_appName
{
  specifier = [(AssistantDetailController *)self specifier];
  v3 = [specifier propertyForKey:@"APP_NAME"];

  return v3;
}

@end