@interface CACVocabularyEntriesController
- (BOOL)_isTextValidForVocabulary:(id)a3;
- (CACVocabularyEntriesController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)textForItem:(id)a3;
- (void)addButtonTapped;
- (void)dealloc;
- (void)deleteItem:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)vocabularyListCellDidTapReRecord:(id)a3;
- (void)vocabularyListCellDidTapRecord:(id)a3;
- (void)vocabularyListCellDidTapRemovePronunciation:(id)a3;
@end

@implementation CACVocabularyEntriesController

- (CACVocabularyEntriesController)init
{
  v5.receiver = self;
  v5.super_class = CACVocabularyEntriesController;
  v2 = [(CACVocabularyEntriesController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1DD8, @"NotificationVocabularyEntriesSettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NotificationVocabularyEntriesSettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACVocabularyEntriesController;
  [(CACVocabularyEntriesController *)&v4 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CACVocabularyEntriesController;
  v5 = [(CACVocabularyEntriesController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
  }

  return v5;
}

- (id)textForItem:(id)a3
{
  v3 = a3;
  v4 = +[VCVocabularyObjC textKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (void)deleteItem:(id)a3
{
  v3 = a3;
  v7 = +[VCVocabularyObjC textKey];
  v4 = [v3 objectForKeyedSubscript:v7];
  v5 = +[VCVocabularyObjC localeIdentifierKey];
  v6 = [v3 objectForKeyedSubscript:v5];

  [VCVocabularyObjC removeVocabularyEntryWithText:v4 localeIdentifier:v6];
}

- (void)addButtonTapped
{
  [(CACVocabularyEntriesController *)self setEditing:0 animated:1];
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 bestLocaleIdentifier];
  v5 = [v4 hasPrefix:@"en"];

  if (v5)
  {
    v6 = +[CACPreferences sharedPreferences];
    v7 = [v6 bestLocaleIdentifier];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2374;
    v22[3] = &unk_28DE8;
    v22[4] = self;
    v8 = [VCUIPhoneticVocabularyNavigationViewWrapper createTypeAndRecordViewWithVoiceControlLocaleIdentifier:v7 completionHandler:v22];
    [(CACVocabularyEntriesController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(CACVocabularyListController *)self reloadSpecifiers];
    v9 = settingsLocString(@"ADD_VOCABULARY_TITLE", @"CommandAndControlSettings");
    v10 = settingsLocString(@"ADD_VOCABULARY_MESSAGE", @"CommandAndControlSettings");
    v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2410;
    v21[3] = &unk_28E10;
    v21[4] = self;
    [v11 addTextFieldWithConfigurationHandler:v21];
    v12 = settingsLocString(@"CANCEL", @"CommandAndControlSettings");
    v8 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];

    [v11 addAction:v8];
    v13 = settingsLocString(@"SAVE", @"CommandAndControlSettings");
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_24A4;
    v18 = &unk_28E38;
    v19 = v11;
    v20 = self;
    v7 = v11;
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v15];

    [(CACVocabularyEntriesController *)self setSaveAction:v14, v15, v16, v17, v18];
    [v7 addAction:v14];
    [(CACVocabularyEntriesController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v6 = [a3 text];
  v4 = [(CACVocabularyEntriesController *)self _isTextValidForVocabulary:v6];
  v5 = [(CACVocabularyEntriesController *)self saveAction];
  [v5 setEnabled:v4];
}

- (void)textFieldDidChange:(id)a3
{
  v6 = [a3 text];
  v4 = [(CACVocabularyEntriesController *)self _isTextValidForVocabulary:v6];
  v5 = [(CACVocabularyEntriesController *)self saveAction];
  [v5 setEnabled:v4];
}

- (BOOL)_isTextValidForVocabulary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  LOBYTE(v3) = [v5 isEqualToString:&stru_29500];
  return v3 ^ 1;
}

- (void)vocabularyListCellDidTapRecord:(id)a3
{
  v4 = [a3 specifier];
  v5 = [v4 propertyForKey:@"CACVocabularyListItem"];
  v6 = +[VCVocabularyObjC textKey];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = +[CACPreferences sharedPreferences];
  v9 = [v8 bestLocaleIdentifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2804;
  v11[3] = &unk_28DE8;
  v11[4] = self;
  v10 = [VCUIPhoneticVocabularyNavigationViewWrapper createRecordOnlyViewWithVoiceControlLocaleIdentifier:v9 text:v7 completionHandler:v11];
  [(CACVocabularyEntriesController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)vocabularyListCellDidTapReRecord:(id)a3
{
  v4 = [a3 specifier];
  v5 = [v4 propertyForKey:@"CACVocabularyListItem"];
  v6 = +[VCVocabularyObjC textKey];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = +[CACPreferences sharedPreferences];
  v9 = [v8 bestLocaleIdentifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_29CC;
  v11[3] = &unk_28DE8;
  v11[4] = self;
  v10 = [VCUIPhoneticVocabularyNavigationViewWrapper createRecordOnlyViewWithVoiceControlLocaleIdentifier:v9 text:v7 completionHandler:v11];
  [(CACVocabularyEntriesController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)vocabularyListCellDidTapRemovePronunciation:(id)a3
{
  v6 = [a3 specifier];
  v3 = [v6 propertyForKey:@"CACVocabularyListItem"];
  v4 = +[VCVocabularyObjC textKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  [VCVocabularyObjC removePronunciationsFromText:v5];
}

@end