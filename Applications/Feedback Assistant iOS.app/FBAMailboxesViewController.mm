@interface FBAMailboxesViewController
- (BOOL)_shouldUseBackgroundColor;
- (BOOL)canLaunchFeedbackDraft;
- (BOOL)canLaunchSurveyDraft;
- (BOOL)canShowBatchUIWithAction:(id)a3;
- (BOOL)canShowItems;
- (BOOL)hasContentItemsToShow;
- (BOOL)showsEnhancedLoggingSection;
- (BOOL)userIsEnrolledInAnySeedingProgram;
- (FBAMailboxesViewController)initWithCoder:(id)a3;
- (FBAMailboxesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FBKData)data;
- (id)batchEvaluationViewControllerWithUseNavigationStack:(BOOL)a3 showsCloseButton:(BOOL)a4 onDismiss:(id)a5;
- (id)batchUICellWithCollectionView:(id)a3 indexPath:(id)a4 reuseIdentifier:(id)a5;
- (id)composeCellRegistration;
- (id)fbkLeftToolbarItem;
- (id)footerRegistration;
- (id)headerRegistration;
- (id)listCellRegistration;
- (id)makeCompositionalLayout;
- (id)makeSnapshot;
- (id)teamForIndexPath:(id)a3;
- (id)teamForSection:(int64_t)a3;
- (int64_t)sectionForTeam:(id)a3;
- (unint64_t)fbkNewFeedbackButtonState;
- (void)_beginBugForTeam:(id)a3 sender:(id)a4;
- (void)awakeFromNib;
- (void)beginBugForTeam:(id)a3 sender:(id)a4;
- (void)beginFeedbackWithDraftItem:(id)a3;
- (void)beginPullToRefresh;
- (void)bugFormPicker:(id)a3 didSelectBugFormStub:(id)a4;
- (void)bugFormPickerDidCancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInit;
- (void)configureCollectionView;
- (void)controller:(id)a3 didFailToLoadDraftWithError:(id)a4;
- (void)controller:(id)a3 didFinishSubmissionWithError:(id)a4;
- (void)controller:(id)a3 didRequestDismissalWithSavedDraft:(BOOL)a4;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReloadApp;
- (void)fbkCreateNewFeedback:(id)a3;
- (void)hideLoadingView;
- (void)launchFeedbackDraftWithUrlAction:(id)a3;
- (void)launchInboxWithLaunchAction:(id)a3;
- (void)launchNewDraftViewControllerWithBugFormStub:(id)a3 draftItem:(id)a4 surveyBugForm:(id)a5 launchAction:(id)a6 team:(id)a7 completion:(id)a8;
- (void)launchSurveyWithUrlAction:(id)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)presentNonParticipantView;
- (void)reallyLaunchSurveyWithUrlAction:(id)a3 team:(id)a4 surveyItem:(id)a5;
- (void)reloadApp;
- (void)respondToUrlAction:(id)a3;
- (void)runDelayedUrlActionIfNeeded;
- (void)shouldShowBatchUIWithCompletion:(id)a3;
- (void)showBatchUIWithAction:(id)a3;
- (void)showItemWithUrlAction:(id)a3;
- (void)showLoadingView;
- (void)showTargetedFeedbackLoadErrorAlert;
- (void)showTargetedSurveyLoadErrorAlert;
- (void)tryLaunchingDraft:(id)a3 orStub:(id)a4 orBugForm:(id)a5 forTeam:(id)a6 withSender:(id)a7;
- (void)viewDidLoad;
@end

@implementation FBAMailboxesViewController

- (FBAMailboxesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBAMailboxesViewController;
  v4 = [(FBAMailboxesViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(FBAMailboxesViewController *)v4 commonInit];
  }

  return v5;
}

