@interface CACVocabularyController
- (id)specifiers;
- (id)vocabularySummary:(id)summary;
- (void)deleteAllVocabulary;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)exportVocabulary;
- (void)importVocabulary;
@end

@implementation CACVocabularyController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = settingsLocString(@"VOCABULARY", @"CommandAndControlSettings");
    v24 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"vocabularySummary:" detail:objc_opt_class() cell:2 edit:0];

    v6 = PSIDKey;
    [v24 setProperty:@"VOCABULARY" forKey:PSIDKey];
    v23 = [PSSpecifier groupSpecifierWithID:@"CACImportExportGroup"];
    v7 = settingsLocString(@"IMPORT_VOCABULARY", @"CommandAndControlSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v8 setButtonAction:"importVocabulary"];
    v9 = PSAllowMultilineTitleKey;
    [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v8 setProperty:@"IMPORT_VOCABULARY" forKey:v6];
    v10 = settingsLocString(@"EXPORT_VOCABULARY", @"CommandAndControlSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v11 setButtonAction:"exportVocabulary"];
    [v11 setProperty:&__kCFBooleanTrue forKey:v9];
    [v11 setProperty:@"EXPORT_VOCABULARY" forKey:v6];
    v25 = [PSSpecifier groupSpecifierWithID:@"CACDeleteAllGroup"];
    v12 = settingsLocString(@"DELETE_ALL_VOCABULARY", @"CommandAndControlSettings");
    v13 = [PSSpecifier deleteButtonSpecifierWithName:v12 target:self action:"deleteAllVocabulary"];

    [v13 setProperty:&__kCFBooleanTrue forKey:v9];
    [v13 setProperty:@"DELETE_ALL_VOCABULARY" forKey:v6];
    v27[0] = v24;
    v27[1] = v23;
    v27[2] = v8;
    v14 = [NSArray arrayWithObjects:v27 count:3];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v14;

    v16 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
    v17 = [v16 count];

    if (v17)
    {
      v18 = *&self->AXUISettingsBaseListController_opaque[v3];
      v26[0] = v11;
      v26[1] = v25;
      v26[2] = v13;
      v19 = [NSArray arrayWithObjects:v26 count:3];
      v20 = [v18 arrayByAddingObjectsFromArray:v19];
      v21 = *&self->AXUISettingsBaseListController_opaque[v3];
      *&self->AXUISettingsBaseListController_opaque[v3] = v20;
    }

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)vocabularySummary:(id)summary
{
  v3 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
  v4 = [v3 count];

  v5 = settingsLocString(@"VOCABULARY_SUMMARY_FORMAT", @"CommandAndControlSettings");
  v6 = [NSString localizedStringWithFormat:v5, v4];

  return v6;
}

- (void)importVocabulary
{
  v3 = [UTType typeWithFilenameExtension:kCACVocabularyFileExtensionVCVocabulary];
  v4 = [UIDocumentPickerViewController alloc];
  v7[0] = UTTypePlainText;
  v7[1] = v3;
  v5 = [NSArray arrayWithObjects:v7 count:2];
  v6 = [v4 initForOpeningContentTypes:v5];

  [v6 setModalPresentationStyle:2];
  [v6 setDelegate:self];
  [(CACVocabularyController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)exportVocabulary
{
  v3 = +[CACVocabularyImportExportUtilities defaultExportURL];
  [v3 startAccessingSecurityScopedResource];
  v4 = [CACVocabularyImportExportUtilities exportToURL:v3];
  v5 = v4;
  if (v4)
  {
    [v4 displayAlertForViewController:self];
  }

  else
  {
    v6 = [UIDocumentPickerViewController alloc];
    v9 = v3;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [v6 initForExportingURLs:v7];

    [v8 setModalPresentationStyle:2];
    [(CACVocabularyController *)self presentViewController:v8 animated:1 completion:0];
  }

  [v3 stopAccessingSecurityScopedResource];
}

- (void)deleteAllVocabulary
{
  v3 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
  v4 = [v3 count];
  v5 = +[VCVocabularyObjC visibleVocabularyEntriesForAllLocales];
  v6 = [v5 count];

  if (v4 == v6)
  {
    v7 = settingsLocString(@"DELETE_ALL_VOCABULARY_ALERT_TITLE", @"CommandAndControlSettings");
  }

  else
  {
    v8 = +[VCSettingsObjC shared];
    activeLocale = [v8 activeLocale];
    localeIdentifier = [activeLocale localeIdentifier];
    v11 = [CACLocaleUtilities localizedDisplayStringForLocaleIdentifier:localeIdentifier];

    v12 = settingsLocString(@"DELETE_ALL_VOCABULARY_ALERT_TITLE_WITH_LOCALE", @"CommandAndControlSettings");
    v7 = [NSString localizedStringWithFormat:v12, v11];
  }

  v13 = settingsLocString(@"DELETE_ALL_VOCABULARY_ALERT_DESCRIPTION", @"CommandAndControlSettings");
  v14 = [UIAlertController alertControllerWithTitle:v7 message:v13 preferredStyle:1];

  v15 = settingsLocString(@"DELETE_ALL_VOCABULARY_ALERT_DELETE", @"CommandAndControlSettings");
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_65A8;
  v19[3] = &unk_28F10;
  v19[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v19];
  [v14 addAction:v16];

  v17 = settingsLocString(@"CANCEL", @"CommandAndControlSettings");
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:&stru_28F50];
  [v14 addAction:v18];

  [(CACVocabularyController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  firstObject = [ls firstObject];
  v6 = [CACVocabularyImportExportUtilities importFromURL:firstObject];
  [v6 displayAlertForViewController:self];

  [(CACVocabularyController *)self reloadSpecifiers];
}

@end