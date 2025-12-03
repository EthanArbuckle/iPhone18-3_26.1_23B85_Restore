@interface TVSettingsLanguageSettingsController
- (BOOL)_shouldEditButtonBeEnabled;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (TVSettingsLanguageSettingsController)init;
- (id)_specifierForLanguage:(id)language;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_preferredLanguagesDidChange:(id)change;
- (void)_setUseDefaultSubtitleLanguages:(id)languages;
- (void)_showAddAudioLanguagePicker:(id)picker;
- (void)_showAddSubtitleLanguagePicker:(id)picker;
- (void)_willResignActive:(id)active;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
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
    navigationItem = [(TVSettingsLanguageSettingsController *)v3 navigationItem];
    editButtonItem = [(TVSettingsLanguageSettingsController *)v4 editButtonItem];
    [navigationItem setRightBarButtonItem:editButtonItem];

    navigationItem2 = [(TVSettingsLanguageSettingsController *)v4 navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

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
  parentController = [(TVSettingsLanguageSettingsController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((&self->_hasLocalChange + 3), parentController);
  }

  selectedAudioLanguages = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
  *(&self->super + 1) = [selectedAudioLanguages count];

  preferredSubtitleLanguageCodes = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
  *(&self->_numberOfAudioLanguages + 4) = [preferredSubtitleLanguageCodes count];

  v9.receiver = self;
  v9.super_class = TVSettingsLanguageSettingsController;
  [(TVSettingsLanguageSettingsController *)&v9 viewDidLoad];
  _shouldEditButtonBeEnabled = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  navigationItem = [(TVSettingsLanguageSettingsController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_shouldEditButtonBeEnabled];
}

- (void)_willResignActive:(id)active
{
  if ([(TVSettingsLanguageSettingsController *)self isEditing])
  {

    [(TVSettingsLanguageSettingsController *)self setEditing:0 animated:0];
  }
}

- (void)reloadSpecifiers
{
  selectedAudioLanguages = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
  *(&self->super + 1) = [selectedAudioLanguages count];

  preferredSubtitleLanguageCodes = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
  *(&self->_numberOfAudioLanguages + 4) = [preferredSubtitleLanguageCodes count];

  v8.receiver = self;
  v8.super_class = TVSettingsLanguageSettingsController;
  [(TVSettingsLanguageSettingsController *)&v8 reloadSpecifiers];
  _shouldEditButtonBeEnabled = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  navigationItem = [(TVSettingsLanguageSettingsController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_shouldEditButtonBeEnabled];
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = TVSettingsLanguageSettingsController;
  specifierCopy = specifier;
  [(TVSettingsLanguageSettingsController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"TVSettingsTopLevelSettingsVCKey", v7.receiver, v7.super_class}];

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
    selectedAudioLanguages = [*(&self->_hasLocalChange + 3) selectedAudioLanguages];
    v13 = [selectedAudioLanguages mutableCopy];

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
    useDefaultSubtitleLanguages = [*(&self->_hasLocalChange + 3) useDefaultSubtitleLanguages];
    bOOLValue = [useDefaultSubtitleLanguages BOOLValue];

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"DOWNLOAD_SUBTITLE_LANGUAGES_TITLE" value:&stru_21328 table:@"TVSettings"];
    v29 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos:UseDefaultSubtitleLanguagesGroupSpecifier" name:v28];
    v30 = *(&self->_addAudioLanguageSpecifier + 4);
    *(&self->_addAudioLanguageSpecifier + 4) = v29;

    v57 = bOOLValue;
    if (bOOLValue)
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
    preferredSubtitleLanguageCodes = [*(&self->_hasLocalChange + 3) preferredSubtitleLanguageCodes];
    v45 = [preferredSubtitleLanguageCodes mutableCopy];

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

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = ([pathCopy section] || *(&self->super + 1) >= 2uLL) && (objc_msgSend(pathCopy, "section") != &dword_0 + 1 || objc_msgSend(pathCopy, "row") != 0);

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section] && (v8 = *(&self->super + 1), v8 <= objc_msgSend(pathCopy, "row")) || objc_msgSend(pathCopy, "section") == &dword_0 + 2 && (v9 = *(&self->_numberOfAudioLanguages + 4), v9 <= objc_msgSend(pathCopy, "row")))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(TVSettingsLanguageSettingsController *)self tableView:viewCopy canEditRowAtIndexPath:pathCopy];
  }

  return v10;
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  if ([(TVSettingsLanguageSettingsController *)self isEditing:view]&& BYTE4(self->_addSubtitleLanguageSpecifier) == 1)
  {
    [(TVSettingsLanguageSettingsController *)self setEditing:0 animated:1];
  }

  BYTE4(self->_addSubtitleLanguageSpecifier) = 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = pathCopy;
  if (style == 1)
  {
    section = [pathCopy section];
    v10 = OBJC_IVAR___PSListController__specifiers;
    v11 = section ? @"com.apple.videos:SubtitleLanguagesGroupSpecifierID" : @"com.apple.videos:AudioLanguagesGroupSpecifier";
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
        if (section)
        {
          preferredSubtitleLanguageCodes = [v16 preferredSubtitleLanguageCodes];
          v18 = [preferredSubtitleLanguageCodes mutableCopy];

          [v18 removeObject:v14];
          *(&self->_numberOfAudioLanguages + 4) = [v18 count];
          [*(&self->_hasLocalChange + 3) setPreferredSubtitleLanguageCodes:v18];
          [*(&self->_subtitleLanguagesGroupSpecifier + 4) removeObject:v13];
        }

        else
        {
          selectedAudioLanguages = [v16 selectedAudioLanguages];
          v18 = [selectedAudioLanguages mutableCopy];

          [v18 removeObject:v14];
          *(&self->super + 1) = [v18 count];
          [*(&self->_hasLocalChange + 3) setSelectedAudioLanguages:v18];
        }
      }

      [(TVSettingsLanguageSettingsController *)self removeSpecifier:v13 animated:1];
      _shouldEditButtonBeEnabled = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
      navigationItem = [(TVSettingsLanguageSettingsController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:_shouldEditButtonBeEnabled];

      if (![(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled]&& (BYTE4(self->_addSubtitleLanguageSpecifier) & 1) == 0)
      {
        [(TVSettingsLanguageSettingsController *)self performSelector:"_setEditingToNoAfterDelay" withObject:0 afterDelay:0.0];
      }
    }
  }
}