- (FBAMailboxesViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FBAMailboxesViewController;
  v3 = [(FBAMailboxesViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FBAMailboxesViewController *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v5)
  {
    v6 = +[FBKData sharedInstance];
    objc_storeWeak(&self->_data, v6);

    self->_isApplyingSnapshot = 0;
    self->_hasLoadedFormItems = 0;
    self->_hasFinishedFirstLoad = 0;
    self->_hideAllInboxes = 1;
    delayedUrlAction = self->_delayedUrlAction;
    self->_delayedUrlAction = 0;

    pendingLaunchAction = self->_pendingLaunchAction;
    self->_pendingLaunchAction = 0;

    v9 = +[FBKTeam sortDescriptors];
    teamSortDescriptors = self->_teamSortDescriptors;
    self->_teamSortDescriptors = v9;

    sortedTeams = self->_sortedTeams;
    self->_sortedTeams = &__NSArray0__struct;

    self->_isBatchUIEnabled = 0;
    v12 = objc_alloc_init(FBACombinedInbox);
    v26[0] = v12;
    v13 = objc_alloc_init(FBADraftsInbox);
    v26[1] = v13;
    v14 = objc_alloc_init(FBASubmittedInbox);
    v26[2] = v14;
    v15 = [NSArray arrayWithObjects:v26 count:3];
    inboxes = self->_inboxes;
    self->_inboxes = v15;

    v17 = objc_opt_new();
    v25[0] = v17;
    v18 = objc_opt_new();
    v25[1] = v18;
    v19 = objc_opt_new();
    v25[2] = v19;
    v20 = objc_opt_new();
    v25[3] = v20;
    v21 = [NSArray arrayWithObjects:v25 count:4];
    smartMailboxes = self->_smartMailboxes;
    self->_smartMailboxes = v21;

    v23 = objc_opt_new();
    enhancedLoggingInbox = self->_enhancedLoggingInbox;
    self->_enhancedLoggingInbox = v23;
  }
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FBAMailboxesViewController;
  [(FBAMailboxesViewController *)&v3 awakeFromNib];
  [(FBAMailboxesViewController *)self setClearsSelectionOnViewWillAppear:1];
}

- (void)viewDidLoad
{
  v84.receiver = self;
  v84.super_class = FBAMailboxesViewController;
  [(FBAMailboxesViewController *)&v84 viewDidLoad];
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v5)
  {
    objc_initWeak(&location, self);
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_10001E490;
    v81[3] = &unk_1000DF018;
    objc_copyWeak(&v82, &location);
    [(FBAMailboxesViewController *)self shouldShowBatchUIWithCompletion:v81];
    if ((FBKIsSolariumEnabled() & 1) == 0)
    {
      v6 = [UIImageSymbolConfiguration configurationWithPointSize:32.0];
      v7 = [UIImage systemImageNamed:FBKSystemImageNameSettings withConfiguration:v6];
      v8 = [UIButton systemButtonWithImage:v7 target:self action:"showSettings"];

      [v8 setEnabled:0];
      v9 = [(FBAMailboxesViewController *)self navigationItem];
      [v9 _setLargeTitleAccessoryView:v8 alignToBaseline:0];
    }

    v10 = [(FBAMailboxesViewController *)self splitViewController];
    v11 = [v10 viewControllers];
    v12 = [v11 lastObject];
    v13 = [v12 topViewController];
    [(FBAMailboxesViewController *)self setDetailViewController:v13];

    [(FBAMailboxesViewController *)self showLoadingView];
    v14 = objc_opt_new();
    [(FBAMailboxesViewController *)self setFbaDataObservers:v14];

    v15 = +[NSNotificationCenter defaultCenter];
    v16 = +[NSOperationQueue mainQueue];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_10001E504;
    v80[3] = &unk_1000DF040;
    v80[4] = self;
    v17 = [v15 addObserverForName:FBKUserDidLogInNotification object:0 queue:v16 usingBlock:v80];

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = +[NSOperationQueue mainQueue];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10001E670;
    v79[3] = &unk_1000DF040;
    v79[4] = self;
    v20 = [v18 addObserverForName:@"FBADidDismissLegalAgreementNotification" object:0 queue:v19 usingBlock:v79];

    v21 = [(FBAMailboxesViewController *)self fbaDataObservers];
    v22 = [(FBAMailboxesViewController *)self data];
    v23 = [v22 notificationCenter];
    v24 = +[NSOperationQueue mainQueue];
    v25 = FBKDidRefreshContentItemsNotification;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10001E678;
    v77[3] = &unk_1000DEC50;
    objc_copyWeak(&v78, &location);
    v26 = [v23 addObserverForName:v25 object:0 queue:v24 usingBlock:v77];
    [v21 addObject:v26];

    v27 = [(FBAMailboxesViewController *)self fbaDataObservers];
    v28 = [(FBAMailboxesViewController *)self data];
    v29 = [v28 notificationCenter];
    v30 = +[NSOperationQueue mainQueue];
    v31 = FBKDidRefreshFormStubsNotification;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10001E6D8;
    v75[3] = &unk_1000DEC50;
    objc_copyWeak(&v76, &location);
    v32 = [v29 addObserverForName:v31 object:0 queue:v30 usingBlock:v75];
    [v27 addObject:v32];

    v33 = +[NSNotificationCenter defaultCenter];
    v34 = +[NSOperationQueue mainQueue];
    v35 = FBKUserDidLogOutNotification;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10001E7C0;
    v73[3] = &unk_1000DF068;
    v73[4] = self;
    objc_copyWeak(&v74, &location);
    v36 = [v33 addObserverForName:v35 object:0 queue:v34 usingBlock:v73];

    v37 = [(FBAMailboxesViewController *)self fbaDataObservers];
    v38 = [(FBAMailboxesViewController *)self data];
    v39 = [v38 notificationCenter];
    v40 = +[NSOperationQueue mainQueue];
    v41 = FBKLocalDataDidChangeNotification;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10001E834;
    v71[3] = &unk_1000DEC50;
    objc_copyWeak(&v72, &location);
    v42 = [v39 addObserverForName:v41 object:0 queue:v40 usingBlock:v71];
    [v37 addObject:v42];

    v43 = [(FBAMailboxesViewController *)self fbaDataObservers];
    v44 = [(FBAMailboxesViewController *)self data];
    v45 = [v44 notificationCenter];
    v46 = +[NSOperationQueue mainQueue];
    v47 = FBKFormUploadStatusChangeNotification;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10001E874;
    v69[3] = &unk_1000DEC50;
    objc_copyWeak(&v70, &location);
    v48 = [v45 addObserverForName:v47 object:0 queue:v46 usingBlock:v69];
    [v43 addObject:v48];

    v49 = +[NSNotificationCenter defaultCenter];
    v50 = +[NSOperationQueue mainQueue];
    v51 = FBKUserIsLoggingOutNotification;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10001E8B4;
    v67[3] = &unk_1000DEC50;
    objc_copyWeak(&v68, &location);
    v52 = [v49 addObserverForName:v51 object:0 queue:v50 usingBlock:v67];

    v53 = [(FBAMailboxesViewController *)self fbaDataObservers];
    v54 = [(FBAMailboxesViewController *)self data];
    v55 = [v54 notificationCenter];
    v56 = +[NSOperationQueue mainQueue];
    v57 = FBKUserNoProgramsNotification;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10001E998;
    v65[3] = &unk_1000DEC50;
    objc_copyWeak(&v66, &location);
    v58 = [v55 addObserverForName:v57 object:0 queue:v56 usingBlock:v65];
    [v53 addObject:v58];

    v59 = objc_opt_new();
    [v59 addTarget:self action:"beginPullToRefresh" forControlEvents:4096];
    objc_storeStrong(&self->_refreshControl, v59);
    v60 = [(FBAMailboxesViewController *)self collectionView];
    [v60 setRefreshControl:v59];

    v61 = [(FBAMailboxesViewController *)self collectionView];
    [v61 setAlwaysBounceVertical:1];

    v62 = [UIKeyCommand keyCommandWithInput:@"R" modifierFlags:1572864 action:"reloadApp"];
    v63 = +[NSBundle mainBundle];
    v64 = [v63 localizedStringForKey:@"REFRESH" value:&stru_1000E2210 table:FBKCommonStrings];
    [v62 setDiscoverabilityTitle:v64];

    [(FBAMailboxesViewController *)self addKeyCommand:v62];
    [(FBAMailboxesViewController *)self configureCollectionView];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);
    objc_destroyWeak(&v78);
    objc_destroyWeak(&v82);
    objc_destroyWeak(&location);
  }
}

