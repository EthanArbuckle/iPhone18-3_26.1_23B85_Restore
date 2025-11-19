@interface AXVoiceOverPunctuationController
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (id)_numberEntriesInGroup:(id)a3;
- (id)_selectedPunctuation:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addDoneButton;
- (void)_configureEditButton:(BOOL)a3;
- (void)_donePressed;
- (void)_editPressed;
- (void)_loadPunctationGroups;
- (void)_punctuationGroupsChanged:(id)a3;
- (void)_updateEditingStatusForSpecifiers:(BOOL)a3;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)reloadSpecifiers;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXVoiceOverPunctuationController

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v3 reloadSpecifiers];
  [(AXVoiceOverPunctuationController *)self _loadPunctationGroups];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    v34 = v3;
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    systemPunctuationSpecs = self->_systemPunctuationSpecs;
    self->_systemPunctuationSpecs = v7;

    v9 = +[NSMutableArray array];
    v10 = settingsLocString(@"ACTIVE_PUNCTUATION", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"_selectedPunctuation:" detail:objc_opt_class() cell:2 edit:0];

    v33 = PSIDKey;
    [v11 setProperty:@"voiceOverActivePunctuationGroup" forKey:?];
    [v9 addObject:v11];
    v12 = settingsLocString(@"PUNCTUATION_GROUPS", @"VoiceOverSettings");
    v13 = [PSSpecifier groupSpecifierWithName:v12];

    v14 = v9;
    [v9 addObject:v13];
    [(AXVoiceOverPunctuationBaseController *)self systemPunctuationGroups];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        v18 = 0;
        v19 = v13;
        do
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v36 + 1) + 8 * v18);
          v21 = [v20 uuid];
          v22 = AXSettingsNameForPunctuationGroupUUID(v21);
          v13 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          [v13 setProperty:v20 forKey:@"PunctuationGroup"];
          v23 = [v20 uuid];
          [v13 setProperty:v23 forKey:@"punctuationGroupUUID"];

          [v14 addObject:v13];
          [(NSMutableArray *)self->_systemPunctuationSpecs addObject:v13];
          v18 = v18 + 1;
          v19 = v13;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v16);
    }

    v24 = +[PSSpecifier emptyGroupSpecifier];

    [v24 setProperty:@"NewPunctuationGroup" forKey:v33];
    [v14 addObject:v24];
    v25 = settingsLocString(@"CUSTOM_PUNCTUATION_ADD_GROUP", @"VoiceOverSettings");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

    [v26 setProperty:@"NewPunctuation" forKey:v33];
    [v14 addObject:v26];
    v27 = +[PSSpecifier emptyGroupSpecifier];

    [v14 addObject:v27];
    v28 = settingsLocString(@"IMPORT_PUNCTUATION", @"VoiceOverSettings");
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v29 setProperty:@"ImportPunctuation" forKey:v33];
    [v14 addObject:v29];
    [(AXVoiceOverPunctuationController *)self setAllSpecifiersUnsearchable:v14];
    v30 = [v14 copy];
    v31 = *&self->super.AXUISettingsBaseListController_opaque[v34];
    *&self->super.AXUISettingsBaseListController_opaque[v34] = v30;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v34];
  }

  return v4;
}

- (id)_selectedPunctuation:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverPunctuationGroup];

  if (!v4)
  {
    v4 = AXSettingsDefaultPunctuationGroupUUID();
  }

  v5 = AXSettingsNameForPunctuationGroupUUID(v4);

  return v5;
}

