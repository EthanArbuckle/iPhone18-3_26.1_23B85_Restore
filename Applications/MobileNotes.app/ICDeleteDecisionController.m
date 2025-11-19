@interface ICDeleteDecisionController
+ (void)deleteHTMLFoldersIfNeeded:(id)a3 eventReporter:(id)a4;
+ (void)deleteHTMLNotesIfNeeded:(id)a3 eventReporter:(id)a4;
+ (void)deleteModernFoldersIfNeeded:(id)a3 eventReporter:(id)a4 completion:(id)a5;
+ (void)deleteModernNotesIfNeeded:(id)a3 eventReporter:(id)a4 completion:(id)a5;
+ (void)deleteSharesInFolder:(id)a3 completion:(id)a4;
- (BOOL)allowsRecentlyDeletedFolderAlert;
- (ICDeleteDecisionController)initWithSourceObjects:(id)a3 allowsRecentlyDeletedFolderAlert:(BOOL)a4 window:(id)a5 sender:(id)a6 eventReporter:(id)a7;
- (ICDeleteDecisionController)initWithSourceObjects:(id)a3 presenter:(id)a4 eventReporter:(id)a5 options:(unint64_t)a6;
- (ICNAEventReporter)eventReporter;
- (NSString)actionName;
- (UIWindow)window;
- (id)sender;
- (void)authenticateIfNeededWithCompletion:(id)a3;
- (void)commonInitWithSourceObjects:(id)a3 presenter:(id)a4 options:(unint64_t)a5;
- (void)deleteHTMLFoldersIfNeeded;
- (void)deleteHTMLNotesIfNeeded;
- (void)deleteModernFoldersIfNeeded:(id)a3;
- (void)deleteModernNotesIfNeeded:(id)a3;
- (void)deleteObjects;
- (void)eventReporterLostSession:(id)a3;
- (void)performAdditionalStepWithCompletion:(id)a3;
- (void)performDecisionWithCompletion:(id)a3;
@end

@implementation ICDeleteDecisionController

- (ICDeleteDecisionController)initWithSourceObjects:(id)a3 presenter:(id)a4 eventReporter:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = ICDeleteDecisionController;
  v13 = [(ICDeleteDecisionController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_eventReporter, a5);
    [(ICDeleteDecisionController *)v14 commonInitWithSourceObjects:v10 presenter:v11 options:a6];
  }

  return v14;
}

- (void)commonInitWithSourceObjects:(id)a3 presenter:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  self->_didAuthenticate = 0;
  sourceObjects = self->_sourceObjects;
  self->_sourceObjects = v8;
  v14 = v8;

  v11 = [[ICDeleteDecision alloc] initWithSourceObjects:v14 options:a5];
  deleteDecision = self->_deleteDecision;
  self->_deleteDecision = v11;

  alertPresenter = self->_alertPresenter;
  self->_alertPresenter = v9;
}

- (ICDeleteDecisionController)initWithSourceObjects:(id)a3 allowsRecentlyDeletedFolderAlert:(BOOL)a4 window:(id)a5 sender:(id)a6 eventReporter:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = ICDeleteDecisionController;
  v16 = [(ICDeleteDecisionController *)&v19 init];
  if (v16)
  {
    v17 = [[ICWindowDeletionAlertPresenter alloc] initWithWindow:v13 sender:v14];
    [(ICDeleteDecisionController *)v16 commonInitWithSourceObjects:v12 presenter:v17 options:!v10];
    objc_storeWeak(&v16->_sender, v14);
    objc_storeStrong(&v16->_eventReporter, a7);
  }

  return v16;
}

- (UIWindow)window
{
  objc_opt_class();
  v3 = [(ICDeleteDecisionController *)self alertPresenter];
  v4 = ICDynamicCast();
  v5 = [v4 window];

  return v5;
}

- (BOOL)allowsRecentlyDeletedFolderAlert
{
  v2 = [(ICDeleteDecisionController *)self deleteDecision];
  v3 = [v2 allowsRecentlyDeletedFolderAlert];

  return v3;
}

- (void)performDecisionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDeleteDecisionController *)self deleteDecision];
  v6 = [v5 type];

  if (v6 == 2)
  {
    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else if (v6 == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A9CD8;
    v7[3] = &unk_100647F90;
    v7[4] = self;
    v8 = v4;
    [(ICDeleteDecisionController *)self performAdditionalStepWithCompletion:v7];
  }

  else if (!v6)
  {
    [(ICDeleteDecisionController *)self deleteObjects];
    if (v4)
    {
      v4[2](v4, 1);
    }
  }
}