- (id)fbkLeftToolbarItem
{
  if ([(FBAMailboxesViewController *)self _shouldUseSolarium])
  {
    v3 = [UIBarButtonItem alloc];
    v4 = [UIImage systemImageNamed:@"person.fill"];
    v5 = [v3 initWithImage:v4 style:0 target:self action:"showSettings"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didReceiveMemoryWarning
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(FBAMailboxesViewController *)self sortedTeams];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(FBAMailboxesViewController *)self data];
        [v10 reduceToFault:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = FBAMailboxesViewController;
  [(FBAMailboxesViewController *)&v11 didReceiveMemoryWarning];
}

- (void)dealloc
{
  v3 = [(FBAMailboxesViewController *)self data];
  v4 = [v3 notificationCenter];

  v5 = [(FBAMailboxesViewController *)self fbaDataObservers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001EECC;
  v10[3] = &unk_1000DEC28;
  v11 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v10];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  fbaDataObservers = self->_fbaDataObservers;
  self->_fbaDataObservers = 0;

  v9.receiver = self;
  v9.super_class = FBAMailboxesViewController;
  [(FBAMailboxesViewController *)&v9 dealloc];
}

- (void)configureCollectionView
{
  if ([(FBAMailboxesViewController *)self _shouldUseBackgroundColor])
  {
    v3 = +[UIColor systemGroupedBackgroundColor];
    v4 = [(FBAMailboxesViewController *)self collectionView];
    [v4 setBackgroundColor:v3];
  }

  v5 = [(FBAMailboxesViewController *)self collectionView];
  [v5 setDelegate:self];

  objc_initWeak(&location, self);
  v6 = [(FBAMailboxesViewController *)self makeCompositionalLayout];
  v7 = [(FBAMailboxesViewController *)self collectionView];
  [v7 setCollectionViewLayout:v6];

  v8 = [(FBAMailboxesViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"batch-ui-row"];

  v9 = [(FBAMailboxesViewController *)self headerRegistration];
  v10 = [(FBAMailboxesViewController *)self footerRegistration];
  v11 = [(FBAMailboxesViewController *)self listCellRegistration];
  v12 = [(FBAMailboxesViewController *)self composeCellRegistration];
  v13 = [UICollectionViewDiffableDataSource alloc];
  v14 = [(FBAMailboxesViewController *)self collectionView];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F1C8;
  v24[3] = &unk_1000DF090;
  v24[4] = self;
  objc_copyWeak(&v27, &location);
  v15 = v11;
  v25 = v15;
  v16 = v12;
  v26 = v16;
  v17 = [v13 initWithCollectionView:v14 cellProvider:v24];
  [(FBAMailboxesViewController *)self setDiffableDataSource:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F444;
  v21[3] = &unk_1000DF0B8;
  v18 = v9;
  v22 = v18;
  v19 = v10;
  v23 = v19;
  v20 = [(FBAMailboxesViewController *)self diffableDataSource];
  [v20 setSupplementaryViewProvider:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (id)makeCompositionalLayout
{
  objc_initWeak(&location, self);
  v3 = [(FBAMailboxesViewController *)self _shouldUseBackgroundColor];
  v4 = [UICollectionViewCompositionalLayout alloc];
  v5 = 2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F600;
  v8[3] = &unk_1000DF0E0;
  if (!v3)
  {
    v5 = 3;
  }

  v8[4] = self;
  v9[1] = v5;
  objc_copyWeak(v9, &location);
  v6 = [v4 initWithSectionProvider:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

- (id)headerRegistration
{
  objc_initWeak(&location, self);
  v3 = objc_opt_class();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001FC54;
  v6[3] = &unk_1000DF108;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v3 elementKind:UICollectionElementKindSectionHeader configurationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)footerRegistration
{
  objc_initWeak(&location, self);
  v3 = objc_opt_class();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001FE30;
  v6[3] = &unk_1000DF130;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v3 elementKind:UICollectionElementKindSectionFooter configurationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)listCellRegistration
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020020;
  v4[3] = &unk_1000DF158;
  v4[4] = self;
  v2 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v4];

  return v2;
}

- (id)composeCellRegistration
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000202FC;
  v4[3] = &unk_1000DF158;
  v4[4] = self;
  v2 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v4];

  return v2;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  [v17 deselectItemAtIndexPath:v6 animated:1];
  v7 = [(FBAMailboxesViewController *)self diffableDataSource];
  v8 = [v7 sectionIdentifierForIndex:{objc_msgSend(v6, "section")}];

  if ([v8 isEqualToString:@"smart-mailbox"])
  {
    v9 = [(FBAMailboxesViewController *)self smartMailboxes];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v11 = self;
  }

  else
  {
    if (![v8 isEqualToString:@"enhanced-logging-section"])
    {
      if ([v8 isEqualToString:@"batch-ui-section"])
      {
        [(FBAMailboxesViewController *)self showBatchUIWithAction:0];
      }

      else
      {
        v12 = [(FBAMailboxesViewController *)self teamForIndexPath:v6];
        v13 = [v6 row];
        v14 = [(FBAMailboxesViewController *)self inboxes];
        v15 = [v14 count];

        if (v13 >= v15)
        {
          v16 = [v17 cellForItemAtIndexPath:v6];
          [(FBAMailboxesViewController *)self beginBugForTeam:v12 sender:v16];
        }

        else
        {
          [(FBAMailboxesViewController *)self performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:v6];
        }
      }

      goto LABEL_6;
    }

    v10 = [(FBAMailboxesViewController *)self enhancedLoggingInbox];
    v11 = self;
  }

  [(FBAMailboxesViewController *)v11 performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:v10];

LABEL_6:
}

- (id)makeSnapshot
{
  v3 = objc_opt_new();
  if (![(FBAMailboxesViewController *)self hideAllInboxes])
  {
    v60 = @"smart-mailbox";
    v4 = [NSArray arrayWithObjects:&v60 count:1];
    [v3 appendSectionsWithIdentifiers:v4];

    v5 = [(FBAMailboxesViewController *)self smartMailboxes];
    v6 = [v5 valueForKey:@"diffableIdentifier"];
    [v3 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:@"smart-mailbox"];

    if ([(FBAMailboxesViewController *)self isBatchUIEnabled])
    {
      v59 = @"batch-ui-section";
      v7 = [NSArray arrayWithObjects:&v59 count:1];
      [v3 appendSectionsWithIdentifiers:v7];

      v58 = @"batch-ui-row";
      v8 = [NSArray arrayWithObjects:&v58 count:1];
      [v3 appendItemsWithIdentifiers:v8];
    }

    if ([(FBAMailboxesViewController *)self showsEnhancedLoggingSection])
    {
      v57 = @"enhanced-logging-section";
      v9 = [NSArray arrayWithObjects:&v57 count:1];
      [v3 appendSectionsWithIdentifiers:v9];

      v56 = @"enhanced-logging-row";
      v10 = [NSArray arrayWithObjects:&v56 count:1];
      [v3 appendItemsWithIdentifiers:v10];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(FBAMailboxesViewController *)self sortedTeams];
    v37 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v37)
    {
      v35 = *v44;
      v36 = self;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          v13 = [(__CFString *)v12 ID];
          v14 = [v13 stringValue];

          if (!v14)
          {
            v15 = +[NSUUID UUID];
            v14 = [v15 UUIDString];

            v16 = +[FBALog appHandle];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v17 = @"(null)";
              if (v12)
              {
                v17 = v12;
              }

              v52 = v17;
              v53 = 2114;
              v54 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Team [%{public}@] is missing ID, using a placeholder ID [%{public}@].", buf, 0x16u);
            }
          }

          v38 = v11;
          v50 = v14;
          v18 = [NSArray arrayWithObjects:&v50 count:1];
          [v3 appendSectionsWithIdentifiers:v18];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v19 = [(FBAMailboxesViewController *)self inboxes];
          v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v40;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v40 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v39 + 1) + 8 * i);
                if (v12)
                {
                  v25 = [*(*(&v39 + 1) + 8 * i) unreadCountForTeam:v12];
                }

                else
                {
                  v25 = 0;
                }

                v26 = [v24 diffableIdentifier];
                v27 = [NSString stringWithFormat:@"Team%@-%@-%lu", v14, v26, v25];

                v48 = v27;
                v28 = [NSArray arrayWithObjects:&v48 count:1];
                [v3 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:v14];
              }

              v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v21);
          }

          v29 = [(__CFString *)v12 canStartNewFeedback];
          v30 = @"disabled";
          if (v29)
          {
            v30 = @"enabled";
          }

          v31 = [NSString stringWithFormat:@"Team%@-Compose-%@", v14, v30];
          v47 = v31;
          v32 = [NSArray arrayWithObjects:&v47 count:1];
          [v3 appendItemsWithIdentifiers:v32 intoSectionWithIdentifier:v14];

          v11 = v38 + 1;
          self = v36;
        }

        while ((v38 + 1) != v37);
        v37 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v37);
    }
  }

  return v3;
}

