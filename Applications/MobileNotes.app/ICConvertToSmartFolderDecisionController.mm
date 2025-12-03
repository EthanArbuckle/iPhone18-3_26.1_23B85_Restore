@interface ICConvertToSmartFolderDecisionController
- (ICConvertToSmartFolderDecisionController)initWithSourceFolder:(id)folder presentingViewController:(id)controller;
- (NSString)tagDisplayText;
- (void)convertToSmartFolderWithCompletion:(id)completion;
- (void)performDecisionWithCompletion:(id)completion;
- (void)showConfirmationAlertWithCompletion:(id)completion;
- (void)showPreventionAlertWithCompletion:(id)completion;
@end

@implementation ICConvertToSmartFolderDecisionController

- (ICConvertToSmartFolderDecisionController)initWithSourceFolder:(id)folder presentingViewController:(id)controller
{
  folderCopy = folder;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICConvertToSmartFolderDecisionController;
  v9 = [(ICConvertToSmartFolderDecisionController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceFolder, folder);
    v11 = [[ICConvertToSmartFolderDecision alloc] initWithSourceFolder:folderCopy];
    decision = v10->_decision;
    v10->_decision = v11;

    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (void)performDecisionWithCompletion:(id)completion
{
  completionCopy = completion;
  decision = [(ICConvertToSmartFolderDecisionController *)self decision];
  type = [decision type];

  if (type == 2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100103D58;
    v10[3] = &unk_100645CC8;
    v11 = completionCopy;
    [(ICConvertToSmartFolderDecisionController *)self showPreventionAlertWithCompletion:v10];
    v7 = v11;
    goto LABEL_10;
  }

  if (type == 1)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      decision2 = [(ICConvertToSmartFolderDecisionController *)self decision];
      *buf = 138412290;
      v15 = decision2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to convert to smart folder with decision: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else if (!type)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100103D28;
    v12[3] = &unk_100649A80;
    v12[4] = self;
    v13 = completionCopy;
    [(ICConvertToSmartFolderDecisionController *)self showConfirmationAlertWithCompletion:v12];
    v7 = v13;
LABEL_10:
  }
}

- (void)convertToSmartFolderWithCompletion:(id)completion
{
  completionCopy = completion;
  sourceFolder = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  account = [sourceFolder account];

  tagDisplayText = [(ICConvertToSmartFolderDecisionController *)self tagDisplayText];
  v7 = [ICHashtag hashtagWithDisplayText:tagDisplayText account:account createIfNecessary:1];

  v8 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    sourceFolder2 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
    ic_loggingIdentifier = [sourceFolder2 ic_loggingIdentifier];
    ic_loggingDescription = [v7 ic_loggingDescription];
    *buf = 138412546;
    v60 = ic_loggingIdentifier;
    v61 = 2112;
    v62 = ic_loggingDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Hashtag for conversion of manual folder (%@) to smart folder: %@", buf, 0x16u);
  }

  v12 = [ICTagSelection alloc];
  sourceFolder3 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  managedObjectContext = [sourceFolder3 managedObjectContext];
  objectID = [v7 objectID];
  v16 = [NSSet ic_setFromNonNilObject:objectID];
  v17 = [v12 initWithManagedObjectContext:managedObjectContext includedObjectIDs:v16];

  v49 = v17;
  v48 = [ICQuery queryForNotesMatchingTagSelection:v17];
  v50 = account;
  v18 = [ICFolder smartFolderWithQuery:"smartFolderWithQuery:account:" account:?];
  sourceFolder4 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  title = [sourceFolder4 title];

  v47 = v18;
  [v18 setParent:0];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sourceFolder5 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  visibleNotesIncludingChildFolders = [sourceFolder5 visibleNotesIncludingChildFolders];

  obj = visibleNotesIncludingChildFolders;
  v53 = [visibleNotesIncludingChildFolders countByEnumeratingWithState:&v54 objects:v58 count:16];
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
          ic_loggingIdentifier2 = [v25 ic_loggingIdentifier];
          sourceFolder6 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
          [sourceFolder6 ic_loggingIdentifier];
          v29 = v22;
          selfCopy = self;
          v31 = v23;
          v33 = v32 = v7;
          *buf = 138412546;
          v60 = ic_loggingIdentifier2;
          v61 = 2112;
          v62 = v33;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Re-parenting note (%@) to default folder because its parent (%@) is being converted to a smart folder", buf, 0x16u);

          v7 = v32;
          v23 = v31;
          self = selfCopy;
          v22 = v29;
        }

        v34 = [v25 addHashtagToNoteBodyIfMissing:v7];
        sourceFolder7 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
        account2 = [sourceFolder7 account];
        defaultFolder = [account2 defaultFolder];
        [v25 setFolder:defaultFolder];

        [v25 updateChangeCountWithReason:@"Moved to default folder"];
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v53);
  }

  sourceFolder8 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  [sourceFolder8 markForDeletion];

  v39 = [ICFolder deduplicatingTitle:title account:v50];
  [v47 setTitle:v39];
  [v7 updateChangeCountWithReason:@"Created smart folder"];
  [v47 updateChangeCountWithReason:@"Created smart folder"];
  sourceFolder9 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  managedObjectContext2 = [sourceFolder9 managedObjectContext];
  [managedObjectContext2 ic_save];

  v42 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    sourceFolder10 = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
    ic_loggingIdentifier3 = [sourceFolder10 ic_loggingIdentifier];
    ic_loggingDescription2 = [v47 ic_loggingDescription];
    *buf = 138412546;
    v60 = ic_loggingIdentifier3;
    v61 = 2112;
    v62 = ic_loggingDescription2;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Successfully converted (%@) to smart folder: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v47, v7);
  }
}

