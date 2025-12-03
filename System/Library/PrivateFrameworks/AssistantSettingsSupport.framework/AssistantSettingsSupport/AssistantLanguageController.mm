@interface AssistantLanguageController
+ (id)bundle;
- (AssistantLanguageController)init;
- (BOOL)multilingualEnabledForLanguageCode:(id)code;
- (id)_itemsFromParent;
- (id)specifiers;
- (void)_signalDidSelectVoice;
- (void)languageCodeDidChange:(id)change;
- (void)listItemSelected:(id)selected;
- (void)reloadSpecifier:(id)specifier;
- (void)setParentController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDetailedTextLabelForSpecifier:(id)specifier;
- (void)updateSelectionToCurrentAssistantLanguageAndScrollToVisible:(BOOL)visible;
@end

@implementation AssistantLanguageController

+ (id)bundle
{
  v2 = bundle_sAssistantLanguageBundle;
  if (!bundle_sAssistantLanguageBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantLanguageBundle;
    bundle_sAssistantLanguageBundle = v3;

    v2 = bundle_sAssistantLanguageBundle;
  }

  return v2;
}

- (AssistantLanguageController)init
{
  v6.receiver = self;
  v6.super_class = AssistantLanguageController;
  v2 = [(AssistantDetailListController *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    multilingualLanguageSettings = v2->_multilingualLanguageSettings;
    v2->_multilingualLanguageSettings = dictionary;
  }

  return v2;
}

void __48__AssistantLanguageController_viewDidDisappear___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_UnableToRecord.isa, a2);
  }
}

- (void)setParentController:(id)controller
{
  controllerCopy = controller;
  if (self->super._supportsMultilingualResponses && (objc_opt_respondsToSelector() & 1) != 0)
  {
    multilingualResponseLanguageVariants = [controllerCopy multilingualResponseLanguageVariants];
    multilingualResponseLanguageVariants = self->_multilingualResponseLanguageVariants;
    self->_multilingualResponseLanguageVariants = multilingualResponseLanguageVariants;
  }

  v7.receiver = self;
  v7.super_class = AssistantLanguageController;
  [(AssistantLanguageController *)&v7 setParentController:controllerCopy];
}

- (id)specifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    _itemsFromParent = [(AssistantLanguageController *)self _itemsFromParent];
    v5 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = _itemsFromParent;
  }

  if (self->super._supportsMultilingualResponses && [(NSArray *)self->_multilingualResponseLanguageVariants count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_multilingualResponseLanguageVariants;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      v10 = *MEMORY[0x277D3FF08];
      v11 = *MEMORY[0x277D3FF38];
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [*(&self->super.super.super.super.super.super.isa + v3) specifierForID:{*(*(&v18 + 1) + 8 * v12), v18}];
          v14 = v13;
          if (v13)
          {
            [v13 setCellType:2];
            [v14 setDetailControllerClass:objc_opt_class()];
            [v14 setProperty:objc_opt_class() forKey:v10];
            [v14 setProperty:MEMORY[0x277CBEC38] forKey:v11];
            [(AssistantLanguageController *)self updateDetailedTextLabelForSpecifier:v14];
          }

          ++v12;
        }

        while (v8 != v12);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  [(AssistantLanguageController *)self updateSelectionToCurrentAssistantLanguageAndScrollToVisible:0, v18];
  v15 = *(&self->super.super.super.super.super.super.isa + v3);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)reloadSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->super._supportsMultilingualResponses)
  {
    [(AssistantLanguageController *)self updateDetailedTextLabelForSpecifier:specifierCopy];
  }

  v5.receiver = self;
  v5.super_class = AssistantLanguageController;
  [(AssistantLanguageController *)&v5 reloadSpecifier:specifierCopy];
}

- (void)languageCodeDidChange:(id)change
{
  [(AssistantLanguageController *)self reloadSpecifiers];

  [(AssistantLanguageController *)self _signalDidSelectVoice];
}

- (void)_signalDidSelectVoice
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __52__AssistantLanguageController__signalDidSelectVoice__block_invoke;
  v6 = &unk_278CD1520;
  objc_copyWeak(&v7, &location);
  v2 = _Block_copy(&v3);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v2);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__AssistantLanguageController__signalDidSelectVoice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = WeakRetained[189];
    if (!v2)
    {
      v3 = objc_alloc_init(AssistantSettingsSignalEmitter);
      v4 = v5[189];
      v5[189] = v3;

      v2 = v5[189];
    }

    [v2 emitDidSelectVoiceSignal];
    WeakRetained = v5;
  }
}