- (BOOL)hasContentItemsToShow
{
  v2 = +[FBKData sharedInstance];
  v3 = [v2 currentUser];
  v4 = [v3 contentItems];
  v5 = [v4 count] != 0;

  return v5;
}

- (unint64_t)fbkNewFeedbackButtonState
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (v4)
  {
    return 1;
  }

  v6 = +[FBKData sharedInstance];
  v7 = [v6 currentUser];

  if (v7 && [v7 didFetchFormStubs])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 teams];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      v5 = 1;
LABEL_7:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v14 + 1) + 8 * v12) didFetchFormItems])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)fbkCreateNewFeedback:(id)a3
{
  v8 = a3;
  v4 = [(FBAMailboxesViewController *)self sortedTeams];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(FBAMailboxesViewController *)self sortedTeams];
    v7 = [v6 firstObject];
    [(FBAMailboxesViewController *)self beginBugForTeam:v7 sender:v8];
  }

  else
  {
    [(FBAMailboxesViewController *)self beginBugForTeam:0 sender:v8];
  }
}

- (void)_beginBugForTeam:(id)a3 sender:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = +[FBKData sharedInstance];
  v8 = [v7 currentUser];
  v9 = [v8 bugFormStubs];
  v10 = [v9 count];

  if (!v10)
  {
    [(FBAMailboxesViewController *)self presentNonParticipantView];
  }

  v11 = DEDDevicePlatformiOS;
  v12 = +[FBKGroupedDevice currentGroupedDevice];
  v13 = [v12 build];
  v14 = [v24 forms];
  v15 = [FBKBugFormStub bugFormStubsMatchingBuild:v13 forPlatform:v11 withStubs:v14];

  if ([v15 count] == 1)
  {
    v16 = [v15 anyObject];
    v17 = [v16 preferredTeamForStubPreferringTeam:v24];
    [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:v16 forTeam:v17 withSender:v6];
  }

  else
  {
    if (v24)
    {
      [FBKBugFormStub predicateForTeam:v24];
    }

    else
    {
      +[FBKBugFormStub predicateForAllStubs];
    }
    v16 = ;
    v17 = [[_TtC18Feedback_Assistant26FBABugFormPickerController alloc] initWithStubsPredicate:v16];
    [(FBABugFormPickerController *)v17 setPickerDelegate:self];
    [(FBABugFormPickerController *)v17 setTeam:v24];
    v18 = [[UINavigationController alloc] initWithRootViewController:v17];
    [v18 setModalPresentationStyle:7];
    v19 = [(FBAMailboxesViewController *)self pendingLaunchAction];
    if (v19)
    {
      v20 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      [v18 setModalInPresentation:{objc_msgSend(v20, "isCaptive")}];
    }

    else
    {
      [v18 setModalInPresentation:0];
    }

    v21 = [v18 popoverPresentationController];
    [v21 setPermittedArrowDirections:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 setBarButtonItem:v6];
    }

    else
    {
      [v21 setSourceView:v6];
      [v6 bounds];
      [v21 setSourceRect:?];
    }

    v22 = +[iFBAConstants tintColor];
    v23 = [(FBABugFormPickerController *)v17 view];
    [v23 setTintColor:v22];

    [(FBAMailboxesViewController *)self presentViewController:v18 animated:1 completion:0];
  }
}

- (void)beginBugForTeam:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBAMailboxesViewController *)self data];
  v9 = [v8 currentUser];
  v10 = [v9 hasForms];

  if ((v10 & 1) == 0)
  {
    [(FBAMailboxesViewController *)self presentNonParticipantView];
  }

  if (v6 && ([v6 forms], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12 == 1))
  {
    v13 = +[FBALog appHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v6 name];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Launching new draft for 1 team [%@] with one form", &v18, 0xCu);
    }

    v15 = [v6 forms];
    v16 = [v15 anyObject];
    [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:v16 forTeam:v6 withSender:v7];
  }

  else
  {
    v17 = +[FBALog appHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Launching new draft. Will show form picker ", &v18, 2u);
    }

    [(FBAMailboxesViewController *)self _beginBugForTeam:v6 sender:v7];
  }
}

- (void)tryLaunchingDraft:(id)a3 orStub:(id)a4 orBugForm:(id)a5 forTeam:(id)a6 withSender:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100021C28;
  v34[4] = sub_100021C38;
  v17 = self;
  v35 = v17;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100021C40;
  v28[3] = &unk_1000DF1A8;
  v28[4] = v17;
  v18 = v13;
  v29 = v18;
  v19 = v12;
  v30 = v19;
  v20 = v14;
  v31 = v20;
  v21 = v15;
  v32 = v21;
  v33 = v34;
  v22 = objc_retainBlock(v28);
  v23 = v22;
  if (v19)
  {
    v24 = [(FBAMailboxesViewController *)v17 data];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100021DBC;
    v26[3] = &unk_1000DF1D0;
    v27 = v23;
    [v24 bugFormFromForDraftItem:v19 withCompletion:v26];

    v25 = v27;
  }

  else
  {
    if (v18 | v20)
    {
      (v22[2])(v22);
      goto LABEL_7;
    }

    v25 = +[FBALog appHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100093314();
    }
  }