- (void)_loadPunctationGroups
{
  v29 = +[NSMutableArray array];
  v3 = [(AXVoiceOverPunctuationBaseController *)self customPunctuationGroups];
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Loading punctuation groups: %@", buf, 0xCu);
  }

  if ([v3 count])
  {
    v5 = settingsLocString(@"CUSTOM_PUNCTUATION_GROUPS", @"VoiceOverSettings");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    [v6 setProperty:@"CustomPunctuationGroup" forKey:PSIDKey];
    [v29 addObject:v6];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v3;
  obj = [v3 sortedArrayUsingComparator:&__block_literal_global_53];
  v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"_numberEntriesInGroup:" detail:objc_opt_class() cell:2 edit:0];

        [v13 setProperty:v11 forKey:@"PunctuationGroup"];
        [v13 setProperty:&__kCFBooleanTrue forKey:@"CustomGroup"];
        v14 = [v11 uuid];
        [v13 setProperty:v14 forKey:@"punctuationGroupUUID"];

        [v29 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v15 = [(NSMutableArray *)self->_customPunctuationSpecs copy];
  objc_storeStrong(&self->_customPunctuationSpecs, v29);
  [(AXVoiceOverPunctuationController *)self beginUpdates];
  [(AXVoiceOverPunctuationController *)self removeContiguousSpecifiers:v15];
  [(AXVoiceOverPunctuationController *)self insertContiguousSpecifiers:v29 atIndex:[(AXVoiceOverPunctuationController *)self indexOfSpecifierID:@"NewPunctuationGroup"] animated:1];
  [(AXVoiceOverPunctuationController *)self endUpdates];
  v16 = [(AXVoiceOverPunctuationController *)self table];
  [v16 beginUpdates];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v29;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        v23 = [(AXVoiceOverPunctuationController *)self table];
        v24 = [(AXVoiceOverPunctuationController *)self indexPathForSpecifier:v22];
        v38 = v24;
        v25 = [NSArray arrayWithObjects:&v38 count:1];
        [v23 reloadRowsAtIndexPaths:v25 withRowAnimation:5];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v19);
  }

  v26 = [(AXVoiceOverPunctuationController *)self table];
  [v26 endUpdates];
}

