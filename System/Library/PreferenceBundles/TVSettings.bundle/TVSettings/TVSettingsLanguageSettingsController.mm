@interface TVSettingsLanguageSettingsController
- (BOOL)_shouldEditButtonBeEnabled;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (TVSettingsLanguageSettingsController)init;
- (id)_specifierForLanguage:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_preferredLanguagesDidChange:(id)a3;
- (void)_setUseDefaultSubtitleLanguages:(id)a3;
- (void)_showAddAudioLanguagePicker:(id)a3;
- (void)_showAddSubtitleLanguagePicker:(id)a3;
- (void)_willResignActive:(id)a3;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TVSettingsLanguageSettingsController

- (TVSettingsLanguageSettingsController)init
{
  if (qword_28008 != -1)
  {
    sub_124A4();
  }

  v13.receiver = self;
  v13.super_class = TVSettingsLanguageSettingsController;
  v3 = [(TVSettingsLanguageSettingsController *)&v13 init];
  v4 = v3;
  if (v3)
  {
    v5 = [(TVSettingsLanguageSettingsController *)v3 navigationItem];
    v6 = [(TVSettingsLanguageSettingsController *)v4 editButtonItem];
    [v5 setRightBarButtonItem:v6];

    v7 = [(TVSettingsLanguageSettingsController *)v4 navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setEnabled:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"_preferredLanguagesDidChange:" name:@"PreferredAudioLanguagesDidChangeNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v4 selector:"_preferredLanguagesDidChange:" name:@"PreferredSubtitleLanguagesDidChangeNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v4 selector:"_willResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    BYTE5(v4->_addSubtitleLanguageSpecifier) = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsLanguageSettingsController;
  [(TVSettingsListMonitorController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3 = [(TVSettingsLanguageSettingsController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((&self->_hasLocalChange + 3), v3);
  }

  v4 = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
  *(&self->super + 1) = [v4 count];

  v5 = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
  *(&self->_numberOfAudioLanguages + 4) = [v5 count];

  v9.receiver = self;
  v9.super_class = TVSettingsLanguageSettingsController;
  [(TVSettingsLanguageSettingsController *)&v9 viewDidLoad];
  v6 = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  v7 = [(TVSettingsLanguageSettingsController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];
}

- (void)_willResignActive:(id)a3
{
  if ([(TVSettingsLanguageSettingsController *)self isEditing])
  {

    [(TVSettingsLanguageSettingsController *)self setEditing:0 animated:0];
  }
}

- (void)reloadSpecifiers
{
  v3 = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
  *(&self->super + 1) = [v3 count];

  v4 = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
  *(&self->_numberOfAudioLanguages + 4) = [v4 count];

  v8.receiver = self;
  v8.super_class = TVSettingsLanguageSettingsController;
  [(TVSettingsLanguageSettingsController *)&v8 reloadSpecifiers];
  v5 = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  v6 = [(TVSettingsLanguageSettingsController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:v5];
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = TVSettingsLanguageSettingsController;
  v4 = a3;
  [(TVSettingsLanguageSettingsController *)&v7 setSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"TVSettingsTopLevelSettingsVCKey", v7.receiver, v7.super_class}];

  v6 = *(&self->_hasLocalChange + 3);
  *(&self->_hasLocalChange + 3) = v5;
}

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v60 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"LANGUAGE_SETTINGS_TITLE" value:&stru_21328 table:@"TVSettings"];
    [(TVSettingsLanguageSettingsController *)self setTitle:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DOWNLOAD_AUDIO_LANGUAGES_TITLE" value:&stru_21328 table:@"TVSettings"];
    v9 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos:AudioLanguagesGroupSpecifier" name:v8];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DOWNLOAD_AUDIO_LANGUAGES_EXPLANATION" value:&stru_21328 table:@"TVSettings"];
    v58 = PSFooterTextGroupKey;
    [v9 setProperty:v11 forKey:?];

    v59 = v9;
    [v4 addObject:v9];
    v12 = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
    v13 = [v12 mutableCopy];

    [v13 sortUsingComparator:&stru_209A8];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v67;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v67 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(TVSettingsLanguageSettingsController *)self _specifierForLanguage:*(*(&v66 + 1) + 8 * i)];
          [v4 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v16);
    }

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"ADD_AUDIO_DOWNLOAD_LANGUAGE_ACTION" value:&stru_21328 table:@"TVSettings"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v23 = *(&self->_numberOfSubtitleLanguages + 4);
    *(&self->_numberOfSubtitleLanguages + 4) = v22;

    v24 = PSIDKey;
    [*(&self->_numberOfSubtitleLanguages + 4) setProperty:@"AddNewAudioLanguage" forKey:PSIDKey];
    [*(&self->_numberOfSubtitleLanguages + 4) setButtonAction:"_showAddAudioLanguagePicker:"];
    [v4 addObject:*(&self->_numberOfSubtitleLanguages + 4)];
    v25 = [*(&self->_hasLocalChange + 3) useDefaultSubtitleLanguages];
    v26 = [v25 BOOLValue];

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_TITLE" value:&stru_21328 table:@"TVSettings"];
    v29 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos:UseDefaultSubtitleLanguagesGroupSpecifier" name:v28];
    v30 = *(&self->_addAudioLanguageSpecifier + 4);
    *(&self->_addAudioLanguageSpecifier + 4) = v29;

    v57 = v26;
    if (v26)
    {
      v31 = *(&self->_addAudioLanguageSpecifier + 4);
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_EXPLANATION" value:&stru_21328 table:@"TVSettings"];
      [v31 setProperty:v33 forKey:v58];
    }

    [v4 addObject:*(&self->_addAudioLanguageSpecifier + 4)];
    v34 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"DOWNLOAD_DEFAULT_SUBTITLE_LANGUAGES_SWITCH_TITLE" value:&stru_21328 table:@"TVSettings"];
    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"_setUseDefaultSubtitleLanguages:" get:"_useDefaultSubtitleLanguages" detail:0 cell:6 edit:0];
    v37 = *(&self->_useDefaultSubtitleLanguagesGroupSpecifier + 4);
    *(&self->_useDefaultSubtitleLanguagesGroupSpecifier + 4) = v36;

    [*(&self->_useDefaultSubtitleLanguagesGroupSpecifier + 4) setProperty:@"com.apple.videos:UseDefaultSubtitleLanguagesSpecifier" forKey:v24];
    [v4 addObject:*(&self->_useDefaultSubtitleLanguagesGroupSpecifier + 4)];
    v38 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos:SubtitleLanguagesGroupSpecifierID"];
    v39 = *(&self->_useDefaultSubtitleLanguagesSpecifier + 4);
    *(&self->_useDefaultSubtitleLanguagesSpecifier + 4) = v38;

    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"ADD_SUBTITLE_DOWNLOAD_LANGUAGE_ACTION" value:&stru_21328 table:@"TVSettings"];
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v43 = *(&self->_subtitleLanguageSpecifiers + 4);
    *(&self->_subtitleLanguageSpecifiers + 4) = v42;

    [*(&self->_subtitleLanguageSpecifiers + 4) setProperty:@"AddNewSubtitleLanguage" forKey:v24];
    [*(&self->_subtitleLanguageSpecifiers + 4) setButtonAction:"_showAddSubtitleLanguagePicker:"];
    v44 = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
    v45 = [v44 mutableCopy];

    [v45 sortUsingComparator:&stru_209C8];
    v46 = objc_alloc_init(NSMutableArray);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v47 = v45;
    v48 = [v47 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v63;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v63 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [(TVSettingsLanguageSettingsController *)self _specifierForLanguage:*(*(&v62 + 1) + 8 * j)];
          [v46 addObject:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v49);
    }

    objc_storeStrong((&self->_subtitleLanguagesGroupSpecifier + 4), v46);
    if ((v57 & 1) == 0)
    {
      v61 = *(&self->_useDefaultSubtitleLanguagesSpecifier + 4);
      v53 = [NSBundle bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_EXPLANATION" value:&stru_21328 table:@"TVSettings"];
      [v61 setProperty:v54 forKey:v58];

      [v4 addObject:*(&self->_useDefaultSubtitleLanguagesSpecifier + 4)];
      [v4 addObjectsFromArray:*(&self->_subtitleLanguagesGroupSpecifier + 4)];
      [v4 addObject:*(&self->_subtitleLanguageSpecifiers + 4)];
    }

    v55 = *&self->super.PSListController_opaque[v60];
    *&self->super.PSListController_opaque[v60] = v4;

    v3 = *&self->super.PSListController_opaque[v60];
  }

  return v3;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = ([v5 section] || *(&self->super + 1) >= 2uLL) && (objc_msgSend(v5, "section") != &dword_0 + 1 || objc_msgSend(v5, "row") != 0);

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section] && (v8 = *(&self->super + 1), v8 <= objc_msgSend(v7, "row")) || objc_msgSend(v7, "section") == &dword_0 + 2 && (v9 = *(&self->_numberOfAudioLanguages + 4), v9 <= objc_msgSend(v7, "row")))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(TVSettingsLanguageSettingsController *)self tableView:v6 canEditRowAtIndexPath:v7];
  }

  return v10;
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  if ([(TVSettingsLanguageSettingsController *)self isEditing:a3]&& BYTE4(self->_addSubtitleLanguageSpecifier) == 1)
  {
    [(TVSettingsLanguageSettingsController *)self setEditing:0 animated:1];
  }

  BYTE4(self->_addSubtitleLanguageSpecifier) = 0;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v7 section];
    v10 = OBJC_IVAR___PSListController__specifiers;
    v11 = v9 ? @"com.apple.videos:SubtitleLanguagesGroupSpecifierID" : @"com.apple.videos:AudioLanguagesGroupSpecifier";
    v12 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] indexOfSpecifierWithID:v11];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [*&self->super.PSListController_opaque[v10] objectAtIndex:{objc_msgSend(v8, "row") + v12 + 1}];
      v14 = [v13 propertyForKey:PSIDKey];
      if (v14)
      {
        v15 = qword_28000;
        if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v14;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Removing language %@ from download preferences.", &v23, 0xCu);
        }

        BYTE5(self->_addSubtitleLanguageSpecifier) = 1;
        v16 = *(&self->_hasLocalChange + 3);
        if (v9)
        {
          v17 = [v16 preferredSubtitleLanguageCodes];
          v18 = [v17 mutableCopy];

          [v18 removeObject:v14];
          *(&self->_numberOfAudioLanguages + 4) = [v18 count];
          [*(&self->_hasLocalChange + 3) setPreferredSubtitleLanguageCodes:v18];
          [*(&self->_subtitleLanguagesGroupSpecifier + 4) removeObject:v13];
        }

        else
        {
          v19 = [v16 selectedAudioLanguages];
          v18 = [v19 mutableCopy];

          [v18 removeObject:v14];
          *(&self->super + 1) = [v18 count];
          [*(&self->_hasLocalChange + 3) setSelectedAudioLanguages:v18];
        }
      }

      [(TVSettingsLanguageSettingsController *)self removeSpecifier:v13 animated:1];
      v20 = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
      v21 = [(TVSettingsLanguageSettingsController *)self navigationItem];
      v22 = [v21 rightBarButtonItem];
      [v22 setEnabled:v20];

      if (![(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled]&& (BYTE4(self->_addSubtitleLanguageSpecifier) & 1) == 0)
      {
        [(TVSettingsLanguageSettingsController *)self performSelector:"_setEditingToNoAfterDelay" withObject:0 afterDelay:0.0];
      }
    }
  }
}

