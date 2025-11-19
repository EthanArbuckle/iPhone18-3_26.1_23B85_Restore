@interface ICFolderCreationController
- (ICFolderCreationController)initWithViewController:(id)a3 noteContainer:(id)a4 smartFolderQuery:(id)a5 folderTitle:(id)a6 creationApproach:(int64_t)a7;
- (ICNAEventReporter)eventReporter;
- (UIAlertController)editTitleAlert;
- (UIMenu)menu;
- (UIViewController)viewController;
- (id)accountMenuWithAccounts:(id)a3;
- (id)sortDescriptorForDefaultAccountFirstWithKey:(id)a3 defaultAccount:(id)a4;
- (void)_icaxAnnounceCreatedFolder:(id)a3;
- (void)createFolderInAccount:(id)a3 noteContainer:(id)a4 smartFolderQuery:(id)a5 folderTitle:(id)a6 completionHandler:(id)a7;
- (void)editTitleTextFieldChanged:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)promptToAddFolderAllowingSmartFolder:(BOOL)a3 showFilters:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)promptToAddFolderToAccount:(id)a3 allowsSmartFolder:(BOOL)a4 showFilters:(BOOL)a5 noteContainer:(id)a6 completionHandler:(id)a7;
- (void)promptToEnterNewFolderTitleWithAccount:(id)a3 completionHandler:(id)a4;
- (void)showFolderComposerWithAccount:(id)a3 showFilters:(BOOL)a4 completion:(id)a5;
- (void)showFolderDepthLimitAlert;
@end

@implementation ICFolderCreationController

- (ICFolderCreationController)initWithViewController:(id)a3 noteContainer:(id)a4 smartFolderQuery:(id)a5 folderTitle:(id)a6 creationApproach:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = ICFolderCreationController;
  v16 = [(ICFolderCreationController *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_viewController, v12);
    objc_storeStrong(&v17->_noteContainer, a4);
    objc_storeStrong(&v17->_smartFolderQuery, a5);
    objc_storeStrong(&v17->_folderTitle, a6);
    v17->_creationApproach = a7;
    v18 = +[ICNoteContext sharedContext];
    v19 = [v18 managedObjectContext];
    viewContext = v17->_viewContext;
    v17->_viewContext = v19;
  }

  return v17;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      v3 = [(ICFolderCreationController *)self viewController];
      v4 = [v3 viewIfLoaded];

      if (v4)
      {
        v5 = [ICNAEventReporter alloc];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [(ICFolderCreationController *)self viewController];
        v9 = [v8 view];
        v10 = [v5 initWithSubTrackerName:v7 view:v9];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v10;

        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
      }
    }
  }

  v13 = self->_eventReporter;

  return v13;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (UIMenu)menu
{
  v3 = [(ICFolderCreationController *)self viewContext];
  v4 = [ICAccount defaultAccountInContext:v3];
  v5 = [(ICFolderCreationController *)self sortDescriptorForDefaultAccountFirstWithKey:@"accountNameForAccountListSorting" defaultAccount:v4];

  v6 = [(ICFolderCreationController *)self viewContext];
  v7 = [ICAccount allActiveAccountsInContext:v6];
  v13 = v5;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  if ([v9 count])
  {
    if ([v9 count] != 1)
    {
      v10 = [(ICFolderCreationController *)self accountMenuWithAccounts:v9];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8DA0(v11);
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)promptToAddFolderAllowingSmartFolder:(BOOL)a3 showFilters:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v16 = a5;
  v8 = [(ICFolderCreationController *)self noteContainer];
  v9 = [v8 isModernCustomFolder];

  if (!v9)
  {
    v14 = [(ICFolderCreationController *)self noteContainer];
    if (v14)
    {
      v15 = [(ICFolderCreationController *)self noteContainer];
      [v15 noteContainerAccount];
    }

    else
    {
      v15 = [(ICFolderCreationController *)self viewContext];
      [ICAccount defaultAccountInContext:v15];
    }
    v13 = ;

    v11 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  v10 = [(ICFolderCreationController *)self noteContainer];
  v11 = ICCheckedDynamicCast();

  v12 = [v11 depth];
  if (v12 < +[ICFolder folderDepthLimit])
  {
    v13 = [v11 account];
LABEL_10:
    [(ICFolderCreationController *)self promptToAddFolderToAccount:v13 allowsSmartFolder:v6 showFilters:v5 noteContainer:v11 completionHandler:v16];

    v11 = v13;
    goto LABEL_11;
  }

  [(ICFolderCreationController *)self showFolderDepthLimitAlert];
  if (v16)
  {
    v16[2]();
  }

LABEL_11:
}

- (id)sortDescriptorForDefaultAccountFirstWithKey:(id)a3 defaultAccount:(id)a4
{
  v5 = a3;
  v6 = [a4 valueForKey:v5];
  v7 = v6;
  if (a4 && v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100064B08;
    v10[3] = &unk_100646848;
    v11 = v6;
    v8 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1 comparator:v10];
  }

  else
  {
    v8 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];
  }

  return v8;
}

