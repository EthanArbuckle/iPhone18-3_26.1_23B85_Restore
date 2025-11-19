@interface iFBAFeedbackViewController
- (BOOL)rowShouldPresentAssigneePicker:(id)a3;
- (BOOL)showsAssigneeRow;
- (NSDateFormatter)sectionDateFormatter;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)feedback;
- (id)filePromiseSortDescriptors;
- (id)localizedErrorStringForMaybeFilePromise:(id)a3 downloadPermission:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_confirmFilePromiseDeletionWithStub:(id)a3 deletionHandler:(id)a4;
- (void)_deleteFilePromise:(id)a3 completionHandler:(id)a4;
- (void)autoLogOutIfNeeded;
- (void)beginFileDownloadForFilePromise:(id)a3;
- (void)configureActionsMenu;
- (void)configureKeyboardShortcuts;
- (void)copyFeedbackID;
- (void)copyFeedbackIDAndTitle;
- (void)dealloc;
- (void)demoteIndividualFeedbackToOriginator;
- (void)handleModelChanges:(id)a3;
- (void)hideAttachmentDeletionSpinner;
- (void)participantController:(id)a3 didSelectParticipant:(id)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)promoteIndividualFeedbackToTeam:(id)a3;
- (void)reloadAppProxy;
- (void)resetObserverTokens;
- (void)setContentItem:(id)a3;
- (void)showAttachmentDeletionErrorAlertWithError:(id)a3;
- (void)showAttachmentDeletionSpinner;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBody;
- (void)updateEverything;
- (void)updateTitleView;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation iFBAFeedbackViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = iFBAFeedbackViewController;
  [(iFBAFeedbackViewController *)&v17 viewDidLoad];
  v3 = [(iFBAFeedbackViewController *)self tableView];
  [v3 setEstimatedSectionHeaderHeight:0.0];

  v4 = [(iFBAFeedbackViewController *)self tableView];
  [v4 setEstimatedSectionFooterHeight:0.0];

  [(iFBAFeedbackViewController *)self updateTitleView];
  v5 = [(iFBAFeedbackViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(iFBAFeedbackViewController *)self tableView];
  [v6 setEstimatedRowHeight:100.0];

  v7 = [NSMutableArray arrayWithCapacity:2];
  [(iFBAFeedbackViewController *)self setObserverTokens:v7];

  v8 = [(iFBAFeedbackViewController *)self navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [(iFBAFeedbackViewController *)self traitCollectionDidChange:0];
  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 3.0}];
  v10 = [(iFBAFeedbackViewController *)self tableView];
  [v10 setTableHeaderView:v9];

  v11 = objc_alloc_init(UIRefreshControl);
  [(iFBAFeedbackViewController *)self setRefreshControl:v11];

  v12 = [(iFBAFeedbackViewController *)self refreshControl];
  [v12 addTarget:self action:"_refreshFeedbackContentWithControl:" forControlEvents:4096];

  [(iFBAFeedbackViewController *)self configureKeyboardShortcuts];
  [(iFBAFeedbackViewController *)self configureActionsMenu];
  v13 = +[FBKAttachmentCell reuseIdentifier];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [UINib nibWithNibName:v13 bundle:v14];

  v16 = [(iFBAFeedbackViewController *)self tableView];
  [v16 registerNib:v15 forCellReuseIdentifier:v13];
}

- (void)configureKeyboardShortcuts
{
  v15 = [UIKeyCommand keyCommandWithInput:@"R" modifierFlags:0x100000 action:"_refreshFeedbackContentWithControl:"];
  v3 = +[NSBundle mainBundle];
  v4 = FBKCommonStrings;
  v5 = [v3 localizedStringForKey:@"REFRESH_FEEDBACK" value:&stru_1000E2210 table:FBKCommonStrings];
  [v15 setDiscoverabilityTitle:v5];

  [(iFBAFeedbackViewController *)self addKeyCommand:v15];
  v6 = [UIKeyCommand keyCommandWithInput:@"R" modifierFlags:1572864 action:"reloadAppProxy"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REFRESH" value:&stru_1000E2210 table:v4];
  [v6 setDiscoverabilityTitle:v8];

  [(iFBAFeedbackViewController *)self addKeyCommand:v6];
  v9 = [UIKeyCommand keyCommandWithInput:@"C" modifierFlags:1179648 action:"copyFeedbackID"];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"COPY_FEEDBACK_ID" value:&stru_1000E2210 table:v4];
  [v9 setDiscoverabilityTitle:v11];

  [(iFBAFeedbackViewController *)self addKeyCommand:v9];
  v12 = [UIKeyCommand keyCommandWithInput:@"C" modifierFlags:1703936 action:"copyFeedbackIDAndTitle"];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"COPY_ID_AND_TITLE" value:&stru_1000E2210 table:v4];
  [v12 setDiscoverabilityTitle:v14];

  [(iFBAFeedbackViewController *)self addKeyCommand:v12];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(iFBAFeedbackViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = [(iFBAFeedbackViewController *)self tableView];
  if (v5 == 1)
  {
    v7 = 1.0;
    v8 = 1.0;
    v9 = v6;
  }

  else
  {
    v9 = v6;
    v7 = 20.0;
    v8 = 20.0;
  }

  [v6 _setSectionContentInset:{0.0, v7, 0.0, v8}];
}

- (void)dealloc
{
  [(iFBAFeedbackViewController *)self resetObserverTokens];
  v3.receiver = self;
  v3.super_class = iFBAFeedbackViewController;
  [(iFBAFeedbackViewController *)&v3 dealloc];
}

- (void)setContentItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_contentItem, a3);
  v6 = [[NSMutableSet alloc] initWithCapacity:5];
  observedUploadTasks = self->_observedUploadTasks;
  self->_observedUploadTasks = v6;

  if (v5)
  {
    [(iFBAFeedbackViewController *)self updateTitleView];
    [(iFBAFeedbackViewController *)self _refreshFeedbackContent];
  }

  else
  {
    [(iFBAFeedbackViewController *)self updateEverything];
  }

  [(iFBAFeedbackViewController *)self resetObserverTokens];
  objc_initWeak(&location, self);
  v8 = [(iFBAFeedbackViewController *)self observerTokens];
  v9 = [(iFBAFeedbackViewController *)self contentItem];
  v10 = [v9 managedObjectContext];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10003A0CC;
  v15 = &unk_1000DE408;
  objc_copyWeak(&v16, &location);
  v11 = [v10 addObjectsDidChangeNotificationObserver:&v12];
  [v8 addObject:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)resetObserverTokens
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(iFBAFeedbackViewController *)self observerTokens];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 removeObserver:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(iFBAFeedbackViewController *)self observerTokens];
  [v10 removeAllObjects];
}

