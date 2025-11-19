@interface ASFSuggestionsController
+ (id)sharedController;
- (ASFSuggestionsController)init;
- (ASFSuggestionsController)initWithLockScreenSuggestionManager:(id)a3;
- (id)__loadDisabledShortcuts;
- (id)__loadDisabledSuggestApps;
- (id)_loadDisabledShortcutsSet;
- (id)_loadDisabledSuggestAppsSet;
- (void)_loadApps;
@end

@implementation ASFSuggestionsController

+ (id)sharedController
{
  if (sharedController_onceToken_1 != -1)
  {
    +[ASFSuggestionsController sharedController];
  }

  v3 = sharedController_singleton_0;

  return v3;
}

uint64_t __44__ASFSuggestionsController_sharedController__block_invoke()
{
  sharedController_singleton_0 = objc_alloc_init(ASFSuggestionsController);

  return MEMORY[0x2821F96F8]();
}

- (ASFSuggestionsController)init
{
  v3 = +[ASFLockScreenSuggestionManager sharedInstance];
  v4 = [(ASFSuggestionsController *)self initWithLockScreenSuggestionManager:v3];

  return v4;
}

- (ASFSuggestionsController)initWithLockScreenSuggestionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASFSuggestionsController;
  v6 = [(ASFSuggestionsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockScreenSuggestionManager, a3);
    [(ASFSuggestionsController *)v7 _loadApps];
  }

  return v7;
}

- (void)_loadApps
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
  v21 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
  if (!getSPGetDisabledBundleSetSymbolLoc_ptr_0)
  {
    v4 = SearchLibrary_0();
    v19[3] = dlsym(v4, "SPGetDisabledBundleSet");
    getSPGetDisabledBundleSetSymbolLoc_ptr_0 = v19[3];
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    goto LABEL_9;
  }

  v5 = v3(1);
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  self->_disabledSpotlightBundles = v5;

  v7 = [(ASFLockScreenSuggestionManaging *)self->_lockScreenSuggestionManager disabledLockScreenBundles];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  self->_disabledLockScreenBundles = v7;

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
  v21 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
  if (!getSPGetDisabledAppSetSymbolLoc_ptr_0)
  {
    v10 = SearchLibrary_0();
    v19[3] = dlsym(v10, "SPGetDisabledAppSet");
    getSPGetDisabledAppSetSymbolLoc_ptr_0 = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
LABEL_9:
    v17 = [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v17);
  }

  v11 = v9(1);
  disabledSpotlightApps = self->_disabledSpotlightApps;
  self->_disabledSpotlightApps = v11;

  v13 = [(ASFSuggestionsController *)self _loadDisabledShortcutsSet];
  disabledSpotlightShortcuts = self->_disabledSpotlightShortcuts;
  self->_disabledSpotlightShortcuts = v13;

  v15 = [(ASFSuggestionsController *)self _loadDisabledSuggestAppsSet];
  disabledSuggestApps = self->_disabledSuggestApps;
  self->_disabledSuggestApps = v15;
}

- (id)_loadDisabledShortcutsSet
{
  v2 = [(ASFSuggestionsController *)self __loadDisabledShortcuts];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v2];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;

  return v4;
}

- (id)__loadDisabledShortcuts
{
  v2 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");

  return v2;
}

- (id)_loadDisabledSuggestAppsSet
{
  v2 = [(ASFSuggestionsController *)self __loadDisabledSuggestApps];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v2];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;

  return v4;
}

- (id)__loadDisabledSuggestApps
{
  v2 = CFPreferencesCopyAppValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui");

  return v2;
}

@end