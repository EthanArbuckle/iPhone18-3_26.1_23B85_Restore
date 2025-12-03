@interface iFBAFeedbackViewController
- (BOOL)rowShouldPresentAssigneePicker:(id)picker;
- (BOOL)showsAssigneeRow;
- (NSDateFormatter)sectionDateFormatter;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)feedback;
- (id)filePromiseSortDescriptors;
- (id)localizedErrorStringForMaybeFilePromise:(id)promise downloadPermission:(BOOL)permission;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_confirmFilePromiseDeletionWithStub:(id)stub deletionHandler:(id)handler;
- (void)_deleteFilePromise:(id)promise completionHandler:(id)handler;
- (void)autoLogOutIfNeeded;
- (void)beginFileDownloadForFilePromise:(id)promise;
- (void)configureActionsMenu;
- (void)configureKeyboardShortcuts;
- (void)copyFeedbackID;
- (void)copyFeedbackIDAndTitle;
- (void)dealloc;
- (void)demoteIndividualFeedbackToOriginator;
- (void)handleModelChanges:(id)changes;
- (void)hideAttachmentDeletionSpinner;
- (void)participantController:(id)controller didSelectParticipant:(id)participant;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)promoteIndividualFeedbackToTeam:(id)team;
- (void)reloadAppProxy;
- (void)resetObserverTokens;
- (void)setContentItem:(id)item;
- (void)showAttachmentDeletionErrorAlertWithError:(id)error;
- (void)showAttachmentDeletionSpinner;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBody;
- (void)updateEverything;
- (void)updateTitleView;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation iFBAFeedbackViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = iFBAFeedbackViewController;
  [(iFBAFeedbackViewController *)&v17 viewDidLoad];
  tableView = [(iFBAFeedbackViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:0.0];

  tableView2 = [(iFBAFeedbackViewController *)self tableView];
  [tableView2 setEstimatedSectionFooterHeight:0.0];

  [(iFBAFeedbackViewController *)self updateTitleView];
  tableView3 = [(iFBAFeedbackViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(iFBAFeedbackViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:100.0];

  v7 = [NSMutableArray arrayWithCapacity:2];
  [(iFBAFeedbackViewController *)self setObserverTokens:v7];

  navigationItem = [(iFBAFeedbackViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(iFBAFeedbackViewController *)self traitCollectionDidChange:0];
  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 3.0}];
  tableView5 = [(iFBAFeedbackViewController *)self tableView];
  [tableView5 setTableHeaderView:v9];

  v11 = objc_alloc_init(UIRefreshControl);
  [(iFBAFeedbackViewController *)self setRefreshControl:v11];

  refreshControl = [(iFBAFeedbackViewController *)self refreshControl];
  [refreshControl addTarget:self action:"_refreshFeedbackContentWithControl:" forControlEvents:4096];

  [(iFBAFeedbackViewController *)self configureKeyboardShortcuts];
  [(iFBAFeedbackViewController *)self configureActionsMenu];
  v13 = +[FBKAttachmentCell reuseIdentifier];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [UINib nibWithNibName:v13 bundle:v14];

  tableView6 = [(iFBAFeedbackViewController *)self tableView];
  [tableView6 registerNib:v15 forCellReuseIdentifier:v13];
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

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(iFBAFeedbackViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  tableView = [(iFBAFeedbackViewController *)self tableView];
  if (horizontalSizeClass == 1)
  {
    v7 = 1.0;
    v8 = 1.0;
    v9 = tableView;
  }

  else
  {
    v9 = tableView;
    v7 = 20.0;
    v8 = 20.0;
  }

  [tableView _setSectionContentInset:{0.0, v7, 0.0, v8}];
}

- (void)dealloc
{
  [(iFBAFeedbackViewController *)self resetObserverTokens];
  v3.receiver = self;
  v3.super_class = iFBAFeedbackViewController;
  [(iFBAFeedbackViewController *)&v3 dealloc];
}

- (void)setContentItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_contentItem, item);
  v6 = [[NSMutableSet alloc] initWithCapacity:5];
  observedUploadTasks = self->_observedUploadTasks;
  self->_observedUploadTasks = v6;

  if (itemCopy)
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
  observerTokens = [(iFBAFeedbackViewController *)self observerTokens];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  managedObjectContext = [contentItem managedObjectContext];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10003A0CC;
  v15 = &unk_1000DE408;
  objc_copyWeak(&v16, &location);
  v11 = [managedObjectContext addObjectsDidChangeNotificationObserver:&v12];
  [observerTokens addObject:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)resetObserverTokens
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observerTokens = [(iFBAFeedbackViewController *)self observerTokens];
  v4 = [observerTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(observerTokens);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 removeObserver:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observerTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  observerTokens2 = [(iFBAFeedbackViewController *)self observerTokens];
  [observerTokens2 removeAllObjects];
}

- (void)handleModelChanges:(id)changes
{
  changesCopy = changes;
  v5 = [[NSMutableSet alloc] initWithCapacity:6];
  observedUploadTasks = [(iFBAFeedbackViewController *)self observedUploadTasks];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];

  if (contentItem)
  {
    contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
    [v5 addObject:contentItem2];
  }

  contentItem3 = [(iFBAFeedbackViewController *)self contentItem];
  feedback = [contentItem3 feedback];

  if (feedback)
  {
    contentItem4 = [(iFBAFeedbackViewController *)self contentItem];
    feedback2 = [contentItem4 feedback];
    [v5 addObject:feedback2];
  }

  contentItem5 = [(iFBAFeedbackViewController *)self contentItem];
  formResponseStub = [contentItem5 formResponseStub];

  if (formResponseStub)
  {
    contentItem6 = [(iFBAFeedbackViewController *)self contentItem];
    formResponseStub2 = [contentItem6 formResponseStub];

    [v5 addObject:formResponseStub2];
    filePromiseStubs = [formResponseStub2 filePromiseStubs];
    allObjects = [filePromiseStubs allObjects];

    if (allObjects)
    {
      [v5 addObjectsFromArray:allObjects];
    }
  }

  contentItem7 = [(iFBAFeedbackViewController *)self contentItem];
  feedback3 = [contentItem7 feedback];
  feedbackFollowups = [feedback3 feedbackFollowups];

  if (feedbackFollowups)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    contentItem8 = [(iFBAFeedbackViewController *)self contentItem];
    feedback4 = [contentItem8 feedback];
    feedbackFollowups2 = [feedback4 feedbackFollowups];

    v25 = [feedbackFollowups2 countByEnumeratingWithState:&v74 objects:v81 count:16];
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
            objc_enumerationMutation(feedbackFollowups2);
          }

          v29 = *(*(&v74 + 1) + 8 * i);
          [v5 addObject:v29];
          uploadTask = [v29 uploadTask];

          if (uploadTask)
          {
            uploadTask2 = [v29 uploadTask];
            [observedUploadTasks addObject:uploadTask2];
          }

          filePromises = [v29 filePromises];
          allObjects2 = [filePromises allObjects];

          if (allObjects2)
          {
            [v5 addObjectsFromArray:allObjects2];
          }
        }

        v26 = [feedbackFollowups2 countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v26);
    }
  }

  feedback5 = [(iFBAFeedbackViewController *)self feedback];
  contentItem9 = [feedback5 contentItem];
  formResponse = [contentItem9 formResponse];
  uploadTask3 = [formResponse uploadTask];

  if (uploadTask3)
  {
    feedback6 = [(iFBAFeedbackViewController *)self feedback];
    contentItem10 = [feedback6 contentItem];
    formResponse2 = [contentItem10 formResponse];
    uploadTask4 = [formResponse2 uploadTask];
    [observedUploadTasks addObject:uploadTask4];
  }

  updatedObjects = [changesCopy updatedObjects];
  v43 = [updatedObjects intersectsSet:v5];

  if (v43)
  {
    v44 = 1;
  }

  else
  {
    refreshedObjects = [changesCopy refreshedObjects];
    v44 = [refreshedObjects intersectsSet:v5];
  }

  insertedObjects = [changesCopy insertedObjects];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10003AA44;
  v73[3] = &unk_1000DECD8;
  v73[4] = self;
  v47 = [insertedObjects ded_selectItemsPassingTest:v73];

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

  deletedObjects = [changesCopy deletedObjects];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10003AAF0;
  v72[3] = &unk_1000DECD8;
  v72[4] = self;
  v51 = [deletedObjects ded_selectItemsPassingTest:v72];

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
  selfCopy = self;
  objc_opt_class();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v67 = changesCopy;
  deletedObjects2 = [changesCopy deletedObjects];
  v55 = [deletedObjects2 countByEnumeratingWithState:&v68 objects:v78 count:16];
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
          objc_enumerationMutation(deletedObjects2);
        }

        v59 = *(*(&v68 + 1) + 8 * j);
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
          if ([observedUploadTasks containsObject:v60])
          {
            v61 = +[FBALog appHandle];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              taskIdentifier = [v60 taskIdentifier];
              unsignedLongValue = [taskIdentifier unsignedLongValue];
              *buf = 134217984;
              v80 = unsignedLongValue;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Deleted upload task [%lu]. Will update view", buf, 0xCu);
            }

            v44 = 1;
          }
        }
      }

      v56 = [deletedObjects2 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v56);
  }

  if (v44)
  {
    [(iFBAFeedbackViewController *)selfCopy updateEverything];
  }
}