- (id)_itemsFromParent
{
  v3 = *MEMORY[0x277D3FD20];
  values = [*(&self->super.super.super.super.super.super.isa + v3) values];
  v4 = [values count];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LIST_ITEMS_GROUP_SPECIFIER"];
  groupSpecifier = self->super._groupSpecifier;
  self->super._groupSpecifier = v6;

  v23 = v5;
  [v5 addObject:self->super._groupSpecifier];
  [(PSSpecifier *)self->super._groupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v22 = v4;
  if (v4)
  {
    v8 = 0;
    v9 = *MEMORY[0x277D3FE58];
    v20 = *MEMORY[0x277D3FE58];
    v21 = *MEMORY[0x277D3FFC0];
    do
    {
      v10 = [values objectAtIndex:v8];
      titleDictionary = [*(&self->super.super.super.super.super.super.isa + v3) titleDictionary];
      v12 = [titleDictionary objectForKey:v10];

      v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
      v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v12, 0}];
      v15 = MEMORY[0x277D3FAD8];
      target = [*(&self->super.super.super.super.super.super.isa + v3) target];
      v17 = [v15 preferenceSpecifierNamed:v12 target:target set:sel_setAssistantLanguage_forSpecifier_ get:0 detail:0 cell:3 edit:0];

      [v17 setIdentifier:v10];
      [v17 setValues:v13 titles:v14];
      if (self->super._supportsMultilingualResponses)
      {
        transparentImage = [(AssistantDetailListController *)self transparentImage];
        [v17 setProperty:transparentImage forKey:v21];

        [v17 setProperty:objc_opt_class() forKey:v20];
      }

      [v23 addObject:v17];

      ++v8;
    }

    while (v22 != v8);
  }

  return v23;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AssistantLanguageController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x277D3FC48];
    v10 = [*(&self->super.super.super.super.super.super.isa + v9) objectAtIndex:v8];
    if ([v10 cellType] == 3)
    {
      [(AssistantLanguageController *)self listItemSelected:pathCopy];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = AssistantLanguageController;
      [(AssistantLanguageController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
      v11 = [*(&self->super.super.super.super.super.super.isa + v9) objectAtIndex:{-[AssistantLanguageController indexForIndexPath:](self, "indexForIndexPath:", pathCopy)}];
      sideTrippedToDetailForSpecifier = self->_sideTrippedToDetailForSpecifier;
      self->_sideTrippedToDetailForSpecifier = v11;

      self->_punchingOutToDetail = 1;
    }
  }
}

- (void)listItemSelected:(id)selected
{
  v4 = [(AssistantLanguageController *)self indexForIndexPath:selected];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v4];
    obj = v5;
    if (self->super._supportsMultilingualResponses)
    {
      v6 = self->super._previousSelectedSpecifier;
      if (v6)
      {
        [(AssistantDetailListController *)self setChecked:0 forSpecifier:v6];
        [(AssistantLanguageController *)self reloadSpecifier:v6];
      }

      [(AssistantDetailListController *)self setChecked:1 forSpecifier:obj];
      objc_storeStrong(&self->super._previousSelectedSpecifier, obj);
    }

    else
    {
      [(PSSpecifier *)self->super._groupSpecifier setProperty:v5 forKey:*MEMORY[0x277D40090]];
    }
  }
}

- (void)updateDetailedTextLabelForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  values = [specifierCopy values];
  firstObject = [values firstObject];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [mEMORY[0x277CEF368] multilingualResponseEnabledForLanguage:firstObject];

  if (!self->_sideTrippedToDetailForSpecifier || ![specifierCopy isEqual:?])
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = 1;
    v9 = @"MULTILINGUAL_DETAIL_MIXED_%@";
    goto LABEL_7;
  }

  if ([(AssistantLanguageController *)self multilingualEnabledForLanguageCode:firstObject])
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = 0;
  v9 = @"MULTILINGUAL_DETAIL_ENGLISH_ONLY_%@";
LABEL_7:
  v10 = MEMORY[0x277CCACA8];
  values2 = [specifierCopy values];
  firstObject2 = [values2 firstObject];
  v13 = [v10 stringWithFormat:v9, firstObject2, 0];

  multilingualLanguageSettings = self->_multilingualLanguageSettings;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [(NSMutableDictionary *)multilingualLanguageSettings setObject:v15 forKey:firstObject];

  v16 = +[AssistantLanguageController bundle];
  v17 = [v16 localizedStringForKey:v13 value:&stru_285317CF0 table:@"AssistantSettings"];

  if (v17 && ([v17 isEqualToString:v13] & 1) == 0)
  {
    [specifierCopy setProperty:v17 forKey:*MEMORY[0x277D40160]];
  }

  else
  {
    [specifierCopy removePropertyForKey:*MEMORY[0x277D40160]];
  }
}

- (void)updateSelectionToCurrentAssistantLanguageAndScrollToVisible:(BOOL)visible
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    return;
  }

  visibleCopy = visible;
  v6 = +[AssistantUtilities assistantLanguage];
  sideTrippedToDetailForSpecifier = self->_sideTrippedToDetailForSpecifier;
  v11 = v6;
  if (sideTrippedToDetailForSpecifier)
  {
    v8 = sideTrippedToDetailForSpecifier;
  }

  else
  {
    v8 = [*(&self->super.super.super.super.super.super.isa + v3) specifierForID:v6];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (self->super._supportsMultilingualResponses)
  {
    if (self->super._previousSelectedSpecifier)
    {
      [(AssistantDetailListController *)self setChecked:0 forSpecifier:?];
    }

    objc_storeStrong(&self->super._previousSelectedSpecifier, v8);
    [(AssistantDetailListController *)self setChecked:1 forSpecifier:v8];
    [(AssistantLanguageController *)self reloadSpecifier:v8];
    if (!visibleCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(PSSpecifier *)self->super._groupSpecifier setProperty:v8 forKey:*MEMORY[0x277D40090]];
  if (visibleCopy)
  {
LABEL_12:
    table = [(AssistantLanguageController *)self table];
    v10 = [(AssistantLanguageController *)self indexPathForSpecifier:v8];
    [table scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:1];
  }

LABEL_13:
}

- (BOOL)multilingualEnabledForLanguageCode:(id)code
{
  v3 = [(NSMutableDictionary *)self->_multilingualLanguageSettings objectForKey:code];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end