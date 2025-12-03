@interface ICFolderCreationController
- (ICFolderCreationController)initWithViewController:(id)controller noteContainer:(id)container smartFolderQuery:(id)query folderTitle:(id)title creationApproach:(int64_t)approach;
- (ICNAEventReporter)eventReporter;
- (UIAlertController)editTitleAlert;
- (UIMenu)menu;
- (UIViewController)viewController;
- (id)accountMenuWithAccounts:(id)accounts;
- (id)sortDescriptorForDefaultAccountFirstWithKey:(id)key defaultAccount:(id)account;
- (void)_icaxAnnounceCreatedFolder:(id)folder;
- (void)createFolderInAccount:(id)account noteContainer:(id)container smartFolderQuery:(id)query folderTitle:(id)title completionHandler:(id)handler;
- (void)editTitleTextFieldChanged:(id)changed;
- (void)eventReporterLostSession:(id)session;
- (void)promptToAddFolderAllowingSmartFolder:(BOOL)folder showFilters:(BOOL)filters withCompletionHandler:(id)handler;
- (void)promptToAddFolderToAccount:(id)account allowsSmartFolder:(BOOL)folder showFilters:(BOOL)filters noteContainer:(id)container completionHandler:(id)handler;
- (void)promptToEnterNewFolderTitleWithAccount:(id)account completionHandler:(id)handler;
- (void)showFolderComposerWithAccount:(id)account showFilters:(BOOL)filters completion:(id)completion;
- (void)showFolderDepthLimitAlert;
@end

@implementation ICFolderCreationController