- (id)accountMenuWithAccounts:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064C88;
  v6[3] = &unk_100646898;
  v6[4] = self;
  v3 = [a3 ic_compactMap:v6];
  v4 = [UIMenu menuWithChildren:v3];

  return v4;
}

- (void)promptToAddFolderToAccount:(id)a3 allowsSmartFolder:(BOOL)a4 showFilters:(BOOL)a5 noteContainer:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v13 || !a4)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100064FA8;
    v21[3] = &unk_1006468C0;
    v21[4] = self;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    [(ICFolderCreationController *)self promptToEnterNewFolderTitleWithAccount:v22 completionHandler:v21];
  }

  else
  {
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100065034;
    v15[3] = &unk_1006468E8;
    objc_copyWeak(&v19, &location);
    v16 = v12;
    v17 = 0;
    v18 = v14;
    [(ICFolderCreationController *)self showFolderComposerWithAccount:v16 showFilters:v9 completion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)createFolderInAccount:(id)a3 noteContainer:(id)a4 smartFolderQuery:(id)a5 folderTitle:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v15 length] && (-[ICFolderCreationController viewController](self, "viewController"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    if (v12 || (+[ICNoteContext enableLocalAccount](ICNoteContext, "enableLocalAccount"), +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v18 = objc_claimAutoreleasedReturnValue(), [v18 addOrDeleteLocalAccountIfNecessary], v18, +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "save"), v19, -[ICFolderCreationController viewContext](self, "viewContext"), v20 = objc_claimAutoreleasedReturnValue(), +[ICAccount localAccountInContext:](ICAccount, "localAccountInContext:", v20), v12 = objc_claimAutoreleasedReturnValue(), v20, v12))
    {
      objc_opt_class();
      v46 = v13;
      v21 = ICDynamicCast();
      if (v14)
      {
        v22 = [ICFolder smartFolderWithQuery:v14 account:v12];
      }

      else
      {
        v22 = [ICFolder newFolderInAccount:v12];
      }

      v23 = v22;
      v24 = [ICFolder deduplicatingTitle:v15 forFolder:v22 forNewFolderParent:v21 ofAccount:v12];
      [v23 setTitle:v24];

      v25 = +[NSDate now];
      [v23 setDateForLastTitleModification:v25];

      if (v21)
      {
        v26 = [v12 identifier];
        v27 = [v21 account];
        v28 = [v27 identifier];

        if ([v28 isEqualToString:v26])
        {
          [v23 setParent:v21];
        }
      }

      v48 = 0;
      v29 = [v23 isTitleValid:v15 error:&v48];
      v30 = v48;
      v45 = v14;
      if (v29)
      {
        v31 = [v23 persistCreateActivityEventForObject:v23 inParentObject:v21];
        [v23 updateChangeCountWithReason:@"Created folder"];
        v32 = +[ICNoteContext sharedContext];
        [v32 save];

        if (v16)
        {
          v16[2](v16, v23);
        }

        v47 = v23;
        ICAccessibilityPerformBlockOnMainThreadAfterDelay();
        v33 = [(ICFolderCreationController *)self eventReporter];
        v34 = [(ICFolderCreationController *)self creationApproach];
        v35 = [(ICFolderCreationController *)self filterSelection];
        [v33 submitFolderCreateEventForModernFolder:v47 creationApproach:v34 filterSelection:v35];

        v36 = +[NSNotificationCenter defaultCenter];
        v37 = [v47 objectID];
        [v36 postNotificationName:@"ICFolderCreationControllerFolderWasCreatedNotification" object:v37];
      }

      else
      {
        v38 = [(ICFolderCreationController *)self viewController];
        v39 = [v30 userInfo];
        [v39 objectForKeyedSubscript:NSLocalizedDescriptionKey];
        v44 = v21;
        v41 = v40 = v30;
        v42 = [v40 userInfo];
        v43 = [v42 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
        [v38 ic_showSingleButtonAlertWithTitle:v41 message:v43];

        v30 = v40;
        v21 = v44;

        [ICFolder deleteFolder:v23];
        if (v16)
        {
          v16[2](v16, 0);
        }
      }

      v14 = v45;
      v13 = v46;
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICFolderCreationController createFolderInAccount:noteContainer:smartFolderQuery:folderTitle:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unable to determine or create account"];
      if (v16)
      {
        v16[2](v16, 0);
      }

      v12 = 0;
    }
  }

  else if (v16)
  {
    v16[2](v16, 0);
  }
}