- (void)handleModelChanges:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableSet alloc] initWithCapacity:6];
  v6 = [(iFBAFeedbackViewController *)self observedUploadTasks];
  v7 = [(iFBAFeedbackViewController *)self contentItem];

  if (v7)
  {
    v8 = [(iFBAFeedbackViewController *)self contentItem];
    [v5 addObject:v8];
  }

  v9 = [(iFBAFeedbackViewController *)self contentItem];
  v10 = [v9 feedback];

  if (v10)
  {
    v11 = [(iFBAFeedbackViewController *)self contentItem];
    v12 = [v11 feedback];
    [v5 addObject:v12];
  }

  v13 = [(iFBAFeedbackViewController *)self contentItem];
  v14 = [v13 formResponseStub];

  if (v14)
  {
    v15 = [(iFBAFeedbackViewController *)self contentItem];
    v16 = [v15 formResponseStub];

    [v5 addObject:v16];
    v17 = [v16 filePromiseStubs];
    v18 = [v17 allObjects];

    if (v18)
    {
      [v5 addObjectsFromArray:v18];
    }
  }

  v19 = [(iFBAFeedbackViewController *)self contentItem];
  v20 = [v19 feedback];
  v21 = [v20 feedbackFollowups];

  if (v21)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v22 = [(iFBAFeedbackViewController *)self contentItem];
    v23 = [v22 feedback];
    v24 = [v23 feedbackFollowups];

    v25 = [v24 countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v75;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v75 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v74 + 1) + 8 * i);
          [v5 addObject:v29];
          v30 = [v29 uploadTask];

          if (v30)
          {
            v31 = [v29 uploadTask];
            [v6 addObject:v31];
          }

          v32 = [v29 filePromises];
          v33 = [v32 allObjects];

          if (v33)
          {
            [v5 addObjectsFromArray:v33];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v26);
    }
  }

  v34 = [(iFBAFeedbackViewController *)self feedback];
  v35 = [v34 contentItem];
  v36 = [v35 formResponse];
  v37 = [v36 uploadTask];

  if (v37)
  {
    v38 = [(iFBAFeedbackViewController *)self feedback];
    v39 = [v38 contentItem];
    v40 = [v39 formResponse];
    v41 = [v40 uploadTask];
    [v6 addObject:v41];
  }

  v42 = [v4 updatedObjects];
  v43 = [v42 intersectsSet:v5];

  if (v43)
  {
    v44 = 1;
  }

  else
  {
    v45 = [v4 refreshedObjects];
    v44 = [v45 intersectsSet:v5];
  }

  v46 = [v4 insertedObjects];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10003AA44;
  v73[3] = &unk_1000DECD8;
  v73[4] = self;
  v47 = [v46 ded_selectItemsPassingTest:v73];

  if ([v47 count])
  {
    v48 = +[FBALog appHandle];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [v47 valueForKeyPath:@"ID"];
      *buf = 138412290;
      v80 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "inserted FFUs [%@]", buf, 0xCu);
    }

    v44 = 1;
  }

  v50 = [v4 deletedObjects];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10003AAF0;
  v72[3] = &unk_1000DECD8;
  v72[4] = self;
  v51 = [v50 ded_selectItemsPassingTest:v72];

  if ([v51 count])
  {
    v52 = +[FBALog appHandle];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v51 valueForKeyPath:@"ID"];
      *buf = 138412290;
      v80 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "removed FFUs [%@]", buf, 0xCu);
    }

    v44 = 1;
  }

  v65 = v51;
  v66 = v47;
  v64 = self;
  objc_opt_class();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v67 = v4;
  v54 = [v4 deletedObjects];
  v55 = [v54 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v69;
    do
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v69 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v68 + 1) + 8 * j);
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
          if ([v6 containsObject:v60])
          {
            v61 = +[FBALog appHandle];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [v60 taskIdentifier];
              v63 = [v62 unsignedLongValue];
              *buf = 134217984;
              v80 = v63;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Deleted upload task [%lu]. Will update view", buf, 0xCu);
            }

            v44 = 1;
          }
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v56);
  }

  if (v44)
  {
    [(iFBAFeedbackViewController *)v64 updateEverything];
  }
}

- (id)feedback
{
  v2 = [(iFBAFeedbackViewController *)self contentItem];
  v3 = [v2 detailedItem];

  return v3;
}

- (void)autoLogOutIfNeeded
{
  v3 = [(iFBAFeedbackViewController *)self launchAction];
  if (v3)
  {
    v4 = v3;
    v5 = [(iFBAFeedbackViewController *)self launchAction];
    v6 = [v5 isCaptive];

    if (v6)
    {
      v7 = [(iFBAFeedbackViewController *)self contentItem];
      v8 = [v7 formResponse];

      if (v8 && ([v8 uploadTask], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        v10 = 0;
      }

      else
      {
        v11 = +[FBALog appHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v8 ID];
          v13 = [v12 stringValue];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = @"nil";
          }

          v16 = [v8 uploadTask];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = @"nil";
          }

          *buf = 138543618;
          v40 = v15;
          v41 = 2114;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Form response [%{public}@] or upload task [%{public}@] is nil, exiting restricted mode.", buf, 0x16u);
        }

        v10 = 1;
      }

      if ([v8 serverSideIsComplete])
      {
        v19 = +[FBALog appHandle];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Server side has marked FR as complete, exiting restricted mode.", buf, 2u);
        }

        v10 = 1;
      }

      v20 = [v8 uploadTask];
      if (v20 && (v21 = v20, [v8 uploadTask], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "localSubmissionStage"), v22, v21, v23 == 6))
      {
        v24 = +[FBALog appHandle];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v8 uploadTask];
          v26 = v25;
          v27 = @"nil";
          if (v25)
          {
            v27 = v25;
          }

          *buf = 138543362;
          v40 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Upload task [%{public}@] completed, exiting restricted mode.", buf, 0xCu);
        }
      }

      else if (!v10)
      {
LABEL_28:

        return;
      }

      [(iFBAFeedbackViewController *)self resetObserverTokens];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"UPLOAD_COMPLETE_TITLE" value:@"Upload Complete" table:0];
      v30 = +[NSBundle mainBundle];
      v31 = [v30 localizedStringForKey:@"UPLOAD_COMPLETE_MESSAGE" value:@"Your diagnostics have been sent to Apple." table:0];
      v32 = [UIAlertController alertControllerWithTitle:v29 message:v31 preferredStyle:1];

      v33 = [(iFBAFeedbackViewController *)self launchAction];
      LOBYTE(v29) = [v33 shouldMakeFBAVisible];

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10003B878;
      v35[3] = &unk_1000DF630;
      v36 = v32;
      v37 = self;
      v38 = v29;
      v34 = v32;
      [(iFBAFeedbackViewController *)self presentViewController:v34 animated:1 completion:v35];
      [(iFBAFeedbackViewController *)self setLaunchAction:0];

      goto LABEL_28;
    }
  }
}

