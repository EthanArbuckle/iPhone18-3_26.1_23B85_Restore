@interface ICConvertToSmartFolderDecisionController
- (ICConvertToSmartFolderDecisionController)initWithSourceFolder:(id)a3 presentingViewController:(id)a4;
- (NSString)tagDisplayText;
- (void)convertToSmartFolderWithCompletion:(id)a3;
- (void)performDecisionWithCompletion:(id)a3;
- (void)showConfirmationAlertWithCompletion:(id)a3;
- (void)showPreventionAlertWithCompletion:(id)a3;
@end

@implementation ICConvertToSmartFolderDecisionController

- (ICConvertToSmartFolderDecisionController)initWithSourceFolder:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICConvertToSmartFolderDecisionController;
  v9 = [(ICConvertToSmartFolderDecisionController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceFolder, a3);
    v11 = [[ICConvertToSmartFolderDecision alloc] initWithSourceFolder:v7];
    decision = v10->_decision;
    v10->_decision = v11;

    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (void)performDecisionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICConvertToSmartFolderDecisionController *)self decision];
  v6 = [v5 type];

  if (v6 == 2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100103D58;
    v10[3] = &unk_100645CC8;
    v11 = v4;
    [(ICConvertToSmartFolderDecisionController *)self showPreventionAlertWithCompletion:v10];
    v7 = v11;
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(ICConvertToSmartFolderDecisionController *)self decision];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to convert to smart folder with decision: %@", buf, 0xCu);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else if (!v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100103D28;
    v12[3] = &unk_100649A80;
    v12[4] = self;
    v13 = v4;
    [(ICConvertToSmartFolderDecisionController *)self showConfirmationAlertWithCompletion:v12];
    v7 = v13;
LABEL_10:
  }
}

- (void)convertToSmartFolderWithCompletion:(id)a3
{
  v51 = a3;
  v4 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v5 = [v4 account];

  v6 = [(ICConvertToSmartFolderDecisionController *)self tagDisplayText];
  v7 = [ICHashtag hashtagWithDisplayText:v6 account:v5 createIfNecessary:1];

  v8 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
    v10 = [v9 ic_loggingIdentifier];
    v11 = [v7 ic_loggingDescription];
    *buf = 138412546;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Hashtag for conversion of manual folder (%@) to smart folder: %@", buf, 0x16u);
  }

  v12 = [ICTagSelection alloc];
  v13 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v14 = [v13 managedObjectContext];
  v15 = [v7 objectID];
  v16 = [NSSet ic_setFromNonNilObject:v15];
  v17 = [v12 initWithManagedObjectContext:v14 includedObjectIDs:v16];

  v49 = v17;
  v48 = [ICQuery queryForNotesMatchingTagSelection:v17];
  v50 = v5;
  v18 = [ICFolder smartFolderWithQuery:"smartFolderWithQuery:account:" account:?];
  v19 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v46 = [v19 title];

  v47 = v18;
  [v18 setParent:0];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v21 = [v20 visibleNotesIncludingChildFolders];

  obj = v21;
  v53 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v53)
  {
    v22 = *v55;
    v23 = "com.apple.notes";
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        v26 = os_log_create(v23, "CoreData");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v25 ic_loggingIdentifier];
          v28 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
          [v28 ic_loggingIdentifier];
          v29 = v22;
          v30 = self;
          v31 = v23;
          v33 = v32 = v7;
          *buf = 138412546;
          v60 = v27;
          v61 = 2112;
          v62 = v33;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Re-parenting note (%@) to default folder because its parent (%@) is being converted to a smart folder", buf, 0x16u);

          v7 = v32;
          v23 = v31;
          self = v30;
          v22 = v29;
        }

        v34 = [v25 addHashtagToNoteBodyIfMissing:v7];
        v35 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
        v36 = [v35 account];
        v37 = [v36 defaultFolder];
        [v25 setFolder:v37];

        [v25 updateChangeCountWithReason:@"Moved to default folder"];
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v53);
  }

  v38 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  [v38 markForDeletion];

  v39 = [ICFolder deduplicatingTitle:v46 account:v50];
  [v47 setTitle:v39];
  [v7 updateChangeCountWithReason:@"Created smart folder"];
  [v47 updateChangeCountWithReason:@"Created smart folder"];
  v40 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v41 = [v40 managedObjectContext];
  [v41 ic_save];

  v42 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
    v44 = [v43 ic_loggingIdentifier];
    v45 = [v47 ic_loggingDescription];
    *buf = 138412546;
    v60 = v44;
    v61 = 2112;
    v62 = v45;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Successfully converted (%@) to smart folder: %@", buf, 0x16u);
  }

  if (v51)
  {
    v51[2](v51, v47, v7);
  }
}