- (void)promptToEnterNewFolderTitleWithAccount:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(ICFolderCreationController *)self viewController];

  if (v6)
  {
    v7 = +[NSBundle mainBundle];
    v21 = [v7 localizedStringForKey:@"New Folder" value:&stru_100661CF0 table:0];

    v8 = +[NSBundle mainBundle];
    v20 = [v8 localizedStringForKey:@"Enter a name for this folder." value:&stru_100661CF0 table:0];

    v9 = [ICDismissableAlertController alertControllerWithTitle:v21 message:v20 preferredStyle:1];
    [(ICFolderCreationController *)self setEditTitleAlert:v9];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100065984;
    v29[3] = &unk_100646910;
    v29[4] = self;
    [v9 addTextFieldWithConfigurationHandler:v29];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100065A74;
    v27[3] = &unk_100646938;
    v12 = v5;
    v28 = v12;
    v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:v27];

    [v9 addAction:v13];
    [v9 setDismissAction:v13];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Save" value:&stru_100661CF0 table:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100065A90;
    v24[3] = &unk_100646960;
    v16 = v9;
    v25 = v16;
    v26 = v12;
    v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v24];

    [v17 setEnabled:0];
    [v16 addAction:v17];
    [v16 setPreferredAction:v17];
    v18 = [(ICFolderCreationController *)self viewController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100065B2C;
    v22[3] = &unk_100645E30;
    v23 = v16;
    v19 = v16;
    [v18 presentViewController:v19 animated:1 completion:v22];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, &stru_100661CF0);
  }
}

- (void)editTitleTextFieldChanged:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v22 = ICDynamicCast();

  v5 = [v22 text];
  objc_opt_class();
  v6 = [(ICFolderCreationController *)self editTitleAlert];
  v7 = [v6 actions];
  v8 = [v7 objectAtIndex:1];
  v9 = ICDynamicCast();

  if (v22)
  {
    v10 = [(ICFolderCreationController *)self editTitleAlert];

    if (v10)
    {
      v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v12 = [v5 stringByTrimmingCharactersInSet:v11];

      [v9 setEnabled:{objc_msgSend(v12, "length") != 0}];
      objc_opt_class();
      v13 = [v9 safeValueForKey:@"_representer"];
      v14 = ICDynamicCast();

      if ([v9 isEnabled])
      {
        v15 = UIAccessibilityTraitNotEnabled;
        v16 = [v14 accessibilityTraits] & ~v15;
      }

      else
      {
        v17 = [v14 accessibilityTraits];
        v16 = UIAccessibilityTraitNotEnabled | v17;
      }

      [v14 setAccessibilityTraits:v16];
    }
  }

  v18 = [ICFolder stringByScrubbingStringForFolderName:v5];
  if (([v5 isEqualToString:v18] & 1) == 0)
  {
    v19 = [v22 selectionRange];
    v21 = v20;
    [v22 setText:v18];
    if (&v19[v21] < [v18 length])
    {
      [v22 setSelectionRange:{v19, v21}];
    }
  }
}

- (void)showFolderDepthLimitAlert
{
  v3 = [(ICFolderCreationController *)self viewController];

  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v10 = [v4 localizedStringForKey:@"Can’t add folder" value:&stru_100661CF0 table:0];

    v5 = +[ICFolder folderDepthLimit]+ 1;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FOLDER_DEPTH_LIMIT_MESSAGE_%lu" value:&stru_100661CF0 table:0];

    v8 = [NSString localizedStringWithFormat:v7, v5];
    v9 = [(ICFolderCreationController *)self viewController];
    [UIAlertController ic_showAlertWithTitle:v10 message:v8 viewController:v9];
  }
}

- (void)showFolderComposerWithAccount:(id)a3 showFilters:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v16 = a3;
  v8 = a5;
  v9 = [(ICFolderCreationController *)self viewController];

  if (v9)
  {
    v10 = [ICFolderComposerViewController alloc];
    v11 = [(ICFolderCreationController *)self folderTitle];
    v12 = [(ICFolderCreationController *)self smartFolderQuery];
    v13 = [(ICFolderComposerViewController *)v10 initWithAccount:v16 folderTitle:v11 smartFolderQuery:v12 showFilters:v6 completion:v8];

    v14 = [(ICFolderComposerViewController *)v13 ic_embedInNavigationControllerForModalPresentation];
    v15 = [(ICFolderCreationController *)self viewController];
    [v15 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)_icaxAnnounceCreatedFolder:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v7 = [v4 localizedStringForKey:@"Created folder: %@" value:&stru_100661CF0 table:0];

  v5 = [v3 title];

  v6 = [NSString localizedStringWithFormat:v7, v5];

  ICAccessibilityPostAnnouncementNotification();
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (UIAlertController)editTitleAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_editTitleAlert);

  return WeakRetained;
}

@end