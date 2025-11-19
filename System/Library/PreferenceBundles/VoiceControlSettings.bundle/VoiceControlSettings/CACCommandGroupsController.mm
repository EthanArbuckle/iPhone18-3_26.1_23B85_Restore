@interface CACCommandGroupsController
- (CACCommandGroupsController)init;
- (id)filteredCommandList:(id)a3;
- (id)specifiers;
- (void)_commandSettingsDidChange;
- (void)_handleDeleteAllButton;
- (void)_handleExportButton;
- (void)_handleImportButton;
- (void)_setupSearch;
- (void)dealloc;
- (void)didUpdatePropertiesForEditor:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)presentCustomAction:(id)a3;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchResultSpecifierSelected:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation CACCommandGroupsController

- (CACCommandGroupsController)init
{
  v5.receiver = self;
  v5.super_class = CACCommandGroupsController;
  v2 = [(CACCommandGroupsController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_6750, @"CACNotificationCommandsSettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationCommandsSettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACCommandGroupsController;
  [(CACCommandGroupsController *)&v4 dealloc];
}

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_25;
  }

  v5 = +[NSMutableArray array];
  v6 = [(CACCommandGroupsController *)v2 commandPresentation];

  if (!v6)
  {
    v7 = objc_alloc_init(CACSpokenCommandPresentation);
    [(CACCommandGroupsController *)v2 setCommandPresentation:v7];

    v8 = [(CACCommandGroupsController *)v2 commandPresentation];
    [v8 setUsedByPreferences:1];
  }

  v56 = v5;
  v9 = [(CACCommandGroupsController *)v2 commandPresentation];
  v10 = [v9 nestedCommandGroupsAndItems];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
  v13 = &_AXSAttentionAwarenessFeaturesEnabled_ptr;
  v14 = &_AXSAttentionAwarenessFeaturesEnabled_ptr;
  obj = v11;
  if (v12)
  {
    v15 = v12;
    v53 = v3;
    v55 = v2;
    v16 = 0;
    v17 = *v58;
    v18 = PSIDKey;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v18;
        v21 = *(*(&v57 + 1) + 8 * i);
        if (([v21 isGroup] & 1) == 0)
        {
          v52 = v21;
          _AXAssert();
        }

        v22 = v13[206];
        [v21 displayString];
        v24 = v23 = v13;
        v52 = 0;
        v25 = [v22 preferenceSpecifierNamed:v24 target:v55 set:0 get:0 detail:objc_opt_class() cell:2 edit:?];

        [v25 setProperty:v21 forKey:@"CACCommandGroup"];
        v26 = [v21 identifier];
        [v25 setProperty:v26 forKey:v20];

        if ([v21 isCustom])
        {
          v27 = [v23[206] groupSpecifierWithID:@"CACUserCommandGroup"];
          [v56 insertObject:v27 atIndex:0];
          [v56 insertObject:v25 atIndex:0];

          v16 = 1;
        }

        else
        {
          [v56 addObject:v25];
        }

        v13 = v23;

        v18 = v20;
      }

      v15 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v15);

    v2 = v55;
    v3 = v53;
    v14 = &_AXSAttentionAwarenessFeaturesEnabled_ptr;
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if (AXProcessIsSetup())
  {
    v18 = PSIDKey;
  }

  else
  {
    v28 = v13[206];
    v29 = settingsLocString(@"CREATE_NEW_CUSTOM_COMMAND", @"CommandAndControlSettings");
    v30 = [v28 preferenceSpecifierNamed:v29 target:v2 set:0 get:0 detail:0 cell:2 edit:0];

    [v30 setControllerLoadAction:"presentCustomAction:"];
    v31 = [v14[232] sharedPreferences];
    v32 = [v31 bestLocaleIdentifier];
    v33 = [CACSpokenCommandItem newCommandItemWithLocale:v32 scope:@"com.apple.speech.SystemWideScope"];
    [v30 setProperty:v33 forKey:@"CACCommandItem"];

    v18 = PSIDKey;
    [v30 setProperty:@"CreateNewCommand" forKey:PSIDKey];
    v34 = [v13[206] emptyGroupSpecifier];
    [v56 insertObject:v34 atIndex:0];

    [v56 insertObject:v30 atIndex:0];
  }

