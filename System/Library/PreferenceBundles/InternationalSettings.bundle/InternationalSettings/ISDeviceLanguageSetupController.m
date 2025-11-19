@interface ISDeviceLanguageSetupController
- (void)handleAlertAction:(BOOL)a3;
@end

@implementation ISDeviceLanguageSetupController

- (void)handleAlertAction:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 preferredLocalizations];
  v7 = v6;
  if (v3)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizations];
    v10 = [v7 arrayByAddingObjectsFromArray:v9];

    languageToSet = self->super._languageToSet;
    v11 = [NSArray arrayWithObjects:&languageToSet count:1];
    v12 = +[NSLocale preferredLanguages];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];

    v14 = [NSBundle preferredLocalizationsFromArray:v10 forPreferences:v13];
    v15 = [v14 firstObject];

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = [v6 firstObject];

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v16 = +[ISInternationalLocaleRepresentation sharedInstance];
  [v16 setCalendarDirectionality:0];

  v17 = +[NSLocale baseSystemLanguages];
  v18 = [NSLocale baseLanguageFromLanguage:self->super._languageToSet];
  v19 = [v17 containsObject:v18];

  v20 = @"CHANGE_LANGUAGE_ORDER_TEXT";
  if (v3 && v19)
  {
    +[ISInternationalStatistics logChangedLanguage];
    v20 = @"CHANGE_UI_LANGUAGE_TEXT";
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_AF04;
  v21[3] = &unk_35178;
  v21[4] = self;
  v22 = v3;
  [(ISDeviceLanguageSetupController *)self showUpdatingLanguageViewWithLocalizationStringKey:v20 languageIdentifier:v15 completionBlock:v21];
LABEL_9:
}

@end