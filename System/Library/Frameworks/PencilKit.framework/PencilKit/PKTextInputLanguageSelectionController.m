@interface PKTextInputLanguageSelectionController
+ (BOOL)hasSomeSupportedAndEnabledLocale;
+ (id)_currentLanguageIdentifiersForEmojiAlternatives;
+ (id)_filterEnglishWithLanguages:(id)a3 outRemapTarget:(id *)a4;
+ (id)_preferredRecognitionLocaleIdentifierFromIdentifiers:(id)a3;
+ (id)_sortedStringsArray:(id)a3 withArray:(id)a4;
+ (id)activeInputModes;
+ (id)filteredEnabledLocaleIdentifiers;
+ (id)sharedInstance;
+ (id)supportedAndEnabledLocaleIdentifiers;
+ (void)_enumerateSupportedAndEnabledLocaleIdentifiersWithBlock:(id)a3;
+ (void)_getNormalizedLanguageIdentifier:(id *)a3 dedupLanguageKey:(id *)a4 forInputMode:(id)a5 mappingYueToZh:(BOOL)a6;
+ (void)_getNormalizedLanguageIdentifier:(id *)a3 dedupLanguageKey:(id *)a4 forInputModeIdentifier:(id)a5 mappingYueToZh:(BOOL)a6;
+ (void)_performOperations:(id)a3 withActiveInputModeIdentifiers:(id)a4 preferencesLanguages:(id)a5 preferredLanguages:(id)a6;
+ (void)_performOperations:(id)a3 withActiveInputModes:(id)a4 preferencesLanguages:(id)a5 preferredLanguages:(id)a6;
+ (void)set_inputModesForTesting:(id)a3;
+ (void)set_preferencesLanguagesForTesting:(id)a3;
+ (void)set_preferredLanguagesForTesting:(id)a3;
- (BOOL)shouldIdentifyLanguages;
- (NSArray)currentLanguageIdentifiers;
- (NSArray)currentLanguageIdentifiersForEmojiAlternatives;
- (PKTextInputLanguageSelectionController)init;
- (UIImage)languageIdentificationIcon;
- (UIMenu)languageSelectionMenu;
- (id)_currentKeyboardIdentifier;
- (id)_enabledLanguagesByPreference;
- (id)_iconForLanguageIdentifier:(id)a3;
- (id)registerObserver:(id)a3;
- (void)_clearCachesAndUpdateIconObservers;
- (void)_handleKeyboardCurrentInputModeChanged:(id)a3;
- (void)_notifyLanguageSelectionDidChange;
- (void)_pencilPreferencesChangedCallback:(id)a3;
- (void)_switchToLanguageIfSupported:(id)a3;
- (void)_updateLanguageMenuIfNecessary;
- (void)_updateSelectedLanguageInCachedMenu;
- (void)_updateWithLanguageIdentifiers:(id)a3;
- (void)dealloc;
- (void)ensureKeyboardLanguageConsistencyIfNeeded;
- (void)notifyLanguageDidChange;
@end

@implementation PKTextInputLanguageSelectionController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKTextInputLanguageSelectionController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6A5030 != -1)
  {
    dispatch_once(&qword_1ED6A5030, block);
  }

  v2 = _MergedGlobals_127;

  return v2;
}

void __56__PKTextInputLanguageSelectionController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_127;
  _MergedGlobals_127 = v1;
}

- (PKTextInputLanguageSelectionController)init
{
  v11.receiver = self;
  v11.super_class = PKTextInputLanguageSelectionController;
  v2 = [(PKTextInputLanguageSelectionController *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleKeyboardPreferencesChanged_ name:*MEMORY[0x1E69DDFE8] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleKeyboardCurrentInputModeChanged_ name:*MEMORY[0x1E69DE6B8] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, NotificationCallback, @"com.apple.PencilKit", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    languageSelectionControllerObservers = v2->_languageSelectionControllerObservers;
    v2->_languageSelectionControllerObservers = v8;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDFE8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.PencilKit", 0);
  v6.receiver = self;
  v6.super_class = PKTextInputLanguageSelectionController;
  [(PKTextInputLanguageSelectionController *)&v6 dealloc];
}

- (void)_pencilPreferencesChangedCallback:(id)a3
{
  v4 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiers];

  if (!v4)
  {
    return;
  }

  v5 = [(PKTextInputLanguageSelectionController *)self _enabledLanguagesByPreference];
  v6 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiers];
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    if (v7 && v6)
    {
      v8 = [v6 isEqual:v7];

      v7 = v9;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    [(PKTextInputLanguageSelectionController *)self _clearCachesAndUpdateIconObservers];
    [(PKTextInputLanguageSelectionController *)self _notifyLanguageSelectionDidChange];
    v7 = v9;
  }

LABEL_10:
}

