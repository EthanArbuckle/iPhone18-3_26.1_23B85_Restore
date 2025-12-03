@interface ISLanguageDetailController
- (id)specifiers;
- (void)changeLanguage:(id)language;
- (void)viewDidLoad;
@end

@implementation ISLanguageDetailController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ISLanguageDetailController;
  [(ISLanguageDetailController *)&v9 viewDidLoad];
  specifier = [(ISLanguageDetailController *)self specifier];
  name = [specifier name];
  v5 = [NSLocale componentsFromLocaleIdentifier:name];
  v6 = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

  v7 = [IPLanguage languageWithIdentifier:v6];
  localizedStringForName = [v7 localizedStringForName];
  [(ISLanguageDetailController *)self setTitle:localizedStringForName];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v27 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    specifier = [(ISLanguageDetailController *)selfCopy specifier];
    name = [specifier name];

    v26 = name;
    v7 = [NSLocale localeWithLocaleIdentifier:name];
    selectedScript = [v7 selectedScript];
    optionNameForSelectableScripts = [v7 optionNameForSelectableScripts];
    v9 = [PSSpecifier groupSpecifierWithID:@"SCRIPT" name:optionNameForSelectableScripts];

    v38 = v9;
    [v9 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    explanationTextForSelectableScripts = [v7 explanationTextForSelectableScripts];

    if (explanationTextForSelectableScripts)
    {
      explanationTextForSelectableScripts2 = [v7 explanationTextForSelectableScripts];
      [v38 setProperty:explanationTextForSelectableScripts2 forKey:PSFooterTextGroupKey];
    }

    [v4 addObject:v38];
    v25 = v7;
    [v7 selectableScriptCodes];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v44)
    {
      v12 = *v46;
      v34 = PSCellClassKey;
      v32 = PSConfirmationTitleKey;
      v33 = PSConfirmationPromptKey;
      v30 = PSConfirmationCancelKey;
      v31 = PSConfirmationOKKey;
      v29 = PSConfirmationDestructiveKey;
      v28 = PSRadioGroupCheckedSpecifierKey;
      v36 = v4;
      v37 = selfCopy;
      v35 = *v46;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [NSLocale displayNameForSelectableScriptCode:v14];
          if ([v14 isEqualToString:selectedScript])
          {
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
            [v16 setIdentifier:v14];
            [v16 setButtonAction:"changeLanguage:"];
            [v4 addObject:v16];
            [v38 setProperty:v16 forKey:v28];
          }

          else
          {
            v16 = [PSConfirmationSpecifier preferenceSpecifierNamed:v15 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
            [v16 setIdentifier:v14];
            [v16 setProperty:objc_opt_class() forKey:v34];
            v41 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
            v50[0] = v41;
            v49[0] = v33;
            v49[1] = v32;
            v40 = [NSBundle bundleForClass:objc_opt_class()];
            v42 = v15;
            v17 = [v40 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
            v50[1] = v17;
            v49[2] = v31;
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
            v50[2] = v19;
            v49[3] = v30;
            v20 = [NSBundle bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
            v50[3] = v21;
            v22 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
            [v16 setupWithDictionary:v22];

            v15 = v42;
            v12 = v35;

            v4 = v36;
            selfCopy = v37;

            [v16 setProperty:&__kCFBooleanTrue forKey:v29];
            [v16 setConfirmationAction:"changeLanguage:"];
            [v36 addObject:v16];
          }
        }

        v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v44);
    }

    v23 = *&selfCopy->PSListController_opaque[v27];
    *&selfCopy->PSListController_opaque[v27] = v4;

    v3 = *&selfCopy->PSListController_opaque[v27];
  }

  return v3;
}

- (void)changeLanguage:(id)language
{
  languageCopy = language;
  identifier = [languageCopy identifier];
  specifier = [(ISLanguageDetailController *)self specifier];
  name = [specifier name];
  v7 = [NSLocale localeWithLocaleIdentifier:name];

  specifiers = [(ISLanguageDetailController *)self specifiers];
  v9 = [specifiers specifierForID:@"SCRIPT"];

  [v9 setProperty:languageCopy forKey:PSRadioGroupCheckedSpecifierKey];
  [(ISLanguageDetailController *)self reloadSpecifier:v9];
  parentController = [(ISLanguageDetailController *)self parentController];
  scriptSelector = [parentController scriptSelector];
  [scriptSelector setSelectedScript:identifier forLocale:v7];
}

@end