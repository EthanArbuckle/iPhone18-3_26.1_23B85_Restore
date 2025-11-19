@interface ISLanguageDetailController
- (id)specifiers;
- (void)changeLanguage:(id)a3;
- (void)viewDidLoad;
@end

@implementation ISLanguageDetailController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ISLanguageDetailController;
  [(ISLanguageDetailController *)&v9 viewDidLoad];
  v3 = [(ISLanguageDetailController *)self specifier];
  v4 = [v3 name];
  v5 = [NSLocale componentsFromLocaleIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

  v7 = [IPLanguage languageWithIdentifier:v6];
  v8 = [v7 localizedStringForName];
  [(ISLanguageDetailController *)self setTitle:v8];
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(ISLanguageDetailController *)v2 specifier];
    v6 = [v5 name];

    v25 = v6;
    v7 = [NSLocale localeWithLocaleIdentifier:v6];
    v43 = [v7 selectedScript];
    v8 = [v7 optionNameForSelectableScripts];
    v9 = [PSSpecifier groupSpecifierWithID:@"SCRIPT" name:v8];

    v37 = v9;
    [v9 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v10 = [v7 explanationTextForSelectableScripts];

    if (v10)
    {
      v11 = [v7 explanationTextForSelectableScripts];
      [v37 setProperty:v11 forKey:PSFooterTextGroupKey];
    }

    [v4 addObject:v37];
    v24 = v7;
    [v7 selectableScriptCodes];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v44)
    {
      v12 = *v46;
      v33 = PSCellClassKey;
      v31 = PSConfirmationTitleKey;
      v32 = PSConfirmationPromptKey;
      v29 = PSConfirmationCancelKey;
      v30 = PSConfirmationOKKey;
      v28 = PSConfirmationDestructiveKey;
      v27 = PSRadioGroupCheckedSpecifierKey;
      v35 = v4;
      v36 = v2;
      v34 = *v46;
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
          if ([v14 isEqualToString:v43])
          {
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v2 set:0 get:0 detail:0 cell:3 edit:0];
            [v16 setIdentifier:v14];
            [v4 addObject:v16];
            [v37 setProperty:v16 forKey:v27];
          }

          else
          {
            v16 = [PSConfirmationSpecifier preferenceSpecifierNamed:v15 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
            [v16 setIdentifier:v14];
            [v16 setProperty:objc_opt_class() forKey:v33];
            v41 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
            v50[0] = v41;
            v49[0] = v32;
            v49[1] = v31;
            v40 = [NSBundle bundleForClass:objc_opt_class()];
            v42 = v15;
            v39 = [v40 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
            v50[1] = v39;
            v49[2] = v30;
            v17 = [NSBundle bundleForClass:objc_opt_class()];
            v18 = [v17 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
            v50[2] = v18;
            v49[3] = v29;
            v19 = [NSBundle bundleForClass:objc_opt_class()];
            v20 = [v19 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
            v50[3] = v20;
            v21 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
            [v16 setupWithDictionary:v21];

            v15 = v42;
            v12 = v34;

            v4 = v35;
            v2 = v36;

            [v16 setProperty:&__kCFBooleanTrue forKey:v28];
            [v16 setConfirmationAction:"changeLanguage:"];
            [v35 addObject:v16];
          }
        }

        v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v44);
    }

    v22 = *&v2->PSListController_opaque[v26];
    *&v2->PSListController_opaque[v26] = v4;

    v3 = *&v2->PSListController_opaque[v26];
  }

  return v3;
}

- (void)changeLanguage:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(ISLanguageDetailController *)self specifier];
  v7 = [v6 name];
  v8 = [NSLocale localeWithLocaleIdentifier:v7];

  v9 = [(ISLanguageDetailController *)self specifiers];
  v10 = [v9 specifierForID:@"SCRIPT"];

  [v10 setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];
  [(ISLanguageDetailController *)self reloadSpecifier:v10];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CHANGE_UI_LANGUAGE_TEXT" value:&stru_35798 table:@"InternationalSettings"];
  v13 = +[NSLocale _deviceLanguage];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_14850;
  v16[3] = &unk_34EA0;
  v17 = v8;
  v18 = v5;
  v14 = v5;
  v15 = v8;
  [(ISLanguageDetailController *)self showUpdatingLanguageViewWithLabel:v12 languageIdentifier:v13 completionBlock:v16];
}

@end