- (void)_handleKeyboardCurrentInputModeChanged:(id)a3
{
  v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v5 = [v4 additionalTextInputLocales];
  v6 = [v5 count];

  if (v6)
  {
    cachedLanguageMenu = self->_cachedLanguageMenu;
    self->_cachedLanguageMenu = 0;

    [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiers:0];

    [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiersForEmojiAlternatives:0];
  }
}

- (void)_clearCachesAndUpdateIconObservers
{
  cachedLanguageMenu = self->_cachedLanguageMenu;
  self->_cachedLanguageMenu = 0;

  [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiers:0];
  [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiersForEmojiAlternatives:0];

  [(PKTextInputLanguageSelectionController *)self notifyLanguageDidChange];
}

- (id)_enabledLanguagesByPreference
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  v3 = [v2 objectForKey:@"CurrentScribbleLanguages"];
  v4 = [v3 copy];

  v5 = +[PKTextInputLanguageSelectionController _preferencesLanguagesForTesting];
  if (v5)
  {
    v6 = +[PKTextInputLanguageSelectionController _preferencesLanguagesForTesting];

    v4 = v6;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v9 = v7;
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v9 = MEMORY[0x1E695E0F0];
          goto LABEL_13;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v9 = v7;
  }

LABEL_13:

  v13 = [objc_opt_class() filteredEnabledLocaleIdentifiers];
  v14 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v15 = [v14 additionalTextInputLocales];
  v16 = [v15 count];

  v17 = v13;
  if (!v16)
  {
    v17 = [objc_opt_class() _sortedStringsArray:v13 withArray:v9];
  }

  return v17;
}

- (void)_switchToLanguageIfSupported:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() supportedAndEnabledLocaleIdentifiers];
  v17 = 0;
  v6 = [objc_opt_class() _filterEnglishWithLanguages:v5 outRemapTarget:&v17];
  v7 = v17;
  if ([v6 containsObject:v4])
  {
    v8 = v4;
LABEL_8:
    v10 = [(PKTextInputLanguageSelectionController *)self currentLanguageIdentifiers];
    v11 = [v10 firstObject];
    v12 = [v11 isEqualToString:v8];

    if ((v12 & 1) == 0)
    {
      v13 = [v10 mutableCopy];
      [v13 removeObject:v8];
      [v13 insertObject:v8 atIndex:0];
      v14 = [objc_opt_class() _sortedStringsArray:v5 withArray:v13];
      [(PKTextInputLanguageSelectionController *)self _updateWithLanguageIdentifiers:v14];
      [(PKTextInputLanguageSelectionController *)self notifyLanguageDidChange];
      v15 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "LanguageController: Saving languages in preferences: %@", buf, 0xCu);
      }

      [PKSettingsDaemon setCurrentScribbleLanguageIdentifiers:v14];
    }

    goto LABEL_15;
  }

  if (v7 && [v5 containsObject:v4])
  {
    v8 = v7;

    v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "LanguageController: Switching to remapped language: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "LanguageController: Rejected switching to unsupported language: %@", buf, 0xCu);
  }

  v8 = v4;
LABEL_15:
}

- (void)_updateWithLanguageIdentifiers:(id)a3
{
  [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiers:a3];
  if (self->_cachedLanguageMenu)
  {

    [(PKTextInputLanguageSelectionController *)self _updateSelectedLanguageInCachedMenu];
  }
}

- (NSArray)currentLanguageIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiers];

  if (!v3)
  {
    v4 = [(PKTextInputLanguageSelectionController *)self _enabledLanguagesByPreference];
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 componentsJoinedByString:{@", "}];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "LanguageController: Loading preferences. Languages: %@", &v9, 0xCu);
    }

    [(PKTextInputLanguageSelectionController *)self _updateWithLanguageIdentifiers:v4];
  }

  v7 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiers];

  return v7;
}

- (BOOL)shouldIdentifyLanguages
{
  v2 = [(PKTextInputLanguageSelectionController *)self currentLanguageIdentifiers];
  v3 = [v2 count] > 1;

  return v3;
}

