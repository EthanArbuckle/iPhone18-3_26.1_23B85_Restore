@interface VoiceOverBrailleAllLanguagesController
- (id)keyboardLanguageCodes;
- (id)specifiers;
- (void)_dismiss;
- (void)viewDidLoad;
@end

@implementation VoiceOverBrailleAllLanguagesController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = VoiceOverBrailleAllLanguagesController;
  [(AccessibilityBridgeBaseController *)&v15 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D759F0]);
  [(VoiceOverBrailleAllLanguagesController *)self setSearchController:v3];

  searchController = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [searchController2 setHidesNavigationBarDuringPresentation:1];

  searchController3 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [searchController3 setObscuresBackgroundDuringPresentation:0];

  searchController4 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [searchController4 setAutomaticallyShowsCancelButton:1];

  searchController5 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  navigationItem = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [navigationItem setSearchController:searchController5];

  navigationItem2 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  v11 = settingsLocString(@"ADD_NEW_BRAILLE_LANGUAGE_TITLE", @"VoiceOverSettings");
  navigationItem3 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [navigationItem3 setTitle:v11];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__dismiss];
  navigationItem4 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [navigationItem4 setLeftBarButtonItem:v13];
}

- (id)specifiers
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v76 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    keyboardLanguageCodes = [(VoiceOverBrailleAllLanguagesController *)self keyboardLanguageCodes];
    searchController = [(VoiceOverBrailleAllLanguagesController *)self searchController];
    searchBar = [searchController searchBar];
    text = [searchBar text];

    specifier = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v7 = [specifier propertyForKey:?];

    specifier2 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v9 = [specifier2 propertyForKey:?];
    bOOLValue = [v9 BOOLValue];

    specifier3 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v12 = [specifier3 propertyForKey:?];

    specifier4 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v14 = [specifier4 propertyForKey:@"TableSelectionBlockKey"];

    specifier5 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v16 = [specifier5 propertyForKey:?];
    v17 = v16 != 0;
    v81 = v16;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke;
    aBlock[3] = &unk_278B90B78;
    aBlock[4] = self;
    v18 = v7;
    v102 = v18;
    v82 = bOOLValue;
    v105 = bOOLValue;
    v83 = v12;
    v104 = v83;
    v75 = v14;
    v103 = v75;
    v106 = v17;
    v85 = _Block_copy(aBlock);
    v87 = v18;
    supportedLanguageLocales = [v18 supportedLanguageLocales];
    array2 = [MEMORY[0x277CBEB18] array];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v20 = supportedLanguageLocales;
    v21 = [v20 countByEnumeratingWithState:&v97 objects:v109 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v98;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v98 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v97 + 1) + 8 * i);
          languageCode = [v25 languageCode];
          v27 = [keyboardLanguageCodes containsObject:languageCode];

          if (v27)
          {
            mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
            userLocale = [mEMORY[0x277CE7DA0] userLocale];
            localeIdentifier = [v25 localeIdentifier];
            v31 = [userLocale localizedStringForLanguage:localeIdentifier context:3];

            if (![v31 length])
            {
              v32 = objc_opt_class();
              localeIdentifier2 = [v25 localeIdentifier];
              v34 = [v32 localizedNameForLanguageAgnosticTableIdentifier:localeIdentifier2];

              v31 = v34;
            }

            if (![text length] || objc_msgSend(v31, "localizedCaseInsensitiveContainsString:", text))
            {
              v35 = v85[2](v85, v31, v25);
              [array2 addObject:v35];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v97 objects:v109 count:16];
      }

      while (v22);
    }

    selfCopy = self;

    if ([array2 count])
    {
      [array2 sortUsingComparator:&__block_literal_global_1];
      v36 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PreferredLanguageTables"];
      [array addObject:v36];

      [array addObjectsFromArray:array2];
    }

    array3 = [MEMORY[0x277CBEB18] array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v20;
    v38 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v94;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v94 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v93 + 1) + 8 * j);
          languageCode2 = [v42 languageCode];
          v44 = [keyboardLanguageCodes containsObject:languageCode2];

          if ((v44 & 1) == 0)
          {
            mEMORY[0x277CE7DA0]2 = [MEMORY[0x277CE7DA0] sharedInstance];
            userLocale2 = [mEMORY[0x277CE7DA0]2 userLocale];
            localeIdentifier3 = [v42 localeIdentifier];
            v48 = [userLocale2 localizedStringForLanguage:localeIdentifier3 context:3];

            if (![v48 length] || (objc_msgSend(v42, "localeIdentifier"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqualToString:", v49), v49, v50))
            {
              v51 = objc_opt_class();
              localeIdentifier4 = [v42 localeIdentifier];
              v53 = [v51 localizedNameForLanguageAgnosticTableIdentifier:localeIdentifier4];

              v48 = v53;
            }

            if (![text length] || objc_msgSend(v48, "localizedCaseInsensitiveContainsString:", text))
            {
              v54 = v85[2](v85, v48, v42);
              [array3 addObject:v54];
            }
          }
        }

        v39 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
      }

      while (v39);
    }

    if ([array3 count])
    {
      [array3 sortUsingComparator:&__block_literal_global_303];
      v55 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OtherLanguageTables"];
      [array addObject:v55];

      [array addObjectsFromArray:array3];
    }

    v74 = array3;
    array4 = [MEMORY[0x277CBEB18] array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    languageAgnosticTableIdentifiers = [v87 languageAgnosticTableIdentifiers];
    v57 = [languageAgnosticTableIdentifiers countByEnumeratingWithState:&v89 objects:v107 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v90;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v90 != v59)
          {
            objc_enumerationMutation(languageAgnosticTableIdentifiers);
          }

          v61 = *(*(&v89 + 1) + 8 * k);
          v62 = [objc_opt_class() localizedNameForLanguageAgnosticTableIdentifier:v61];
          if (![text length] || objc_msgSend(v62, "localizedCaseInsensitiveContainsString:", text))
          {
            v63 = array4;
            v64 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v62 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            [v64 setProperty:v61 forKey:@"TableIdentifier"];
            [v64 setProperty:v87 forKey:@"TableEnumerator"];
            v65 = [MEMORY[0x277CCABB0] numberWithBool:v82];
            [v64 setProperty:v65 forKey:@"IsAddingNewLanguage"];

            v66 = _Block_copy(v83);
            [v64 setProperty:v66 forKey:@"DismissBlock"];

            [v64 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguageAgnostic"];
            v67 = [MEMORY[0x277CCABB0] numberWithBool:v81 != 0];
            [v64 setProperty:v67 forKey:@"AllowDuplicatesKey"];

            array4 = v63;
            [v63 addObject:v64];
          }
        }

        v58 = [languageAgnosticTableIdentifiers countByEnumeratingWithState:&v89 objects:v107 count:16];
      }

      while (v58);
    }

    if ([array4 count])
    {
      [array4 sortUsingComparator:&__block_literal_global_308];
      v68 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LanguageAgnosticTables"];
      [array addObject:v68];

      [array addObjectsFromArray:array4];
    }

    v69 = array4;
    v70 = *(&selfCopy->super.super.super.super.super.super.isa + v76);
    *(&selfCopy->super.super.super.super.super.super.isa + v76) = array;
    v71 = array;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v76);
  }

  v72 = *MEMORY[0x277D85DE8];

  return v3;
}

id __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3FAD8];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v5 preferenceSpecifierNamed:v8 target:v6 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v9 setProperty:v7 forKey:@"Locale"];
  [v9 setProperty:*(a1 + 40) forKey:@"TableEnumerator"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  [v9 setProperty:v10 forKey:@"IsAddingNewLanguage"];

  v11 = _Block_copy(*(a1 + 56));
  [v9 setProperty:v11 forKey:@"DismissBlock"];

  [v9 setProperty:*(a1 + 48) forKey:@"TableSelectionBlockKey"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 65)];
  [v9 setProperty:v12 forKey:@"AllowDuplicatesKey"];

  return v9;
}

uint64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_dismiss
{
  navigationController = [(VoiceOverBrailleAllLanguagesController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)keyboardLanguageCodes
{
  v20 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
  preferredLanguageIDsFromUserSelectedKeyboards = [mEMORY[0x277CE7DA0] preferredLanguageIDsFromUserSelectedKeyboards];

  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = preferredLanguageIDsFromUserSelectedKeyboards;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
        v11 = v10;
        if (v10)
        {
          languageCode = [v10 languageCode];
          [v4 addObject:languageCode];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end