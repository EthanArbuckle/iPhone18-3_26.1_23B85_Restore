@interface ICDeleteDecisionController
+ (void)deleteHTMLFoldersIfNeeded:(id)needed eventReporter:(id)reporter;
+ (void)deleteHTMLNotesIfNeeded:(id)needed eventReporter:(id)reporter;
+ (void)deleteModernFoldersIfNeeded:(id)needed eventReporter:(id)reporter completion:(id)completion;
+ (void)deleteModernNotesIfNeeded:(id)needed eventReporter:(id)reporter completion:(id)completion;
+ (void)deleteSharesInFolder:(id)folder completion:(id)completion;
- (BOOL)allowsRecentlyDeletedFolderAlert;
- (ICDeleteDecisionController)initWithSourceObjects:(id)objects allowsRecentlyDeletedFolderAlert:(BOOL)alert window:(id)window sender:(id)sender eventReporter:(id)reporter;
- (ICDeleteDecisionController)initWithSourceObjects:(id)objects presenter:(id)presenter eventReporter:(id)reporter options:(unint64_t)options;
- (ICNAEventReporter)eventReporter;
- (NSString)actionName;
- (UIWindow)window;
- (id)sender;
- (void)authenticateIfNeededWithCompletion:(id)completion;
- (void)commonInitWithSourceObjects:(id)objects presenter:(id)presenter options:(unint64_t)options;
- (void)deleteHTMLFoldersIfNeeded;
- (void)deleteHTMLNotesIfNeeded;
- (void)deleteModernFoldersIfNeeded:(id)needed;
- (void)deleteModernNotesIfNeeded:(id)needed;
- (void)deleteObjects;
- (void)eventReporterLostSession:(id)session;
- (void)performAdditionalStepWithCompletion:(id)completion;
- (void)performDecisionWithCompletion:(id)completion;
@end

@implementation ICDeleteDecisionController

- (ICDeleteDecisionController)initWithSourceObjects:(id)objects presenter:(id)presenter eventReporter:(id)reporter options:(unint64_t)options
{
  objectsCopy = objects;
  presenterCopy = presenter;
  reporterCopy = reporter;
  v16.receiver = self;
  v16.super_class = ICDeleteDecisionController;
  v13 = [(ICDeleteDecisionController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_eventReporter, reporter);
    [(ICDeleteDecisionController *)v14 commonInitWithSourceObjects:objectsCopy presenter:presenterCopy options:options];
  }

  return v14;
}

- (void)commonInitWithSourceObjects:(id)objects presenter:(id)presenter options:(unint64_t)options
{
  objectsCopy = objects;
  presenterCopy = presenter;
  self->_didAuthenticate = 0;
  sourceObjects = self->_sourceObjects;
  self->_sourceObjects = objectsCopy;
  v14 = objectsCopy;

  v11 = [[ICDeleteDecision alloc] initWithSourceObjects:v14 options:options];
  deleteDecision = self->_deleteDecision;
  self->_deleteDecision = v11;

  alertPresenter = self->_alertPresenter;
  self->_alertPresenter = presenterCopy;
}

- (ICDeleteDecisionController)initWithSourceObjects:(id)objects allowsRecentlyDeletedFolderAlert:(BOOL)alert window:(id)window sender:(id)sender eventReporter:(id)reporter
{
  alertCopy = alert;
  objectsCopy = objects;
  windowCopy = window;
  senderCopy = sender;
  reporterCopy = reporter;
  v19.receiver = self;
  v19.super_class = ICDeleteDecisionController;
  v16 = [(ICDeleteDecisionController *)&v19 init];
  if (v16)
  {
    v17 = [[ICWindowDeletionAlertPresenter alloc] initWithWindow:windowCopy sender:senderCopy];
    [(ICDeleteDecisionController *)v16 commonInitWithSourceObjects:objectsCopy presenter:v17 options:!alertCopy];
    objc_storeWeak(&v16->_sender, senderCopy);
    objc_storeStrong(&v16->_eventReporter, reporter);
  }

  return v16;
}

