@interface _SFTranslationTargetLocaleAlertController
+ (id)translationAlertControllerWithTranslationContext:(id)context;
- (_SFTranslationTargetLocaleAlertControllerDelegate)delegate;
- (id)displayNameForLocaleIdentifier:(id)identifier;
- (void)_setUpWithLocaleIdentifiers:(id)identifiers;
- (void)_translationAvailabilityDidChange:(id)change;
- (void)configurePopoverWithSourceInfo:(id)info;
- (void)translationAlertController:(id)controller didSelectLocale:(id)locale;
- (void)translationAlertController:(id)controller validateTargetLocale:(id)locale completionHandler:(id)handler;
- (void)translationAvailabilityDidChange;
@end

@implementation _SFTranslationTargetLocaleAlertController

+ (id)translationAlertControllerWithTranslationContext:(id)context
{
  contextCopy = context;
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = [self alertControllerWithTitle:v5 message:v6 preferredStyle:0];
  [v7 setImageIfNecessaryWithName:@"alert-translation"];
  objc_storeWeak(v7 + 166, contextCopy);
  objc_storeWeak(v7 + 167, v7);
  availableTargetLocaleIdentifiers = [contextCopy availableTargetLocaleIdentifiers];
  [v7 _setUpWithLocaleIdentifiers:availableTargetLocaleIdentifiers];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v7 selector:sel__translationAvailabilityDidChange_ name:*MEMORY[0x1E69C9A10] object:contextCopy];

  return v7;
}

- (void)_setUpWithLocaleIdentifiers:(id)identifiers
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localeIdentifierToAlertActionMap = self->_localeIdentifierToAlertActionMap;
  self->_localeIdentifierToAlertActionMap = dictionary;

  objc_initWeak(&location, self);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = identifiersCopy;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v22 = *v34;
    do
    {
      v8 = 0;
      v23 = v7;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke;
        aBlock[3] = &unk_1E848FCE8;
        objc_copyWeak(&v32, &location);
        aBlock[4] = v9;
        v10 = _Block_copy(aBlock);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_2;
        v29[3] = &unk_1E8491D58;
        objc_copyWeak(&v30, &location);
        v11 = _Block_copy(v29);
        v12 = [(_SFTranslationTargetLocaleAlertController *)self displayNameForLocaleIdentifier:v9];
        v13 = [MEMORY[0x1E69DC648] _actionWithTitle:v12 image:0 style:0 handler:v10 shouldDismissHandler:v11];
        [v13 setEnabled:0];
        [(NSMutableDictionary *)self->_localeIdentifierToAlertActionMap setObject:v13 forKeyedSubscript:v9];
        [(_SFTranslationTargetLocaleAlertController *)self addAction:v13];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_3;
          v27[3] = &unk_1E848FA00;
          v28 = v13;
          [WeakRetained translationAlertController:self validateTargetLocale:v9 completionHandler:v27];
        }

        objc_destroyWeak(&v30);
        objc_destroyWeak(&v32);
        ++v8;
      }

      while (v23 != v8);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v15 = MEMORY[0x1E69DC648];
  v16 = _WBSLocalizedString();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_5;
  v26[3] = &unk_1E848FBF8;
  v26[4] = self;
  v17 = [v15 actionWithTitle:v16 style:0 handler:v26];
  [(_SFTranslationTargetLocaleAlertController *)self addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_6;
  v24[3] = &unk_1E848FFD0;
  objc_copyWeak(&v25, &location);
  v20 = [v18 actionWithTitle:v19 style:1 handler:v24];
  [(_SFTranslationTargetLocaleAlertController *)self addAction:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)configurePopoverWithSourceInfo:(id)info
{
  infoCopy = info;
  v6 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:infoCopy];

  [(_SFTranslationTargetLocaleAlertController *)self setModalPresentationStyle:7];
  popoverPresentationController = [(_SFTranslationTargetLocaleAlertController *)self popoverPresentationController];
  [(_SFPopoverPresentationDelegate *)v6 attachToPopoverPresentationController:popoverPresentationController];
}

- (void)translationAvailabilityDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allKeys = [(NSMutableDictionary *)self->_localeIdentifierToAlertActionMap allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __77___SFTranslationTargetLocaleAlertController_translationAvailabilityDidChange__block_invoke;
          v9[3] = &unk_1E8491050;
          objc_copyWeak(&v10, &location);
          v9[4] = v8;
          [WeakRetained translationAlertController:self validateTargetLocale:v8 completionHandler:v9];
          objc_destroyWeak(&v10);
          ++v7;
        }

        while (v5 != v7);
        v5 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }

    objc_destroyWeak(&location);
  }
}

- (void)_translationAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79___SFTranslationTargetLocaleAlertController__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E848F548;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)displayNameForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:identifierCopy inNativeLanguage:1];
  if ([MEMORY[0x1E695DF58] safari_currentLocaleHasSameBaseLanguageAsLocaleIdentifier:identifierCopy])
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:identifierCopy inNativeLanguage:0];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v4, v6];
  }

  return v5;
}

- (void)translationAlertController:(id)controller didSelectLocale:(id)locale
{
  localeCopy = locale;
  if ([localeCopy length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_translationContext);
    [WeakRetained requestTranslatingWebpageToLocale:localeCopy completionHandler:0];
  }
}

- (void)translationAlertController:(id)controller validateTargetLocale:(id)locale completionHandler:(id)handler
{
  handlerCopy = handler;
  localeCopy = locale;
  WeakRetained = objc_loadWeakRetained(&self->_translationContext);
  [WeakRetained validateTargetLocale:localeCopy completionHandler:handlerCopy];
}

- (_SFTranslationTargetLocaleAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end