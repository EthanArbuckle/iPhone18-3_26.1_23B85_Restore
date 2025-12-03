@interface ASFAppClipsSuggestionsController
+ (id)sharedController;
- (ASFAppClipsSuggestionsController)init;
- (ASFAppClipsSuggestionsController)initWithDisabledSpotlightBundles:(id)bundles disabledSpotlightApps:(id)apps;
- (BOOL)learnFromAppClipsEnabled;
- (BOOL)suggestAppClipsEnabled;
- (void)_synchronizeDisabledSpotlightApps;
@end

@implementation ASFAppClipsSuggestionsController

+ (id)sharedController
{
  if (sharedController_onceToken_0 != -1)
  {
    +[ASFAppClipsSuggestionsController sharedController];
  }

  v3 = sharedController_singleton;

  return v3;
}

uint64_t __52__ASFAppClipsSuggestionsController_sharedController__block_invoke()
{
  sharedController_singleton = objc_alloc_init(ASFAppClipsSuggestionsController);

  return MEMORY[0x2821F96F8]();
}

- (ASFAppClipsSuggestionsController)init
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getSPGetDisabledBundleSetSymbolLoc_ptr;
  v15 = getSPGetDisabledBundleSetSymbolLoc_ptr;
  if (!getSPGetDisabledBundleSetSymbolLoc_ptr)
  {
    v4 = SearchLibrary();
    v13[3] = dlsym(v4, "SPGetDisabledBundleSet");
    getSPGetDisabledBundleSetSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    goto LABEL_9;
  }

  v5 = v3(1);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getSPGetDisabledAppSetSymbolLoc_ptr;
  v15 = getSPGetDisabledAppSetSymbolLoc_ptr;
  if (!getSPGetDisabledAppSetSymbolLoc_ptr)
  {
    v7 = SearchLibrary();
    v13[3] = dlsym(v7, "SPGetDisabledAppSet");
    getSPGetDisabledAppSetSymbolLoc_ptr = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
LABEL_9:
    _allVisibleAppBundleIds = [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(_allVisibleAppBundleIds);
  }

  v8 = v6(1);
  v9 = [(ASFAppClipsSuggestionsController *)self initWithDisabledSpotlightBundles:v5 disabledSpotlightApps:v8];

  return v9;
}

- (ASFAppClipsSuggestionsController)initWithDisabledSpotlightBundles:(id)bundles disabledSpotlightApps:(id)apps
{
  bundlesCopy = bundles;
  appsCopy = apps;
  v12.receiver = self;
  v12.super_class = ASFAppClipsSuggestionsController;
  v9 = [(ASFAppClipsSuggestionsController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_disabledSpotlightBundles, bundles);
    objc_storeStrong(&v10->_disabledSpotlightApps, apps);
  }

  return v10;
}

- (BOOL)learnFromAppClipsEnabled
{
  v2 = CFPreferencesCopyAppValue(@"SuggestionsLearnFromAppClips", @"com.apple.suggestions");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_synchronizeDisabledSpotlightApps
{
  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", [(NSMutableSet *)self->_disabledSpotlightBundles allObjects], @"com.apple.spotlightui");
  CFPreferencesSetAppValue(@"SBSearchDisabledApps", [(NSMutableSet *)self->_disabledSpotlightApps allObjects], @"com.apple.spotlightui");
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];

  CFPreferencesSynchronize(@"com.apple.spotlightui", v3, v4);
}

- (BOOL)suggestAppClipsEnabled
{
  v2 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end