- (ICFolderCreationController)initWithViewController:(id)controller noteContainer:(id)container smartFolderQuery:(id)query folderTitle:(id)title creationApproach:(int64_t)approach
{
  controllerCopy = controller;
  containerCopy = container;
  queryCopy = query;
  titleCopy = title;
  v22.receiver = self;
  v22.super_class = ICFolderCreationController;
  v16 = [(ICFolderCreationController *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_viewController, controllerCopy);
    objc_storeStrong(&v17->_noteContainer, container);
    objc_storeStrong(&v17->_smartFolderQuery, query);
    objc_storeStrong(&v17->_folderTitle, title);
    v17->_creationApproach = approach;
    v18 = +[ICNoteContext sharedContext];
    managedObjectContext = [v18 managedObjectContext];
    viewContext = v17->_viewContext;
    v17->_viewContext = managedObjectContext;
  }

  return v17;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      viewController = [(ICFolderCreationController *)self viewController];
      viewIfLoaded = [viewController viewIfLoaded];

      if (viewIfLoaded)
      {
        v5 = [ICNAEventReporter alloc];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        viewController2 = [(ICFolderCreationController *)self viewController];
        view = [viewController2 view];
        v10 = [v5 initWithSubTrackerName:v7 view:view];
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

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

- (UIMenu)menu
{
  viewContext = [(ICFolderCreationController *)self viewContext];
  v4 = [ICAccount defaultAccountInContext:viewContext];
  v5 = [(ICFolderCreationController *)self sortDescriptorForDefaultAccountFirstWithKey:@"accountNameForAccountListSorting" defaultAccount:v4];

  viewContext2 = [(ICFolderCreationController *)self viewContext];
  v7 = [ICAccount allActiveAccountsInContext:viewContext2];
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

- (void)promptToAddFolderAllowingSmartFolder:(BOOL)folder showFilters:(BOOL)filters withCompletionHandler:(id)handler
{
  filtersCopy = filters;
  folderCopy = folder;
  handlerCopy = handler;
  noteContainer = [(ICFolderCreationController *)self noteContainer];
  isModernCustomFolder = [noteContainer isModernCustomFolder];

  if (!isModernCustomFolder)
  {
    noteContainer2 = [(ICFolderCreationController *)self noteContainer];
    if (noteContainer2)
    {
      noteContainer3 = [(ICFolderCreationController *)self noteContainer];
      [noteContainer3 noteContainerAccount];
    }

    else
    {
      noteContainer3 = [(ICFolderCreationController *)self viewContext];
      [ICAccount defaultAccountInContext:noteContainer3];
    }
    account = ;

    v11 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  noteContainer4 = [(ICFolderCreationController *)self noteContainer];
  v11 = ICCheckedDynamicCast();

  depth = [v11 depth];
  if (depth < +[ICFolder folderDepthLimit])
  {
    account = [v11 account];
LABEL_10:
    [(ICFolderCreationController *)self promptToAddFolderToAccount:account allowsSmartFolder:folderCopy showFilters:filtersCopy noteContainer:v11 completionHandler:handlerCopy];

    v11 = account;
    goto LABEL_11;
  }

  [(ICFolderCreationController *)self showFolderDepthLimitAlert];
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

LABEL_11:
}

- (id)sortDescriptorForDefaultAccountFirstWithKey:(id)key defaultAccount:(id)account
{
  keyCopy = key;
  v6 = [account valueForKey:keyCopy];
  v7 = v6;
  if (account && v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100064B08;
    v10[3] = &unk_100646848;
    v11 = v6;
    v8 = [NSSortDescriptor sortDescriptorWithKey:keyCopy ascending:1 comparator:v10];
  }

  else
  {
    v8 = [NSSortDescriptor sortDescriptorWithKey:keyCopy ascending:1];
  }

  return v8;
}

- (id)accountMenuWithAccounts:(id)accounts
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064C88;
  v6[3] = &unk_100646898;
  v6[4] = self;
  v3 = [accounts ic_compactMap:v6];
  v4 = [UIMenu menuWithChildren:v3];

  return v4;
}

- (void)promptToAddFolderToAccount:(id)account allowsSmartFolder:(BOOL)folder showFilters:(BOOL)filters noteContainer:(id)container completionHandler:(id)handler
{
  filtersCopy = filters;
  accountCopy = account;
  containerCopy = container;
  handlerCopy = handler;
  if (containerCopy || !folder)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100064FA8;
    v21[3] = &unk_1006468C0;
    v21[4] = self;
    v22 = accountCopy;
    v23 = containerCopy;
    v24 = handlerCopy;
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
    v16 = accountCopy;
    v17 = 0;
    v18 = handlerCopy;
    [(ICFolderCreationController *)self showFolderComposerWithAccount:v16 showFilters:filtersCopy completion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)createFolderInAccount:(id)account noteContainer:(id)container smartFolderQuery:(id)query folderTitle:(id)title completionHandler:(id)handler
{
  accountCopy = account;
  containerCopy = container;
  queryCopy = query;
  titleCopy = title;
  handlerCopy = handler;
  if ([titleCopy length] && (-[ICFolderCreationController viewController](self, "viewController"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    if (accountCopy || (+[ICNoteContext enableLocalAccount](ICNoteContext, "enableLocalAccount"), +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v18 = objc_claimAutoreleasedReturnValue(), [v18 addOrDeleteLocalAccountIfNecessary], v18, +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "save"), v19, -[ICFolderCreationController viewContext](self, "viewContext"), v20 = objc_claimAutoreleasedReturnValue(), +[ICAccount localAccountInContext:](ICAccount, "localAccountInContext:", v20), accountCopy = objc_claimAutoreleasedReturnValue(), v20, accountCopy))
    {
      objc_opt_class();
      v46 = containerCopy;
      v21 = ICDynamicCast();
      if (queryCopy)
      {
        v22 = [ICFolder smartFolderWithQuery:queryCopy account:accountCopy];
      }

      else
      {
        v22 = [ICFolder newFolderInAccount:accountCopy];
      }

      v23 = v22;
      v24 = [ICFolder deduplicatingTitle:titleCopy forFolder:v22 forNewFolderParent:v21 ofAccount:accountCopy];
      [v23 setTitle:v24];

      v25 = +[NSDate now];
      [v23 setDateForLastTitleModification:v25];

      if (v21)
      {
        identifier = [accountCopy identifier];
        account = [v21 account];
        identifier2 = [account identifier];

        if ([identifier2 isEqualToString:identifier])
        {
          [v23 setParent:v21];
        }
      }

      v48 = 0;
      v29 = [v23 isTitleValid:titleCopy error:&v48];
      v30 = v48;
      v45 = queryCopy;
      if (v29)
      {
        v31 = [v23 persistCreateActivityEventForObject:v23 inParentObject:v21];
        [v23 updateChangeCountWithReason:@"Created folder"];
        v32 = +[ICNoteContext sharedContext];
        [v32 save];

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v23);
        }

        v47 = v23;
        ICAccessibilityPerformBlockOnMainThreadAfterDelay();
        eventReporter = [(ICFolderCreationController *)self eventReporter];
        creationApproach = [(ICFolderCreationController *)self creationApproach];
        filterSelection = [(ICFolderCreationController *)self filterSelection];
        [eventReporter submitFolderCreateEventForModernFolder:v47 creationApproach:creationApproach filterSelection:filterSelection];

        v36 = +[NSNotificationCenter defaultCenter];
        objectID = [v47 objectID];
        [v36 postNotificationName:@"ICFolderCreationControllerFolderWasCreatedNotification" object:objectID];
      }

      else
      {
        viewController = [(ICFolderCreationController *)self viewController];
        userInfo = [v30 userInfo];
        [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
        v44 = v21;
        v41 = v40 = v30;
        userInfo2 = [v40 userInfo];
        v43 = [userInfo2 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
        [viewController ic_showSingleButtonAlertWithTitle:v41 message:v43];

        v30 = v40;
        v21 = v44;

        [ICFolder deleteFolder:v23];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }
      }

      queryCopy = v45;
      containerCopy = v46;
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICFolderCreationController createFolderInAccount:noteContainer:smartFolderQuery:folderTitle:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unable to determine or create account"];
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }

      accountCopy = 0;
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)promptToEnterNewFolderTitleWithAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  viewController = [(ICFolderCreationController *)self viewController];

  if (viewController)
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
    v12 = handlerCopy;
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
    viewController2 = [(ICFolderCreationController *)self viewController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100065B2C;
    v22[3] = &unk_100645E30;
    v23 = v16;
    v19 = v16;
    [viewController2 presentViewController:v19 animated:1 completion:v22];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, &stru_100661CF0);
  }
}

- (void)editTitleTextFieldChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  v22 = ICDynamicCast();

  text = [v22 text];
  objc_opt_class();
  editTitleAlert = [(ICFolderCreationController *)self editTitleAlert];
  actions = [editTitleAlert actions];
  v8 = [actions objectAtIndex:1];
  v9 = ICDynamicCast();

  if (v22)
  {
    editTitleAlert2 = [(ICFolderCreationController *)self editTitleAlert];

    if (editTitleAlert2)
    {
      v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v12 = [text stringByTrimmingCharactersInSet:v11];

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
        accessibilityTraits = [v14 accessibilityTraits];
        v16 = UIAccessibilityTraitNotEnabled | accessibilityTraits;
      }

      [v14 setAccessibilityTraits:v16];
    }
  }

  v18 = [ICFolder stringByScrubbingStringForFolderName:text];
  if (([text isEqualToString:v18] & 1) == 0)
  {
    selectionRange = [v22 selectionRange];
    v21 = v20;
    [v22 setText:v18];
    if (&selectionRange[v21] < [v18 length])
    {
      [v22 setSelectionRange:{selectionRange, v21}];
    }
  }
}

- (void)showFolderDepthLimitAlert
{
  viewController = [(ICFolderCreationController *)self viewController];

  if (viewController)
  {
    v4 = +[NSBundle mainBundle];
    v10 = [v4 localizedStringForKey:@"Can’t add folder" value:&stru_100661CF0 table:0];

    v5 = +[ICFolder folderDepthLimit]+ 1;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FOLDER_DEPTH_LIMIT_MESSAGE_%lu" value:&stru_100661CF0 table:0];

    v8 = [NSString localizedStringWithFormat:v7, v5];
    viewController2 = [(ICFolderCreationController *)self viewController];
    [UIAlertController ic_showAlertWithTitle:v10 message:v8 viewController:viewController2];
  }
}

- (void)showFolderComposerWithAccount:(id)account showFilters:(BOOL)filters completion:(id)completion
{
  filtersCopy = filters;
  accountCopy = account;
  completionCopy = completion;
  viewController = [(ICFolderCreationController *)self viewController];

  if (viewController)
  {
    v10 = [ICFolderComposerViewController alloc];
    folderTitle = [(ICFolderCreationController *)self folderTitle];
    smartFolderQuery = [(ICFolderCreationController *)self smartFolderQuery];
    v13 = [(ICFolderComposerViewController *)v10 initWithAccount:accountCopy folderTitle:folderTitle smartFolderQuery:smartFolderQuery showFilters:filtersCopy completion:completionCopy];

    ic_embedInNavigationControllerForModalPresentation = [(ICFolderComposerViewController *)v13 ic_embedInNavigationControllerForModalPresentation];
    viewController2 = [(ICFolderCreationController *)self viewController];
    [viewController2 presentViewController:ic_embedInNavigationControllerForModalPresentation animated:1 completion:0];
  }
}

- (void)_icaxAnnounceCreatedFolder:(id)folder
{
  folderCopy = folder;
  v4 = +[NSBundle mainBundle];
  v7 = [v4 localizedStringForKey:@"Created folder: %@" value:&stru_100661CF0 table:0];

  title = [folderCopy title];

  v6 = [NSString localizedStringWithFormat:v7, title];

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