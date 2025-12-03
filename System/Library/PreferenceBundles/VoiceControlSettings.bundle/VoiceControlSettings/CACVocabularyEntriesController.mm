@interface CACVocabularyEntriesController
- (BOOL)_isTextValidForVocabulary:(id)vocabulary;
- (CACVocabularyEntriesController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)textForItem:(id)item;
- (void)addButtonTapped;
- (void)dealloc;
- (void)deleteItem:(id)item;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)vocabularyListCellDidTapReRecord:(id)record;
- (void)vocabularyListCellDidTapRecord:(id)record;
- (void)vocabularyListCellDidTapRemovePronunciation:(id)pronunciation;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CACVocabularyEntriesController;
  v5 = [(CACVocabularyEntriesController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
  }

  return v5;
}

- (id)textForItem:(id)item
{
  itemCopy = item;
  v4 = +[VCVocabularyObjC textKey];
  v5 = [itemCopy objectForKeyedSubscript:v4];

  return v5;
}

- (void)deleteItem:(id)item
{
  itemCopy = item;
  v7 = +[VCVocabularyObjC textKey];
  v4 = [itemCopy objectForKeyedSubscript:v7];
  v5 = +[VCVocabularyObjC localeIdentifierKey];
  v6 = [itemCopy objectForKeyedSubscript:v5];

  [VCVocabularyObjC removeVocabularyEntryWithText:v4 localeIdentifier:v6];
}

- (void)addButtonTapped
{
  [(CACVocabularyEntriesController *)self setEditing:0 animated:1];
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  v5 = [bestLocaleIdentifier hasPrefix:@"en"];

  if (v5)
  {
    v6 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier2 = [v6 bestLocaleIdentifier];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2374;
    v22[3] = &unk_28DE8;
    v22[4] = self;
    v8 = [VCUIPhoneticVocabularyNavigationViewWrapper createTypeAndRecordViewWithVoiceControlLocaleIdentifier:bestLocaleIdentifier2 completionHandler:v22];
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
    selfCopy = self;
    bestLocaleIdentifier2 = v11;
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v15];

    [(CACVocabularyEntriesController *)self setSaveAction:v14, v15, v16, v17, v18];
    [bestLocaleIdentifier2 addAction:v14];
    [(CACVocabularyEntriesController *)self presentViewController:bestLocaleIdentifier2 animated:1 completion:0];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  text = [editing text];
  v4 = [(CACVocabularyEntriesController *)self _isTextValidForVocabulary:text];
  saveAction = [(CACVocabularyEntriesController *)self saveAction];
  [saveAction setEnabled:v4];
}

- (void)textFieldDidChange:(id)change
{
  text = [change text];
  v4 = [(CACVocabularyEntriesController *)self _isTextValidForVocabulary:text];
  saveAction = [(CACVocabularyEntriesController *)self saveAction];
  [saveAction setEnabled:v4];
}

- (BOOL)_isTextValidForVocabulary:(id)vocabulary
{
  if (!vocabulary)
  {
    return 0;
  }

  vocabularyCopy = vocabulary;
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [vocabularyCopy stringByTrimmingCharactersInSet:v4];

  LOBYTE(vocabularyCopy) = [v5 isEqualToString:&stru_29500];
  return vocabularyCopy ^ 1;
}

- (void)vocabularyListCellDidTapRecord:(id)record
{
  specifier = [record specifier];
  v5 = [specifier propertyForKey:@"CACVocabularyListItem"];
  v6 = +[VCVocabularyObjC textKey];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v8 bestLocaleIdentifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2804;
  v11[3] = &unk_28DE8;
  v11[4] = self;
  v10 = [VCUIPhoneticVocabularyNavigationViewWrapper createRecordOnlyViewWithVoiceControlLocaleIdentifier:bestLocaleIdentifier text:v7 completionHandler:v11];
  [(CACVocabularyEntriesController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)vocabularyListCellDidTapReRecord:(id)record
{
  specifier = [record specifier];
  v5 = [specifier propertyForKey:@"CACVocabularyListItem"];
  v6 = +[VCVocabularyObjC textKey];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v8 bestLocaleIdentifier];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_29CC;
  v11[3] = &unk_28DE8;
  v11[4] = self;
  v10 = [VCUIPhoneticVocabularyNavigationViewWrapper createRecordOnlyViewWithVoiceControlLocaleIdentifier:bestLocaleIdentifier text:v7 completionHandler:v11];
  [(CACVocabularyEntriesController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)vocabularyListCellDidTapRemovePronunciation:(id)pronunciation
{
  specifier = [pronunciation specifier];
  v3 = [specifier propertyForKey:@"CACVocabularyListItem"];
  v4 = +[VCVocabularyObjC textKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  [VCVocabularyObjC removePronunciationsFromText:v5];
}

@end