LABEL_7:
  _Block_object_dispose(v34, 8);
}

- (void)beginPullToRefresh
{
  v3 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E64;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
  [(FBAMailboxesViewController *)self reloadApp];
}

- (void)reloadApp
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reloading", buf, 2u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"LOADING_ELLIPSES" value:&stru_1000E2210 table:0];
  [(FBAMailboxesViewController *)self fbkShowSpinnerWithStatus:v5 userInteractionEnabled:1];

  v6 = [(FBAMailboxesViewController *)self data];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021FD4;
  v7[3] = &unk_1000DF1F8;
  v7[4] = self;
  [v6 reloadAllContentWithCompletion:v7];
}

- (void)didReloadApp
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did reload", buf, 2u);
  }

  [(FBAMailboxesViewController *)self updateUI];
  [(FBAMailboxesViewController *)self fbkHideSpinner];
  [(FBAMailboxesViewController *)self runDelayedUrlActionIfNeeded];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221D8;
  block[3] = &unk_1000DE430;
  block[4] = self;
  if (qword_10010B090 != -1)
  {
    dispatch_once(&qword_10010B090, block);
  }
}

- (BOOL)showsEnhancedLoggingSection
{
  v2 = +[FBKEnhancedLoggingPersistence sharedInstance];
  v3 = [v2 hasLoggingSessions];

  return v3;
}

- (id)teamForSection:(int64_t)a3
{
  v5 = [(FBAMailboxesViewController *)self showsEnhancedLoggingSection];
  v6 = -2;
  if (!v5)
  {
    v6 = -1;
  }

  v7 = v6 + a3 - [(FBAMailboxesViewController *)self isBatchUIEnabled];
  if (v7 < 0 || (-[FBAMailboxesViewController sortedTeams](self, "sortedTeams"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(FBAMailboxesViewController *)self sortedTeams];
    v11 = [v10 objectAtIndexedSubscript:v7];
  }

  return v11;
}

- (int64_t)sectionForTeam:(id)a3
{
  v4 = a3;
  v5 = [(FBAMailboxesViewController *)self sortedTeams];
  v6 = [v5 indexOfObject:v4];

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(FBAMailboxesViewController *)self showsEnhancedLoggingSection];
    return v6 + v8 + [(FBAMailboxesViewController *)self isBatchUIEnabled]+ 1;
  }

  return result;
}

- (id)teamForIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(FBAMailboxesViewController *)self teamForSection:v4];
}

- (void)beginFeedbackWithDraftItem:(id)a3
{
  v4 = a3;
  v6 = [v4 singleTeam];
  v5 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
  [(FBAMailboxesViewController *)self tryLaunchingDraft:v4 orStub:0 forTeam:v6 withSender:v5];
}

- (void)respondToUrlAction:(id)a3
{
  v4 = a3;
  if ([v4 launchesFeedback])
  {
    [(FBAMailboxesViewController *)self launchFeedbackDraftWithUrlAction:v4];
  }

  else if ([v4 launchesSurvey])
  {
    [(FBAMailboxesViewController *)self launchSurveyWithUrlAction:v4];
  }

  else if ([v4 launchesInbox])
  {
    [(FBAMailboxesViewController *)self launchInboxWithLaunchAction:v4];
  }

  else if ([v4 launchesBatchUI])
  {
    [(FBAMailboxesViewController *)self showBatchUIWithAction:v4];
  }

  else
  {
    [(FBAMailboxesViewController *)self showItemWithUrlAction:v4];
  }
}

- (void)runDelayedUrlActionIfNeeded
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100093350(self, v3);
  }

  v4 = [(FBAMailboxesViewController *)self delayedUrlAction];

  if (v4)
  {
    v5 = [(FBAMailboxesViewController *)self delayedUrlAction];
    v6 = [v5 showsItem];

    v7 = [(FBAMailboxesViewController *)self delayedUrlAction];
    v8 = v7;
    if (v6)
    {
      [(FBAMailboxesViewController *)self showItemWithUrlAction:v7];
LABEL_18:

      return;
    }

    if ([v7 launchesFeedback])
    {
      v9 = [(FBAMailboxesViewController *)self fbkNewFeedbackButtonState];

      if (v9 == 2)
      {
        v8 = [(FBAMailboxesViewController *)self delayedUrlAction];
        [(FBAMailboxesViewController *)self launchFeedbackDraftWithUrlAction:v8];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v10 = [(FBAMailboxesViewController *)self delayedUrlAction];
    v11 = [v10 launchesSurvey];

    v12 = [(FBAMailboxesViewController *)self delayedUrlAction];
    v8 = v12;
    if (v11)
    {
      [(FBAMailboxesViewController *)self launchSurveyWithUrlAction:v12];
    }

    else
    {
      v13 = [v12 launchesInbox];

      v14 = [(FBAMailboxesViewController *)self delayedUrlAction];
      v8 = v14;
      if (v13)
      {
        [(FBAMailboxesViewController *)self launchInboxWithLaunchAction:v14];
      }

      else
      {
        v15 = [v14 launchesBatchUI];

        if (v15)
        {
          v8 = [(FBAMailboxesViewController *)self delayedUrlAction];
          [(FBAMailboxesViewController *)self showBatchUIWithAction:v8];
        }

        else
        {
          v8 = +[FBALog appHandle];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_1000933D8(v8);
          }
        }
      }
    }

    goto LABEL_18;
  }
}

