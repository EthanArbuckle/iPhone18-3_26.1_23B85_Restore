@interface ISDeviceLanguageSetupController
- (void)handleAlertAction:(BOOL)action;
@end

@implementation ISDeviceLanguageSetupController

- (void)handleAlertAction:(BOOL)action
{
  actionCopy = action;
  v5 = +[NSBundle mainBundle];
  preferredLocalizations = [v5 preferredLocalizations];
  v7 = preferredLocalizations;
  if (actionCopy)
  {
    v8 = +[NSBundle mainBundle];
    localizations = [v8 localizations];
    v10 = [v7 arrayByAddingObjectsFromArray:localizations];

    languageToSet = self->super._languageToSet;
    v11 = [NSArray arrayWithObjects:&languageToSet count:1];
    v12 = +[NSLocale preferredLanguages];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];

    v14 = [NSBundle preferredLocalizationsFromArray:v10 forPreferences:v13];
    firstObject = [v14 firstObject];

    if (!firstObject)
    {
      goto LABEL_9;
    }
  }

  else
  {
    firstObject = [preferredLocalizations firstObject];

    if (!firstObject)
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
  if (actionCopy && v19)
  {
    +[ISInternationalStatistics logChangedLanguage];
    v20 = @"CHANGE_UI_LANGUAGE_TEXT";
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_AF04;
  v21[3] = &unk_35178;
  v21[4] = self;
  v22 = actionCopy;
  [(ISDeviceLanguageSetupController *)self showUpdatingLanguageViewWithLocalizationStringKey:v20 languageIdentifier:firstObject completionBlock:v21];
LABEL_9:
}

@end