- (void)_showAddAudioLanguagePicker:(id)a3
{
  v4 = a3;
  v5 = qword_28000;
  if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Preparing to show Add Audio Languages view.", v7, 2u);
  }

  v6 = [(TVSettingsAddLanguageSetupController *)[TVSettingsAddAudioLanguageSetupController alloc] initWithTopLevelController:*(&self->_hasLocalChange + 3)];
  [(TVSettingsAddAudioLanguageSetupController *)v6 setParentController:self];
  [(TVSettingsAddAudioLanguageSetupController *)v6 setSpecifier:v4];
  [v4 setTarget:self];
  [(TVSettingsLanguageSettingsController *)self showController:v6];
}

- (void)_showAddSubtitleLanguagePicker:(id)a3
{
  v4 = a3;
  v5 = qword_28000;
  if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Preparing to show Add Subitle Languages view.", v7, 2u);
  }

  v6 = [(TVSettingsAddLanguageSetupController *)[TVSettingsAddSubtitleLanguageSetupController alloc] initWithTopLevelController:*(&self->_hasLocalChange + 3)];
  [(TVSettingsAddSubtitleLanguageSetupController *)v6 setParentController:self];
  [(TVSettingsAddSubtitleLanguageSetupController *)v6 setSpecifier:v4];
  [v4 setTarget:self];
  [(TVSettingsLanguageSettingsController *)self showController:v6];
}