- (void)updateEverything
{
  [(iFBAFeedbackViewController *)self configureActionsMenu];
  [(iFBAFeedbackViewController *)self updateTitleView];
  [(iFBAFeedbackViewController *)self updateBody];
  [(iFBAFeedbackViewController *)self autoLogOutIfNeeded];
  v3 = [(iFBAFeedbackViewController *)self tableView];
  [v3 setBackgroundView:0];

  v4 = [(iFBAFeedbackViewController *)self tableView];
  [v4 reloadData];
}

- (void)updateBody
{
  v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
  v4 = [[NSMutableArray alloc] initWithCapacity:10];
  if ([(iFBAFeedbackViewController *)self showsAssigneeRow])
  {
    v5 = [[Row alloc] initWithType:0];
    v6 = [(iFBAFeedbackViewController *)self contentItem];
    [(Row *)v5 setObject:v6];

    v7 = objc_opt_new();
    v118 = v5;
    v8 = [NSArray arrayWithObjects:&v118 count:1];
    [v7 setRows:v8];

    [v4 addObject:v7];
  }

  v9 = [(iFBAFeedbackViewController *)self feedback];
  v10 = [v9 formResponseStub];

  if (v10)
  {
    v91 = v4;
    v11 = objc_opt_new();
    [v11 setTitle:0];
    v12 = [[NSMutableArray alloc] initWithCapacity:5];
    v13 = [[Row alloc] initWithType:7];
    v14 = [(iFBAFeedbackViewController *)self contentItem];
    [(Row *)v13 setObject:v14];

    [v12 addObject:v13];
    v15 = [[Row alloc] initWithType:1];
    [v12 addObject:v15];

    v87 = self;
    v16 = [(iFBAFeedbackViewController *)self feedback];
    v17 = [v16 contentItem];
    v18 = [v17 formResponse];
    v19 = [v18 uploadTask];

    if (v19 && [v19 localSubmissionStage] != 6)
    {
      v31 = [[Row alloc] initWithType:3];

      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"Uploading files…" value:&stru_1000E2210 table:0];
      [(Row *)v31 setText:v33];

      v34 = [(iFBAFeedbackViewController *)v87 feedback];
      v35 = [v34 contentItem];
      v36 = [v35 formResponse];
      v37 = [v36 uploadTask];
      [(Row *)v31 setObject:v37];

      [v12 addObject:v31];
      v13 = v31;
    }

    else
    {
      v96 = v19;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v20 = [(iFBAFeedbackViewController *)v87 feedback];
      v21 = [v20 formResponseStub];
      v22 = [v21 visibleFilePromises];

      v23 = [v22 countByEnumeratingWithState:&v108 objects:v117 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v109;
        do
        {
          v26 = 0;
          v27 = v13;
          do
          {
            if (*v109 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v108 + 1) + 8 * v26);
            v13 = [[Row alloc] initWithType:5];

            v29 = [v28 name];
            [(Row *)v13 setText:v29];

            [(Row *)v13 setObject:v28];
            [v12 addObject:v13];
            v26 = v26 + 1;
            v27 = v13;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v108 objects:v117 count:16];
        }

        while (v24);
      }

      v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
      v19 = v96;
    }

    v38 = [NSArray arrayWithArray:v12];
    [v11 setRows:v38];

    [v91 addObject:v11];
    v39 = [(iFBAFeedbackViewController *)v87 feedback];

    if (v39)
    {
      v40 = [(iFBAFeedbackViewController *)v87 feedback];
      v41 = [v40 validFeedbackFollowups];
      v42 = [NSSortDescriptor sortDescriptorWithKey:@"createdAt" ascending:1];
      v116 = v42;
      v43 = [NSArray arrayWithObjects:&v116 count:1];
      v44 = [v41 sortedArrayUsingDescriptors:v43];
    }

    else
    {
      v44 = &__NSArray0__struct;
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v30 = v44;
    v45 = [v30 countByEnumeratingWithState:&v104 objects:v115 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v105;
      v86 = FBKSystemImageNameValidationNo;
      v85 = FBKSystemImageNameValidationYes;
      v89 = *v105;
      v90 = v30;
      do
      {
        v48 = 0;
        v92 = v46;
        do
        {
          if (*v105 != v47)
          {
            objc_enumerationMutation(v30);
          }

          v49 = *(*(&v104 + 1) + 8 * v48);
          if ([v49 type] != 1)
          {
            v50 = objc_opt_new();
            v95 = objc_opt_new();
            v51 = [objc_alloc(v3[335]) initWithCapacity:3];
            v52 = [objc_alloc(v3[335]) initWithCapacity:3];
            v53 = [[Row alloc] initWithType:8];
            [(Row *)v53 setObject:v49];
            v94 = v53;
            [v51 addObject:v53];
            v54 = [[Row alloc] initWithType:7];
            [(Row *)v54 setObject:v49];
            v93 = v54;
            [v52 addObject:v54];
            v55 = [v49 type];
            if (v55 <= 7)
            {
              v97 = v50;
              if (((1 << v55) & 0x9D) != 0)
              {
                if ([v49 textResponsesCount] >= 1)
                {
                  v56 = [[Row alloc] initWithType:2];
                  [(Row *)v56 setObject:v49];
                  v57 = [v49 textResponsesSummary];
                  [(Row *)v56 setText:v57];

                  v50 = v97;
                  [v52 addObject:v56];
                }

                if ([v49 type])
                {
                  v58 = [[Row alloc] initWithType:2];
                  [(Row *)v58 setObject:v49];
                  v59 = [v49 displayText];
                  [(Row *)v58 setText:v59];

                  v50 = v97;
                  [v51 addObject:v58];
                }

                if (([v49 isComplete] & 1) == 0 && objc_msgSend(v49, "type"))
                {
                  v60 = [[Row alloc] initWithType:4];
                  [(Row *)v60 setObject:v49];
                  [v51 addObject:v60];
                  goto LABEL_47;
                }

                if ([v49 type] == 4 || objc_msgSend(v49, "type") == 7)
                {
                  v60 = [v49 validationResponse];
                  if (v60)
                  {
                    v61 = [[Row alloc] initWithType:6];
                    if ([(Row *)v60 isValidated])
                    {
                      v62 = [v49 positiveChoice];
                      v63 = v85;
                    }

                    else
                    {
                      v62 = [v49 negativeChoice];
                      v63 = v86;
                    }

                    [(Row *)v61 setText:v62];

                    v67 = [UIImage systemImageNamed:v63];
                    v68 = [v67 imageWithRenderingMode:2];
                    [(Row *)v61 setObject:v68];

                    [v52 addObject:v61];
                    v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
                  }

                  else
                  {
                    v61 = +[FBALog ffu];
                    if (os_log_type_enabled(&v61->super, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000942C0(buf, v49, v114, &v61->super);
                    }
                  }

                  v50 = v97;
LABEL_47:
                }

                if ([v49 isUploadingFiles])
                {
                  v64 = [[Row alloc] initWithType:3];
                  v69 = [v49 uploadTask];
                  [(Row *)v64 setObject:v69];

                  v66 = v52;
LABEL_50:
                  [v66 addObject:v64];
                }

                else if ([v49 hasVisibleFiles])
                {
                  v88 = v51;
                  v70 = [v49 visibleFilePromises];
                  v71 = [(iFBAFeedbackViewController *)v87 filePromiseSortDescriptors];
                  v72 = [v70 sortedArrayUsingDescriptors:v71];

                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v64 = v72;
                  v73 = [(Row *)v64 countByEnumeratingWithState:&v100 objects:v112 count:16];
                  if (v73)
                  {
                    v74 = v73;
                    v75 = *v101;
                    do
                    {
                      for (i = 0; i != v74; i = i + 1)
                      {
                        if (*v101 != v75)
                        {
                          objc_enumerationMutation(v64);
                        }

                        v77 = *(*(&v100 + 1) + 8 * i);
                        v78 = [[Row alloc] initWithType:5];
                        v79 = [v77 filename];
                        [(Row *)v78 setText:v79];

                        [(Row *)v78 setObject:v77];
                        [v52 addObject:v78];
                      }

                      v74 = [(Row *)v64 countByEnumeratingWithState:&v100 objects:v112 count:16];
                    }

                    while (v74);
                  }

                  v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
                  v50 = v97;
                  v51 = v88;
                }

                else
                {
                  v64 = +[FBALog ffu];
                  if (os_log_type_enabled(&v64->super, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10009433C(&v98, v99, &v64->super);
                  }
                }
              }

              else if (((1 << v55) & 0x60) != 0)
              {
                v64 = [[Row alloc] initWithType:2];
                v65 = [v49 displayText];
                [(Row *)v64 setText:v65];

                v50 = v97;
                [(Row *)v64 setObject:v49];
                v66 = v51;
                goto LABEL_50;
              }
            }

            [v50 setRows:v51];
            v80 = [v50 rows];
            v81 = [v80 count];

            if (v81 >= 2)
            {
              [v91 addObject:v50];
            }

            [v95 setRows:v52];
            v82 = [v95 rows];
            v83 = [v82 count];

            if (v83 >= 2)
            {
              [v91 addObject:v95];
            }

            v47 = v89;
            v30 = v90;
            v46 = v92;
          }

          v48 = v48 + 1;
        }

        while (v48 != v46);
        v46 = [v30 countByEnumeratingWithState:&v104 objects:v115 count:16];
      }

      while (v46);
    }

    v4 = v91;
    v84 = [NSArray arrayWithArray:v91];
    [(iFBAFeedbackViewController *)v87 setModelCache:v84];
  }

  else
  {
    v30 = +[FBALog appHandle];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "deferring rendering until response stub data is available", buf, 2u);
    }
  }
}

