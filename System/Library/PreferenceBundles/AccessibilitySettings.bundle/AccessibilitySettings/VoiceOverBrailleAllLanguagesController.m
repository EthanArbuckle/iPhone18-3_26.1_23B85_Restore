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
  [(VoiceOverBrailleAllLanguagesController *)&v15 viewDidLoad];
  v3 = objc_alloc_init(UISearchController);
  [(VoiceOverBrailleAllLanguagesController *)self setSearchController:v3];

  v4 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [v4 setSearchResultsUpdater:self];

  v5 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [v5 setHidesNavigationBarDuringPresentation:1];

  v6 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [v6 setObscuresBackgroundDuringPresentation:0];

  v7 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  [v7 setAutomaticallyShowsCancelButton:1];

  v8 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
  v9 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [v9 setSearchController:v8];

  v10 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [v10 setHidesSearchBarWhenScrolling:0];

  v11 = settingsLocString(@"ADD_NEW_BRAILLE_LANGUAGE_TITLE", @"VoiceOverSettings");
  v12 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [v12 setTitle:v11];

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  v14 = [(VoiceOverBrailleAllLanguagesController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v75 = OBJC_IVAR___PSListController__specifiers;
    v76 = +[NSMutableArray array];
    v85 = [(VoiceOverBrailleAllLanguagesController *)self keyboardLanguageCodes];
    v4 = [(VoiceOverBrailleAllLanguagesController *)self searchController];
    v5 = [v4 searchBar];
    v87 = [v5 text];

    v6 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v7 = [v6 propertyForKey:?];

    v8 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v9 = [v8 propertyForKey:?];
    v10 = [v9 BOOLValue];

    v11 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v12 = [v11 propertyForKey:?];

    v13 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v14 = [v13 propertyForKey:@"TableSelectionBlockKey"];

    v15 = [(VoiceOverBrailleAllLanguagesController *)self specifier];
    v16 = [v15 propertyForKey:?];
    v17 = v16 != 0;
    v80 = v16;

    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke;
    v100[3] = &unk_2592B8;
    v100[4] = self;
    v18 = v7;
    v101 = v18;
    v81 = v10;
    v104 = v10;
    v82 = v12;
    v103 = v82;
    v74 = v14;
    v102 = v74;
    v105 = v17;
    v84 = objc_retainBlock(v100);
    v86 = v18;
    v19 = [v18 supportedLanguageLocales];
    v77 = +[NSMutableArray array];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v97;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v97 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v96 + 1) + 8 * i);
          v26 = [v25 languageCode];
          v27 = [v85 containsObject:v26];

          if (v27)
          {
            v28 = +[AXLanguageManager sharedInstance];
            v29 = [v28 userLocale];
            v30 = [v25 localeIdentifier];
            v31 = [v29 localizedStringForLanguage:v30 context:3];

            if (![v31 length])
            {
              v32 = objc_opt_class();
              v33 = [v25 localeIdentifier];
              v34 = [v32 localizedNameForLanguageAgnosticTableIdentifier:v33];

              v31 = v34;
            }

            if (![v87 length] || objc_msgSend(v31, "localizedCaseInsensitiveContainsString:", v87))
            {
              v35 = (v84[2])(v84, v31, v25);
              [v77 addObject:v35];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v22);
    }

    v83 = self;

    if ([v77 count])
    {
      [v77 sortUsingComparator:&__block_literal_global_74];
      v36 = [PSSpecifier groupSpecifierWithID:@"PreferredLanguageTables"];
      [v76 addObject:v36];

      [v76 addObjectsFromArray:v77];
    }

    v37 = +[NSMutableArray array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v20;
    v38 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v93;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v93 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v92 + 1) + 8 * j);
          v43 = [v42 languageCode];
          v44 = [v85 containsObject:v43];

          if ((v44 & 1) == 0)
          {
            v45 = +[AXLanguageManager sharedInstance];
            v46 = [v45 userLocale];
            v47 = [v42 localeIdentifier];
            v48 = [v46 localizedStringForLanguage:v47 context:3];

            if (![v48 length] || (objc_msgSend(v42, "localeIdentifier"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqualToString:", v49), v49, v50))
            {
              v51 = objc_opt_class();
              v52 = [v42 localeIdentifier];
              v53 = [v51 localizedNameForLanguageAgnosticTableIdentifier:v52];

              v48 = v53;
            }

            if (![v87 length] || objc_msgSend(v48, "localizedCaseInsensitiveContainsString:", v87))
            {
              v54 = (v84[2])(v84, v48, v42);
              [v37 addObject:v54];
            }
          }
        }

        v39 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v39);
    }

    if ([v37 count])
    {
      [v37 sortUsingComparator:&__block_literal_global_303];
      v55 = [PSSpecifier groupSpecifierWithID:@"OtherLanguageTables"];
      [v76 addObject:v55];

      [v76 addObjectsFromArray:v37];
    }

    v73 = v37;
    v56 = +[NSMutableArray array];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v78 = [v86 languageAgnosticTableIdentifiers];
    v57 = [v78 countByEnumeratingWithState:&v88 objects:v106 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v89;
      do
      {
        for (k = 0; k != v58; k = k + 1)
        {
          if (*v89 != v59)
          {
            objc_enumerationMutation(v78);
          }

          v61 = *(*(&v88 + 1) + 8 * k);
          v62 = [objc_opt_class() localizedNameForLanguageAgnosticTableIdentifier:v61];
          if (![v87 length] || objc_msgSend(v62, "localizedCaseInsensitiveContainsString:", v87))
          {
            v63 = v56;
            v64 = [PSSpecifier preferenceSpecifierNamed:v62 target:v83 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            [v64 setProperty:v61 forKey:@"TableIdentifier"];
            [v64 setProperty:v86 forKey:@"TableEnumerator"];
            v65 = [NSNumber numberWithBool:v81];
            [v64 setProperty:v65 forKey:@"IsAddingNewLanguage"];

            v66 = objc_retainBlock(v82);
            [v64 setProperty:v66 forKey:@"DismissBlock"];

            [v64 setProperty:&__kCFBooleanTrue forKey:@"IsLanguageAgnostic"];
            v67 = [NSNumber numberWithBool:v80 != 0];
            [v64 setProperty:v67 forKey:@"AllowDuplicatesKey"];

            v56 = v63;
            [v63 addObject:v64];
          }
        }

        v58 = [v78 countByEnumeratingWithState:&v88 objects:v106 count:16];
      }

      while (v58);
    }

    if ([v56 count])
    {
      [v56 sortUsingComparator:&__block_literal_global_308];
      v68 = [PSSpecifier groupSpecifierWithID:@"LanguageAgnosticTables"];
      [v76 addObject:v68];

      [v76 addObjectsFromArray:v56];
    }

    v69 = v56;
    v70 = *&v83->AXUISettingsBaseListController_opaque[v75];
    *&v83->AXUISettingsBaseListController_opaque[v75] = v76;
    v71 = v76;

    v3 = *&v83->AXUISettingsBaseListController_opaque[v75];
  }

  return v3;
}

id __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:v5 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v8 setProperty:v6 forKey:@"Locale"];
  [v8 setProperty:*(a1 + 40) forKey:@"TableEnumerator"];
  v9 = [NSNumber numberWithBool:*(a1 + 64)];
  [v8 setProperty:v9 forKey:@"IsAddingNewLanguage"];

  v10 = objc_retainBlock(*(a1 + 56));
  [v8 setProperty:v10 forKey:@"DismissBlock"];

  [v8 setProperty:*(a1 + 48) forKey:@"TableSelectionBlockKey"];
  v11 = [NSNumber numberWithBool:*(a1 + 65)];
  [v8 setProperty:v11 forKey:@"AllowDuplicatesKey"];

  return v8;
}

int64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_2(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_3(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t __52__VoiceOverBrailleAllLanguagesController_specifiers__block_invoke_4(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_dismiss
{
  v2 = [(VoiceOverBrailleAllLanguagesController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)keyboardLanguageCodes
{
  v2 = +[AXLanguageManager sharedInstance];
  v3 = [v2 preferredLanguageIDsFromUserSelectedKeyboards];

  v4 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSLocale localeWithLocaleIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 languageCode];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end