- (BOOL)_shouldEditButtonBeEnabled
{
  if (*(&self->super + 1) > 1uLL)
  {
    return 1;
  }

  v3 = [*(&self->_hasLocalChange + 3) useDefaultSubtitleLanguages];
  v4 = ([v3 BOOLValue] & 1) == 0 && *(&self->_numberOfAudioLanguages + 4) != 0;

  return v4;
}

- (id)_specifierForLanguage:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setProperty:v3 forKey:PSIDKey];
  if ([v3 isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"ORIGINAL_AUDIO_LANGUAGE";
LABEL_3:
    v8 = [v5 localizedStringForKey:v7 value:&stru_21328 table:@"TVSettings"];
    [v4 setName:v8];
LABEL_6:

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_AUDIO_LANGUAGE_FORMAT"];
    v6 = [v9 localizedStringForKey:v10 value:&stru_21328 table:@"TVSettings"];

    v11 = +[NSLocale preferredLanguages];
    v12 = [v11 firstObject];
    v8 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v12];

    v13 = [NSString stringWithFormat:v6, v8];
    [v4 setName:v13];

    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"DEFAULT_LANGUAGE"])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"DEFAULT_LANGUAGE";
    goto LABEL_3;
  }

  v6 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v3];
  [v4 setName:v6];