- (id)filePromiseSortDescriptors
{
  v3 = [(iFBAFeedbackViewController *)self _filePromiseSortDescriptors];

  if (!v3)
  {
    v4 = +[FBKFilePromise displaySortDescriptors];
    [(iFBAFeedbackViewController *)self set_filePromiseSortDescriptors:v4];
  }

  return [(iFBAFeedbackViewController *)self _filePromiseSortDescriptors];
}

- (BOOL)showsAssigneeRow
{
  v3 = [(iFBAFeedbackViewController *)self contentItem];
  v4 = [v3 singleTeam];
  if ([v4 teamType])
  {
    v5 = [(iFBAFeedbackViewController *)self contentItem];
    if ([v5 isOrphaned])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v7 = [(iFBAFeedbackViewController *)self contentItem];
      v8 = [v7 assignee];
      v9 = [(iFBAFeedbackViewController *)self contentItem];
      v10 = [v9 originator];
      v6 = [v8 isEqual:v10] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)updateTitleView
{
  v5 = [(iFBAFeedbackViewController *)self contentItem];
  v3 = [v5 feedbackIDString];
  v4 = [(iFBAFeedbackViewController *)self navigationItem];
  [v4 setTitle:v3];
}

- (NSDateFormatter)sectionDateFormatter
{
  if (qword_10010B0D8[0] != -1)
  {
    sub_10009437C();
  }

  v3 = qword_10010B0D0;

  return v3;
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v24 = a3;
  v5 = [v24 identifier];
  v6 = [v5 isEqualToString:@"FBAFollowupResponsePresentation"];
  if (v6)
  {

LABEL_4:
    v9 = [v24 destinationViewController];
    v10 = [v9 topViewController];
    [v10 setIsUnsolicited:v6 ^ 1];
    v11 = [(iFBAFeedbackViewController *)self pendingFollowup];
    [v10 setFollowup:v11];

    v12 = [(iFBAFeedbackViewController *)self feedback];
    v13 = [v12 contentItem];
    [v10 setContentItem:v13];
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v7 = [v24 identifier];
  v8 = [v7 isEqualToString:@"FBAUnsolicitedFollowupResponsePresentation"];

  if (v8)
  {
    goto LABEL_4;
  }

  v14 = [v24 identifier];
  v15 = [v14 isEqualToString:@"PromoteSingleFeedbackPresentation"];

  if (v15)
  {
    v9 = [v24 destinationViewController];
    v16 = [v9 presentationController];
    [v16 setDelegate:self];

    v10 = [v9 topViewController];
    [v10 setPickerDelegate:self];
    v17 = [(iFBAFeedbackViewController *)self contentItem];
    v18 = [v17 singleTeam];
    [v10 setSelectedTeam:v18];

    v12 = [(iFBAFeedbackViewController *)self contentItem];
    v13 = [v12 user];
    v19 = [v13 activeTeams];
    v20 = +[FBKTeam sortDescriptors];
    v21 = [v19 sortedArrayUsingDescriptors:v20];
    [v10 setTeams:v21];

    goto LABEL_5;
  }

  v22 = [v24 identifier];
  v23 = [v22 isEqualToString:@"AssignSingleFeedbackPresentation"];

  if (v23)
  {
    v9 = [v24 destinationViewController];
    v10 = [v9 topViewController];
    [v10 setParticipantDelegate:self];
    v12 = [(iFBAFeedbackViewController *)self contentItem];
    [v10 configureWithContentItem:v12];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)beginFileDownloadForFilePromise:(id)a3
{
  v4 = a3;
  if (![(iFBAFeedbackViewController *)self fileDownloadInProgress])
  {
    v5 = [(iFBAFeedbackViewController *)self contentItem];
    v6 = [v5 canDownloadFiles];

    if (v6 && [v4 downloadState] == 2)
    {
      [(iFBAFeedbackViewController *)self setFileDownloadInProgress:1];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"FILE_DOWNLOAD_PREPARING" value:&stru_1000E2210 table:FBKCommonStrings];
      [(iFBAFeedbackViewController *)self fbkShowSpinnerWithStatus:v8 userInteractionEnabled:0];

      v9 = +[FBKData sharedInstance];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003CE34;
      v17[3] = &unk_1000DFB80;
      v17[4] = self;
      [v9 getFileDownloadURLForFilePromise:v4 completion:v17];
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v11 = FBKCommonStrings;
      v12 = [v10 localizedStringForKey:@"FILE_DOWNLOAD_UNAVAILABLE_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
      v13 = [(iFBAFeedbackViewController *)self localizedErrorStringForMaybeFilePromise:v4 downloadPermission:v6];
      v9 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:1];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"OK" value:&stru_1000E2210 table:v11];
      v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:&stru_1000DFB10];
      [v9 addAction:v16];

      [(iFBAFeedbackViewController *)self presentViewController:v9 animated:1 completion:0];
    }
  }
}