int64_t __57__AXVoiceOverPunctuationController__loadPunctationGroups__block_invoke(id a1, AXSSPunctuationGroup *a2, AXSSPunctuationGroup *a3)
{
  v4 = a3;
  v5 = [(AXSSPunctuationGroup *)a2 name];
  v6 = [(AXSSPunctuationGroup *)v4 name];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXVoiceOverPunctuationController *)self specifierAtIndexPath:v7];
  v9 = PSIDKey;
  v10 = [v8 propertyForKey:PSIDKey];
  v11 = [v10 isEqualToString:@"NewPunctuation"];

  if (v11)
  {
    v56 = v8;
    v57 = v7;
    v58 = v6;
    v12 = settingsLocString(@"PUNCTUATION_ORIGINAL_GROUP_SELECTION_TITLE", @"VoiceOverSettings");
    v13 = settingsLocString(@"PUNCTUATION_ORIGINAL_GROUP_SELECTION_MESSAGE", @"VoiceOverSettings");
    v14 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:AXDeviceIsPad()];

    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = __70__AXVoiceOverPunctuationController_tableView_didSelectRowAtIndexPath___block_invoke;
    v74[3] = &unk_2585A0;
    v74[4] = self;
    v15 = objc_retainBlock(v74);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v55 = self;
    obj = self->_systemPunctuationSpecs;
    v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v71;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v71 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v70 + 1) + 8 * i);
          v21 = [v20 propertyForKey:@"punctuationGroupUUID"];
          v22 = [v20 name];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = __70__AXVoiceOverPunctuationController_tableView_didSelectRowAtIndexPath___block_invoke_2;
          v67[3] = &unk_2585C8;
          v23 = v15;
          v68 = v21;
          v69 = v23;
          v24 = v21;
          v25 = [UIAlertAction actionWithTitle:v22 style:0 handler:v67];

          [v14 addAction:v25];
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v17);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v26 = +[AXSSPunctuationManager sharedDatabase];
    v27 = [v26 punctuationGroups];

    v28 = [v27 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v64;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v63 + 1) + 8 * j);
          if (([v32 isSystemPunctuationGroup] & 1) == 0)
          {
            v33 = [v32 name];
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = __70__AXVoiceOverPunctuationController_tableView_didSelectRowAtIndexPath___block_invoke_3;
            v61[3] = &unk_2585C8;
            v34 = v15;
            v61[4] = v32;
            v62 = v34;
            v35 = [UIAlertAction actionWithTitle:v33 style:0 handler:v61];

            [v14 addAction:v35];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v29);
    }

    v36 = settingsLocString(@"CANCEL", @"Accessibility");
    v37 = [UIAlertAction actionWithTitle:v36 style:1 handler:&__block_literal_global_356];

    v38 = v14;
    [v14 addAction:v37];
    self = v55;
    if (_AXSInUnitTestMode())
    {
      v39 = [(AXVoiceOverPunctuationController *)v55 testingInitialPunctuationGroup];
      v40 = [v39 uuid];
      (v15[2])(v15, v40);
    }

    else
    {
      v39 = [(AXVoiceOverPunctuationController *)v55 view];
      v40 = [v39 window];
      v49 = [v40 rootViewController];
      [v49 presentViewController:v14 animated:1 completion:0];
    }

    v8 = v56;
    v7 = v57;
    v6 = v58;
  }

  else
  {
    v41 = [v8 propertyForKey:v9];
    v42 = [v41 isEqualToString:@"ImportPunctuation"];

    if (!v42)
    {
      v48 = [v8 propertyForKey:v9];
      if ([v48 isEqualToString:@"NewPunctuation"])
      {
      }

      else
      {
        v50 = [v8 detailControllerClass];
        v51 = objc_opt_class();

        if (v50 != v51)
        {
          goto LABEL_27;
        }
      }

      v52 = objc_alloc_init(AXVoiceOverPunctuationGroupController);
      v53 = [v8 propertyForKey:@"PunctuationGroup"];
      [(AXVoiceOverPunctuationGroupController *)v52 setPunctuationGroup:v53];

      v54 = [(AXVoiceOverPunctuationController *)self rootController];
      [(AXVoiceOverPunctuationGroupController *)v52 setRootController:v54];

      [(AXVoiceOverPunctuationGroupController *)v52 setParentController:self];
      [(AXVoiceOverPunctuationController *)self showController:v52 animate:1];

      goto LABEL_28;
    }

    v38 = [UTType typeWithFilenameExtension:AXSSPunctutionGroupFileExtension];
    v43 = [UTType typeWithIdentifier:@"public.data"];
    v44 = [UIDocumentPickerViewController alloc];
    v75[0] = v38;
    v75[1] = v43;
    v45 = [NSArray arrayWithObjects:v75 count:2];
    v46 = [v44 initForOpeningContentTypes:v45];
    docPicker = self->_docPicker;
    self->_docPicker = v46;

    [(UIDocumentPickerViewController *)self->_docPicker setModalPresentationStyle:2];
    [(UIDocumentPickerViewController *)self->_docPicker setDelegate:self];
    [(AXVoiceOverPunctuationController *)self presentViewController:self->_docPicker animated:1 completion:0];
  }

LABEL_27:
  v60.receiver = self;
  v60.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v60 tableView:v6 didSelectRowAtIndexPath:v7];
LABEL_28:
}

void __70__AXVoiceOverPunctuationController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(AXVoiceOverPunctuationGroupController);
  v4 = [*(a1 + 32) rootController];
  [(AXVoiceOverPunctuationGroupController *)v6 setRootController:v4];

  v5 = +[PSSpecifier emptyGroupSpecifier];
  [v5 setProperty:v3 forKey:@"PunctuationBaseGroup"];

  [(AXVoiceOverPunctuationGroupController *)v6 setSpecifier:v5];
  [(AXVoiceOverPunctuationGroupController *)v6 setParentController:*(a1 + 32)];
  [*(a1 + 32) showController:v6 animate:1];
}