LABEL_7:

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v4;
}

- (void)_preferredLanguagesDidChange:(id)a3
{
  if ((BYTE5(self->_addSubtitleLanguageSpecifier) & 1) == 0)
  {
    [(TVSettingsLanguageSettingsController *)self reloadSpecifiers];
  }

  BYTE5(self->_addSubtitleLanguageSpecifier) = 0;
}

- (void)_setUseDefaultSubtitleLanguages:(id)a3
{
  v18 = a3;
  [*(&self->_hasLocalChange + 3) setUseDefaultSubtitleLanguages:?];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = v4;
  if (*(&self->_useDefaultSubtitleLanguagesSpecifier + 4))
  {
    [v4 addObject:?];
  }

  if ([*(&self->_subtitleLanguagesGroupSpecifier + 4) count])
  {
    [v5 addObjectsFromArray:*(&self->_subtitleLanguagesGroupSpecifier + 4)];
  }

  if (*(&self->_subtitleLanguageSpecifiers + 4))
  {
    [v5 addObject:?];
  }

  v6 = [v18 BOOLValue];
  v7 = *(&self->_addAudioLanguageSpecifier + 4);
  if (v6)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_EXPLANATION" value:&stru_21328 table:@"TVSettings"];
    v10 = PSFooterTextGroupKey;
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

    [*(&self->_useDefaultSubtitleLanguagesSpecifier + 4) removePropertyForKey:v10];
    [(TVSettingsLanguageSettingsController *)self beginUpdates];
    [(TVSettingsLanguageSettingsController *)self reloadSpecifier:*(&self->_addAudioLanguageSpecifier + 4) animated:1];
    [(TVSettingsLanguageSettingsController *)self removeContiguousSpecifiers:v5 animated:1];
  }

  else
  {
    v11 = PSFooterTextGroupKey;
    [*(&self->_addAudioLanguageSpecifier + 4) removePropertyForKey:PSFooterTextGroupKey];
    v12 = *(&self->_useDefaultSubtitleLanguagesSpecifier + 4);
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_EXPLANATION" value:&stru_21328 table:@"TVSettings"];
    [v12 setProperty:v14 forKey:v11];

    [(TVSettingsLanguageSettingsController *)self beginUpdates];
    [(TVSettingsLanguageSettingsController *)self reloadSpecifier:*(&self->_addAudioLanguageSpecifier + 4) animated:1];
    [(TVSettingsLanguageSettingsController *)self addSpecifiersFromArray:v5 animated:1];
  }

  [(TVSettingsLanguageSettingsController *)self endUpdates];
  v15 = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  v16 = [(TVSettingsLanguageSettingsController *)self navigationItem];
  v17 = [v16 rightBarButtonItem];
  [v17 setEnabled:v15];
}

@end