- (BOOL)canLaunchFeedbackDraft
{
  v3 = [(FBAMailboxesViewController *)self splitViewController];
  v4 = [v3 topMostController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([(FBAMailboxesViewController *)self isViewLoaded])
  {
    v6 = [(FBAMailboxesViewController *)self view];
    v7 = [v6 window];
    if (v7)
    {
      v8 = [(FBAMailboxesViewController *)self data];
      if ([v8 isRefreshingForms])
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = [(FBAMailboxesViewController *)self hasLoadedFormItems]& (isKindOfClass ^ 1);
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)canLaunchSurveyDraft
{
  if (![(FBAMailboxesViewController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(FBAMailboxesViewController *)self view];
  v4 = [v3 window];
  if (v4 && [(FBAMailboxesViewController *)self hasFinishedFirstLoad])
  {
    v5 = [(FBAMailboxesViewController *)self data];
    v6 = [v5 currentUser];
    v7 = [v6 contentItems];
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canShowItems
{
  if (![(FBAMailboxesViewController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(FBAMailboxesViewController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)canShowBatchUIWithAction:(id)a3
{
  v4 = a3;
  v5 = [(FBAMailboxesViewController *)self isViewLoaded];
  if (v4)
  {
    if (v5)
    {
      v6 = [(FBAMailboxesViewController *)self view];
      v7 = [v6 window];
      if (v7)
      {
        v8 = [(FBAMailboxesViewController *)self hasFinishedFirstLoad];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_9;
    }
  }

  else if (v5)
  {
    v6 = [(FBAMailboxesViewController *)self view];
    v7 = [v6 window];
    v8 = v7 != 0;
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)showItemWithUrlAction:(id)a3
{
  v4 = a3;
  v5 = [(FBAMailboxesViewController *)self canShowItems];
  v6 = +[FBALog appHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543362;
      v32 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Executing show url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    if ([v4 isFFUAction] & 1) != 0 || (objc_msgSend(v4, "isShowContentItemAction"))
    {
      v8 = [(FBAMailboxesViewController *)self data];
      v9 = [v8 currentUser];
      v10 = [v9 contentItems];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100022E20;
      v29[3] = &unk_1000DEDC0;
      v11 = v4;
      v30 = v11;
      v12 = [v10 ded_findWithBlock:v29];

      if (v12)
      {
        if ([v11 isShowContentItemAction])
        {
          [(FBAMailboxesViewController *)self setPendingItemToShow:v12];
          [(FBAMailboxesViewController *)self setPendingLaunchAction:v11];
          v13 = [(FBAMailboxesViewController *)self inboxes];
          v14 = [v13 indexOfObjectPassingTest:&stru_1000DF238];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [v12 singleTeam];
            v20 = [(FBAMailboxesViewController *)self sectionForTeam:v19];

            v21 = [NSIndexPath indexPathForRow:v14 inSection:v20];
            v22 = [(FBAMailboxesViewController *)self splitViewController];
            LOBYTE(v20) = [v22 isCollapsed];

            if ((v20 & 1) == 0)
            {
              [(FBAMailboxesViewController *)self performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:v21];
            }

            [(FBAMailboxesViewController *)self performSegueWithIdentifier:@"FBAFollowupDetailPresentation" sender:self];

            goto LABEL_21;
          }

          v15 = +[FBALog appHandle];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000934CC();
          }
        }

        else
        {
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100022EE0;
          v28[3] = &unk_1000DE430;
          v28[4] = self;
          v17 = objc_retainBlock(v28);
          v18 = [(FBAMailboxesViewController *)self data];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100023070;
          v23[3] = &unk_1000DF2F0;
          v24 = v11;
          v27 = v17;
          v25 = v12;
          v26 = self;
          v15 = v17;
          [v18 getFeedbackForContentItem:v25 completion:v23];
        }
      }

      else
      {
        v15 = +[FBALog appHandle];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100093508();
        }
      }

LABEL_21:
      goto LABEL_22;
    }

    v16 = +[FBALog appHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10009345C();
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138543362;
      v32 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delaying show url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:v4];
  }

LABEL_22:
}

- (void)launchInboxWithLaunchAction:(id)a3
{
  v4 = a3;
  if ([(FBAMailboxesViewController *)self canShowItems])
  {
    v5 = [(FBAMailboxesViewController *)self sortedTeams];
    v6 = [v5 firstObject];

    if (!v6)
    {
      v14 = +[FBALog appHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000937A0();
      }

      goto LABEL_14;
    }

    if (![(FBAMailboxesViewController *)self userIsEnrolledInAnySeedingProgram])
    {
      v7 = [(FBAMailboxesViewController *)self sortedTeams];
      v8 = [v7 firstObject];
      v9 = [(FBAMailboxesViewController *)self sectionForTeam:v8];

      v10 = [(FBAMailboxesViewController *)self inboxes];
      v11 = [v10 indexOfObjectPassingTest:&stru_1000DF310];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(FBAMailboxesViewController *)self setPendingLaunchAction:v4];
        v12 = [NSIndexPath indexPathForRow:v11 inSection:v9];
        [(FBAMailboxesViewController *)self performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:v12];

        goto LABEL_15;
      }

      v14 = +[FBALog appHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009371C();
      }

LABEL_14:
    }
  }

  else
  {
    v13 = +[FBALog appHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Delaying inbox action [%{public}@]", &v15, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:v4];
  }

LABEL_15:
}

- (void)launchSurveyWithUrlAction:(id)a3
{
  v4 = a3;
  if ([(FBAMailboxesViewController *)self canLaunchSurveyDraft])
  {
    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v5 = +[FBALog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Executing launch url action [%{public}@]", buf, 0xCu);
    }

    if ([v4 launchesSurvey])
    {
      [(FBAMailboxesViewController *)self setPendingLaunchAction:v4];
      v6 = [(FBAMailboxesViewController *)self data];
      v7 = [v6 currentUser];
      v8 = [v7 contentItems];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100023988;
      v21[3] = &unk_1000DEDC0;
      v9 = v4;
      v22 = v9;
      v10 = [v8 ded_findWithBlock:v21];

      v11 = +[FBKData sharedInstance];
      v12 = [v11 defaultTeam];

      v13 = +[FBALog appHandle];
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found survey content item without reload", buf, 2u);
        }

        [(FBAMailboxesViewController *)self reallyLaunchSurveyWithUrlAction:v9 team:v12 surveyItem:v10];
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Targeted survey not found. Will load content items", buf, 2u);
        }

        v17 = +[FBKData sharedInstance];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100023A24;
        v18[3] = &unk_1000DF338;
        v18[4] = self;
        v19 = v9;
        v20 = v12;
        [v17 reloadItems:v20 completion:v18];
      }
    }

    else
    {
      v16 = +[FBALog appHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1000937DC(v16);
      }
    }
  }

  else
  {
    v15 = +[FBALog appHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Delaying survey launch url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:v4];
  }
}

- (void)reallyLaunchSurveyWithUrlAction:(id)a3 team:(id)a4 surveyItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[FBKData sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100023D3C;
  v15[3] = &unk_1000DF360;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  [v11 refreshSurveyFromContentItem:v13 forTeam:v12 completion:v15];
}

- (void)showTargetedSurveyLoadErrorAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SURVEY_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SURVEY_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&stru_1000DF380];
  [v10 addAction:v9];

  [(FBAMailboxesViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)showTargetedFeedbackLoadErrorAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"GENERIC_DRAFT_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"GENERIC_DRAFT_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&stru_1000DF3A0];
  [v10 addAction:v9];

  [(FBAMailboxesViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)launchFeedbackDraftWithUrlAction:(id)a3
{
  v4 = a3;
  v5 = [(FBAMailboxesViewController *)self canLaunchFeedbackDraft];
  v6 = +[FBALog appHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543362;
      v48 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Executing launch url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v8 = +[FBKData sharedInstance];
    v9 = [v8 defaultTeam];

    if (![v4 launchesFeedback])
    {
      goto LABEL_33;
    }

    [(FBAMailboxesViewController *)self setPendingLaunchAction:v4];
    v10 = [v4 formIdentifier];

    if (v10)
    {
      v11 = +[FBKData sharedInstance];
      v12 = [v11 currentUser];
      v13 = [v12 bugFormStubs];
      [v4 findExactMatchFormStubAndTeamWithFormStubs:v13];

      v14 = [v4 exactMatchFormStub];

      if (v14)
      {
        v15 = +[FBALog appHandle];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 formIdentifier];
          v17 = [v4 exactMatchFormStub];
          v18 = [v17 ID];
          v19 = [v18 intValue];
          *buf = 138543618;
          v48 = v16;
          v49 = 1024;
          LODWORD(v50) = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "URL Action with formIdentifier [%{public}@] matched formStub [%i]", buf, 0x12u);
        }

        v20 = [v4 exactMatchFormStub];
        v21 = [v4 teamForExactMatchFormStub];
        v22 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
        [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:v20 forTeam:v21 withSender:v22];

        goto LABEL_32;
      }

      v34 = [v4 comesFromFeedbackd];
      v35 = +[FBALog appHandle];
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (v36)
        {
          v37 = [v4 formIdentifier];
          *buf = 138543362;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Form with identifier [%{public}@] not found. Will fetch by tat", buf, 0xCu);
        }

        v38 = +[FBKData sharedInstance];
        v39 = [v4 formIdentifier];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100024758;
        v44[3] = &unk_1000DE4F8;
        v45 = v4;
        v46 = self;
        [v38 fetchFormItemByTat:v39 completion:v44];

        v20 = v45;
        goto LABEL_32;
      }

      if (!v36)
      {
LABEL_27:

        v20 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
        [(FBAMailboxesViewController *)self _beginBugForTeam:v9 sender:v20];
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      *buf = 138543362;
      v48 = v4;
      v40 = "Could not find form with identifier from Launch Action [%{public}@]. Will show picker";
    }

    else
    {
      v23 = [v4 bugFormID];

      if (v23)
      {
        v24 = [(FBAMailboxesViewController *)self data];
        v25 = [v24 currentUser];
        v20 = [v25 uniqueFormStubsWithPreferredTeam:v9];

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_1000248AC;
        v42[3] = &unk_1000DF3C8;
        v26 = v4;
        v43 = v26;
        v27 = [v20 ded_findWithBlock:v42];
        v28 = +[FBALog appHandle];
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          if (v29)
          {
            v30 = [v27 ID];
            v31 = [v30 intValue];
            *buf = 67109120;
            LODWORD(v48) = v31;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "URL Action matched one form item [%i]", buf, 8u);
          }

          [v26 setExactMatchFormStub:v27];
          v32 = [v26 exactMatchFormStub];
          v33 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
          [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:v32 forTeam:v9 withSender:v33];
        }

        else
        {
          if (v29)
          {
            v41 = [v26 bugFormID];
            *buf = 138543618;
            v48 = v41;
            v49 = 2114;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Could not find form with formID [%{public}@] from Launch Action [%{public}@]. Will show picker", buf, 0x16u);
          }

          v32 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
          [(FBAMailboxesViewController *)self _beginBugForTeam:v9 sender:v32];
        }

        goto LABEL_32;
      }

      v35 = +[FBALog appHandle];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 138543362;
      v48 = v4;
      v40 = "Launch Action [%{public}@] will show picker";
    }

    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
    goto LABEL_27;
  }

  if (v7)
  {
    *buf = 138543362;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delaying launch url action [%{public}@]", buf, 0xCu);
  }

  [(FBAMailboxesViewController *)self setDelayedUrlAction:v4];
LABEL_34:
}

- (void)showBatchUIWithAction:(id)a3
{
  v4 = a3;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v27 = "[FBAMailboxesViewController showBatchUIWithAction:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  if ([(FBAMailboxesViewController *)self canShowBatchUIWithAction:v4])
  {
    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 delegate];

    v8 = [(FBAMailboxesViewController *)self traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (!v9)
    {
      [v7 blockLandscapeOrientations:1];
    }

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100024B94;
    v23 = &unk_1000DE4D0;
    v24 = self;
    v25 = v7;
    v10 = v7;
    v11 = [(FBAMailboxesViewController *)self batchEvaluationViewControllerWithUseNavigationStack:1 showsCloseButton:1 onDismiss:&v20];
    v12 = [(FBAMailboxesViewController *)self splitViewController:v20];
    v13 = [v12 view];
    [v13 frame];
    v15 = v14;
    v17 = v16;

    [v11 setPreferredContentSize:{v15 * 0.95, v17 * 0.95}];
    v18 = [(FBAMailboxesViewController *)self splitViewController];
    [v18 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v19 = +[FBALog appHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Delaying batch UI url action", buf, 2u);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:v4];
  }
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v37 = a3;
  v6 = a4;
  v7 = [v37 identifier];
  if ([v7 isEqualToString:@"FBAInboxItemsPresentation"])
  {
    v8 = [v37 destinationViewController];
    v9 = [v8 tableView];
    [v9 setAccessibilityIdentifier:@"mailbox content"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      v11 = [(FBAMailboxesViewController *)self data];
      v12 = [v11 currentUser];
      v13 = [(FBAMailboxesViewController *)self data];
      v14 = [v13 mainQueueContext];
      v15 = [FBKTeam personalTeamForUser:v12 inContext:v14];

      [v8 setShowingSyntheticInbox:1];
LABEL_15:
      [v8 setInbox:v10];
      [v8 setTeam:v15];
      v34 = [(FBAMailboxesViewController *)self splitViewController];
      v35 = [v34 isCollapsed];

      if ((v35 & 1) == 0)
      {
        v36 = [(FBAMailboxesViewController *)self splitViewController];
        [v36 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
      }

      [(FBAMailboxesViewController *)self setPendingLaunchAction:0];

      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      v10 = 0;
      goto LABEL_15;
    }

    v18 = v6;
    v19 = [(FBAMailboxesViewController *)self inboxes];
    v10 = [v19 objectAtIndexedSubscript:{objc_msgSend(v18, "row")}];

    v15 = [(FBAMailboxesViewController *)self teamForIndexPath:v18];
    v20 = [(FBAMailboxesViewController *)self pendingLaunchAction];
    if ([v20 launchesInbox])
    {
    }

    else
    {
      v30 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      v31 = [v30 isShowContentItemAction];

      if (!v31)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v32 = [v15 canStartNewFeedback];
    v33 = [v8 navigationItem];
    [v33 setHidesBackButton:v32 ^ 1];

    goto LABEL_14;
  }

  if ([v7 isEqualToString:@"FBAFollowupResponsePresentation"])
  {
    v8 = [v37 destinationViewController];
    v10 = [v8 topViewController];
    v16 = [(FBAMailboxesViewController *)self pendingFollowupToShow];
    [v10 setFollowup:v16];

    v17 = [(FBAMailboxesViewController *)self pendingItemToShow];
    [v10 setContentItem:v17];

    [(FBAMailboxesViewController *)self setPendingFollowupToShow:0];
    [(FBAMailboxesViewController *)self setPendingItemToShow:0];
    [(FBAMailboxesViewController *)self setPendingLaunchAction:0];
LABEL_18:

    goto LABEL_19;
  }

  if (![v7 isEqualToString:@"FBAFollowupDetailPresentation"])
  {
    goto LABEL_20;
  }

  v21 = [v37 destinationViewController];
  v22 = [v21 viewControllers];
  v23 = [v22 objectAtIndexedSubscript:0];

  v8 = v23;
  v24 = [(FBAMailboxesViewController *)self pendingItemToShow];
  [v8 setContentItem:v24];

  v25 = [(FBAMailboxesViewController *)self data];
  v26 = [v25 currentUser];
  v27 = [v26 bugFormStubs];
  v28 = [v27 count] == 0;
  v29 = [v8 navigationItem];

  [v29 setHidesBackButton:v28];
  [(FBAMailboxesViewController *)self setPendingItemToShow:0];
  [(FBAMailboxesViewController *)self setPendingLaunchAction:0];
LABEL_19:

LABEL_20:
}

- (void)showLoadingView
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing main loading view", v5, 2u);
  }

  [(FBAMailboxesViewController *)self setHideAllInboxes:1];
  v4 = +[UIContentUnavailableConfiguration loadingConfiguration];
  [(FBAMailboxesViewController *)self setContentUnavailableConfiguration:v4];
}

- (void)hideLoadingView
{
  v3 = +[FBADraftManager sharedInstance];
  v4 = [v3 inboxLiteMode];

  if (v4)
  {
    v5 = +[FBALog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will not show content items in main view", v6, 2u);
    }
  }

  else
  {
    [(FBAMailboxesViewController *)self setHideAllInboxes:0];

    [(FBAMailboxesViewController *)self setContentUnavailableConfiguration:0];
  }
}

- (BOOL)userIsEnrolledInAnySeedingProgram
{
  v2 = [(FBAMailboxesViewController *)self sortedTeams];
  v3 = [v2 firstObject];
  v4 = [v3 canStartNewFeedback];

  return v4;
}

- (void)bugFormPicker:(id)a3 didSelectBugFormStub:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002542C;
  v10[3] = &unk_1000DF3F0;
  v8 = v7;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [(FBAMailboxesViewController *)self dismissViewControllerAnimated:1 completion:v10];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (void)bugFormPickerDidCancel:(id)a3
{
  v4 = [(FBAMailboxesViewController *)self pendingLaunchAction];
  if (v4)
  {
    v5 = v4;
    v6 = [(FBAMailboxesViewController *)self pendingLaunchAction];
    v7 = [v6 isCaptive];

    if (v7)
    {
      v8 = +[FBALog appHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bug form picker cancelled, exiting restricted mode.", v10, 2u);
      }

      v9 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      +[iFBKUtils exitCaptiveModeRemovingFromHomeScreen:](iFBKUtils, "exitCaptiveModeRemovingFromHomeScreen:", [v9 shouldMakeFBAVisible]);
    }
  }
}

- (BOOL)_shouldUseBackgroundColor
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return FBKIsSolariumEnabled() ^ 1;
  }

  else
  {
    return 1;
  }
}

- (FBKData)data
{
  WeakRetained = objc_loadWeakRetained(&self->_data);

  return WeakRetained;
}

- (id)batchUICellWithCollectionView:(id)a3 indexPath:(id)a4 reuseIdentifier:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_100049A10(v12, v11);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (void)presentNonParticipantView
{
  v2 = self;
  sub_100049F50();
}

- (void)launchNewDraftViewControllerWithBugFormStub:(id)a3 draftItem:(id)a4 surveyBugForm:(id)a5 launchAction:(id)a6 team:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_10004BE1C;
  }

  else
  {
    v14 = 0;
  }

  v19 = a3;
  v18 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21 = self;
  sub_10004A17C(a3, a4, a5, a6, a7, v13, v14);
  sub_10004BA44(v13);
}

- (void)controller:(id)a3 didFinishSubmissionWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_28didFinishSubmissionWithErrorySo015FBKBugFormTablebC0C_s0K0_pSgtF_0(v6);
}

- (void)controller:(id)a3 didFailToLoadDraftWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_27didFailToLoadDraftWithErrorySo015FBKBugFormTablebC0C_s0M0_ptF_0();
}

- (void)controller:(id)a3 didRequestDismissalWithSavedDraft:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_33didRequestDismissalWithSavedDraftySo015FBKBugFormTablebC0C_SbtF_0(v5);
}

- (id)batchEvaluationViewControllerWithUseNavigationStack:(BOOL)a3 showsCloseButton:(BOOL)a4 onDismiss:(id)a5
{
  v5 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v5;
  v6 = type metadata accessor for ScoreController();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  ScoreController.init()();
  v9 = objc_allocWithZone(type metadata accessor for BatchEvaluationViewController());
  v10 = BatchEvaluationViewController.init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)();

  return v10;
}

- (void)shouldShowBatchUIWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for BatchEvaluationViewController();
  static BatchEvaluationViewController.shouldShowBatchUI(completion:)();
}

@end