- (UIImage)languageIdentificationIcon
{
  v3 = [(PKTextInputLanguageSelectionController *)self currentLanguageIdentifiers];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(PKTextInputLanguageSelectionController *)self _iconForLanguageIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_iconForLanguageIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69DCBF0];
  v4 = a3;
  v5 = [v3 sharedInputModeController];
  v6 = [v5 inputModeWithIdentifier:v4];

  v7 = [v6 indicatorTextIcon];

  return v7;
}

- (void)_updateLanguageMenuIfNecessary
{
  v39 = *MEMORY[0x1E69E9840];
  if (!self->_cachedLanguageMenu)
  {
    v2 = self;
    v3 = [objc_opt_class() filteredEnabledLocaleIdentifiers];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v3;
    v30 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v30)
    {
      v5 = *v33;
      v27 = *MEMORY[0x1E69DD948];
      v28 = *v33;
      do
      {
        v6 = 0;
        do
        {
          if (*v33 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * v6);
          v8 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
          v9 = [v8 inputModeWithIdentifier:v7];

          v10 = [v9 indicatorIcon];
          v11 = [v9 extendedDisplayName];
          if (v11)
          {
            v12 = v11;
            v13 = [v9 languageWithRegion];

            if (v13)
            {
              v14 = objc_alloc(MEMORY[0x1E696AAB0]);
              v15 = [v9 extendedDisplayName];
              v36 = v27;
              [v9 languageWithRegion];
              v16 = v4;
              v18 = v17 = v2;
              v37 = v18;
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
              v20 = [v14 initWithString:v15 attributes:v19];
              [v10 setAccessibilityAttributedLabel:v20];

              v2 = v17;
              v4 = v16;
              v5 = v28;
            }
          }

          v21 = MEMORY[0x1E69DC628];
          v22 = [v9 extendedDisplayName];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __72__PKTextInputLanguageSelectionController__updateLanguageMenuIfNecessary__block_invoke;
          v31[3] = &unk_1E82D7DB0;
          v31[4] = v7;
          v31[5] = v2;
          v23 = [v21 actionWithTitle:v22 image:v10 identifier:v7 handler:v31];

          v24 = [v9 languageWithRegion];
          [v23 setAccessibilityLanguage:v24];

          [v4 addObject:v23];
          ++v6;
        }

        while (v30 != v6);
        v30 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v30);
    }

    v25 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v4];
    cachedLanguageMenu = v2->_cachedLanguageMenu;
    v2->_cachedLanguageMenu = v25;
  }
}

uint64_t __72__PKTextInputLanguageSelectionController__updateLanguageMenuIfNecessary__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "LanguageController: Switcher menu selected %@", &v5, 0xCu);
  }

  [*(a1 + 40) _switchToLanguageIfSupported:*(a1 + 32)];
  return [*(a1 + 40) _notifyLanguageSelectionDidChange];
}

- (void)_notifyLanguageSelectionDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSHashTable *)self->_languageSelectionControllerObservers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) textInputLanguageSelectionControllerDidChangeLanguage:{self, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateSelectedLanguageInCachedMenu
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_cachedLanguageMenu)
  {
    v3 = [(PKTextInputLanguageSelectionController *)self currentLanguageIdentifiers];
    v4 = [v3 firstObject];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(UIMenu *)self->_cachedLanguageMenu children];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v11 isEqualToString:v4];

          [v10 setState:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = MEMORY[0x1E69DCC60];
    v14 = [(UIMenu *)self->_cachedLanguageMenu children];
    v15 = [v13 menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v14];
    cachedLanguageMenu = self->_cachedLanguageMenu;
    self->_cachedLanguageMenu = v15;
  }
}

- (id)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [PKTextInputLanguageSelectionToken tokenWithStore:self];
  observers = self->_observers;
  v7 = [v4 copy];
  [(NSMutableDictionary *)observers setObject:v7 forKey:v5];

  if ([(PKTextInputLanguageSelectionController *)self shouldIdentifyLanguages])
  {
    v8 = [(PKTextInputLanguageSelectionController *)self languageIdentificationIcon];
    v9 = [(PKTextInputLanguageSelectionController *)self languageSelectionMenu];
    (*(v4 + 2))(v4, v8, v9);
  }

  return v5;
}