+ (void)deleteSharesInFolder:(id)a3 completion:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v11 isSmartFolder])
  {
    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [v11 rootSharedFoldersInDescendantsIncludingSelf];
    [v6 addObjectsFromArray:v7];

    v8 = [v11 rootSharedNotesIncludingChildFolders];
    [v6 addObjectsFromArray:v8];

    if ([v6 count])
    {
      v9 = +[ICCloudContext sharedContext];
      v10 = [v6 copy];
      [v9 deleteSharesForObjects:v10 completionHandler:v5];
    }

    else if (v5)
    {
      v5[2](v5, 0);
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = kICNASubtrackerNameDeleteDecisionController;
    v5 = [(ICDeleteDecisionController *)self window];
    v6 = [v3 initWithSubTrackerName:v4 window:v5];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
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

- (NSString)actionName
{
  v2 = [(ICDeleteDecisionController *)self deleteDecision];
  v3 = [v2 modernFolders];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [v2 htmlFolders];
    v5 = [v4 count];

    if (!v5)
    {
      v9 = [v2 htmlNotes];
      v10 = [v9 count];

      v11 = [v2 modernNotes];
      v12 = [v11 count];

      v13 = [v2 modernNotes];
      v14 = [v13 firstObject];
      v15 = [v14 folder];
      v16 = [v15 isTrashFolder];

      v17 = (v10 != 0) | v16;
      if (v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v12;
      }

      if ((v10 != 0) | v16 & 1)
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

- (void)authenticateIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDeleteDecisionController *)self deleteDecision];
  v6 = [v5 modernSourceObjects];
  if (![v6 count])
  {

    goto LABEL_7;
  }

  v7 = [(ICDeleteDecisionController *)self didAuthenticate];

  if (v7)
  {
LABEL_7:
    v4[2](v4, 1);
    goto LABEL_19;
  }

  v8 = [(ICDeleteDecisionController *)self deleteDecision];
  v9 = [v8 modernFolders];

  if ([v9 count] && objc_msgSend(v9, "ic_allSatisfy:", &stru_100647FD0))
  {
    v4[2](v4, 1);
  }

  else
  {
    v10 = [(ICDeleteDecisionController *)self deleteDecision];
    v11 = [v10 modernNotes];

    if (![v11 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = [(ICDeleteDecisionController *)self deleteDecision];
      v13 = [v12 modernFolders];

      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = *v27;
        do
        {
          v16 = 0;
          v17 = v11;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v26 + 1) + 8 * v16) visibleNotesIncludingChildFolders];
            v11 = [v17 ic_arrayByAddingObjectsFromNonNilArray:v18];

            v16 = v16 + 1;
            v17 = v11;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }
    }

    objc_initWeak(&location, self);
    v19 = [ICAuthenticationPrompt promptForDeletingNotes:v11];
    v20 = +[ICAuthentication shared];
    v21 = [(ICDeleteDecisionController *)self window];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AA5BC;
    v22[3] = &unk_100647FF8;
    objc_copyWeak(&v24, &location);
    v23 = v4;
    [v20 authenticateWithPrompt:v19 displayWindow:v21 completionHandler:v22];

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
  v5 = [v4 undoManager];

  [v5 beginUndoGrouping];
  v6 = [(ICDeleteDecisionController *)self actionName];
  [v5 setActionName:v6];

  [(ICDeleteDecisionController *)self deleteHTMLNotesIfNeeded];
  [(ICDeleteDecisionController *)self deleteHTMLFoldersIfNeeded];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA7A0;
  v8[3] = &unk_100645BA0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(ICDeleteDecisionController *)self deleteModernNotesIfNeeded:v8];
}

- (void)deleteHTMLNotesIfNeeded
{
  v3 = objc_opt_class();
  v6 = [(ICDeleteDecisionController *)self deleteDecision];
  v4 = [v6 htmlNotes];
  v5 = [(ICDeleteDecisionController *)self eventReporter];
  [v3 deleteHTMLNotesIfNeeded:v4 eventReporter:v5];
}

+ (void)deleteHTMLNotesIfNeeded:(id)a3 eventReporter:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v5;
    obj = v5;
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
          v15 = [v14 noteContext];
          [v15 deleteNote:v13];

          v16 = +[NotesApp sharedNotesApp];
          v17 = [v16 noteContext];
          v18 = [v17 managedObjectContext];
          [v18 ic_save];

          [v6 submitNoteDeleteEventForHTMLNote:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }

    v5 = v19;
  }
}

- (void)deleteHTMLFoldersIfNeeded
{
  v3 = objc_opt_class();
  v6 = [(ICDeleteDecisionController *)self deleteDecision];
  v4 = [v6 htmlFolders];
  v5 = [(ICDeleteDecisionController *)self eventReporter];
  [v3 deleteHTMLFoldersIfNeeded:v4 eventReporter:v5];
}