- (void)showConfirmationAlertWithCompletion:(id)a3
{
  v4 = a3;
  if (![(ICConvertToSmartFolderDecisionController *)self skipAlerts])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Convert to Smart Folder" value:&stru_100661CF0 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"“%@” will be added to each note and this folder will be turned into a Smart Folder. This can’t be undone." value:&stru_100661CF0 table:0];
    v9 = [(ICConvertToSmartFolderDecisionController *)self tagDisplayText];
    v10 = [v9 ic_withHashtagPrefix];
    v11 = [NSString localizedStringWithFormat:v8, v10];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Convert" value:&stru_100661CF0 table:0];

    v16 = [UIAlertController alertControllerWithTitle:v6 message:v11 preferredStyle:0];
    v17 = [(ICConvertToSmartFolderDecisionController *)self folderSourceView];

    if (v17)
    {
      v18 = [(ICConvertToSmartFolderDecisionController *)self folderSourceView];
      v19 = [v16 popoverPresentationController];
      [v19 setSourceView:v18];
    }

    else
    {
      v20 = [(ICConvertToSmartFolderDecisionController *)self presentingBarButtonItem];

      if (!v20)
      {
LABEL_9:
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10010471C;
        v27[3] = &unk_100646938;
        v21 = v4;
        v28 = v21;
        v22 = [UIAlertAction actionWithTitle:v13 style:1 handler:v27];
        [v16 addAction:v22];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100104738;
        v25[3] = &unk_100646938;
        v26 = v21;
        v23 = [UIAlertAction actionWithTitle:v15 style:0 handler:v25];
        [v16 addAction:v23];
        v24 = v16;
        performBlockOnMainThread();

        goto LABEL_10;
      }

      v18 = [(ICConvertToSmartFolderDecisionController *)self presentingBarButtonItem];
      v19 = [v16 popoverPresentationController];
      [v19 setBarButtonItem:v18];
    }

    goto LABEL_9;
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }

LABEL_10:
}

- (void)showPreventionAlertWithCompletion:(id)a3
{
  v14 = a3;
  if (![(ICConvertToSmartFolderDecisionController *)self skipAlerts])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Can’t Convert Folder" value:&stru_100661CF0 table:0];

    v7 = [(ICConvertToSmartFolderDecisionController *)self decision];
    v8 = [v7 additionalStep];

    v9 = 0;
    if (v8 > 3)
    {
      if ((v8 - 5) < 2)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Folders containing shared or locked notes can’t be turned into Smart Folders.";
LABEL_15:
        v9 = [v10 localizedStringForKey:v12 value:&stru_100661CF0 table:0];

        goto LABEL_16;
      }

      if (v8 == 4)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Folders with subfolders can’t be turned into Smart Folders.";
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 < 3)
      {
        if (v14)
        {
          v14[2]();
        }

        v9 = 0;
        goto LABEL_16;
      }

      if (v8 == 3)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Shared folders can’t be turned into Smart Folders.";
        goto LABEL_15;
      }
    }

LABEL_16:
    v13 = [(ICConvertToSmartFolderDecisionController *)self presentingViewController];
    [UIAlertController ic_showAlertWithTitle:v6 message:v9 viewController:v13];

    goto LABEL_17;
  }

  v4 = v14;
  if (!v14)
  {
    goto LABEL_18;
  }

  (v14[2])(v14);
LABEL_17:
  v4 = v14;
LABEL_18:
}

- (NSString)tagDisplayText
{
  v2 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  v3 = [v2 title];
  v4 = [v3 ic_trimmedString];
  v5 = [v4 ic_whitespaceAndNewlineCoalescedString];

  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [v5 ic_stringByReplacingCharactersInSet:v6 withString:@"-"];

  return v7;
}

@end