- (void)notifyLanguageDidChange
{
  if ([(NSMutableDictionary *)self->_observers count])
  {
    if ([(PKTextInputLanguageSelectionController *)self shouldIdentifyLanguages])
    {
      v3 = [(PKTextInputLanguageSelectionController *)self languageIdentificationIcon];
    }

    else
    {
      v3 = 0;
    }

    v4 = [(PKTextInputLanguageSelectionController *)self languageSelectionMenu];
    observers = self->_observers;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKTextInputLanguageSelectionController_notifyLanguageDidChange__block_invoke;
    v8[3] = &unk_1E82D7DD8;
    v9 = v3;
    v10 = v4;
    v6 = v4;
    v7 = v3;
    [(NSMutableDictionary *)observers enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (UIMenu)languageSelectionMenu
{
  if ([(PKTextInputLanguageSelectionController *)self shouldIdentifyLanguages])
  {
    [(PKTextInputLanguageSelectionController *)self _updateLanguageMenuIfNecessary];
    [(PKTextInputLanguageSelectionController *)self _updateSelectedLanguageInCachedMenu];
    v3 = self->_cachedLanguageMenu;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)ensureKeyboardLanguageConsistencyIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DCBB8] hasInputOrAssistantViewsOnScreen])
  {
    v3 = [(PKTextInputLanguageSelectionController *)self _currentKeyboardIdentifier];
    v4 = [(PKTextInputLanguageSelectionController *)self currentLanguageIdentifiers];
    v5 = [v4 firstObject];

    if (v3)
    {
      v6 = v5;
      v7 = v3;
      v8 = v7;
      if (v6 != v7)
      {
        if (v6)
        {
          v9 = [v6 isEqualToString:v7];

          if (v9)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v8;
          _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "LanguageController: Propagating keyboard language to Scribble: %@", &v11, 0xCu);
        }

        [(PKTextInputLanguageSelectionController *)self _switchToLanguageIfSupported:v8];
        goto LABEL_12;
      }
    }

LABEL_12:
  }
}

- (id)_currentKeyboardIdentifier
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];

  v7 = 0;
  [objc_opt_class() _getNormalizedLanguageIdentifier:&v7 dedupLanguageKey:0 forInputMode:v3];
  v4 = v7;
  v5 = v7;

  return v4;
}

+ (id)activeInputModes
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 activeInputModes];
  v5 = [a1 _inputModesForTesting];

  if (v5)
  {
    v6 = [a1 _inputModesForTesting];

    v4 = v6;
  }

  v7 = [v3 additionalTextInputLocales];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v10 = +[PKPaletteKeyboardUtilities textInputResponderForEditing];
    v11 = [v3 textInputModeForResponder:v10];
    if (v11)
    {
      [v9 addObject:v11];
    }

    else
    {
      v26 = v10;
      v12 = [v3 additionalTextInputLocales];
      v13 = [v12 firstObject];
      v14 = [v13 localeIdentifier];

      v15 = [MEMORY[0x1E695DF58] currentLocale];
      v16 = [v15 localeIdentifier];

      v24 = v16;
      v25 = v14;
      v17 = [MEMORY[0x1E69D95B8] _inputModesForLocale:v16 language:v14 modeFetcher:&__block_literal_global_23];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [MEMORY[0x1E69DCBE8] keyboardInputModeWithIdentifier:*(*(&v27 + 1) + 8 * i)];
            [v9 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v19);
      }

      v10 = v26;
    }

    [v9 addObjectsFromArray:v4];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

+ (void)_enumerateSupportedAndEnabledLocaleIdentifiersWithBlock:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v4 = [a1 activeInputModes];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v18 = 0;
        v19 = 0;
        [a1 _getNormalizedLanguageIdentifier:&v19 dedupLanguageKey:&v18 forInputMode:v11];
        v12 = v19;
        v13 = v18;
        if (v12 && ([v5 containsObject:v13] & 1) == 0)
        {
          v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v12];
          v17 = 0;
          if ([MEMORY[0x1E6997B78] isLocaleSupported:v14])
          {
            [v5 addObject:v13];
            v16[2](v16, v12, &v17);
          }

          v15 = v17;

          if (v15 == 1)
          {

            goto LABEL_15;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (NSArray)currentLanguageIdentifiersForEmojiAlternatives
{
  v3 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiersForEmojiAlternatives];

  if (!v3)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "LanguageController: Loading language identifiers for emoji alternatives.", v8, 2u);
    }

    v5 = [objc_opt_class() _currentLanguageIdentifiersForEmojiAlternatives];
    [(PKTextInputLanguageSelectionController *)self set_cachedLanguageIdentifiersForEmojiAlternatives:v5];
  }

  v6 = [(PKTextInputLanguageSelectionController *)self _cachedLanguageIdentifiersForEmojiAlternatives];

  return v6;
}