- (UIWindow)window
{
  objc_opt_class();
  alertPresenter = [(ICDeleteDecisionController *)self alertPresenter];
  v4 = ICDynamicCast();
  window = [v4 window];

  return window;
}

- (BOOL)allowsRecentlyDeletedFolderAlert
{
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  allowsRecentlyDeletedFolderAlert = [deleteDecision allowsRecentlyDeletedFolderAlert];

  return allowsRecentlyDeletedFolderAlert;
}

- (void)performDecisionWithCompletion:(id)completion
{
  completionCopy = completion;
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  type = [deleteDecision type];

  if (type == 2)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else if (type == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A9CD8;
    v7[3] = &unk_100647F90;
    v7[4] = self;
    v8 = completionCopy;
    [(ICDeleteDecisionController *)self performAdditionalStepWithCompletion:v7];
  }

  else if (!type)
  {
    [(ICDeleteDecisionController *)self deleteObjects];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

+ (void)deleteSharesInFolder:(id)folder completion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
  if ([folderCopy isSmartFolder])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v6 = +[NSMutableArray array];
    rootSharedFoldersInDescendantsIncludingSelf = [folderCopy rootSharedFoldersInDescendantsIncludingSelf];
    [v6 addObjectsFromArray:rootSharedFoldersInDescendantsIncludingSelf];

    rootSharedNotesIncludingChildFolders = [folderCopy rootSharedNotesIncludingChildFolders];
    [v6 addObjectsFromArray:rootSharedNotesIncludingChildFolders];

    if ([v6 count])
    {
      v9 = +[ICCloudContext sharedContext];
      v10 = [v6 copy];
      [v9 deleteSharesForObjects:v10 completionHandler:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = kICNASubtrackerNameDeleteDecisionController;
    window = [(ICDeleteDecisionController *)self window];
    v6 = [v3 initWithSubTrackerName:v4 window:window];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
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

- (NSString)actionName
{
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  modernFolders = [deleteDecision modernFolders];
  if ([modernFolders count])
  {
  }

  else
  {
    htmlFolders = [deleteDecision htmlFolders];
    v5 = [htmlFolders count];

    if (!v5)
    {
      htmlNotes = [deleteDecision htmlNotes];
      v10 = [htmlNotes count];

      modernNotes = [deleteDecision modernNotes];
      v12 = [modernNotes count];

      modernNotes2 = [deleteDecision modernNotes];
      firstObject = [modernNotes2 firstObject];
      folder = [firstObject folder];
      isTrashFolder = [folder isTrashFolder];

      v17 = (v10 != 0) | isTrashFolder;
      if (v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v12;
      }

      if ((v10 != 0) | isTrashFolder & 1)
      {
        v19 = @"Delete %lu Notes";
      }

      else
      {
        v19 = @"Trash %lu Notes";
      }

      if (v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = v12;
      }

      v6 = +[NSBundle mainBundle];
      v21 = [v6 localizedStringForKey:v19 value:&stru_100661CF0 table:0];
      v7 = [NSString localizedStringWithFormat:v21, v20];

      goto LABEL_5;
    }
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Delete Folder" value:&stru_100661CF0 table:0];
LABEL_5:

  return v7;
}

- (void)authenticateIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  modernSourceObjects = [deleteDecision modernSourceObjects];
  if (![modernSourceObjects count])
  {

    goto LABEL_7;
  }

  didAuthenticate = [(ICDeleteDecisionController *)self didAuthenticate];

  if (didAuthenticate)
  {
LABEL_7:
    completionCopy[2](completionCopy, 1);
    goto LABEL_19;
  }

  deleteDecision2 = [(ICDeleteDecisionController *)self deleteDecision];
  modernFolders = [deleteDecision2 modernFolders];

  if ([modernFolders count] && objc_msgSend(modernFolders, "ic_allSatisfy:", &stru_100647FD0))
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    deleteDecision3 = [(ICDeleteDecisionController *)self deleteDecision];
    modernNotes = [deleteDecision3 modernNotes];

    if (![modernNotes count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      deleteDecision4 = [(ICDeleteDecisionController *)self deleteDecision];
      modernFolders2 = [deleteDecision4 modernFolders];

      v14 = [modernFolders2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = *v27;
        do
        {
          v16 = 0;
          v17 = modernNotes;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(modernFolders2);
            }

            visibleNotesIncludingChildFolders = [*(*(&v26 + 1) + 8 * v16) visibleNotesIncludingChildFolders];
            modernNotes = [v17 ic_arrayByAddingObjectsFromNonNilArray:visibleNotesIncludingChildFolders];

            v16 = v16 + 1;
            v17 = modernNotes;
          }

          while (v14 != v16);
          v14 = [modernFolders2 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }
    }

    objc_initWeak(&location, self);
    v19 = [ICAuthenticationPrompt promptForDeletingNotes:modernNotes];
    v20 = +[ICAuthentication shared];
    window = [(ICDeleteDecisionController *)self window];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AA5BC;
    v22[3] = &unk_100647FF8;
    objc_copyWeak(&v24, &location);
    v23 = completionCopy;
    [v20 authenticateWithPrompt:v19 displayWindow:window completionHandler:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

LABEL_19:
}

- (void)deleteObjects
{
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICDeleteDecisionController deleteObjects]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = +[ICAuthenticationState sharedState];
  [v3 extendDeauthenticationTimer];

  [(ICDeleteDecisionController *)self setDidAuthenticate:0];
  v4 = +[ICAppDelegate sharedInstance];
  undoManager = [v4 undoManager];

  [undoManager beginUndoGrouping];
  actionName = [(ICDeleteDecisionController *)self actionName];
  [undoManager setActionName:actionName];

  [(ICDeleteDecisionController *)self deleteHTMLNotesIfNeeded];
  [(ICDeleteDecisionController *)self deleteHTMLFoldersIfNeeded];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA7A0;
  v8[3] = &unk_100645BA0;
  v8[4] = self;
  v9 = undoManager;
  v7 = undoManager;
  [(ICDeleteDecisionController *)self deleteModernNotesIfNeeded:v8];
}

- (void)deleteHTMLNotesIfNeeded
{
  v3 = objc_opt_class();
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  htmlNotes = [deleteDecision htmlNotes];
  eventReporter = [(ICDeleteDecisionController *)self eventReporter];
  [v3 deleteHTMLNotesIfNeeded:htmlNotes eventReporter:eventReporter];
}

+ (void)deleteHTMLNotesIfNeeded:(id)needed eventReporter:(id)reporter
{
  neededCopy = needed;
  reporterCopy = reporter;
  if ([neededCopy count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = neededCopy;
    obj = neededCopy;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = os_log_create("com.apple.notes", "Delete");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting HTML note: %@", buf, 0xCu);
          }

          objc_opt_class();
          v13 = ICDynamicCast();
          v14 = +[NotesApp sharedNotesApp];
          noteContext = [v14 noteContext];
          [noteContext deleteNote:v13];

          v16 = +[NotesApp sharedNotesApp];
          noteContext2 = [v16 noteContext];
          managedObjectContext = [noteContext2 managedObjectContext];
          [managedObjectContext ic_save];

          [reporterCopy submitNoteDeleteEventForHTMLNote:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }

    neededCopy = v19;
  }
}

- (void)deleteHTMLFoldersIfNeeded
{
  v3 = objc_opt_class();
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  htmlFolders = [deleteDecision htmlFolders];
  eventReporter = [(ICDeleteDecisionController *)self eventReporter];
  [v3 deleteHTMLFoldersIfNeeded:htmlFolders eventReporter:eventReporter];
}

+ (void)deleteHTMLFoldersIfNeeded:(id)needed eventReporter:(id)reporter
{
  neededCopy = needed;
  if ([neededCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = neededCopy;
    v5 = neededCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = os_log_create("com.apple.notes", "Delete");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting HTML folder: %@", buf, 0xCu);
          }

          v12 = os_log_create("com.apple.notes", "Delete");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting HTML folders is unsupported on iOS.", buf, 2u);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    neededCopy = v13;
  }
}

- (void)deleteModernNotesIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = objc_opt_class();
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  modernNotes = [deleteDecision modernNotes];
  eventReporter = [(ICDeleteDecisionController *)self eventReporter];
  [v5 deleteModernNotesIfNeeded:modernNotes eventReporter:eventReporter completion:neededCopy];
}

+ (void)deleteModernNotesIfNeeded:(id)needed eventReporter:(id)reporter completion:(id)completion
{
  neededCopy = needed;
  reporterCopy = reporter;
  completionCopy = completion;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [neededCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(neededCopy);
        }

        [reporterCopy submitNoteDeleteEventForModernNote:*(*(&v20 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [neededCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = +[ICCloudContext sharedContext];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AB008;
  v17[3] = &unk_100645570;
  v18 = neededCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = neededCopy;
  [v14 deleteSharesForObjects:v16 completionHandler:v17];
}

- (void)deleteModernFoldersIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = objc_opt_class();
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  modernFolders = [deleteDecision modernFolders];
  eventReporter = [(ICDeleteDecisionController *)self eventReporter];
  [v5 deleteModernFoldersIfNeeded:modernFolders eventReporter:eventReporter completion:neededCopy];
}

+ (void)deleteModernFoldersIfNeeded:(id)needed eventReporter:(id)reporter completion:(id)completion
{
  neededCopy = needed;
  reporterCopy = reporter;
  completionCopy = completion;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = neededCopy;
  v9 = [neededCopy countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [reporterCopy submitFolderDeleteEventForModernFolder:*(*(&v34 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if ([obj count])
  {
    v12 = dispatch_group_create();
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = obj;
    v13 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v13)
    {
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v19);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          dispatch_group_enter(v12);
          ++v31[3];
          v17 = objc_opt_class();
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000AB590;
          v23[3] = &unk_100648040;
          v23[4] = v16;
          v24 = v12;
          v25 = &v30;
          [v17 deleteSharesInFolder:v16 completion:v23];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v13);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AB764;
    block[3] = &unk_100645CC8;
    v22 = completionCopy;
    dispatch_group_notify(v12, &_dispatch_main_q, block);

    _Block_object_dispose(&v30, 8);
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)performAdditionalStepWithCompletion:(id)completion
{
  completionCopy = completion;
  deleteDecision = [(ICDeleteDecisionController *)self deleteDecision];
  additionalStep = [deleteDecision additionalStep];

  switch(additionalStep)
  {
    case 0uLL:
      completionCopy[2](completionCopy, 0);
      goto LABEL_42;
    case 1uLL:
      deleteDecision2 = [(ICDeleteDecisionController *)self deleteDecision];
      modernNotes = [deleteDecision2 modernNotes];
      v21 = [modernNotes count];

      if (v21 == 1)
      {
        v18 = 0;
        goto LABEL_32;
      }

      deleteDecision3 = [(ICDeleteDecisionController *)self deleteDecision];
      containsUnsharedObjects = [deleteDecision3 containsUnsharedObjects];

      v31 = containsUnsharedObjects == 0;
      v32 = 1;
      goto LABEL_29;
    case 2uLL:
      if ([(ICDeleteDecisionController *)self shouldBypassDeleteFolderAlerts])
      {
        goto LABEL_21;
      }

      v13 = [ICDeleteAlert alloc];
      v14 = 3;
      goto LABEL_34;
    case 3uLL:
      deleteDecision4 = [(ICDeleteDecisionController *)self deleteDecision];
      modernNotes2 = [deleteDecision4 modernNotes];
      v17 = [modernNotes2 count];

      if (v17 == 1)
      {
        v18 = 4;
      }

      else
      {
        deleteDecision5 = [(ICDeleteDecisionController *)self deleteDecision];
        containsUnsharedObjects2 = [deleteDecision5 containsUnsharedObjects];

        v31 = containsUnsharedObjects2 == 0;
        v32 = 5;
LABEL_29:
        if (v31)
        {
          v18 = v32;
        }

        else
        {
          v18 = v32 + 1;
        }
      }

LABEL_32:
      v35 = [ICDeleteAlert alloc];
      deleteDecision6 = [(ICDeleteDecisionController *)self deleteDecision];
      modernNotes3 = [deleteDecision6 modernNotes];
      v27 = -[ICDeleteAlert initWithAlertType:count:](v35, "initWithAlertType:count:", v18, [modernNotes3 count]);

      goto LABEL_35;
    case 4uLL:
      if ([(ICDeleteDecisionController *)self shouldBypassDeleteFolderAlerts])
      {
        goto LABEL_21;
      }

      v13 = [ICDeleteAlert alloc];
      v14 = 7;
      goto LABEL_34;
    case 5uLL:
      deleteDecision7 = [(ICDeleteDecisionController *)self deleteDecision];
      guiltyObjects = [deleteDecision7 guiltyObjects];
      if ([guiltyObjects count] == 1)
      {
        v24 = 8;
      }

      else
      {
        v24 = 9;
      }

      v25 = [ICDeleteAlert alloc];
      deleteDecision8 = [(ICDeleteDecisionController *)self deleteDecision];
      guiltyObjects2 = [deleteDecision8 guiltyObjects];
      v27 = -[ICDeleteAlert initWithAlertType:count:](v25, "initWithAlertType:count:", v24, [guiltyObjects2 count]);

      goto LABEL_26;
    case 6uLL:
      if ([(ICDeleteDecisionController *)self shouldBypassDeleteFolderAlerts])
      {
LABEL_21:
        completionCopy[2](completionCopy, 1);
      }

      else
      {
        v13 = [ICDeleteAlert alloc];
        v14 = 10;
LABEL_34:
        v27 = [(ICDeleteAlert *)v13 initWithAlertType:v14 count:1];
LABEL_35:
        if (v27)
        {
          alertPresenter = self->_alertPresenter;
          if (alertPresenter)
          {
            [(ICDeletionAlertPresenter *)alertPresenter presentAlert:v27 withCompletion:completionCopy];
          }

          else
          {
            v39 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              sub_1004DCA48(self, v27, v39);
            }
          }
        }
      }

LABEL_42:

      return;
    case 7uLL:
      v13 = [ICDeleteAlert alloc];
      v14 = 13;
      goto LABEL_34;
    case 8uLL:
      v28 = [ICDeleteAlert alloc];
      deleteDecision8 = [(ICDeleteDecisionController *)self deleteDecision];
      guiltyObjects3 = [deleteDecision8 guiltyObjects];
      v10 = [guiltyObjects3 count];
      v11 = v28;
      v12 = 11;
      goto LABEL_25;
    case 9uLL:
      v13 = [ICDeleteAlert alloc];
      v14 = 12;
      goto LABEL_34;
    case 0xAuLL:
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000ABBF0;
      v40[3] = &unk_100647F90;
      v40[4] = self;
      v41 = completionCopy;
      [(ICDeleteDecisionController *)self authenticateIfNeededWithCompletion:v40];

      goto LABEL_42;
    case 0xBuLL:
      [ICDeleteDecision setDidShowMoveToRecentlyDeletedFolderAlert:1];
      v7 = [ICDeleteAlert alloc];
      deleteDecision8 = [(ICDeleteDecisionController *)self deleteDecision];
      guiltyObjects3 = [deleteDecision8 guiltyObjects];
      v10 = [guiltyObjects3 count];
      v11 = v7;
      v12 = 15;
LABEL_25:
      v27 = [(ICDeleteAlert *)v11 initWithAlertType:v12 count:v10];

LABEL_26:
      goto LABEL_35;
    case 0xCuLL:
      v13 = [ICDeleteAlert alloc];
      v14 = 17;
      goto LABEL_34;
    case 0xDuLL:
      [(ICDeleteDecisionController *)self authenticateIfNeededWithCompletion:completionCopy];
      goto LABEL_42;
    default:
      goto LABEL_42;
  }
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end