- (id)localizedErrorStringForMaybeFilePromise:(id)a3 downloadPermission:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      v7 = [v5 localizedDownloadErrorString];
      goto LABEL_7;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = FBKCommonStrings;
    v11 = @"FILE_DOWNLOAD_UNAVAILABLE_TEAM_FORBIDDEN";
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = FBKCommonStrings;
    v11 = @"FILE_DOWNLOAD_UNAVAILABLE_MESSAGE";
  }

  v7 = [v8 localizedStringForKey:v11 value:&stru_1000E2210 table:v10];

LABEL_7:

  return v7;
}

- (void)configureActionsMenu
{
  v3 = [_TtC18Feedback_Assistant23FBAActionMenuController alloc];
  v4 = [(iFBAFeedbackViewController *)self contentItem];
  v5 = [v4 feedbackIDString];
  v6 = [(FBAActionMenuController *)v3 initWithTitle:v5 subtitle:0 actions:0];

  v7 = [(iFBAFeedbackViewController *)self contentItem];
  LODWORD(v5) = [v7 allowUnsolicitedFollowup];

  if (v5)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNSOLICITED_FOLLOWUP_ACTION" value:&stru_1000E2210 table:0];
    v10 = [UIImage systemImageNamed:FBKSystemImageNameAddFollowup];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10003D894;
    v52[3] = &unk_1000DE840;
    v52[4] = self;
    [(FBAActionMenuController *)v6 addActionWithTitle:v9 image:v10 actionHandler:v52];
  }

  v11 = [(iFBAFeedbackViewController *)self contentItem];
  v12 = [v11 itemType];

  if (v12 == 4)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"COPY_FEEDBACK_ID" value:&stru_1000E2210 table:FBKCommonStrings];
    v15 = [UIImage systemImageNamed:FBKSystemImageNameCopyFeedbackID];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10003D920;
    v51[3] = &unk_1000DE840;
    v51[4] = self;
    [(FBAActionMenuController *)v6 addActionWithTitle:v14 image:v15 actionHandler:v51];
  }

  v16 = [(iFBAFeedbackViewController *)self contentItem];
  v17 = [v16 itemType];

  if (v17 == 4)
  {
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"COPY_ID_AND_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
    v20 = [UIImage systemImageNamed:FBKSystemImageNameCopyFeedbackIDAndTitle];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10003D928;
    v50[3] = &unk_1000DE840;
    v50[4] = self;
    [(FBAActionMenuController *)v6 addActionWithTitle:v19 image:v20 actionHandler:v50];
  }

  v21 = [(iFBAFeedbackViewController *)self contentItem];
  v22 = [v21 user];
  v23 = [v22 hasManagedTeams];

  if (v23)
  {
    v24 = [(iFBAFeedbackViewController *)self contentItem];
    v25 = [v24 canPromoteFeedback];

    if (v25)
    {
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"PROMOTE_FEEDBACK" value:&stru_1000E2210 table:FBKCommonStrings];
      v28 = [UIImage systemImageNamed:FBKSystemImageNamePromoteFeedback];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10003D930;
      v49[3] = &unk_1000DE840;
      v49[4] = self;
      [(FBAActionMenuController *)v6 addActionWithTitle:v27 image:v28 actionHandler:v49];
    }

    v29 = [(iFBAFeedbackViewController *)self contentItem];
    v30 = [v29 canDemoteFeedback];

    if (v30)
    {
      v31 = +[NSBundle mainBundle];
      v32 = [v31 localizedStringForKey:@"DEMOTE_FEEDBACK" value:&stru_1000E2210 table:FBKCommonStrings];
      v33 = [UIImage imageNamed:FBKImageNameDemoteFeedback];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10003DBA4;
      v48[3] = &unk_1000DE840;
      v48[4] = self;
      [(FBAActionMenuController *)v6 addActionWithTitle:v32 image:v33 actionHandler:v48];
    }

    v34 = [(iFBAFeedbackViewController *)self contentItem];
    v35 = [v34 canReassignFeedback];

    if (v35)
    {
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"ASSIGN_TO_TEAMMATE" value:&stru_1000E2210 table:FBKCommonStrings];
      v38 = [UIImage systemImageNamed:FBKSystemImageNameReassignFeedback];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10003DBAC;
      v47[3] = &unk_1000DE840;
      v47[4] = self;
      [(FBAActionMenuController *)v6 addActionWithTitle:v37 image:v38 actionHandler:v47];
    }
  }

  v39 = [(iFBAFeedbackViewController *)self contentItem];
  v40 = [v39 canCloseFeedback];

  if (v40)
  {
    v41 = +[NSBundle mainBundle];
    v42 = [v41 localizedStringForKey:@"CLOSE_FEEDBACK_BUTTON" value:&stru_1000E2210 table:FBKCommonStrings];
    v43 = [UIImage imageNamed:FBKImageNameCloseFeedback];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10003DBC4;
    v46[3] = &unk_1000DE840;
    v46[4] = self;
    [(FBAActionMenuController *)v6 addActionWithTitle:v42 image:v43 actionHandler:v46];
  }

  v44 = [(iFBAFeedbackViewController *)self navigationItem];
  v45 = [v44 rightBarButtonItem];
  [(FBAActionMenuController *)v6 attachToBarButtonItem:v45];
}