+ (id)_currentLanguageIdentifiersForEmojiAlternatives
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v27[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

  v6 = [a1 activeInputModes];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v20 = 0;
        v21 = 0;
        [a1 _getNormalizedLanguageIdentifier:&v21 dedupLanguageKey:&v20 forInputMode:v14 mappingYueToZh:0];
        v15 = v21;
        v16 = v20;
        if (v15 && ([v8 containsObject:v16] & 1) == 0)
        {
          v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v15];
          if ([MEMORY[0x1E6997B78] isLocaleSupported:v17])
          {
            [v8 addObject:v16];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [v8 array];

  return v18;
}

+ (id)_filterEnglishWithLanguages:(id)a3 outRemapTarget:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [a1 _preferredLanguagesForTesting];

  if (v8)
  {
    v9 = [a1 _preferredLanguagesForTesting];

    v7 = v9;
  }

  v10 = [v7 firstObject];
  v38 = 0;
  [a1 _getNormalizedLanguageIdentifier:&v38 dedupLanguageKey:0 forInputModeIdentifier:v10];
  v11 = v38;
  v12 = v6;
  v13 = MEMORY[0x1CCA6E790](v11);
  v14 = [v13 isEqualToString:@"zh"];

  v15 = v12;
  if (v14)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__5;
    v32 = __Block_byref_object_dispose__5;
    v33 = 0;
    v16 = [MEMORY[0x1E696AD50] indexSet];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __85__PKTextInputLanguageSelectionController__filterEnglishWithLanguages_outRemapTarget___block_invoke;
    v24 = &unk_1E82D7E20;
    v26 = &v34;
    v27 = &v28;
    v17 = v16;
    v25 = v17;
    [v12 enumerateObjectsUsingBlock:&v21];
    v15 = v12;
    if (*(v35 + 24) == 1)
    {
      v18 = [v12 mutableCopy];
      [v18 removeObjectsAtIndexes:v17];
      v15 = [v18 copy];

      if (a4)
      {
        v19 = [@"zh_" stringByAppendingString:v29[5]];
        [a1 _getNormalizedLanguageIdentifier:a4 dedupLanguageKey:0 forInputModeIdentifier:v19];
      }
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  return v15;
}

void __85__PKTextInputLanguageSelectionController__filterEnglishWithLanguages_outRemapTarget___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = MEMORY[0x1CCA6E790]();
  if ([v7 isEqualToString:@"zh"])
  {
    v8 = MEMORY[0x1CCA6E7A0](v13);
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) == 1 && (v10 = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:v8], v9 = *(*(a1 + 40) + 8), (v10 & 1) == 0))
    {
      *(v9 + 24) = 0;
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      *a4 = 1;
    }

    else
    {
      *(v9 + 24) = 1;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    }
  }

  else if ([v7 isEqualToString:@"en"])
  {
    [*(a1 + 32) addIndex:a3];
  }
}

+ (id)filteredEnabledLocaleIdentifiers
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKTextInputLanguageSelectionController_filteredEnabledLocaleIdentifiers__block_invoke;
  v7[3] = &unk_1E82D7E48;
  v8 = v3;
  v4 = v3;
  [a1 _enumerateSupportedAndEnabledLocaleIdentifiersWithBlock:v7];
  v5 = [a1 _filterEnglishWithLanguages:v4 outRemapTarget:0];

  return v5;
}

+ (id)supportedAndEnabledLocaleIdentifiers
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PKTextInputLanguageSelectionController_supportedAndEnabledLocaleIdentifiers__block_invoke;
  v6[3] = &unk_1E82D7E48;
  v4 = v3;
  v7 = v4;
  [a1 _enumerateSupportedAndEnabledLocaleIdentifiersWithBlock:v6];

  return v4;
}