- (id)feedback
{
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  detailedItem = [contentItem detailedItem];

  return detailedItem;
}

- (void)autoLogOutIfNeeded
{
  launchAction = [(iFBAFeedbackViewController *)self launchAction];
  if (launchAction)
  {
    v4 = launchAction;
    launchAction2 = [(iFBAFeedbackViewController *)self launchAction];
    isCaptive = [launchAction2 isCaptive];

    if (isCaptive)
    {
      contentItem = [(iFBAFeedbackViewController *)self contentItem];
      formResponse = [contentItem formResponse];

      if (formResponse && ([formResponse uploadTask], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        v10 = 0;
      }

      else
      {
        v11 = +[FBALog appHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [formResponse ID];
          stringValue = [v12 stringValue];
          v14 = stringValue;
          if (stringValue)
          {
            v15 = stringValue;
          }

          else
          {
            v15 = @"nil";
          }

          uploadTask = [formResponse uploadTask];
          v17 = uploadTask;
          if (uploadTask)
          {
            v18 = uploadTask;
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

      if ([formResponse serverSideIsComplete])
      {
        v19 = +[FBALog appHandle];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Server side has marked FR as complete, exiting restricted mode.", buf, 2u);
        }

        v10 = 1;
      }

      uploadTask2 = [formResponse uploadTask];
      if (uploadTask2 && (v21 = uploadTask2, [formResponse uploadTask], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "localSubmissionStage"), v22, v21, v23 == 6))
      {
        v24 = +[FBALog appHandle];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          uploadTask3 = [formResponse uploadTask];
          v26 = uploadTask3;
          v27 = @"nil";
          if (uploadTask3)
          {
            v27 = uploadTask3;
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

      launchAction3 = [(iFBAFeedbackViewController *)self launchAction];
      LOBYTE(v29) = [launchAction3 shouldMakeFBAVisible];

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10003B878;
      v35[3] = &unk_1000DF630;
      v36 = v32;
      selfCopy = self;
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
  tableView = [(iFBAFeedbackViewController *)self tableView];
  [tableView setBackgroundView:0];

  tableView2 = [(iFBAFeedbackViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)updateBody
{
  v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
  v4 = [[NSMutableArray alloc] initWithCapacity:10];
  if ([(iFBAFeedbackViewController *)self showsAssigneeRow])
  {
    v5 = [[Row alloc] initWithType:0];
    contentItem = [(iFBAFeedbackViewController *)self contentItem];
    [(Row *)v5 setObject:contentItem];

    v7 = objc_opt_new();
    v118 = v5;
    v8 = [NSArray arrayWithObjects:&v118 count:1];
    [v7 setRows:v8];

    [v4 addObject:v7];
  }

  feedback = [(iFBAFeedbackViewController *)self feedback];
  formResponseStub = [feedback formResponseStub];

  if (formResponseStub)
  {
    v91 = v4;
    v11 = objc_opt_new();
    [v11 setTitle:0];
    v12 = [[NSMutableArray alloc] initWithCapacity:5];
    v13 = [[Row alloc] initWithType:7];
    contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
    [(Row *)v13 setObject:contentItem2];

    [v12 addObject:v13];
    v15 = [[Row alloc] initWithType:1];
    [v12 addObject:v15];

    selfCopy = self;
    feedback2 = [(iFBAFeedbackViewController *)self feedback];
    contentItem3 = [feedback2 contentItem];
    formResponse = [contentItem3 formResponse];
    uploadTask = [formResponse uploadTask];

    if (uploadTask && [uploadTask localSubmissionStage] != 6)
    {
      v31 = [[Row alloc] initWithType:3];

      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"Uploading files…" value:&stru_1000E2210 table:0];
      [(Row *)v31 setText:v33];

      feedback3 = [(iFBAFeedbackViewController *)selfCopy feedback];
      contentItem4 = [feedback3 contentItem];
      formResponse2 = [contentItem4 formResponse];
      uploadTask2 = [formResponse2 uploadTask];
      [(Row *)v31 setObject:uploadTask2];

      [v12 addObject:v31];
      v13 = v31;
    }

    else
    {
      v96 = uploadTask;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      feedback4 = [(iFBAFeedbackViewController *)selfCopy feedback];
      formResponseStub2 = [feedback4 formResponseStub];
      visibleFilePromises = [formResponseStub2 visibleFilePromises];

      v23 = [visibleFilePromises countByEnumeratingWithState:&v108 objects:v117 count:16];
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
              objc_enumerationMutation(visibleFilePromises);
            }

            v28 = *(*(&v108 + 1) + 8 * v26);
            v13 = [[Row alloc] initWithType:5];

            name = [v28 name];
            [(Row *)v13 setText:name];

            [(Row *)v13 setObject:v28];
            [v12 addObject:v13];
            v26 = v26 + 1;
            v27 = v13;
          }

          while (v24 != v26);
          v24 = [visibleFilePromises countByEnumeratingWithState:&v108 objects:v117 count:16];
        }

        while (v24);
      }

      v3 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
      uploadTask = v96;
    }

    v38 = [NSArray arrayWithArray:v12];
    [v11 setRows:v38];

    [v91 addObject:v11];
    feedback5 = [(iFBAFeedbackViewController *)selfCopy feedback];

    if (feedback5)
    {
      feedback6 = [(iFBAFeedbackViewController *)selfCopy feedback];
      validFeedbackFollowups = [feedback6 validFeedbackFollowups];
      v42 = [NSSortDescriptor sortDescriptorWithKey:@"createdAt" ascending:1];
      v116 = v42;
      v43 = [NSArray arrayWithObjects:&v116 count:1];
      v44 = [validFeedbackFollowups sortedArrayUsingDescriptors:v43];
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
            type = [v49 type];
            if (type <= 7)
            {
              v97 = v50;
              if (((1 << type) & 0x9D) != 0)
              {
                if ([v49 textResponsesCount] >= 1)
                {
                  v56 = [[Row alloc] initWithType:2];
                  [(Row *)v56 setObject:v49];
                  textResponsesSummary = [v49 textResponsesSummary];
                  [(Row *)v56 setText:textResponsesSummary];

                  v50 = v97;
                  [v52 addObject:v56];
                }

                if ([v49 type])
                {
                  v58 = [[Row alloc] initWithType:2];
                  [(Row *)v58 setObject:v49];
                  displayText = [v49 displayText];
                  [(Row *)v58 setText:displayText];

                  v50 = v97;
                  [v51 addObject:v58];
                }

                if (([v49 isComplete] & 1) == 0 && objc_msgSend(v49, "type"))
                {
                  validationResponse = [[Row alloc] initWithType:4];
                  [(Row *)validationResponse setObject:v49];
                  [v51 addObject:validationResponse];
                  goto LABEL_47;
                }

                if ([v49 type] == 4 || objc_msgSend(v49, "type") == 7)
                {
                  validationResponse = [v49 validationResponse];
                  if (validationResponse)
                  {
                    v61 = [[Row alloc] initWithType:6];
                    if ([(Row *)validationResponse isValidated])
                    {
                      positiveChoice = [v49 positiveChoice];
                      v63 = v85;
                    }

                    else
                    {
                      positiveChoice = [v49 negativeChoice];
                      v63 = v86;
                    }

                    [(Row *)v61 setText:positiveChoice];

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
                  uploadTask3 = [v49 uploadTask];
                  [(Row *)v64 setObject:uploadTask3];

                  v66 = v52;
LABEL_50:
                  [v66 addObject:v64];
                }

                else if ([v49 hasVisibleFiles])
                {
                  v88 = v51;
                  visibleFilePromises2 = [v49 visibleFilePromises];
                  filePromiseSortDescriptors = [(iFBAFeedbackViewController *)selfCopy filePromiseSortDescriptors];
                  v72 = [visibleFilePromises2 sortedArrayUsingDescriptors:filePromiseSortDescriptors];

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
                        filename = [v77 filename];
                        [(Row *)v78 setText:filename];

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

              else if (((1 << type) & 0x60) != 0)
              {
                v64 = [[Row alloc] initWithType:2];
                displayText2 = [v49 displayText];
                [(Row *)v64 setText:displayText2];

                v50 = v97;
                [(Row *)v64 setObject:v49];
                v66 = v51;
                goto LABEL_50;
              }
            }

            [v50 setRows:v51];
            rows = [v50 rows];
            v81 = [rows count];

            if (v81 >= 2)
            {
              [v91 addObject:v50];
            }

            [v95 setRows:v52];
            rows2 = [v95 rows];
            v83 = [rows2 count];

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
    [(iFBAFeedbackViewController *)selfCopy setModelCache:v84];
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
  _filePromiseSortDescriptors = [(iFBAFeedbackViewController *)self _filePromiseSortDescriptors];

  if (!_filePromiseSortDescriptors)
  {
    v4 = +[FBKFilePromise displaySortDescriptors];
    [(iFBAFeedbackViewController *)self set_filePromiseSortDescriptors:v4];
  }

  return [(iFBAFeedbackViewController *)self _filePromiseSortDescriptors];
}

- (BOOL)showsAssigneeRow
{
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  singleTeam = [contentItem singleTeam];
  if ([singleTeam teamType])
  {
    contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
    if ([contentItem2 isOrphaned])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      contentItem3 = [(iFBAFeedbackViewController *)self contentItem];
      assignee = [contentItem3 assignee];
      contentItem4 = [(iFBAFeedbackViewController *)self contentItem];
      originator = [contentItem4 originator];
      v6 = [assignee isEqual:originator] ^ 1;
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
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  feedbackIDString = [contentItem feedbackIDString];
  navigationItem = [(iFBAFeedbackViewController *)self navigationItem];
  [navigationItem setTitle:feedbackIDString];
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

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  identifier = [segueCopy identifier];
  v6 = [identifier isEqualToString:@"FBAFollowupResponsePresentation"];
  if (v6)
  {

LABEL_4:
    destinationViewController = [segueCopy destinationViewController];
    topViewController = [destinationViewController topViewController];
    [topViewController setIsUnsolicited:v6 ^ 1];
    pendingFollowup = [(iFBAFeedbackViewController *)self pendingFollowup];
    [topViewController setFollowup:pendingFollowup];

    feedback = [(iFBAFeedbackViewController *)self feedback];
    contentItem = [feedback contentItem];
    [topViewController setContentItem:contentItem];
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  identifier2 = [segueCopy identifier];
  v8 = [identifier2 isEqualToString:@"FBAUnsolicitedFollowupResponsePresentation"];

  if (v8)
  {
    goto LABEL_4;
  }

  identifier3 = [segueCopy identifier];
  v15 = [identifier3 isEqualToString:@"PromoteSingleFeedbackPresentation"];

  if (v15)
  {
    destinationViewController = [segueCopy destinationViewController];
    presentationController = [destinationViewController presentationController];
    [presentationController setDelegate:self];

    topViewController = [destinationViewController topViewController];
    [topViewController setPickerDelegate:self];
    contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
    singleTeam = [contentItem2 singleTeam];
    [topViewController setSelectedTeam:singleTeam];

    feedback = [(iFBAFeedbackViewController *)self contentItem];
    contentItem = [feedback user];
    activeTeams = [contentItem activeTeams];
    v20 = +[FBKTeam sortDescriptors];
    v21 = [activeTeams sortedArrayUsingDescriptors:v20];
    [topViewController setTeams:v21];

    goto LABEL_5;
  }

  identifier4 = [segueCopy identifier];
  v23 = [identifier4 isEqualToString:@"AssignSingleFeedbackPresentation"];

  if (v23)
  {
    destinationViewController = [segueCopy destinationViewController];
    topViewController = [destinationViewController topViewController];
    [topViewController setParticipantDelegate:self];
    feedback = [(iFBAFeedbackViewController *)self contentItem];
    [topViewController configureWithContentItem:feedback];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)beginFileDownloadForFilePromise:(id)promise
{
  promiseCopy = promise;
  if (![(iFBAFeedbackViewController *)self fileDownloadInProgress])
  {
    contentItem = [(iFBAFeedbackViewController *)self contentItem];
    canDownloadFiles = [contentItem canDownloadFiles];

    if (canDownloadFiles && [promiseCopy downloadState] == 2)
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
      [v9 getFileDownloadURLForFilePromise:promiseCopy completion:v17];
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v11 = FBKCommonStrings;
      v12 = [v10 localizedStringForKey:@"FILE_DOWNLOAD_UNAVAILABLE_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
      v13 = [(iFBAFeedbackViewController *)self localizedErrorStringForMaybeFilePromise:promiseCopy downloadPermission:canDownloadFiles];
      v9 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:1];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"OK" value:&stru_1000E2210 table:v11];
      v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:&stru_1000DFB10];
      [v9 addAction:v16];

      [(iFBAFeedbackViewController *)self presentViewController:v9 animated:1 completion:0];
    }
  }
}

- (id)localizedErrorStringForMaybeFilePromise:(id)promise downloadPermission:(BOOL)permission
{
  promiseCopy = promise;
  v6 = promiseCopy;
  if (promiseCopy)
  {
    if (permission)
    {
      localizedDownloadErrorString = [promiseCopy localizedDownloadErrorString];
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

  localizedDownloadErrorString = [v8 localizedStringForKey:v11 value:&stru_1000E2210 table:v10];

LABEL_7:

  return localizedDownloadErrorString;
}

- (void)configureActionsMenu
{
  v3 = [_TtC18Feedback_Assistant23FBAActionMenuController alloc];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  feedbackIDString = [contentItem feedbackIDString];
  v6 = [(FBAActionMenuController *)v3 initWithTitle:feedbackIDString subtitle:0 actions:0];

  contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
  LODWORD(feedbackIDString) = [contentItem2 allowUnsolicitedFollowup];

  if (feedbackIDString)
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

  contentItem3 = [(iFBAFeedbackViewController *)self contentItem];
  itemType = [contentItem3 itemType];

  if (itemType == 4)
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

  contentItem4 = [(iFBAFeedbackViewController *)self contentItem];
  itemType2 = [contentItem4 itemType];

  if (itemType2 == 4)
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

  contentItem5 = [(iFBAFeedbackViewController *)self contentItem];
  user = [contentItem5 user];
  hasManagedTeams = [user hasManagedTeams];

  if (hasManagedTeams)
  {
    contentItem6 = [(iFBAFeedbackViewController *)self contentItem];
    canPromoteFeedback = [contentItem6 canPromoteFeedback];

    if (canPromoteFeedback)
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

    contentItem7 = [(iFBAFeedbackViewController *)self contentItem];
    canDemoteFeedback = [contentItem7 canDemoteFeedback];

    if (canDemoteFeedback)
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

    contentItem8 = [(iFBAFeedbackViewController *)self contentItem];
    canReassignFeedback = [contentItem8 canReassignFeedback];

    if (canReassignFeedback)
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

  contentItem9 = [(iFBAFeedbackViewController *)self contentItem];
  canCloseFeedback = [contentItem9 canCloseFeedback];

  if (canCloseFeedback)
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

  navigationItem = [(iFBAFeedbackViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [(FBAActionMenuController *)v6 attachToBarButtonItem:rightBarButtonItem];
}

- (void)copyFeedbackID
{
  v5 = +[UIPasteboard generalPasteboard];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  feedbackIDString = [contentItem feedbackIDString];
  [v5 setString:feedbackIDString];
}

- (void)copyFeedbackIDAndTitle
{
  v5 = +[UIPasteboard generalPasteboard];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  feedbackIDAndTitleString = [contentItem feedbackIDAndTitleString];
  [v5 setString:feedbackIDAndTitleString];
}

- (void)reloadAppProxy
{
  launchAction = [(iFBAFeedbackViewController *)self launchAction];
  isCaptive = [launchAction isCaptive];

  if ((isCaptive & 1) == 0)
  {
    v4 = +[FBADraftManager sharedInstance];
    [v4 reloadApp];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [modelCache objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  rows = [v6 rows];
  v8 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if ([v8 type] == 4)
  {
    object = [v8 object];
    canRespond = [object canRespond];

    if (canRespond)
    {
      object2 = [v8 object];
      [(iFBAFeedbackViewController *)self setPendingFollowup:object2];

      v12 = @"FBAFollowupResponsePresentation";
      selfCopy3 = self;
      selfCopy2 = self;
LABEL_8:
      [(iFBAFeedbackViewController *)selfCopy3 performSegueWithIdentifier:v12 sender:selfCopy2];
      goto LABEL_9;
    }
  }

  if ([v8 type] == 5)
  {
    object3 = [v8 object];
    [(iFBAFeedbackViewController *)self beginFileDownloadForFilePromise:object3];

    goto LABEL_9;
  }

  if ([(iFBAFeedbackViewController *)self rowShouldPresentAssigneePicker:v8])
  {
    v12 = @"AssignSingleFeedbackPresentation";
    selfCopy3 = self;
    selfCopy2 = 0;
    goto LABEL_8;
  }

LABEL_9:
  tableView = [(iFBAFeedbackViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (BOOL)rowShouldPresentAssigneePicker:(id)picker
{
  pickerCopy = picker;
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  canReassignFeedback = [contentItem canReassignFeedback];

  if (canReassignFeedback)
  {
    if (![pickerCopy type])
    {
      isKindOfClass = 1;
      goto LABEL_8;
    }

    if ([pickerCopy type] == 7 && !-[iFBAFeedbackViewController showsAssigneeRow](self, "showsAssigneeRow"))
    {
      object = [pickerCopy object];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      goto LABEL_8;
    }
  }

  isKindOfClass = 0;
LABEL_8:

  return isKindOfClass & 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v4 = [modelCache count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [modelCache objectAtIndex:section];
  rows = [v6 rows];
  v8 = [rows count];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v6 = [modelCache objectAtIndex:section];

  title = [v6 title];

  return title;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v8 = [modelCache count] - 1;

  v9 = 3.0;
  if (v8 == section)
  {
    v12.receiver = self;
    v12.super_class = iFBAFeedbackViewController;
    [(iFBAFeedbackViewController *)&v12 tableView:viewCopy heightForFooterInSection:section];
    v9 = v10;
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v9 = [modelCache objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  rows = [v9 rows];
  v11 = [rows objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  type = [v11 type];
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_39;
        }

        rows = [viewCopy dequeueReusableCellWithIdentifier:@"FormResponseDetailCell" forIndexPath:pathCopy];
        contentItem = [(iFBAFeedbackViewController *)self contentItem];
        [rows setContentItem:contentItem];
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    if (type != 2)
    {
      if (type == 3)
      {
        rows = [viewCopy dequeueReusableCellWithIdentifier:@"UploadProgressCell" forIndexPath:pathCopy];
        contentItem = [v11 object];
        [rows setObservedTask:contentItem];
        [rows setSelectionStyle:0];
        [rows layoutIfNeeded];
      }

      else
      {
        rows = [viewCopy dequeueReusableCellWithIdentifier:@"RespondActionCell" forIndexPath:pathCopy];
        contentItem = [v11 object];
        if ([contentItem canRespond])
        {
          +[iFBAConstants tintColor];
        }

        else
        {
          +[UIColor secondaryLabelColor];
        }
        v38 = ;
        textLabel = [rows textLabel];
        [textLabel setTextColor:v38];

        if ([contentItem canRespond])
        {
          v40 = 3;
        }

        else
        {
          v40 = 0;
        }

        [rows setSelectionStyle:v40];
      }

      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (type > 7)
  {
    if (type == 8)
    {
      rows = [viewCopy dequeueReusableCellWithIdentifier:@"ResponseHeaderCell" forIndexPath:pathCopy];
      contentItem = [v11 object];
      [rows configureForAppleFeedbackWithFollowup:contentItem];
      goto LABEL_38;
    }

    if (type == 9)
    {
      tableView = [(iFBAFeedbackViewController *)self tableView];
      rows = [tableView dequeueReusableCellWithIdentifier:@"StatusTextCell"];

      object = [v11 object];
      attributedStringRepresentation = [object attributedStringRepresentation];
      textLabel2 = [rows textLabel];
      [textLabel2 setAttributedText:attributedStringRepresentation];

      goto LABEL_28;
    }

    if (type != 10)
    {
      goto LABEL_39;
    }

LABEL_14:
    rows = [viewCopy dequeueReusableCellWithIdentifier:@"PromptOnlyTextCell" forIndexPath:pathCopy];
    contentItem = [v11 text];
    [rows configureCellForLinkText:contentItem];
LABEL_38:

    goto LABEL_39;
  }

  if (type == 5)
  {
    v32 = +[FBKAttachmentCell reuseIdentifier];
    rows = [viewCopy dequeueReusableCellWithIdentifier:v32 forIndexPath:pathCopy];

    v33 = [[FBKAttachment alloc] initWithCollectorIdentifier:@"ffu-no-collector-id" deviceUUID:@"no-device"];
    [v33 setState:2];
    text = [v11 text];
    [v33 setPlaceholderText:text];

    [rows setSelectionStyle:3];
    object2 = [v11 object];
    downloadState = [object2 downloadState];
    if (object2 && downloadState == 3)
    {
      state = 7;
    }

    else
    {
      state = 6;
      if (object2 && downloadState)
      {
        v42 = +[UIColor labelColor];
        attachmentDisplayName = [rows attachmentDisplayName];
        [attachmentDisplayName setTextColor:v42];

        state = [v33 state];
      }
    }

    [v33 setState:state];
    [v33 setAttachmentType:6];
    [rows setAttachment:v33];
    v44 = +[iFBAConstants tintColor];
    imageView = [rows imageView];
    [imageView setTintColor:v44];

    tableView2 = [(iFBAFeedbackViewController *)self tableView];
    [tableView2 separatorInset];
    [rows updateContentInsetWithValue:v47];

    goto LABEL_39;
  }

  if (type == 6)
  {
    tableView3 = [(iFBAFeedbackViewController *)self tableView];
    rows = [tableView3 dequeueReusableCellWithIdentifier:@"ValidationCell" forIndexPath:pathCopy];

    text2 = [v11 text];
    textLabel3 = [rows textLabel];
    [textLabel3 setText:text2];

    v26 = +[UIColor labelColor];
    textLabel4 = [rows textLabel];
    [textLabel4 setTextColor:v26];

    object = [v11 object];
    attributedStringRepresentation = [rows imageView];
    [attributedStringRepresentation setImage:object];
LABEL_28:

    [rows setSelectionStyle:0];
    goto LABEL_39;
  }

LABEL_18:
  rows = [viewCopy dequeueReusableCellWithIdentifier:@"ResponseHeaderCell" forIndexPath:pathCopy];
  object3 = [v11 object];
  if (object3)
  {
    v15 = object3;
    object4 = [v11 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contentItem = [v11 object];
      [rows configureForFollowup:contentItem];
      goto LABEL_38;
    }
  }

  object5 = [v11 object];
  if (object5)
  {
    v19 = object5;
    object6 = [v11 object];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      type2 = [v11 type];
      contentItem = [(iFBAFeedbackViewController *)self contentItem];
      if (type2)
      {
        [rows configureForContentItem:contentItem];
      }

      else
      {
        [rows configureAssigneeForContentItem:contentItem];
      }

      goto LABEL_38;
    }
  }

LABEL_39:

  return rows;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003E8D0;
  v4[3] = &unk_1000DE8F0;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  modelCache = [(iFBAFeedbackViewController *)self modelCache];
  v9 = [modelCache objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  rows = [v9 rows];
  v11 = [rows objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if ([v11 type] != 5)
  {
    v18 = 0;
    goto LABEL_11;
  }

  object = [v11 object];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  v14 = contentItem;
  if (!contentItem)
  {
    v19 = +[FBALog appHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100094390();
    }

    goto LABEL_9;
  }

  if (![contentItem canDeleteFiles])
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
  v22 = object;
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

- (void)_deleteFilePromise:(id)promise completionHandler:(id)handler
{
  handlerCopy = handler;
  promiseCopy = promise;
  [(iFBAFeedbackViewController *)self showAttachmentDeletionSpinner];
  v8 = +[FBKData sharedInstance];
  uUIDString = [promiseCopy UUIDString];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003EEB8;
  v11[3] = &unk_1000DFC10;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v8 deleteFilePromiseWithUUID:uUIDString object:promiseCopy completion:v11];
}

- (void)_confirmFilePromiseDeletionWithStub:(id)stub deletionHandler:(id)handler
{
  stubCopy = stub;
  handlerCopy = handler;
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
  v22 = stubCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = stubCopy;
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

- (void)showAttachmentDeletionErrorAlertWithError:(id)error
{
  userInfo = [error userInfo];
  v5 = [userInfo objectForKeyedSubscript:FBKSSeedPortalRequestDetails];
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

- (void)promoteIndividualFeedbackToTeam:(id)team
{
  teamCopy = team;
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  singleTeam = [contentItem singleTeam];
  v7 = [teamCopy isEqual:singleTeam];

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
    name = [teamCopy name];
    v14 = [NSString stringWithFormat:v12, name, 0];
    v8 = [UIAlertController alertControllerWithTitle:0 message:v14 preferredStyle:[(iFBAFeedbackViewController *)self fbk_objc_preferredAlertStyle]];

    if ([v8 preferredStyle]== 1)
    {
      navigationItem = +[NSBundle mainBundle];
      rightBarButtonItem = [navigationItem localizedStringForKey:@"PROMOTE_FEEDBACK_TITLE_SINGLE_TEAM" value:&stru_1000E2210 table:v11];
      contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
      feedbackIDString = [contentItem2 feedbackIDString];
      name2 = [teamCopy name];
      v20 = [NSString stringWithFormat:rightBarButtonItem, feedbackIDString, name2, 0];
      [v8 setTitle:v20];

      v9 = &_s8Dispatch0A3QoSV0B6SClassOMa_ptr;
    }

    else
    {
      navigationItem = [(iFBAFeedbackViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      contentItem2 = [v8 popoverPresentationController];
      [contentItem2 setSourceItem:rightBarButtonItem];
    }

    mainBundle = [v9[287] mainBundle];
    v22 = [mainBundle localizedStringForKey:@"PROMOTE_FEEDBACK" value:&stru_1000E2210 table:v11];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003F9C0;
    v31[3] = &unk_1000DE4A8;
    v31[4] = self;
    v32 = teamCopy;
    v23 = [UIAlertAction actionWithTitle:v22 style:2 handler:v31];
    [v8 addAction:v23];

    mainBundle2 = [v9[287] mainBundle];
    v25 = [mainBundle2 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:v11];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003FD04;
    v30[3] = &unk_1000DE458;
    v30[4] = self;
    v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:v30];
    [v8 addAction:v26];

    selfCopy = self;
    presentedViewController = [(iFBAFeedbackViewController *)selfCopy presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(iFBAFeedbackViewController *)selfCopy presentedViewController];

      selfCopy = presentedViewController2;
    }

    [(iFBAFeedbackViewController *)selfCopy presentViewController:v8 animated:1 completion:0];
  }
}

- (void)demoteIndividualFeedbackToOriginator
{
  v3 = +[NSBundle mainBundle];
  v4 = FBKCommonStrings;
  v5 = [v3 localizedStringForKey:@"DEMOTE_FEEDBACK_ASSIGN_WARNING" value:&stru_1000E2210 table:FBKCommonStrings];
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  singleTeam = [contentItem singleTeam];
  name = [singleTeam name];
  v9 = [NSString stringWithFormat:v5, name, 0];
  v10 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:[(iFBAFeedbackViewController *)self fbk_objc_preferredAlertStyle]];

  if ([v10 preferredStyle] == 1)
  {
    navigationItem = +[NSBundle mainBundle];
    rightBarButtonItem = [navigationItem localizedStringForKey:@"DEMOTE_FEEDBACK_TITLE" value:&stru_1000E2210 table:v4];
    contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
    feedbackIDString = [contentItem2 feedbackIDString];
    contentItem3 = [(iFBAFeedbackViewController *)self contentItem];
    [contentItem3 singleTeam];
    v16 = v28 = v4;
    name2 = [v16 name];
    v18 = [NSString stringWithFormat:rightBarButtonItem, feedbackIDString, name2, 0];
    [v10 setTitle:v18];

    v4 = v28;
  }

  else
  {
    navigationItem = [(iFBAFeedbackViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    contentItem2 = [v10 popoverPresentationController];
    [contentItem2 setSourceItem:rightBarButtonItem];
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

  selfCopy = self;
  presentedViewController = [(iFBAFeedbackViewController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(iFBAFeedbackViewController *)selfCopy presentedViewController];

    selfCopy = presentedViewController2;
  }

  [(iFBAFeedbackViewController *)selfCopy presentViewController:v10 animated:1 completion:0];
}

- (void)participantController:(id)controller didSelectParticipant:(id)participant
{
  participantCopy = participant;
  contentItem = [(iFBAFeedbackViewController *)self contentItem];
  assignee = [contentItem assignee];
  v8 = [assignee isEqual:participantCopy];

  if (v8)
  {
    v9 = +[FBALog appHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      contentItem2 = [(iFBAFeedbackViewController *)self contentItem];
      remoteID = [contentItem2 remoteID];
      *buf = 134217984;
      unsignedIntegerValue = [remoteID unsignedIntegerValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tried to assign content item [%lu] to assignee.", buf, 0xCu);
    }
  }

  else
  {
    v9 = +[FBKData sharedInstance];
    contentItem3 = [(iFBAFeedbackViewController *)self contentItem];
    v15 = contentItem3;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100040610;
    v14[3] = &unk_1000DF1F8;
    v14[4] = self;
    [v9 assignFeedback:v13 toParticipant:participantCopy completion:v14];
  }
}

@end