- (void)copyFeedbackID
{
  v5 = +[UIPasteboard generalPasteboard];
  v3 = [(iFBAFeedbackViewController *)self contentItem];
  v4 = [v3 feedbackIDString];
  [v5 setString:v4];
}

- (void)copyFeedbackIDAndTitle
{
  v5 = +[UIPasteboard generalPasteboard];
  v3 = [(iFBAFeedbackViewController *)self contentItem];
  v4 = [v3 feedbackIDAndTitleString];
  [v5 setString:v4];
}

- (void)reloadAppProxy
{
  v2 = [(iFBAFeedbackViewController *)self launchAction];
  v3 = [v2 isCaptive];

  if ((v3 & 1) == 0)
  {
    v4 = +[FBADraftManager sharedInstance];
    [v4 reloadApp];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a4;
  v5 = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v17, "section")}];
  v7 = [v6 rows];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v17, "row")}];

  if ([v8 type] == 4)
  {
    v9 = [v8 object];
    v10 = [v9 canRespond];

    if (v10)
    {
      v11 = [v8 object];
      [(iFBAFeedbackViewController *)self setPendingFollowup:v11];

      v12 = @"FBAFollowupResponsePresentation";
      v13 = self;
      v14 = self;
LABEL_8:
      [(iFBAFeedbackViewController *)v13 performSegueWithIdentifier:v12 sender:v14];
      goto LABEL_9;
    }
  }

  if ([v8 type] == 5)
  {
    v15 = [v8 object];
    [(iFBAFeedbackViewController *)self beginFileDownloadForFilePromise:v15];

    goto LABEL_9;
  }

  if ([(iFBAFeedbackViewController *)self rowShouldPresentAssigneePicker:v8])
  {
    v12 = @"AssignSingleFeedbackPresentation";
    v13 = self;
    v14 = 0;
    goto LABEL_8;
  }

LABEL_9:
  v16 = [(iFBAFeedbackViewController *)self tableView];
  [v16 deselectRowAtIndexPath:v17 animated:1];
}

- (BOOL)rowShouldPresentAssigneePicker:(id)a3
{
  v4 = a3;
  v5 = [(iFBAFeedbackViewController *)self contentItem];
  v6 = [v5 canReassignFeedback];

  if (v6)
  {
    if (![v4 type])
    {
      isKindOfClass = 1;
      goto LABEL_8;
    }

    if ([v4 type] == 7 && !-[iFBAFeedbackViewController showsAssigneeRow](self, "showsAssigneeRow"))
    {
      v8 = [v4 object];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      goto LABEL_8;
    }
  }

  isKindOfClass = 0;
LABEL_8:

  return isKindOfClass & 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(iFBAFeedbackViewController *)self modelCache];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [v5 objectAtIndex:a4];
  v7 = [v6 rows];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 title];

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(iFBAFeedbackViewController *)self modelCache];
  v8 = [v7 count] - 1;

  v9 = 3.0;
  if (v8 == a4)
  {
    v12.receiver = self;
    v12.super_class = iFBAFeedbackViewController;
    [(iFBAFeedbackViewController *)&v12 tableView:v6 heightForFooterInSection:a4];
    v9 = v10;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(iFBAFeedbackViewController *)self modelCache];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "section")}];

  v10 = [v9 rows];
  v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

  v12 = [v11 type];
  if (v12 <= 4)
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_39;
        }

        v10 = [v6 dequeueReusableCellWithIdentifier:@"FormResponseDetailCell" forIndexPath:v7];
        v13 = [(iFBAFeedbackViewController *)self contentItem];
        [v10 setContentItem:v13];
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v10 = [v6 dequeueReusableCellWithIdentifier:@"UploadProgressCell" forIndexPath:v7];
        v13 = [v11 object];
        [v10 setObservedTask:v13];
        [v10 setSelectionStyle:0];
        [v10 layoutIfNeeded];
      }

      else
      {
        v10 = [v6 dequeueReusableCellWithIdentifier:@"RespondActionCell" forIndexPath:v7];
        v13 = [v11 object];
        if ([v13 canRespond])
        {
          +[iFBAConstants tintColor];
        }

        else
        {
          +[UIColor secondaryLabelColor];
        }
        v38 = ;
        v39 = [v10 textLabel];
        [v39 setTextColor:v38];

        if ([v13 canRespond])
        {
          v40 = 3;
        }

        else
        {
          v40 = 0;
        }

        [v10 setSelectionStyle:v40];
      }

      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v12 > 7)
  {
    if (v12 == 8)
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"ResponseHeaderCell" forIndexPath:v7];
      v13 = [v11 object];
      [v10 configureForAppleFeedbackWithFollowup:v13];
      goto LABEL_38;
    }

    if (v12 == 9)
    {
      v30 = [(iFBAFeedbackViewController *)self tableView];
      v10 = [v30 dequeueReusableCellWithIdentifier:@"StatusTextCell"];

      v28 = [v11 object];
      v29 = [v28 attributedStringRepresentation];
      v31 = [v10 textLabel];
      [v31 setAttributedText:v29];

      goto LABEL_28;
    }

    if (v12 != 10)
    {
      goto LABEL_39;
    }