+ (BOOL)hasSomeSupportedAndEnabledLocale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PKTextInputLanguageSelectionController_hasSomeSupportedAndEnabledLocale__block_invoke;
  v4[3] = &unk_1E82D7E70;
  v4[4] = &v5;
  [a1 _enumerateSupportedAndEnabledLocaleIdentifiersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __74__PKTextInputLanguageSelectionController_hasSomeSupportedAndEnabledLocale__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

+ (id)_preferredRecognitionLocaleIdentifierFromIdentifiers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      v9 = MEMORY[0x1CCA6E790](v8);
      if ([v9 isEqualToString:{@"zh", v12}])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v8;

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = [v3 firstObject];
LABEL_12:

  return v10;
}

+ (void)_getNormalizedLanguageIdentifier:(id *)a3 dedupLanguageKey:(id *)a4 forInputMode:(id)a5 mappingYueToZh:(BOOL)a6
{
  v6 = a6;
  v10 = [a5 languageWithRegion];
  [a1 _getNormalizedLanguageIdentifier:a3 dedupLanguageKey:a4 forInputModeIdentifier:v10 mappingYueToZh:v6];
}

+ (void)_getNormalizedLanguageIdentifier:(id *)a3 dedupLanguageKey:(id *)a4 forInputModeIdentifier:(id)a5 mappingYueToZh:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = MEMORY[0x1CCA6E790]();
  v11 = MEMORY[0x1CCA6E7A0](v9);

  if (v6 && [(__CFString *)v10 isEqualToString:@"yue"])
  {

    v10 = @"zh";
  }

  if ([v11 length])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v10, v11];
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v17 = v10;
  if (([(__CFString *)v17 isEqualToString:@"zh"]& 1) != 0 || (v14 = v17, !v6) && (v14 = v17, [(__CFString *)v17 isEqualToString:@"yue"]))
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = v13;
    *a3 = v13;
  }

  if (a4)
  {
    v16 = v14;
    *a4 = v14;
  }
}

+ (id)_sortedStringsArray:(id)a3 withArray:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKTextInputLanguageSelectionController__sortedStringsArray_withArray___block_invoke;
  v9[3] = &unk_1E82D7E98;
  v10 = v5;
  v6 = v5;
  v7 = [a3 sortedArrayWithOptions:16 usingComparator:v9];

  return v7;
}

uint64_t __72__PKTextInputLanguageSelectionController__sortedStringsArray_withArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 == v8)
  {
    return 0;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 > v8)
  {
    return 1;
  }

  v12 = v8 == 0x7FFFFFFFFFFFFFFFLL || v7 < v8;
  return v12 << 63 >> 63;
}

+ (void)set_inputModesForTesting:(id)a3
{
  objc_storeStrong(&__inputModesForTesting, a3);
  v4 = a3;
  v5 = +[PKTextInputLanguageSelectionController sharedInstance];

  [v5 set_cachedLanguageIdentifiers:0];
}

+ (void)set_preferencesLanguagesForTesting:(id)a3
{
  objc_storeStrong(&__preferencesLanguagesForTesting, a3);
  v4 = a3;
  v5 = +[PKTextInputLanguageSelectionController sharedInstance];

  [v5 set_cachedLanguageIdentifiers:0];
}

+ (void)set_preferredLanguagesForTesting:(id)a3
{
  objc_storeStrong(&__preferredLanguagesForTesting, a3);
  v4 = a3;
  v5 = +[PKTextInputLanguageSelectionController sharedInstance];

  [v5 set_cachedLanguageIdentifiers:0];
}

+ (void)_performOperations:(id)a3 withActiveInputModeIdentifiers:(id)a4 preferencesLanguages:(id)a5 preferredLanguages:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [MEMORY[0x1E69DCBE8] keyboardInputModeWithIdentifier:*(*(&v21 + 1) + 8 * v18)];
        if (v19)
        {
          [v13 addObject:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [a1 _performOperations:v9 withActiveInputModes:v13 preferencesLanguages:v11 preferredLanguages:v12];
}

+ (void)_performOperations:(id)a3 withActiveInputModes:(id)a4 preferencesLanguages:(id)a5 preferredLanguages:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [a1 set_inputModesForTesting:a4];
  [a1 set_preferencesLanguagesForTesting:v11];

  [a1 set_preferredLanguagesForTesting:v10];
  v12[2](v12);

  [a1 set_inputModesForTesting:0];
  [a1 set_preferencesLanguagesForTesting:0];

  [a1 set_preferredLanguagesForTesting:0];
}

@end