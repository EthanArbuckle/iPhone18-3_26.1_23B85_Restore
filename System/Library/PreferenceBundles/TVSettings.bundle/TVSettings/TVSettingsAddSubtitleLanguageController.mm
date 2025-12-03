@interface TVSettingsAddSubtitleLanguageController
- (TVSettingsAddSubtitleLanguageController)initWithTopLevelController:(id)controller;
- (id)selectedLanguages;
- (id)specifiers;
- (id)unselectedLanguages;
- (void)_setupNavigationBar;
- (void)dealloc;
- (void)setSelectedLanguages:(id)languages;
@end

@implementation TVSettingsAddSubtitleLanguageController

- (TVSettingsAddSubtitleLanguageController)initWithTopLevelController:(id)controller
{
  v6.receiver = self;
  v6.super_class = TVSettingsAddSubtitleLanguageController;
  v3 = [(TVSettingsAddLanguageController *)&v6 initWithTopLevelController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_preferredLanguagesDidChange:" name:@"PreferredSubtitleLanguagesDidChangeNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsAddSubtitleLanguageController;
  [(TVSettingsAddLanguageController *)&v4 dealloc];
}

- (id)selectedLanguages
{
  topLevelController = [(TVSettingsAddLanguageController *)self topLevelController];
  preferredSubtitleLanguageCodes = [topLevelController preferredSubtitleLanguageCodes];

  return preferredSubtitleLanguageCodes;
}

- (void)setSelectedLanguages:(id)languages
{
  languagesCopy = languages;
  topLevelController = [(TVSettingsAddLanguageController *)self topLevelController];
  [topLevelController setPreferredSubtitleLanguageCodes:languagesCopy];
}

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v19 = OBJC_IVAR___PSListController__specifiers;
    v18 = objc_alloc_init(NSMutableArray);
    v4 = +[NSMutableSet set];
    v20 = +[NSMutableArray array];
    selfCopy = self;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->super._filteredLanguages;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      v9 = PSIDKey;
      v10 = PSCellClassKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v4 member:v12];

          if (!v13)
          {
            [v4 addObject:v12];
            v14 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v12];
            v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

            [v15 setProperty:v12 forKey:v9];
            [v15 setProperty:objc_opt_class() forKey:v10];
            [v20 addObject:v15];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    [v20 sortUsingComparator:&stru_20948];
    [v18 addObjectsFromArray:v20];
    v16 = *&selfCopy->super.PSListController_opaque[v19];
    *&selfCopy->super.PSListController_opaque[v19] = v18;

    v3 = *&selfCopy->super.PSListController_opaque[v19];
  }

  return v3;
}

- (void)_setupNavigationBar
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADD_SUBTITLE_LANGUAGE_PAGE_TITLE" value:&stru_21328 table:@"TVSettings"];
  [(TVSettingsAddSubtitleLanguageController *)self setTitle:v4];

  v5.receiver = self;
  v5.super_class = TVSettingsAddSubtitleLanguageController;
  [(TVSettingsAddLanguageController *)&v5 _setupNavigationBar];
}

- (id)unselectedLanguages
{
  unselectedLanguages = self->super._unselectedLanguages;
  if (!unselectedLanguages)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [&off_236C0 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(&off_236C0);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (([(NSMutableArray *)self->super._stagedLanguages containsObject:v9]& 1) == 0)
          {
            [(NSArray *)v4 addObject:v9];
          }
        }

        v6 = [&off_236C0 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = self->super._unselectedLanguages;
    self->super._unselectedLanguages = v4;

    unselectedLanguages = self->super._unselectedLanguages;
  }

  return unselectedLanguages;
}

@end