LABEL_14:
    v10 = [v6 dequeueReusableCellWithIdentifier:@"PromptOnlyTextCell" forIndexPath:v7];
    v13 = [v11 text];
    [v10 configureCellForLinkText:v13];
LABEL_38:

    goto LABEL_39;
  }

  if (v12 == 5)
  {
    v32 = +[FBKAttachmentCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithIdentifier:v32 forIndexPath:v7];

    v33 = [[FBKAttachment alloc] initWithCollectorIdentifier:@"ffu-no-collector-id" deviceUUID:@"no-device"];
    [v33 setState:2];
    v34 = [v11 text];
    [v33 setPlaceholderText:v34];

    [v10 setSelectionStyle:3];
    v35 = [v11 object];
    v36 = [v35 downloadState];
    if (v35 && v36 == 3)
    {
      v37 = 7;
    }

    else
    {
      v37 = 6;
      if (v35 && v36)
      {
        v42 = +[UIColor labelColor];
        v43 = [v10 attachmentDisplayName];
        [v43 setTextColor:v42];

        v37 = [v33 state];
      }
    }

    [v33 setState:v37];
    [v33 setAttachmentType:6];
    [v10 setAttachment:v33];
    v44 = +[iFBAConstants tintColor];
    v45 = [v10 imageView];
    [v45 setTintColor:v44];

    v46 = [(iFBAFeedbackViewController *)self tableView];
    [v46 separatorInset];
    [v10 updateContentInsetWithValue:v47];

    goto LABEL_39;
  }

  if (v12 == 6)
  {
    v23 = [(iFBAFeedbackViewController *)self tableView];
    v10 = [v23 dequeueReusableCellWithIdentifier:@"ValidationCell" forIndexPath:v7];

    v24 = [v11 text];
    v25 = [v10 textLabel];
    [v25 setText:v24];

    v26 = +[UIColor labelColor];
    v27 = [v10 textLabel];
    [v27 setTextColor:v26];

    v28 = [v11 object];
    v29 = [v10 imageView];
    [v29 setImage:v28];
LABEL_28:

    [v10 setSelectionStyle:0];
    goto LABEL_39;
  }

LABEL_18:
  v10 = [v6 dequeueReusableCellWithIdentifier:@"ResponseHeaderCell" forIndexPath:v7];
  v14 = [v11 object];
  if (v14)
  {
    v15 = v14;
    v16 = [v11 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v11 object];
      [v10 configureForFollowup:v13];
      goto LABEL_38;
    }
  }

  v18 = [v11 object];
  if (v18)
  {
    v19 = v18;
    v20 = [v11 object];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [v11 type];
      v13 = [(iFBAFeedbackViewController *)self contentItem];
      if (v22)
      {
        [v10 configureForContentItem:v13];
      }

      else
      {
        [v10 configureAssigneeForContentItem:v13];
      }

      goto LABEL_38;
    }
  }

LABEL_39:

  return v10;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003E8D0;
  v4[3] = &unk_1000DE8F0;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(iFBAFeedbackViewController *)self modelCache];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "section")}];

  v10 = [v9 rows];
  v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

  if ([v11 type] != 5)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v12 = [v11 object];
  v13 = [(iFBAFeedbackViewController *)self contentItem];
  v14 = v13;
  if (!v13)
  {
    v19 = +[FBALog appHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100094390();
    }

    goto LABEL_9;
  }

  if (![v13 canDeleteFiles])
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003EC40;
  v21[3] = &unk_1000DED50;
  objc_copyWeak(&v23, &location);
  v22 = v12;
  v15 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v21];
  v16 = [UIImage systemImageNamed:FBKSystemImageNameSwipeToDelete];
  [v15 setImage:v16];

  v25 = v15;
  v17 = [NSArray arrayWithObjects:&v25 count:1];
  v18 = [UISwipeActionsConfiguration configurationWithActions:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_10:

LABEL_11:

  return v18;
}

- (void)_deleteFilePromise:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(iFBAFeedbackViewController *)self showAttachmentDeletionSpinner];
  v8 = +[FBKData sharedInstance];
  v9 = [v7 UUIDString];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003EEB8;
  v11[3] = &unk_1000DFC10;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 deleteFilePromiseWithUUID:v9 object:v7 completion:v11];
}

- (void)_confirmFilePromiseDeletionWithStub:(id)a3 deletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE_ATTACHMENT_ALERT_TITLE" value:&stru_1000E2210 table:@"CommonStrings"];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DELETE_ATTACHMENT_ALERT_MESSAGE" value:&stru_1000E2210 table:@"CommonStrings"];
  v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Delete" value:&stru_1000E2210 table:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003F18C;
  v21[3] = &unk_1000DF518;
  v21[4] = self;
  v22 = v6;
  v23 = v7;
  v15 = v7;
  v16 = v6;
  v17 = [UIAlertAction actionWithTitle:v14 style:2 handler:v21];

  [v12 addAction:v17];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:0];
  v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:&stru_1000DFC30];

  [v12 addAction:v20];
  [(iFBAFeedbackViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)showAttachmentDeletionSpinner
{
  [(iFBAFeedbackViewController *)self setAttachmentsBeingDeletedCount:[(iFBAFeedbackViewController *)self attachmentsBeingDeletedCount]+ 1];
  if ([(iFBAFeedbackViewController *)self attachmentsBeingDeletedCount]== 1)
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"DELETING_ATTACHMENT_STATUS_ELLIPSIS" value:&stru_1000E2210 table:FBKCommonStrings];
    [(iFBAFeedbackViewController *)self fbkShowSpinnerWithStatus:v3 userInteractionEnabled:1];
  }
}

- (void)hideAttachmentDeletionSpinner
{
  [(iFBAFeedbackViewController *)self setAttachmentsBeingDeletedCount:[(iFBAFeedbackViewController *)self attachmentsBeingDeletedCount]- 1];
  [(iFBAFeedbackViewController *)self attachmentsBeingDeletedCount];
  if (![(iFBAFeedbackViewController *)self attachmentsBeingDeletedCount])
  {

    [(iFBAFeedbackViewController *)self fbkHideSpinner];
  }
}