- (void)showConfirmationAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(ICConvertToSmartFolderDecisionController *)self skipAlerts])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Convert to Smart Folder" value:&stru_100661CF0 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"“%@” will be added to each note and this folder will be turned into a Smart Folder. This can’t be undone." value:&stru_100661CF0 table:0];
    tagDisplayText = [(ICConvertToSmartFolderDecisionController *)self tagDisplayText];
    ic_withHashtagPrefix = [tagDisplayText ic_withHashtagPrefix];
    v11 = [NSString localizedStringWithFormat:v8, ic_withHashtagPrefix];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Convert" value:&stru_100661CF0 table:0];

    v16 = [UIAlertController alertControllerWithTitle:v6 message:v11 preferredStyle:0];
    folderSourceView = [(ICConvertToSmartFolderDecisionController *)self folderSourceView];

    if (folderSourceView)
    {
      folderSourceView2 = [(ICConvertToSmartFolderDecisionController *)self folderSourceView];
      popoverPresentationController = [v16 popoverPresentationController];
      [popoverPresentationController setSourceView:folderSourceView2];
    }

    else
    {
      presentingBarButtonItem = [(ICConvertToSmartFolderDecisionController *)self presentingBarButtonItem];

      if (!presentingBarButtonItem)
      {
LABEL_9:
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10010471C;
        v27[3] = &unk_100646938;
        v21 = completionCopy;
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

      folderSourceView2 = [(ICConvertToSmartFolderDecisionController *)self presentingBarButtonItem];
      popoverPresentationController = [v16 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:folderSourceView2];
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_10:
}

- (void)showPreventionAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(ICConvertToSmartFolderDecisionController *)self skipAlerts])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Can’t Convert Folder" value:&stru_100661CF0 table:0];

    decision = [(ICConvertToSmartFolderDecisionController *)self decision];
    additionalStep = [decision additionalStep];

    v9 = 0;
    if (additionalStep > 3)
    {
      if ((additionalStep - 5) < 2)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Folders containing shared or locked notes can’t be turned into Smart Folders.";
LABEL_15:
        v9 = [v10 localizedStringForKey:v12 value:&stru_100661CF0 table:0];

        goto LABEL_16;
      }

      if (additionalStep == 4)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Folders with subfolders can’t be turned into Smart Folders.";
        goto LABEL_15;
      }
    }

    else
    {
      if (additionalStep < 3)
      {
        if (completionCopy)
        {
          completionCopy[2]();
        }

        v9 = 0;
        goto LABEL_16;
      }

      if (additionalStep == 3)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Shared folders can’t be turned into Smart Folders.";
        goto LABEL_15;
      }
    }

LABEL_16:
    presentingViewController = [(ICConvertToSmartFolderDecisionController *)self presentingViewController];
    [UIAlertController ic_showAlertWithTitle:v6 message:v9 viewController:presentingViewController];

    goto LABEL_17;
  }

  v4 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_18;
  }

  (completionCopy[2])(completionCopy);
LABEL_17:
  v4 = completionCopy;
LABEL_18:
}

- (NSString)tagDisplayText
{
  sourceFolder = [(ICConvertToSmartFolderDecisionController *)self sourceFolder];
  title = [sourceFolder title];
  ic_trimmedString = [title ic_trimmedString];
  ic_whitespaceAndNewlineCoalescedString = [ic_trimmedString ic_whitespaceAndNewlineCoalescedString];

  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [ic_whitespaceAndNewlineCoalescedString ic_stringByReplacingCharactersInSet:v6 withString:@"-"];

  return v7;
}

@end