+ (void)deleteHTMLFoldersIfNeeded:(id)a3 eventReporter:(id)a4
{
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = v4;
    v5 = v4;
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

    v4 = v13;
  }
}

- (void)deleteModernNotesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = [(ICDeleteDecisionController *)self deleteDecision];
  v6 = [v8 modernNotes];
  v7 = [(ICDeleteDecisionController *)self eventReporter];
  [v5 deleteModernNotesIfNeeded:v6 eventReporter:v7 completion:v4];
}

+ (void)deleteModernNotesIfNeeded:(id)a3 eventReporter:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        [v8 submitNoteDeleteEventForModernNote:*(*(&v20 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = +[ICCloudContext sharedContext];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AB008;
  v17[3] = &unk_100645570;
  v18 = v7;
  v19 = v9;
  v15 = v9;
  v16 = v7;
  [v14 deleteSharesForObjects:v16 completionHandler:v17];
}

- (void)deleteModernFoldersIfNeeded:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = [(ICDeleteDecisionController *)self deleteDecision];
  v6 = [v8 modernFolders];
  v7 = [(ICDeleteDecisionController *)self eventReporter];
  [v5 deleteModernFoldersIfNeeded:v6 eventReporter:v7 completion:v4];
}

+ (void)deleteModernFoldersIfNeeded:(id)a3 eventReporter:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v18 = a5;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
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

        [v8 submitFolderDeleteEventForModernFolder:*(*(&v34 + 1) + 8 * v11)];
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
    v22 = v18;
    dispatch_group_notify(v12, &_dispatch_main_q, block);

    _Block_object_dispose(&v30, 8);
  }

  else if (v18)
  {
    v18[2]();
  }
}

- (void)performAdditionalStepWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDeleteDecisionController *)self deleteDecision];
  v6 = [v5 additionalStep];

  switch(v6)
  {
    case 0uLL:
      v4[2](v4, 0);
      goto LABEL_42;
    case 1uLL:
      v19 = [(ICDeleteDecisionController *)self deleteDecision];
      v20 = [v19 modernNotes];
      v21 = [v20 count];

      if (v21 == 1)
      {
        v18 = 0;
        goto LABEL_32;
      }

      v33 = [(ICDeleteDecisionController *)self deleteDecision];
      v34 = [v33 containsUnsharedObjects];

      v31 = v34 == 0;
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
      v15 = [(ICDeleteDecisionController *)self deleteDecision];
      v16 = [v15 modernNotes];
      v17 = [v16 count];

      if (v17 == 1)
      {
        v18 = 4;
      }

      else
      {
        v29 = [(ICDeleteDecisionController *)self deleteDecision];
        v30 = [v29 containsUnsharedObjects];

        v31 = v30 == 0;
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
      v36 = [(ICDeleteDecisionController *)self deleteDecision];
      v37 = [v36 modernNotes];
      v27 = -[ICDeleteAlert initWithAlertType:count:](v35, "initWithAlertType:count:", v18, [v37 count]);

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
      v22 = [(ICDeleteDecisionController *)self deleteDecision];
      v23 = [v22 guiltyObjects];
      if ([v23 count] == 1)
      {
        v24 = 8;
      }

      else
      {
        v24 = 9;
      }

      v25 = [ICDeleteAlert alloc];
      v8 = [(ICDeleteDecisionController *)self deleteDecision];
      v26 = [v8 guiltyObjects];
      v27 = -[ICDeleteAlert initWithAlertType:count:](v25, "initWithAlertType:count:", v24, [v26 count]);

      goto LABEL_26;
    case 6uLL:
      if ([(ICDeleteDecisionController *)self shouldBypassDeleteFolderAlerts])
      {
LABEL_21:
        v4[2](v4, 1);
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
            [(ICDeletionAlertPresenter *)alertPresenter presentAlert:v27 withCompletion:v4];
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
      v8 = [(ICDeleteDecisionController *)self deleteDecision];
      v9 = [v8 guiltyObjects];
      v10 = [v9 count];
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
      v41 = v4;
      [(ICDeleteDecisionController *)self authenticateIfNeededWithCompletion:v40];

      goto LABEL_42;
    case 0xBuLL:
      [ICDeleteDecision setDidShowMoveToRecentlyDeletedFolderAlert:1];
      v7 = [ICDeleteAlert alloc];
      v8 = [(ICDeleteDecisionController *)self deleteDecision];
      v9 = [v8 guiltyObjects];
      v10 = [v9 count];
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
      [(ICDeleteDecisionController *)self authenticateIfNeededWithCompletion:v4];
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