- (void)showAttachmentDeletionErrorAlertWithError:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:FBKSSeedPortalRequestDetails];
  v15 = [v5 objectForKeyedSubscript:FBKSSeedPortalRequestDetailMessage];

  if (v15 && [v15 length])
  {
    v6 = FBKCommonStrings;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v6 = FBKCommonStrings;
    v8 = [v7 localizedStringForKey:@"UNEXPECTED_SERVER_DATA_ERROR_RECOVERY" value:&stru_1000E2210 table:FBKCommonStrings];

    v15 = v8;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"ATTACHMENT_DELETION_ERROR_ALERT_TITLE" value:&stru_1000E2210 table:v6];
  v11 = [UIAlertController alertControllerWithTitle:v10 message:v15 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_1000E2210 table:v6];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:0];

  [v11 addAction:v14];
  [(iFBAFeedbackViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)promoteIndividualFeedbackToTeam:(id)a3
{
  v4 = a3;
  v5 = [(iFBAFeedbackViewController *)self contentItem];
  v6 = [v5 singleTeam];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NO OP: Target team for move is the current team.", buf, 2u);
    }
  }

  else
  {
    v9 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
    v10 = +[NSBundle mainBundle];
    v11 = FBKCommonStrings;
    v12 = [v10 localizedStringForKey:@"PROMOTE_FEEDBACK_ASSIGN_WARNING_SINGLE_TEAM" value:&stru_1000E2210 table:FBKCommonStrings];
    v13 = [v4 name];
    v14 = [NSString stringWithFormat:v12, v13, 0];
    v8 = [UIAlertController alertControllerWithTitle:0 message:v14 preferredStyle:[(iFBAFeedbackViewController *)self fbk_objc_preferredAlertStyle]];

    if ([v8 preferredStyle]== 1)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"PROMOTE_FEEDBACK_TITLE_SINGLE_TEAM" value:&stru_1000E2210 table:v11];
      v17 = [(iFBAFeedbackViewController *)self contentItem];
      v18 = [v17 feedbackIDString];
      v19 = [v4 name];
      v20 = [NSString stringWithFormat:v16, v18, v19, 0];
      [v8 setTitle:v20];

      v9 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
    }

    else
    {
      v15 = [(iFBAFeedbackViewController *)self navigationItem];
      v16 = [v15 rightBarButtonItem];
      v17 = [v8 popoverPresentationController];
      [v17 setSourceItem:v16];
    }

    v21 = [v9[287] mainBundle];
    v22 = [v21 localizedStringForKey:@"PROMOTE_FEEDBACK" value:&stru_1000E2210 table:v11];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003F9C0;
    v31[3] = &unk_1000DE4A8;
    v31[4] = self;
    v32 = v4;
    v23 = [UIAlertAction actionWithTitle:v22 style:2 handler:v31];
    [v8 addAction:v23];

    v24 = [v9[287] mainBundle];
    v25 = [v24 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:v11];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003FD04;
    v30[3] = &unk_1000DE458;
    v30[4] = self;
    v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:v30];
    [v8 addAction:v26];

    v27 = self;
    v28 = [(iFBAFeedbackViewController *)v27 presentedViewController];

    if (v28)
    {
      v29 = [(iFBAFeedbackViewController *)v27 presentedViewController];

      v27 = v29;
    }

    [(iFBAFeedbackViewController *)v27 presentViewController:v8 animated:1 completion:0];
  }
}

- (void)demoteIndividualFeedbackToOriginator
{
  v3 = +[NSBundle mainBundle];
  v4 = FBKCommonStrings;
  v5 = [v3 localizedStringForKey:@"DEMOTE_FEEDBACK_ASSIGN_WARNING" value:&stru_1000E2210 table:FBKCommonStrings];
  v6 = [(iFBAFeedbackViewController *)self contentItem];
  v7 = [v6 singleTeam];
  v8 = [v7 name];
  v9 = [NSString stringWithFormat:v5, v8, 0];
  v10 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:[(iFBAFeedbackViewController *)self fbk_objc_preferredAlertStyle]];

  if ([v10 preferredStyle] == 1)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"DEMOTE_FEEDBACK_TITLE" value:&stru_1000E2210 table:v4];
    v13 = [(iFBAFeedbackViewController *)self contentItem];
    v14 = [v13 feedbackIDString];
    v15 = [(iFBAFeedbackViewController *)self contentItem];
    [v15 singleTeam];
    v16 = v28 = v4;
    v17 = [v16 name];
    v18 = [NSString stringWithFormat:v12, v14, v17, 0];
    [v10 setTitle:v18];

    v4 = v28;
  }

  else
  {
    v11 = [(iFBAFeedbackViewController *)self navigationItem];
    v12 = [v11 rightBarButtonItem];
    v13 = [v10 popoverPresentationController];
    [v13 setSourceItem:v12];
  }

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"DEMOTE_FEEDBACK" value:&stru_1000E2210 table:v4];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000400EC;
  v30[3] = &unk_1000DE458;
  v30[4] = self;
  v21 = [UIAlertAction actionWithTitle:v20 style:2 handler:v30];
  [v10 addAction:v21];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:v4];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100040430;
  v29[3] = &unk_1000DE458;
  v29[4] = self;
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v29];
  [v10 addAction:v24];

  v25 = self;
  v26 = [(iFBAFeedbackViewController *)v25 presentedViewController];

  if (v26)
  {
    v27 = [(iFBAFeedbackViewController *)v25 presentedViewController];

    v25 = v27;
  }

  [(iFBAFeedbackViewController *)v25 presentViewController:v10 animated:1 completion:0];
}

- (void)participantController:(id)a3 didSelectParticipant:(id)a4
{
  v5 = a4;
  v6 = [(iFBAFeedbackViewController *)self contentItem];
  v7 = [v6 assignee];
  v8 = [v7 isEqual:v5];

  if (v8)
  {
    v9 = +[FBALog appHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(iFBAFeedbackViewController *)self contentItem];
      v11 = [v10 remoteID];
      *buf = 134217984;
      v17 = [v11 unsignedIntegerValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tried to assign content item [%lu] to assignee.", buf, 0xCu);
    }
  }

  else
  {
    v9 = +[FBKData sharedInstance];
    v12 = [(iFBAFeedbackViewController *)self contentItem];
    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100040610;
    v14[3] = &unk_1000DF1F8;
    v14[4] = self;
    [v9 assignFeedback:v13 toParticipant:v5 completion:v14];
  }
}

@end