void __70__AXVoiceOverPunctuationController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) uuid];
  (*(v1 + 16))(v1, v2);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v4 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    notification = UIAccessibilityAnnouncementNotification;
    v8 = AXValidationManager_ptr;
    do
    {
      v9 = 0;
      v23 = v6;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        if ([v10 startAccessingSecurityScopedResource])
        {
          v11 = v8[482];
          v24 = 0;
          v12 = [v11 dataWithContentsOfURL:v10 options:0 error:&v24];
          v13 = v24;
          if (v13)
          {
            v14 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v13;
              _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Could not open import: %@", buf, 0xCu);
            }
          }

          else
          {
            v14 = [AXSSPunctuationGroup punctuationGroupFromJSONRepresentation:v12];
            v15 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v14;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Importing: %@", buf, 0xCu);
            }

            if (v14)
            {
              v16 = +[AXSSPunctuationManager sharedDatabase];
              [v16 importPunctuationGroup:v14];

              v17 = settingsLocString(@"VOICEOVER_IMPORT_PUNCTUATION_SUCCESS_ANNOUNCEMENT", @"VoiceOverSettings");
              [v14 name];
              v18 = v7;
              v20 = v19 = v4;
              v21 = [NSString stringWithFormat:v17, v20];
              UIAccessibilityPostNotification(notification, v21);

              v4 = v19;
              v7 = v18;
              v8 = AXValidationManager_ptr;

              v6 = v23;
            }

            [v10 stopAccessingSecurityScopedResource];
          }
        }

        else
        {
          v13 = AXLogPunctuationStorage();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v10;
            _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Could not access url for punctuation import: %@", buf, 0xCu);
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }
}

- (id)_numberEntriesInGroup:(id)a3
{
  v3 = [a3 propertyForKey:@"PunctuationGroup"];
  v4 = [v3 entries];
  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_372_1];
  v6 = [v5 count];

  v7 = settingsLocString(@"VO_PUNCTUATION_GROUP_ENTRY_COUNT", @"VoiceOverSettings");
  v8 = [NSString localizedStringWithFormat:v7, v6];

  return v8;
}

BOOL __58__AXVoiceOverPunctuationController__numberEntriesInGroup___block_invoke(id a1, AXSSPunctuationEntry *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(AXSSPunctuationEntry *)a2 punctuation:a3];
  v5 = [v4 length] != 0;

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v8 viewDidLoad];
  [(AXVoiceOverPunctuationController *)self _loadPunctationGroups];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_punctuationGroupsChanged:" name:AXSSVoiceOverPunctuationGroupsChangedNotification object:0];

  objc_initWeak(&location, self);
  v4 = +[AXSettings sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __47__AXVoiceOverPunctuationController_viewDidLoad__block_invoke;
  v5[3] = &unk_255388;
  objc_copyWeak(&v6, &location);
  [v4 registerUpdateBlock:v5 forRetrieveSelector:"voiceOverPunctuationGroup" withListener:self];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__AXVoiceOverPunctuationController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverPunctuationGroup"];
}

- (void)_punctuationGroupsChanged:(id)a3
{
  if ([(AXVoiceOverPunctuationController *)self ignoreGroupsChangedNotification])
  {

    [(AXVoiceOverPunctuationController *)self setIgnoreGroupsChangedNotification:0];
  }

  else
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __62__AXVoiceOverPunctuationController__punctuationGroupsChanged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadPunctationGroups];
  v2 = AXAssetAndDataClient();
  v1 = +[AXAccessQueue mainAccessQueue];
  [v2 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:3 targetAccessQueue:v1 completion:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v5 viewWillAppear:?];
  [(AXVoiceOverPunctuationController *)self _configureEditButton:v3];
  [(AXVoiceOverPunctuationController *)self _updateEditingStatusForSpecifiers:v3];
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = [(AXVoiceOverPunctuationController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"PunctuationGroup"];
  v6 = [v5 isSystemPunctuationGroup] ^ 1;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(AXVoiceOverPunctuationController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"PunctuationGroup"];
  v6 = [v5 isSystemPunctuationGroup] ^ 1;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = [(AXVoiceOverPunctuationController *)self specifierAtIndexPath:a5];
    v7 = [v6 propertyForKey:@"PunctuationGroup"];
    v8 = [v7 isSystemPunctuationGroup];
    if (v7 && (v8 & 1) == 0)
    {
      v9 = +[AXSettings sharedInstance];
      v10 = [v9 voiceOverPunctuationGroup];
      v11 = [v7 uuid];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = +[AXSettings sharedInstance];
        [v13 setVoiceOverPunctuationGroup:0];
      }

      [(AXVoiceOverPunctuationController *)self setIgnoreGroupsChangedNotification:1];
      v14 = +[AXSSPunctuationManager sharedDatabase];
      [v14 removePunctuationGroup:v7];

      [(AXVoiceOverPunctuationController *)self beginUpdates];
      v15 = [(AXVoiceOverPunctuationBaseController *)self customPunctuationGroups];
      v16 = [v15 count];

      if (!v16)
      {
        v17 = [(AXVoiceOverPunctuationController *)self specifierForID:@"CustomPunctuationGroup"];
        [(NSMutableArray *)self->_customPunctuationSpecs removeObject:v17];
        [(AXVoiceOverPunctuationController *)self removeSpecifier:v17 animated:1];
      }

      v18 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v7;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "remove group: %@", &v21, 0xCu);
      }

      v19 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [(AXVoiceOverPunctuationBaseController *)self customPunctuationGroups];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "existing groups: %@", &v21, 0xCu);
      }

      [(NSMutableArray *)self->_customPunctuationSpecs removeObject:v6];
      [(AXVoiceOverPunctuationController *)self removeSpecifier:v6 animated:1];
      [(AXVoiceOverPunctuationController *)self endUpdates];
    }
  }
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  [(AXVoiceOverPunctuationController *)self setEditing:1 animated:1];

  [(AXVoiceOverPunctuationController *)self _configureEditButton:1];
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  [(AXVoiceOverPunctuationController *)self setEditing:0 animated:1];

  [(AXVoiceOverPunctuationController *)self _configureEditButton:1];
}

