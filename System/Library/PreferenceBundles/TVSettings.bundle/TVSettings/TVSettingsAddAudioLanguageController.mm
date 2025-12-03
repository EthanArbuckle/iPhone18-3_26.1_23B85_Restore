@interface TVSettingsAddAudioLanguageController
- (TVSettingsAddAudioLanguageController)initWithTopLevelController:(id)controller;
- (id)selectedLanguages;
- (id)specifiers;
- (id)unselectedLanguages;
- (void)_setupNavigationBar;
- (void)dealloc;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setSelectedLanguages:(id)languages;
@end

@implementation TVSettingsAddAudioLanguageController

- (TVSettingsAddAudioLanguageController)initWithTopLevelController:(id)controller
{
  v7.receiver = self;
  v7.super_class = TVSettingsAddAudioLanguageController;
  v3 = [(TVSettingsAddLanguageController *)&v7 initWithTopLevelController:controller];
  v4 = v3;
  if (v3)
  {
    v3->_shouldShowOriginalAudioLanguage = 1;
    v3->_shouldShowDeviceAudioLanguage = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_preferredLanguagesDidChange:" name:@"PreferredAudioLanguagesDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsAddAudioLanguageController;
  [(TVSettingsAddLanguageController *)&v4 dealloc];
}

- (id)selectedLanguages
{
  topLevelController = [(TVSettingsAddLanguageController *)self topLevelController];
  selectedAudioLanguages = [topLevelController selectedAudioLanguages];

  return selectedAudioLanguages;
}

- (void)setSelectedLanguages:(id)languages
{
  languagesCopy = languages;
  topLevelController = [(TVSettingsAddLanguageController *)self topLevelController];
  [topLevelController setSelectedAudioLanguages:languagesCopy];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  if ([changeCopy length])
  {
    self->_shouldShowOriginalAudioLanguage = [(NSString *)self->_originalAudioName containsString:changeCopy];
    self->_shouldShowDeviceAudioLanguage = [(NSString *)self->_deviceAudioName containsString:changeCopy];
  }

  else
  {
    self->_shouldShowOriginalAudioLanguage = 1;
    self->_shouldShowDeviceAudioLanguage = 1;
  }

  v8.receiver = self;
  v8.super_class = TVSettingsAddAudioLanguageController;
  [(TVSettingsAddLanguageController *)&v8 searchBar:barCopy textDidChange:changeCopy];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  self->_shouldShowOriginalAudioLanguage = 1;
  self->_shouldShowDeviceAudioLanguage = 1;
  v3.receiver = self;
  v3.super_class = TVSettingsAddAudioLanguageController;
  [(TVSettingsAddLanguageController *)&v3 searchBarCancelButtonClicked:clicked];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[NSMutableSet set];
    if (self->_shouldShowOriginalAudioLanguage)
    {
      v7 = [(NSMutableArray *)self->super._stagedLanguages containsObject:@"ORIGINAL_AUDIO_LANGUAGE"]^ 1;
    }

    else
    {
      v7 = 0;
    }

    v39 = v3;
    if (self->_shouldShowDeviceAudioLanguage)
    {
      v8 = [(NSMutableArray *)self->super._stagedLanguages containsObject:@"DEVICE_AUDIO_LANGUAGE"]^ 1;
    }

    else
    {
      v8 = 0;
    }

    if ((v7 | v8))
    {
      v9 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v9];

      if (v7)
      {
        v10 = [NSBundle bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"ORIGINAL_AUDIO_LANGUAGE" value:&stru_21328 table:@"TVSettings"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &stru_21328;
        }

        objc_storeStrong(&self->_originalAudioName, v13);

        v14 = [PSSpecifier preferenceSpecifierNamed:self->_originalAudioName target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:@"ORIGINAL_AUDIO_LANGUAGE" forKey:PSIDKey];
        [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v5 addObject:v14];
      }

      if (v8)
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_AUDIO_LANGUAGE_FORMAT"];
        v17 = [v15 localizedStringForKey:v16 value:&stru_21328 table:@"TVSettings"];

        v18 = +[NSLocale preferredLanguages];
        firstObject = [v18 firstObject];
        v20 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:firstObject];

        v21 = [NSString stringWithFormat:v17, v20];
        deviceAudioName = self->_deviceAudioName;
        self->_deviceAudioName = v21;

        v23 = [PSSpecifier preferenceSpecifierNamed:self->_deviceAudioName target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v23 setProperty:@"DEVICE_AUDIO_LANGUAGE" forKey:PSIDKey];
        [v23 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v5 addObject:v23];
      }

      v24 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v24];
    }

    v38 = v5;
    v40 = +[NSMutableArray array];
    selfCopy = self;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = self->super._filteredLanguages;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v43;
      v29 = PSIDKey;
      v30 = PSCellClassKey;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v42 + 1) + 8 * i);
          v33 = [v6 member:v32];

          if (!v33)
          {
            [v6 addObject:v32];
            v34 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v32];
            v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

            [v35 setProperty:v32 forKey:v29];
            [v35 setProperty:objc_opt_class() forKey:v30];
            [v40 addObject:v35];
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);
    }

    [v40 sortUsingComparator:&stru_20928];
    [v38 addObjectsFromArray:v40];
    v36 = *&selfCopy->super.PSListController_opaque[v39];
    *&selfCopy->super.PSListController_opaque[v39] = v38;

    v4 = *&selfCopy->super.PSListController_opaque[v39];
  }

  return v4;
}

- (void)_setupNavigationBar
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADD_AUDIO_LANGUAGE_PAGE_TITLE" value:&stru_21328 table:@"TVSettings"];
  [(TVSettingsAddAudioLanguageController *)self setTitle:v4];

  v5.receiver = self;
  v5.super_class = TVSettingsAddAudioLanguageController;
  [(TVSettingsAddLanguageController *)&v5 _setupNavigationBar];
}

- (id)unselectedLanguages
{
  unselectedLanguages = self->super._unselectedLanguages;
  if (!unselectedLanguages)
  {
    v4 = +[WLKSettingsLanguageUtilities staticLanguageCodes];
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[NSLocale preferredLanguages];
    firstObject = [v6 firstObject];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ((-[NSMutableArray containsObject:](self->super._stagedLanguages, "containsObject:", v13, v16) & 1) == 0 && ([v13 isEqualToString:firstObject] & 1) == 0)
          {
            [(NSArray *)v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = self->super._unselectedLanguages;
    self->super._unselectedLanguages = v5;

    unselectedLanguages = self->super._unselectedLanguages;
  }

  return unselectedLanguages;
}

@end