- (void)_showAddAudioLanguagePicker:(id)picker
{
  pickerCopy = picker;
  v5 = qword_28000;
  if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Preparing to show Add Audio Languages view.", v7, 2u);
  }

  v6 = [(TVSettingsAddLanguageSetupController *)[TVSettingsAddAudioLanguageSetupController alloc] initWithTopLevelController:*(&self->_hasLocalChange + 3)];
  [(TVSettingsAddAudioLanguageSetupController *)v6 setParentController:self];
  [(TVSettingsAddAudioLanguageSetupController *)v6 setSpecifier:pickerCopy];
  [pickerCopy setTarget:self];
  [(TVSettingsLanguageSettingsController *)self showController:v6];
}

- (void)_showAddSubtitleLanguagePicker:(id)picker
{
  pickerCopy = picker;
  v5 = qword_28000;
  if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Preparing to show Add Subitle Languages view.", v7, 2u);
  }

  v6 = [(TVSettingsAddLanguageSetupController *)[TVSettingsAddSubtitleLanguageSetupController alloc] initWithTopLevelController:*(&self->_hasLocalChange + 3)];
  [(TVSettingsAddSubtitleLanguageSetupController *)v6 setParentController:self];
  [(TVSettingsAddSubtitleLanguageSetupController *)v6 setSpecifier:pickerCopy];
  [pickerCopy setTarget:self];
  [(TVSettingsLanguageSettingsController *)self showController:v6];
}

- (BOOL)_shouldEditButtonBeEnabled
{
  if (*(&self->super + 1) > 1uLL)
  {
    return 1;
  }

  useDefaultSubtitleLanguages = [*(&self->_hasLocalChange + 3) useDefaultSubtitleLanguages];
  v4 = ([useDefaultSubtitleLanguages BOOLValue] & 1) == 0 && *(&self->_numberOfAudioLanguages + 4) != 0;

  return v4;
}

- (id)_specifierForLanguage:(id)language
{
  languageCopy = language;
  v4 = [PSSpecifier preferenceSpecifierNamed:languageCopy target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setProperty:languageCopy forKey:PSIDKey];
  if ([languageCopy isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
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

  if ([languageCopy isEqualToString:@"DEVICE_AUDIO_LANGUAGE"])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_AUDIO_LANGUAGE_FORMAT"];
    v6 = [v9 localizedStringForKey:v10 value:&stru_21328 table:@"TVSettings"];

    v11 = +[NSLocale preferredLanguages];
    firstObject = [v11 firstObject];
    v8 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:firstObject];

    v13 = [NSString stringWithFormat:v6, v8];
    [v4 setName:v13];

    goto LABEL_6;
  }

  if ([languageCopy isEqualToString:@"DEFAULT_LANGUAGE"])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"DEFAULT_LANGUAGE";
    goto LABEL_3;
  }

  v6 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:languageCopy];
  [v4 setName:v6];
LABEL_7:

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v4;
}

- (void)_preferredLanguagesDidChange:(id)change
{
  if ((BYTE5(self->_addSubtitleLanguageSpecifier) & 1) == 0)
  {
    [(TVSettingsLanguageSettingsController *)self reloadSpecifiers];
  }

  BYTE5(self->_addSubtitleLanguageSpecifier) = 0;
}

- (void)_setUseDefaultSubtitleLanguages:(id)languages
{
  languagesCopy = languages;
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

  bOOLValue = [languagesCopy BOOLValue];
  v7 = *(&self->_addAudioLanguageSpecifier + 4);
  if (bOOLValue)
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
  _shouldEditButtonBeEnabled = [(TVSettingsLanguageSettingsController *)self _shouldEditButtonBeEnabled];
  navigationItem = [(TVSettingsLanguageSettingsController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_shouldEditButtonBeEnabled];
}

@end