- (void)_addDoneButton
{
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  v3 = [(AXVoiceOverPunctuationController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)_configureEditButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXVoiceOverPunctuationController *)self specifiers];
  v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_397];
  v7 = [v6 count];

  if (v7 < 1)
  {
    v8 = [(AXVoiceOverPunctuationController *)self navigationItem];
    [v8 setRightBarButtonItem:0];
  }

  else
  {
    if (([(AXVoiceOverPunctuationController *)self isEditing]& 1) != 0)
    {
      [(AXVoiceOverPunctuationController *)self _addDoneButton];
      goto LABEL_7;
    }

    v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed"];
    v9 = [(AXVoiceOverPunctuationController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }

LABEL_7:

  [(AXVoiceOverPunctuationController *)self _updateEditingStatusForSpecifiers:v3];
}

BOOL __57__AXVoiceOverPunctuationController__configureEditButton___block_invoke(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:@"CustomGroup", a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_updateEditingStatusForSpecifiers:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXVoiceOverPunctuationController *)self isEditing];
  [(AXVoiceOverPunctuationController *)self beginUpdates];
  v10 = [(AXVoiceOverPunctuationController *)self specifierForID:@"NewPunctuation"];
  v6 = [NSNumber numberWithInt:v5 ^ 1];
  v7 = PSEnabledKey;
  [v10 setProperty:v6 forKey:PSEnabledKey];

  [(AXVoiceOverPunctuationController *)self reloadSpecifier:v10 animated:v3];
  v8 = [(AXVoiceOverPunctuationController *)self specifierForID:@"ImportPunctuation"];
  v9 = [NSNumber numberWithInt:v5 ^ 1];
  [v8 setProperty:v9 forKey:v7];

  [(AXVoiceOverPunctuationController *)self reloadSpecifier:v8 animated:1];
  [(AXVoiceOverPunctuationController *)self endUpdates];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = AXVoiceOverPunctuationController;
  [(AXVoiceOverPunctuationController *)&v6 setEditing:a3 animated:?];
  [(AXVoiceOverPunctuationController *)self _updateEditingStatusForSpecifiers:v4];
  [(AXVoiceOverPunctuationController *)self _configureEditButton:v4];
}

- (void)_editPressed
{
  [(AXVoiceOverPunctuationController *)self setEditing:1 animated:1];

  [(AXVoiceOverPunctuationController *)self _addDoneButton];
}

- (void)_donePressed
{
  [(AXVoiceOverPunctuationController *)self setEditing:0 animated:1];
  v3 = [(AXVoiceOverPunctuationController *)self table];
  [v3 setEditing:0 animated:1];

  v4 = [(AXVoiceOverPunctuationController *)self table];
  [v4 reloadData];
}

@end