LABEL_22:
  v35 = [v13[206] groupSpecifierWithID:@"CACImportExportGroup"];
  [v56 addObject:v35];
  v36 = v13[206];
  v37 = settingsLocString(@"IMPORT_CUSTOM_COMMANDS", @"CommandAndControlSettings");
  v38 = [v36 preferenceSpecifierNamed:v37 target:v2 set:0 get:0 detail:0 cell:13 edit:0];

  [v38 setButtonAction:"_handleImportButton"];
  v39 = PSAllowMultilineTitleKey;
  [v38 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v38 setProperty:@"ImportCustomCommands" forKey:v18];
  [v56 addObject:v38];
  v40 = [v14[232] sharedPreferences];
  v41 = [v40 allCustomCommandProperties];
  v42 = v13;
  v43 = [v41 count];

  if (v43)
  {
    v44 = v42[206];
    v45 = settingsLocString(@"EXPORT_CUSTOM_COMMANDS", @"CommandAndControlSettings");
    v46 = [v44 preferenceSpecifierNamed:v45 target:v2 set:0 get:0 detail:0 cell:13 edit:0];

    [v46 setButtonAction:"_handleExportButton"];
    [v46 setProperty:&__kCFBooleanTrue forKey:v39];
    [v56 addObject:v46];
    v47 = v42[206];
    v48 = settingsLocString(@"DELETE_ALL_CUSTOM_COMMANDS", @"CommandAndControlSettings");
    v49 = [v47 preferenceSpecifierNamed:v48 target:v2 set:0 get:0 detail:0 cell:13 edit:0];

    [v49 setButtonAction:"_handleDeleteAllButton"];
    [v49 setProperty:&__kCFBooleanTrue forKey:v39];
    [v56 addObject:v49];
  }

  [(CACCommandGroupsController *)v2 setAllSpecifiersUnsearchable:v56];
  v50 = *&v2->AXUISettingsBaseListController_opaque[v3];
  *&v2->AXUISettingsBaseListController_opaque[v3] = v56;

  v4 = *&v2->AXUISettingsBaseListController_opaque[v3];
LABEL_25:

  return v4;
}

- (void)presentCustomAction:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(CACCustomCommandEditorViewController);
  v5 = [v4 propertyForKey:@"CACCommandItem"];

  [v7 setCommandItem:v5];
  [v7 setDelegate:self];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(CACCommandGroupsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CACCommandGroupsController;
  [(CACCommandGroupsController *)&v4 viewDidLoad];
  v3 = settingsLocString(@"CUSTOMIZE_COMMANDS_TITLE", @"CommandAndControlSettings");
  [(CACCommandGroupsController *)self setTitle:v3];

  [(CACCommandGroupsController *)self _setupSearch];
}

- (void)_commandSettingsDidChange
{
  if ([(CACCommandGroupsController *)self isCurrentlyAppearing])
  {
    [(CACCommandGroupsController *)self setCommandPresentation:0];

    [(CACCommandGroupsController *)self reloadSpecifiers];
  }
}

- (void)_setupSearch
{
  if (!self->_searchController)
  {
    v3 = objc_alloc_init(CACCommandSearchResultsViewController);
    [(CACCommandSearchResultsViewController *)v3 setDelegate:self];
    v4 = [[UISearchController alloc] initWithSearchResultsController:v3];
    searchController = self->_searchController;
    self->_searchController = v4;

    v6 = [(CACCommandGroupsController *)self searchController];
    [v6 setDelegate:v3];

    v7 = [(CACCommandGroupsController *)self searchController];
    [v7 setSearchResultsUpdater:self];

    v8 = [(CACCommandGroupsController *)self searchController];
    [v8 setObscuresBackgroundDuringPresentation:1];

    v9 = [(CACCommandGroupsController *)self searchController];
    v10 = [v9 searchBar];
    [v10 setAutocapitalizationType:0];

    v11 = [(CACCommandGroupsController *)self searchController];
    v12 = [v11 searchBar];
    [v12 setKeyboardType:0];

    v13 = [(CACCommandGroupsController *)self searchController];
    v14 = [v13 searchBar];
    [v14 setAutocorrectionType:1];

    if (+[VCFeatureFlags useWhatsNewSettingsSegmentedControlEnabled])
    {
      v15 = [(CACCommandGroupsController *)self searchController];
      v16 = [v15 searchBar];
      [v16 setShowsScopeBar:1];

      v17 = settingsLocString(@"SCOPE_ALL_COMMANDS", @"CommandAndControlSettings");
      v27[0] = v17;
      v18 = settingsLocString(@"SCOPE_NEW_COMMANDS", @"CommandAndControlSettings");
      v27[1] = v18;
      v19 = [NSArray arrayWithObjects:v27 count:2];
      v20 = [(CACCommandGroupsController *)self searchController];
      v21 = [v20 searchBar];
      [v21 setScopeButtonTitles:v19];

      v22 = [(CACCommandGroupsController *)self searchController];
      v23 = [v22 searchBar];
      [v23 setDelegate:self];
    }

    v24 = [(CACCommandGroupsController *)self searchController];
    v25 = [(CACCommandGroupsController *)self navigationItem];
    [v25 setSearchController:v24];

    v26 = [(CACCommandGroupsController *)self navigationItem];
    [v26 setHidesSearchBarWhenScrolling:0];

    [(CACCommandGroupsController *)self setDefinesPresentationContext:1];
  }
}

- (void)searchResultSpecifierSelected:(id)a3
{
  v6 = a3;
  v4 = [v6 propertyForKey:@"CACCommandItem"];
  if ([v4 isCustom])
  {
    [(CACCommandGroupsController *)self presentCustomAction:v6];
  }

  else
  {
    [v6 detailControllerClass];
    v5 = CreateDetailControllerInstanceWithClass();
    [(CACCommandGroupsController *)self showController:v5 withSpecifier:v6];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v8 = [v4 text];

  v5 = [(CACCommandGroupsController *)self searchController];
  v6 = [v5 searchResultsController];

  v7 = [(CACCommandGroupsController *)self filteredCommandList:v8];
  [v6 setSearchResults:v7];
}

- (id)filteredCommandList:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSNumberFormatter);
  [v4 setNumberStyle:5];
  v5 = objc_alloc_init(NSNumberFormatter);
  v6 = [v3 componentsSeparatedByString:@" "];
  v7 = [NSArray arrayWithArray:v6];

  v8 = +[NSMutableArray array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  v59 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v77;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        if ([v13 length])
        {
          v14 = v13;
          v15 = [v5 numberFromString:v14];
          if (v15)
          {
            v16 = [v4 stringFromNumber:v15];

            v14 = v16;
            v8 = v59;
          }

          [v8 addObject:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v10);
  }

  v53 = v5;
  if ([v8 count])
  {
    v17 = [v8 componentsJoinedByString:@" "];

    v3 = v17;
  }

  v18 = [(CACCommandGroupsController *)self commandPresentation];
  v19 = [v18 nestedCommandGroupsAndItems];

  v20 = [NSPredicate predicateWithFormat:@"displayString = '%@'", v3];
  v21 = [@"*" mutableCopy];
  v22 = [v3 length];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_7BD8;
  v74[3] = &unk_28F78;
  v23 = v21;
  v75 = v23;
  v54 = v3;
  [v3 enumerateSubstringsInRange:0 options:v22 usingBlock:{3, v74}];
  v24 = [NSPredicate predicateWithFormat:@"displayString LIKE[cd] %@", v23];
  v51 = v23;
  [NSPredicate predicateWithFormat:@"SELF LIKE[cd] %@", v23];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_7C20;
  v49 = v72[3] = &unk_28FA0;
  v73 = v49;
  v25 = [NSPredicate predicateWithBlock:v72];
  v52 = v20;
  v82[0] = v20;
  v50 = v24;
  v82[1] = v24;
  v48 = v25;
  v82[2] = v25;
  v26 = [NSArray arrayWithObjects:v82 count:3];
  v27 = [NSCompoundPredicate orPredicateWithSubpredicates:v26];

  v28 = +[NSMutableArray array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v19;
  v63 = [v29 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v63)
  {
    v30 = *v69;
    v57 = v29;
    v58 = v28;
    v55 = *v69;
    v56 = v27;
    do
    {
      for (j = 0; j != v63; j = j + 1)
      {
        if (*v69 != v30)
        {
          objc_enumerationMutation(v29);
        }

        v32 = *(*(&v68 + 1) + 8 * j);
        v33 = [CACCommandSearchResult searchResultWithGroup:v32];
        v34 = [v32 commandsArray];
        v35 = +[VCFeatureFlags useWhatsNewSettingsSegmentedControlEnabled];
        v36 = [v34 filteredArrayUsingPredicate:v27];
        if (v35)
        {
          v62 = v33;

          if ([(CACCommandGroupsController *)self showOnlyNew])
          {
            v34 = objc_opt_new();
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v37 = v36;
            v38 = [v37 countByEnumeratingWithState:&v64 objects:v80 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v65;
              do
              {
                for (k = 0; k != v39; k = k + 1)
                {
                  if (*v65 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v64 + 1) + 8 * k);
                  if (([v42 isCustom] & 1) == 0)
                  {
                    v43 = [v42 identifier];
                    v44 = [VCCommandObjC commandWithIdentifier:v43];

                    if ([v44 isNewForCurrentDevice])
                    {
                      [v34 addObject:v42];
                    }
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v64 objects:v80 count:16];
              }

              while (v39);
            }

            v29 = v57;
            v28 = v58;
            v30 = v55;
            v27 = v56;
          }

          else
          {
            v34 = v36;
          }

          v33 = v62;
          [v62 setCommandItems:v34];
        }

        else
        {
          [v33 setCommandItems:v36];
        }

        v45 = [v33 commandItems];
        v46 = [v45 count];

        if (v46)
        {
          [v28 addObject:v33];
        }
      }

      v63 = [v29 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v63);
  }

  return v28;
}

- (void)didUpdatePropertiesForEditor:(id)a3
{
  [(CACCommandGroupsController *)self reloadSpecifiers];
  v6 = [(CACCommandGroupsController *)self searchController];
  v4 = [v6 searchResultsUpdater];
  v5 = [(CACCommandGroupsController *)self searchController];
  [v4 updateSearchResultsForSearchController:v5];
}

- (void)_handleImportButton
{
  v3 = [UTType typeWithFilenameExtension:kCACCommandsFileExtensionVCCommands];
  v4 = [UIDocumentPickerViewController alloc];
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [v4 initForOpeningContentTypes:v5];

  [v6 setModalPresentationStyle:2];
  [v6 setDelegate:self];
  [(CACCommandGroupsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_handleExportButton
{
  v3 = +[CACCommandImportExportUtilities defaultExportURL];
  [v3 startAccessingSecurityScopedResource];
  v4 = [CACCommandImportExportUtilities exportToURL:v3];
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
    [(CACCommandGroupsController *)self presentViewController:v8 animated:1 completion:0];
  }

  [v3 stopAccessingSecurityScopedResource];
}

- (void)_handleDeleteAllButton
{
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = settingsLocString(@"DELETE_ALL_CUSTOM_COMMANDS", @"CommandAndControlSettings");
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8158;
  v8[3] = &unk_28F10;
  v8[4] = self;
  v5 = [UIAlertAction actionWithTitle:v4 style:2 handler:v8];
  [v3 addAction:v5];

  v6 = settingsLocString(@"CANCEL", @"CommandAndControlSettings");
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:&stru_29000];
  [v3 addAction:v7];

  [(CACCommandGroupsController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v6 = [a4 firstObject];
  v5 = [CACCommandImportExportUtilities importFromURL:v6];
  [v5 displayAlertForViewController:self];
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  [(CACCommandGroupsController *)self setShowOnlyNew:a4 == 1];
  v5 = [(CACCommandGroupsController *)self searchController];
  v6 = [v5 searchResultsUpdater];
  v7 = [(CACCommandGroupsController *)self searchController];
  [v6 updateSearchResultsForSearchController:v7];

  LODWORD(v6) = [(CACCommandGroupsController *)self showOnlyNew];
  v8 = [(CACCommandGroupsController *)self searchController];
  v9 = v8;
  if (v6)
  {
    [v8 setAutomaticallyShowsSearchResultsController:0];

    v10 = [(CACCommandGroupsController *)self searchController];
    [v10 setShowsSearchResultsController:1];

    v15 = [(CACCommandGroupsController *)self searchController];
    [v15 setActive:1];
  }

  else
  {
    [v8 setAutomaticallyShowsSearchResultsController:1];

    v15 = [(CACCommandGroupsController *)self searchController];
    v11 = [v15 searchBar];
    v12 = [v11 text];
    v13 = [v12 length] != 0;
    v14 = [(CACCommandGroupsController *)self searchController];
    [v14 setActive:v13];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [(CACCommandGroupsController *)self setShowOnlyNew:0];
  v5 = [(CACCommandGroupsController *)self searchController];
  v4 = [v5 searchBar];
  [v4 setSelectedScopeButtonIndex:0];
}

@end