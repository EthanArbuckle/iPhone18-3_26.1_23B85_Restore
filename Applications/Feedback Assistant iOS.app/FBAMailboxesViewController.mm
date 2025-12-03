@interface FBAMailboxesViewController
- (BOOL)_shouldUseBackgroundColor;
- (BOOL)canLaunchFeedbackDraft;
- (BOOL)canLaunchSurveyDraft;
- (BOOL)canShowBatchUIWithAction:(id)action;
- (BOOL)canShowItems;
- (BOOL)hasContentItemsToShow;
- (BOOL)showsEnhancedLoggingSection;
- (BOOL)userIsEnrolledInAnySeedingProgram;
- (FBAMailboxesViewController)initWithCoder:(id)coder;
- (FBAMailboxesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FBKData)data;
- (id)batchEvaluationViewControllerWithUseNavigationStack:(BOOL)stack showsCloseButton:(BOOL)button onDismiss:(id)dismiss;
- (id)batchUICellWithCollectionView:(id)view indexPath:(id)path reuseIdentifier:(id)identifier;
- (id)composeCellRegistration;
- (id)fbkLeftToolbarItem;
- (id)footerRegistration;
- (id)headerRegistration;
- (id)listCellRegistration;
- (id)makeCompositionalLayout;
- (id)makeSnapshot;
- (id)teamForIndexPath:(id)path;
- (id)teamForSection:(int64_t)section;
- (int64_t)sectionForTeam:(id)team;
- (unint64_t)fbkNewFeedbackButtonState;
- (void)_beginBugForTeam:(id)team sender:(id)sender;
- (void)awakeFromNib;
- (void)beginBugForTeam:(id)team sender:(id)sender;
- (void)beginFeedbackWithDraftItem:(id)item;
- (void)beginPullToRefresh;
- (void)bugFormPicker:(id)picker didSelectBugFormStub:(id)stub;
- (void)bugFormPickerDidCancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)configureCollectionView;
- (void)controller:(id)controller didFailToLoadDraftWithError:(id)error;
- (void)controller:(id)controller didFinishSubmissionWithError:(id)error;
- (void)controller:(id)controller didRequestDismissalWithSavedDraft:(BOOL)draft;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReloadApp;
- (void)fbkCreateNewFeedback:(id)feedback;
- (void)hideLoadingView;
- (void)launchFeedbackDraftWithUrlAction:(id)action;
- (void)launchInboxWithLaunchAction:(id)action;
- (void)launchNewDraftViewControllerWithBugFormStub:(id)stub draftItem:(id)item surveyBugForm:(id)form launchAction:(id)action team:(id)team completion:(id)completion;
- (void)launchSurveyWithUrlAction:(id)action;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)presentNonParticipantView;
- (void)reallyLaunchSurveyWithUrlAction:(id)action team:(id)team surveyItem:(id)item;
- (void)reloadApp;
- (void)respondToUrlAction:(id)action;
- (void)runDelayedUrlActionIfNeeded;
- (void)shouldShowBatchUIWithCompletion:(id)completion;
- (void)showBatchUIWithAction:(id)action;
- (void)showItemWithUrlAction:(id)action;
- (void)showLoadingView;
- (void)showTargetedFeedbackLoadErrorAlert;
- (void)showTargetedSurveyLoadErrorAlert;
- (void)tryLaunchingDraft:(id)draft orStub:(id)stub orBugForm:(id)form forTeam:(id)team withSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation FBAMailboxesViewController

- (FBAMailboxesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = FBAMailboxesViewController;
  v4 = [(FBAMailboxesViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(FBAMailboxesViewController *)v4 commonInit];
  }

  return v5;
}

- (FBAMailboxesViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FBAMailboxesViewController;
  v3 = [(FBAMailboxesViewController *)&v6 initWithCoder:coder];
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
  environment = [v3 environment];
  v5 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

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
  environment = [v3 environment];
  v5 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

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
      navigationItem = [(FBAMailboxesViewController *)self navigationItem];
      [navigationItem _setLargeTitleAccessoryView:v8 alignToBaseline:0];
    }

    splitViewController = [(FBAMailboxesViewController *)self splitViewController];
    viewControllers = [splitViewController viewControllers];
    lastObject = [viewControllers lastObject];
    topViewController = [lastObject topViewController];
    [(FBAMailboxesViewController *)self setDetailViewController:topViewController];

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

    fbaDataObservers = [(FBAMailboxesViewController *)self fbaDataObservers];
    data = [(FBAMailboxesViewController *)self data];
    notificationCenter = [data notificationCenter];
    v24 = +[NSOperationQueue mainQueue];
    v25 = FBKDidRefreshContentItemsNotification;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10001E678;
    v77[3] = &unk_1000DEC50;
    objc_copyWeak(&v78, &location);
    v26 = [notificationCenter addObserverForName:v25 object:0 queue:v24 usingBlock:v77];
    [fbaDataObservers addObject:v26];

    fbaDataObservers2 = [(FBAMailboxesViewController *)self fbaDataObservers];
    data2 = [(FBAMailboxesViewController *)self data];
    notificationCenter2 = [data2 notificationCenter];
    v30 = +[NSOperationQueue mainQueue];
    v31 = FBKDidRefreshFormStubsNotification;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10001E6D8;
    v75[3] = &unk_1000DEC50;
    objc_copyWeak(&v76, &location);
    v32 = [notificationCenter2 addObserverForName:v31 object:0 queue:v30 usingBlock:v75];
    [fbaDataObservers2 addObject:v32];

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

    fbaDataObservers3 = [(FBAMailboxesViewController *)self fbaDataObservers];
    data3 = [(FBAMailboxesViewController *)self data];
    notificationCenter3 = [data3 notificationCenter];
    v40 = +[NSOperationQueue mainQueue];
    v41 = FBKLocalDataDidChangeNotification;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10001E834;
    v71[3] = &unk_1000DEC50;
    objc_copyWeak(&v72, &location);
    v42 = [notificationCenter3 addObserverForName:v41 object:0 queue:v40 usingBlock:v71];
    [fbaDataObservers3 addObject:v42];

    fbaDataObservers4 = [(FBAMailboxesViewController *)self fbaDataObservers];
    data4 = [(FBAMailboxesViewController *)self data];
    notificationCenter4 = [data4 notificationCenter];
    v46 = +[NSOperationQueue mainQueue];
    v47 = FBKFormUploadStatusChangeNotification;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10001E874;
    v69[3] = &unk_1000DEC50;
    objc_copyWeak(&v70, &location);
    v48 = [notificationCenter4 addObserverForName:v47 object:0 queue:v46 usingBlock:v69];
    [fbaDataObservers4 addObject:v48];

    v49 = +[NSNotificationCenter defaultCenter];
    v50 = +[NSOperationQueue mainQueue];
    v51 = FBKUserIsLoggingOutNotification;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10001E8B4;
    v67[3] = &unk_1000DEC50;
    objc_copyWeak(&v68, &location);
    v52 = [v49 addObserverForName:v51 object:0 queue:v50 usingBlock:v67];

    fbaDataObservers5 = [(FBAMailboxesViewController *)self fbaDataObservers];
    data5 = [(FBAMailboxesViewController *)self data];
    notificationCenter5 = [data5 notificationCenter];
    v56 = +[NSOperationQueue mainQueue];
    v57 = FBKUserNoProgramsNotification;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10001E998;
    v65[3] = &unk_1000DEC50;
    objc_copyWeak(&v66, &location);
    v58 = [notificationCenter5 addObserverForName:v57 object:0 queue:v56 usingBlock:v65];
    [fbaDataObservers5 addObject:v58];

    v59 = objc_opt_new();
    [v59 addTarget:self action:"beginPullToRefresh" forControlEvents:4096];
    objc_storeStrong(&self->_refreshControl, v59);
    collectionView = [(FBAMailboxesViewController *)self collectionView];
    [collectionView setRefreshControl:v59];

    collectionView2 = [(FBAMailboxesViewController *)self collectionView];
    [collectionView2 setAlwaysBounceVertical:1];

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
  sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
  v4 = [sortedTeams copy];

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
        data = [(FBAMailboxesViewController *)self data];
        [data reduceToFault:v9];

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
  data = [(FBAMailboxesViewController *)self data];
  notificationCenter = [data notificationCenter];

  fbaDataObservers = [(FBAMailboxesViewController *)self fbaDataObservers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001EECC;
  v10[3] = &unk_1000DEC28;
  v11 = notificationCenter;
  v6 = notificationCenter;
  [fbaDataObservers enumerateObjectsUsingBlock:v10];

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
    collectionView = [(FBAMailboxesViewController *)self collectionView];
    [collectionView setBackgroundColor:v3];
  }

  collectionView2 = [(FBAMailboxesViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  objc_initWeak(&location, self);
  makeCompositionalLayout = [(FBAMailboxesViewController *)self makeCompositionalLayout];
  collectionView3 = [(FBAMailboxesViewController *)self collectionView];
  [collectionView3 setCollectionViewLayout:makeCompositionalLayout];

  collectionView4 = [(FBAMailboxesViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"batch-ui-row"];

  headerRegistration = [(FBAMailboxesViewController *)self headerRegistration];
  footerRegistration = [(FBAMailboxesViewController *)self footerRegistration];
  listCellRegistration = [(FBAMailboxesViewController *)self listCellRegistration];
  composeCellRegistration = [(FBAMailboxesViewController *)self composeCellRegistration];
  v13 = [UICollectionViewDiffableDataSource alloc];
  collectionView5 = [(FBAMailboxesViewController *)self collectionView];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F1C8;
  v24[3] = &unk_1000DF090;
  v24[4] = self;
  objc_copyWeak(&v27, &location);
  v15 = listCellRegistration;
  v25 = v15;
  v16 = composeCellRegistration;
  v26 = v16;
  v17 = [v13 initWithCollectionView:collectionView5 cellProvider:v24];
  [(FBAMailboxesViewController *)self setDiffableDataSource:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F444;
  v21[3] = &unk_1000DF0B8;
  v18 = headerRegistration;
  v22 = v18;
  v19 = footerRegistration;
  v23 = v19;
  diffableDataSource = [(FBAMailboxesViewController *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (id)makeCompositionalLayout
{
  objc_initWeak(&location, self);
  _shouldUseBackgroundColor = [(FBAMailboxesViewController *)self _shouldUseBackgroundColor];
  v4 = [UICollectionViewCompositionalLayout alloc];
  v5 = 2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F600;
  v8[3] = &unk_1000DF0E0;
  if (!_shouldUseBackgroundColor)
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  diffableDataSource = [(FBAMailboxesViewController *)self diffableDataSource];
  v8 = [diffableDataSource sectionIdentifierForIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v8 isEqualToString:@"smart-mailbox"])
  {
    smartMailboxes = [(FBAMailboxesViewController *)self smartMailboxes];
    enhancedLoggingInbox = [smartMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    selfCopy2 = self;
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
        v12 = [(FBAMailboxesViewController *)self teamForIndexPath:pathCopy];
        v13 = [pathCopy row];
        inboxes = [(FBAMailboxesViewController *)self inboxes];
        v15 = [inboxes count];

        if (v13 >= v15)
        {
          v16 = [viewCopy cellForItemAtIndexPath:pathCopy];
          [(FBAMailboxesViewController *)self beginBugForTeam:v12 sender:v16];
        }

        else
        {
          [(FBAMailboxesViewController *)self performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:pathCopy];
        }
      }

      goto LABEL_6;
    }

    enhancedLoggingInbox = [(FBAMailboxesViewController *)self enhancedLoggingInbox];
    selfCopy2 = self;
  }

  [(FBAMailboxesViewController *)selfCopy2 performSegueWithIdentifier:@"FBAInboxItemsPresentation" sender:enhancedLoggingInbox];

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

    smartMailboxes = [(FBAMailboxesViewController *)self smartMailboxes];
    v6 = [smartMailboxes valueForKey:@"diffableIdentifier"];
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
      selfCopy = self;
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
          stringValue = [v13 stringValue];

          if (!stringValue)
          {
            v15 = +[NSUUID UUID];
            stringValue = [v15 UUIDString];

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
              v54 = stringValue;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Team [%{public}@] is missing ID, using a placeholder ID [%{public}@].", buf, 0x16u);
            }
          }

          v38 = v11;
          v50 = stringValue;
          v18 = [NSArray arrayWithObjects:&v50 count:1];
          [v3 appendSectionsWithIdentifiers:v18];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          inboxes = [(FBAMailboxesViewController *)self inboxes];
          v20 = [inboxes countByEnumeratingWithState:&v39 objects:v49 count:16];
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
                  objc_enumerationMutation(inboxes);
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

                diffableIdentifier = [v24 diffableIdentifier];
                v27 = [NSString stringWithFormat:@"Team%@-%@-%lu", stringValue, diffableIdentifier, v25];

                v48 = v27;
                v28 = [NSArray arrayWithObjects:&v48 count:1];
                [v3 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:stringValue];
              }

              v21 = [inboxes countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v21);
          }

          canStartNewFeedback = [(__CFString *)v12 canStartNewFeedback];
          v30 = @"disabled";
          if (canStartNewFeedback)
          {
            v30 = @"enabled";
          }

          v31 = [NSString stringWithFormat:@"Team%@-Compose-%@", stringValue, v30];
          v47 = v31;
          v32 = [NSArray arrayWithObjects:&v47 count:1];
          [v3 appendItemsWithIdentifiers:v32 intoSectionWithIdentifier:stringValue];

          v11 = v38 + 1;
          self = selfCopy;
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
  currentUser = [v2 currentUser];
  contentItems = [currentUser contentItems];
  v5 = [contentItems count] != 0;

  return v5;
}

- (unint64_t)fbkNewFeedbackButtonState
{
  v2 = +[NSProcessInfo processInfo];
  environment = [v2 environment];
  v4 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (v4)
  {
    return 1;
  }

  v6 = +[FBKData sharedInstance];
  currentUser = [v6 currentUser];

  if (currentUser && [currentUser didFetchFormStubs])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    teams = [currentUser teams];
    v9 = [teams countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(teams);
        }

        if (![*(*(&v14 + 1) + 8 * v12) didFetchFormItems])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [teams countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)fbkCreateNewFeedback:(id)feedback
{
  feedbackCopy = feedback;
  sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
  v5 = [sortedTeams count];

  if (v5 == 1)
  {
    sortedTeams2 = [(FBAMailboxesViewController *)self sortedTeams];
    firstObject = [sortedTeams2 firstObject];
    [(FBAMailboxesViewController *)self beginBugForTeam:firstObject sender:feedbackCopy];
  }

  else
  {
    [(FBAMailboxesViewController *)self beginBugForTeam:0 sender:feedbackCopy];
  }
}

- (void)_beginBugForTeam:(id)team sender:(id)sender
{
  teamCopy = team;
  senderCopy = sender;
  v7 = +[FBKData sharedInstance];
  currentUser = [v7 currentUser];
  bugFormStubs = [currentUser bugFormStubs];
  v10 = [bugFormStubs count];

  if (!v10)
  {
    [(FBAMailboxesViewController *)self presentNonParticipantView];
  }

  v11 = DEDDevicePlatformiOS;
  v12 = +[FBKGroupedDevice currentGroupedDevice];
  build = [v12 build];
  forms = [teamCopy forms];
  v15 = [FBKBugFormStub bugFormStubsMatchingBuild:build forPlatform:v11 withStubs:forms];

  if ([v15 count] == 1)
  {
    anyObject = [v15 anyObject];
    v17 = [anyObject preferredTeamForStubPreferringTeam:teamCopy];
    [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:anyObject forTeam:v17 withSender:senderCopy];
  }

  else
  {
    if (teamCopy)
    {
      [FBKBugFormStub predicateForTeam:teamCopy];
    }

    else
    {
      +[FBKBugFormStub predicateForAllStubs];
    }
    anyObject = ;
    v17 = [[_TtC18Feedback_Assistant26FBABugFormPickerController alloc] initWithStubsPredicate:anyObject];
    [(FBABugFormPickerController *)v17 setPickerDelegate:self];
    [(FBABugFormPickerController *)v17 setTeam:teamCopy];
    v18 = [[UINavigationController alloc] initWithRootViewController:v17];
    [v18 setModalPresentationStyle:7];
    pendingLaunchAction = [(FBAMailboxesViewController *)self pendingLaunchAction];
    if (pendingLaunchAction)
    {
      pendingLaunchAction2 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      [v18 setModalInPresentation:{objc_msgSend(pendingLaunchAction2, "isCaptive")}];
    }

    else
    {
      [v18 setModalInPresentation:0];
    }

    popoverPresentationController = [v18 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [popoverPresentationController setBarButtonItem:senderCopy];
    }

    else
    {
      [popoverPresentationController setSourceView:senderCopy];
      [senderCopy bounds];
      [popoverPresentationController setSourceRect:?];
    }

    v22 = +[iFBAConstants tintColor];
    view = [(FBABugFormPickerController *)v17 view];
    [view setTintColor:v22];

    [(FBAMailboxesViewController *)self presentViewController:v18 animated:1 completion:0];
  }
}

- (void)beginBugForTeam:(id)team sender:(id)sender
{
  teamCopy = team;
  senderCopy = sender;
  data = [(FBAMailboxesViewController *)self data];
  currentUser = [data currentUser];
  hasForms = [currentUser hasForms];

  if ((hasForms & 1) == 0)
  {
    [(FBAMailboxesViewController *)self presentNonParticipantView];
  }

  if (teamCopy && ([teamCopy forms], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12 == 1))
  {
    v13 = +[FBALog appHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name = [teamCopy name];
      v18 = 138412290;
      v19 = name;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Launching new draft for 1 team [%@] with one form", &v18, 0xCu);
    }

    forms = [teamCopy forms];
    anyObject = [forms anyObject];
    [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:anyObject forTeam:teamCopy withSender:senderCopy];
  }

  else
  {
    v17 = +[FBALog appHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Launching new draft. Will show form picker ", &v18, 2u);
    }

    [(FBAMailboxesViewController *)self _beginBugForTeam:teamCopy sender:senderCopy];
  }
}

- (void)tryLaunchingDraft:(id)draft orStub:(id)stub orBugForm:(id)form forTeam:(id)team withSender:(id)sender
{
  draftCopy = draft;
  stubCopy = stub;
  formCopy = form;
  teamCopy = team;
  senderCopy = sender;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100021C28;
  v34[4] = sub_100021C38;
  selfCopy = self;
  v35 = selfCopy;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100021C40;
  v28[3] = &unk_1000DF1A8;
  v28[4] = selfCopy;
  v18 = stubCopy;
  v29 = v18;
  v19 = draftCopy;
  v30 = v19;
  v20 = formCopy;
  v31 = v20;
  v21 = teamCopy;
  v32 = v21;
  v33 = v34;
  v22 = objc_retainBlock(v28);
  v23 = v22;
  if (v19)
  {
    data = [(FBAMailboxesViewController *)selfCopy data];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100021DBC;
    v26[3] = &unk_1000DF1D0;
    v27 = v23;
    [data bugFormFromForDraftItem:v19 withCompletion:v26];

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

  data = [(FBAMailboxesViewController *)self data];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021FD4;
  v7[3] = &unk_1000DF1F8;
  v7[4] = self;
  [data reloadAllContentWithCompletion:v7];
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
  hasLoggingSessions = [v2 hasLoggingSessions];

  return hasLoggingSessions;
}

- (id)teamForSection:(int64_t)section
{
  showsEnhancedLoggingSection = [(FBAMailboxesViewController *)self showsEnhancedLoggingSection];
  v6 = -2;
  if (!showsEnhancedLoggingSection)
  {
    v6 = -1;
  }

  v7 = v6 + section - [(FBAMailboxesViewController *)self isBatchUIEnabled];
  if (v7 < 0 || (-[FBAMailboxesViewController sortedTeams](self, "sortedTeams"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v11 = 0;
  }

  else
  {
    sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
    v11 = [sortedTeams objectAtIndexedSubscript:v7];
  }

  return v11;
}

- (int64_t)sectionForTeam:(id)team
{
  teamCopy = team;
  sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
  v6 = [sortedTeams indexOfObject:teamCopy];

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    showsEnhancedLoggingSection = [(FBAMailboxesViewController *)self showsEnhancedLoggingSection];
    return v6 + showsEnhancedLoggingSection + [(FBAMailboxesViewController *)self isBatchUIEnabled]+ 1;
  }

  return result;
}

- (id)teamForIndexPath:(id)path
{
  section = [path section];

  return [(FBAMailboxesViewController *)self teamForSection:section];
}

- (void)beginFeedbackWithDraftItem:(id)item
{
  itemCopy = item;
  singleTeam = [itemCopy singleTeam];
  composeFeedbackToolbarItem = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
  [(FBAMailboxesViewController *)self tryLaunchingDraft:itemCopy orStub:0 forTeam:singleTeam withSender:composeFeedbackToolbarItem];
}

- (void)respondToUrlAction:(id)action
{
  actionCopy = action;
  if ([actionCopy launchesFeedback])
  {
    [(FBAMailboxesViewController *)self launchFeedbackDraftWithUrlAction:actionCopy];
  }

  else if ([actionCopy launchesSurvey])
  {
    [(FBAMailboxesViewController *)self launchSurveyWithUrlAction:actionCopy];
  }

  else if ([actionCopy launchesInbox])
  {
    [(FBAMailboxesViewController *)self launchInboxWithLaunchAction:actionCopy];
  }

  else if ([actionCopy launchesBatchUI])
  {
    [(FBAMailboxesViewController *)self showBatchUIWithAction:actionCopy];
  }

  else
  {
    [(FBAMailboxesViewController *)self showItemWithUrlAction:actionCopy];
  }
}

- (void)runDelayedUrlActionIfNeeded
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100093350(self, v3);
  }

  delayedUrlAction = [(FBAMailboxesViewController *)self delayedUrlAction];

  if (delayedUrlAction)
  {
    delayedUrlAction2 = [(FBAMailboxesViewController *)self delayedUrlAction];
    showsItem = [delayedUrlAction2 showsItem];

    delayedUrlAction3 = [(FBAMailboxesViewController *)self delayedUrlAction];
    delayedUrlAction4 = delayedUrlAction3;
    if (showsItem)
    {
      [(FBAMailboxesViewController *)self showItemWithUrlAction:delayedUrlAction3];
LABEL_18:

      return;
    }

    if ([delayedUrlAction3 launchesFeedback])
    {
      fbkNewFeedbackButtonState = [(FBAMailboxesViewController *)self fbkNewFeedbackButtonState];

      if (fbkNewFeedbackButtonState == 2)
      {
        delayedUrlAction4 = [(FBAMailboxesViewController *)self delayedUrlAction];
        [(FBAMailboxesViewController *)self launchFeedbackDraftWithUrlAction:delayedUrlAction4];
        goto LABEL_18;
      }
    }

    else
    {
    }

    delayedUrlAction5 = [(FBAMailboxesViewController *)self delayedUrlAction];
    launchesSurvey = [delayedUrlAction5 launchesSurvey];

    delayedUrlAction6 = [(FBAMailboxesViewController *)self delayedUrlAction];
    delayedUrlAction4 = delayedUrlAction6;
    if (launchesSurvey)
    {
      [(FBAMailboxesViewController *)self launchSurveyWithUrlAction:delayedUrlAction6];
    }

    else
    {
      launchesInbox = [delayedUrlAction6 launchesInbox];

      delayedUrlAction7 = [(FBAMailboxesViewController *)self delayedUrlAction];
      delayedUrlAction4 = delayedUrlAction7;
      if (launchesInbox)
      {
        [(FBAMailboxesViewController *)self launchInboxWithLaunchAction:delayedUrlAction7];
      }

      else
      {
        launchesBatchUI = [delayedUrlAction7 launchesBatchUI];

        if (launchesBatchUI)
        {
          delayedUrlAction4 = [(FBAMailboxesViewController *)self delayedUrlAction];
          [(FBAMailboxesViewController *)self showBatchUIWithAction:delayedUrlAction4];
        }

        else
        {
          delayedUrlAction4 = +[FBALog appHandle];
          if (os_log_type_enabled(delayedUrlAction4, OS_LOG_TYPE_DEBUG))
          {
            sub_1000933D8(delayedUrlAction4);
          }
        }
      }
    }

    goto LABEL_18;
  }
}

- (BOOL)canLaunchFeedbackDraft
{
  splitViewController = [(FBAMailboxesViewController *)self splitViewController];
  topMostController = [splitViewController topMostController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([(FBAMailboxesViewController *)self isViewLoaded])
  {
    view = [(FBAMailboxesViewController *)self view];
    window = [view window];
    if (window)
    {
      data = [(FBAMailboxesViewController *)self data];
      if ([data isRefreshingForms])
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

  view = [(FBAMailboxesViewController *)self view];
  window = [view window];
  if (window && [(FBAMailboxesViewController *)self hasFinishedFirstLoad])
  {
    data = [(FBAMailboxesViewController *)self data];
    currentUser = [data currentUser];
    contentItems = [currentUser contentItems];
    v8 = [contentItems count] != 0;
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

  view = [(FBAMailboxesViewController *)self view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (BOOL)canShowBatchUIWithAction:(id)action
{
  actionCopy = action;
  isViewLoaded = [(FBAMailboxesViewController *)self isViewLoaded];
  if (actionCopy)
  {
    if (isViewLoaded)
    {
      view = [(FBAMailboxesViewController *)self view];
      window = [view window];
      if (window)
      {
        hasFinishedFirstLoad = [(FBAMailboxesViewController *)self hasFinishedFirstLoad];
      }

      else
      {
        hasFinishedFirstLoad = 0;
      }

      goto LABEL_9;
    }
  }

  else if (isViewLoaded)
  {
    view = [(FBAMailboxesViewController *)self view];
    window = [view window];
    hasFinishedFirstLoad = window != 0;
LABEL_9:

    goto LABEL_10;
  }

  hasFinishedFirstLoad = 0;
LABEL_10:

  return hasFinishedFirstLoad;
}

- (void)showItemWithUrlAction:(id)action
{
  actionCopy = action;
  canShowItems = [(FBAMailboxesViewController *)self canShowItems];
  v6 = +[FBALog appHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (canShowItems)
  {
    if (v7)
    {
      *buf = 138543362;
      v32 = actionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Executing show url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    if ([actionCopy isFFUAction] & 1) != 0 || (objc_msgSend(actionCopy, "isShowContentItemAction"))
    {
      data = [(FBAMailboxesViewController *)self data];
      currentUser = [data currentUser];
      contentItems = [currentUser contentItems];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100022E20;
      v29[3] = &unk_1000DEDC0;
      v11 = actionCopy;
      v30 = v11;
      v12 = [contentItems ded_findWithBlock:v29];

      if (v12)
      {
        if ([v11 isShowContentItemAction])
        {
          [(FBAMailboxesViewController *)self setPendingItemToShow:v12];
          [(FBAMailboxesViewController *)self setPendingLaunchAction:v11];
          inboxes = [(FBAMailboxesViewController *)self inboxes];
          v14 = [inboxes indexOfObjectPassingTest:&stru_1000DF238];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            singleTeam = [v12 singleTeam];
            v20 = [(FBAMailboxesViewController *)self sectionForTeam:singleTeam];

            v21 = [NSIndexPath indexPathForRow:v14 inSection:v20];
            splitViewController = [(FBAMailboxesViewController *)self splitViewController];
            LOBYTE(v20) = [splitViewController isCollapsed];

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
          data2 = [(FBAMailboxesViewController *)self data];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100023070;
          v23[3] = &unk_1000DF2F0;
          v24 = v11;
          v27 = v17;
          v25 = v12;
          selfCopy = self;
          v15 = v17;
          [data2 getFeedbackForContentItem:v25 completion:v23];
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
      v32 = actionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delaying show url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:actionCopy];
  }

LABEL_22:
}

- (void)launchInboxWithLaunchAction:(id)action
{
  actionCopy = action;
  if ([(FBAMailboxesViewController *)self canShowItems])
  {
    sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
    firstObject = [sortedTeams firstObject];

    if (!firstObject)
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
      sortedTeams2 = [(FBAMailboxesViewController *)self sortedTeams];
      firstObject2 = [sortedTeams2 firstObject];
      v9 = [(FBAMailboxesViewController *)self sectionForTeam:firstObject2];

      inboxes = [(FBAMailboxesViewController *)self inboxes];
      v11 = [inboxes indexOfObjectPassingTest:&stru_1000DF310];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(FBAMailboxesViewController *)self setPendingLaunchAction:actionCopy];
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
      v16 = actionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Delaying inbox action [%{public}@]", &v15, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:actionCopy];
  }

LABEL_15:
}

- (void)launchSurveyWithUrlAction:(id)action
{
  actionCopy = action;
  if ([(FBAMailboxesViewController *)self canLaunchSurveyDraft])
  {
    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v5 = +[FBALog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = actionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Executing launch url action [%{public}@]", buf, 0xCu);
    }

    if ([actionCopy launchesSurvey])
    {
      [(FBAMailboxesViewController *)self setPendingLaunchAction:actionCopy];
      data = [(FBAMailboxesViewController *)self data];
      currentUser = [data currentUser];
      contentItems = [currentUser contentItems];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100023988;
      v21[3] = &unk_1000DEDC0;
      v9 = actionCopy;
      v22 = v9;
      v10 = [contentItems ded_findWithBlock:v21];

      v11 = +[FBKData sharedInstance];
      defaultTeam = [v11 defaultTeam];

      v13 = +[FBALog appHandle];
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found survey content item without reload", buf, 2u);
        }

        [(FBAMailboxesViewController *)self reallyLaunchSurveyWithUrlAction:v9 team:defaultTeam surveyItem:v10];
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
        v20 = defaultTeam;
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
      v24 = actionCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Delaying survey launch url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:actionCopy];
  }
}

- (void)reallyLaunchSurveyWithUrlAction:(id)action team:(id)team surveyItem:(id)item
{
  actionCopy = action;
  teamCopy = team;
  itemCopy = item;
  v11 = +[FBKData sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100023D3C;
  v15[3] = &unk_1000DF360;
  v16 = actionCopy;
  selfCopy = self;
  v18 = itemCopy;
  v19 = teamCopy;
  v12 = teamCopy;
  v13 = itemCopy;
  v14 = actionCopy;
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

- (void)launchFeedbackDraftWithUrlAction:(id)action
{
  actionCopy = action;
  canLaunchFeedbackDraft = [(FBAMailboxesViewController *)self canLaunchFeedbackDraft];
  v6 = +[FBALog appHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (canLaunchFeedbackDraft)
  {
    if (v7)
    {
      *buf = 138543362;
      v48 = actionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Executing launch url action [%{public}@]", buf, 0xCu);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v8 = +[FBKData sharedInstance];
    defaultTeam = [v8 defaultTeam];

    if (![actionCopy launchesFeedback])
    {
      goto LABEL_33;
    }

    [(FBAMailboxesViewController *)self setPendingLaunchAction:actionCopy];
    formIdentifier = [actionCopy formIdentifier];

    if (formIdentifier)
    {
      v11 = +[FBKData sharedInstance];
      currentUser = [v11 currentUser];
      bugFormStubs = [currentUser bugFormStubs];
      [actionCopy findExactMatchFormStubAndTeamWithFormStubs:bugFormStubs];

      exactMatchFormStub = [actionCopy exactMatchFormStub];

      if (exactMatchFormStub)
      {
        v15 = +[FBALog appHandle];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          formIdentifier2 = [actionCopy formIdentifier];
          exactMatchFormStub2 = [actionCopy exactMatchFormStub];
          v18 = [exactMatchFormStub2 ID];
          intValue = [v18 intValue];
          *buf = 138543618;
          v48 = formIdentifier2;
          v49 = 1024;
          LODWORD(v50) = intValue;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "URL Action with formIdentifier [%{public}@] matched formStub [%i]", buf, 0x12u);
        }

        exactMatchFormStub3 = [actionCopy exactMatchFormStub];
        teamForExactMatchFormStub = [actionCopy teamForExactMatchFormStub];
        composeFeedbackToolbarItem = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
        [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:exactMatchFormStub3 forTeam:teamForExactMatchFormStub withSender:composeFeedbackToolbarItem];

        goto LABEL_32;
      }

      comesFromFeedbackd = [actionCopy comesFromFeedbackd];
      v35 = +[FBALog appHandle];
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (comesFromFeedbackd)
      {
        if (v36)
        {
          formIdentifier3 = [actionCopy formIdentifier];
          *buf = 138543362;
          v48 = formIdentifier3;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Form with identifier [%{public}@] not found. Will fetch by tat", buf, 0xCu);
        }

        v38 = +[FBKData sharedInstance];
        formIdentifier4 = [actionCopy formIdentifier];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100024758;
        v44[3] = &unk_1000DE4F8;
        v45 = actionCopy;
        selfCopy = self;
        [v38 fetchFormItemByTat:formIdentifier4 completion:v44];

        exactMatchFormStub3 = v45;
        goto LABEL_32;
      }

      if (!v36)
      {
LABEL_27:

        exactMatchFormStub3 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
        [(FBAMailboxesViewController *)self _beginBugForTeam:defaultTeam sender:exactMatchFormStub3];
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      *buf = 138543362;
      v48 = actionCopy;
      v40 = "Could not find form with identifier from Launch Action [%{public}@]. Will show picker";
    }

    else
    {
      bugFormID = [actionCopy bugFormID];

      if (bugFormID)
      {
        data = [(FBAMailboxesViewController *)self data];
        currentUser2 = [data currentUser];
        exactMatchFormStub3 = [currentUser2 uniqueFormStubsWithPreferredTeam:defaultTeam];

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_1000248AC;
        v42[3] = &unk_1000DF3C8;
        v26 = actionCopy;
        v43 = v26;
        v27 = [exactMatchFormStub3 ded_findWithBlock:v42];
        v28 = +[FBALog appHandle];
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          if (v29)
          {
            v30 = [v27 ID];
            intValue2 = [v30 intValue];
            *buf = 67109120;
            LODWORD(v48) = intValue2;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "URL Action matched one form item [%i]", buf, 8u);
          }

          [v26 setExactMatchFormStub:v27];
          exactMatchFormStub4 = [v26 exactMatchFormStub];
          composeFeedbackToolbarItem2 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
          [(FBAMailboxesViewController *)self tryLaunchingDraft:0 orStub:exactMatchFormStub4 forTeam:defaultTeam withSender:composeFeedbackToolbarItem2];
        }

        else
        {
          if (v29)
          {
            bugFormID2 = [v26 bugFormID];
            *buf = 138543618;
            v48 = bugFormID2;
            v49 = 2114;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Could not find form with formID [%{public}@] from Launch Action [%{public}@]. Will show picker", buf, 0x16u);
          }

          exactMatchFormStub4 = [(FBAMailboxesViewController *)self composeFeedbackToolbarItem];
          [(FBAMailboxesViewController *)self _beginBugForTeam:defaultTeam sender:exactMatchFormStub4];
        }

        goto LABEL_32;
      }

      v35 = +[FBALog appHandle];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 138543362;
      v48 = actionCopy;
      v40 = "Launch Action [%{public}@] will show picker";
    }

    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
    goto LABEL_27;
  }

  if (v7)
  {
    *buf = 138543362;
    v48 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delaying launch url action [%{public}@]", buf, 0xCu);
  }

  [(FBAMailboxesViewController *)self setDelayedUrlAction:actionCopy];
LABEL_34:
}

- (void)showBatchUIWithAction:(id)action
{
  actionCopy = action;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v27 = "[FBAMailboxesViewController showBatchUIWithAction:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  if ([(FBAMailboxesViewController *)self canShowBatchUIWithAction:actionCopy])
  {
    [(FBAMailboxesViewController *)self setDelayedUrlAction:0];
    v6 = +[UIApplication sharedApplication];
    delegate = [v6 delegate];

    traitCollection = [(FBAMailboxesViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [delegate blockLandscapeOrientations:1];
    }

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100024B94;
    v23 = &unk_1000DE4D0;
    selfCopy = self;
    v25 = delegate;
    v10 = delegate;
    v11 = [(FBAMailboxesViewController *)self batchEvaluationViewControllerWithUseNavigationStack:1 showsCloseButton:1 onDismiss:&v20];
    v12 = [(FBAMailboxesViewController *)self splitViewController:v20];
    view = [v12 view];
    [view frame];
    v15 = v14;
    v17 = v16;

    [v11 setPreferredContentSize:{v15 * 0.95, v17 * 0.95}];
    splitViewController = [(FBAMailboxesViewController *)self splitViewController];
    [splitViewController presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v19 = +[FBALog appHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Delaying batch UI url action", buf, 2u);
    }

    [(FBAMailboxesViewController *)self setDelayedUrlAction:actionCopy];
  }
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  senderCopy = sender;
  identifier = [segueCopy identifier];
  if ([identifier isEqualToString:@"FBAInboxItemsPresentation"])
  {
    destinationViewController = [segueCopy destinationViewController];
    tableView = [destinationViewController tableView];
    [tableView setAccessibilityIdentifier:@"mailbox content"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = senderCopy;
      data = [(FBAMailboxesViewController *)self data];
      currentUser = [data currentUser];
      data2 = [(FBAMailboxesViewController *)self data];
      mainQueueContext = [data2 mainQueueContext];
      v15 = [FBKTeam personalTeamForUser:currentUser inContext:mainQueueContext];

      [destinationViewController setShowingSyntheticInbox:1];
LABEL_15:
      [destinationViewController setInbox:topViewController];
      [destinationViewController setTeam:v15];
      splitViewController = [(FBAMailboxesViewController *)self splitViewController];
      isCollapsed = [splitViewController isCollapsed];

      if ((isCollapsed & 1) == 0)
      {
        splitViewController2 = [(FBAMailboxesViewController *)self splitViewController];
        [splitViewController2 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
      }

      [(FBAMailboxesViewController *)self setPendingLaunchAction:0];

      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      topViewController = 0;
      goto LABEL_15;
    }

    v18 = senderCopy;
    inboxes = [(FBAMailboxesViewController *)self inboxes];
    topViewController = [inboxes objectAtIndexedSubscript:{objc_msgSend(v18, "row")}];

    v15 = [(FBAMailboxesViewController *)self teamForIndexPath:v18];
    pendingLaunchAction = [(FBAMailboxesViewController *)self pendingLaunchAction];
    if ([pendingLaunchAction launchesInbox])
    {
    }

    else
    {
      pendingLaunchAction2 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      isShowContentItemAction = [pendingLaunchAction2 isShowContentItemAction];

      if (!isShowContentItemAction)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    canStartNewFeedback = [v15 canStartNewFeedback];
    navigationItem = [destinationViewController navigationItem];
    [navigationItem setHidesBackButton:canStartNewFeedback ^ 1];

    goto LABEL_14;
  }

  if ([identifier isEqualToString:@"FBAFollowupResponsePresentation"])
  {
    destinationViewController = [segueCopy destinationViewController];
    topViewController = [destinationViewController topViewController];
    pendingFollowupToShow = [(FBAMailboxesViewController *)self pendingFollowupToShow];
    [topViewController setFollowup:pendingFollowupToShow];

    pendingItemToShow = [(FBAMailboxesViewController *)self pendingItemToShow];
    [topViewController setContentItem:pendingItemToShow];

    [(FBAMailboxesViewController *)self setPendingFollowupToShow:0];
    [(FBAMailboxesViewController *)self setPendingItemToShow:0];
    [(FBAMailboxesViewController *)self setPendingLaunchAction:0];
LABEL_18:

    goto LABEL_19;
  }

  if (![identifier isEqualToString:@"FBAFollowupDetailPresentation"])
  {
    goto LABEL_20;
  }

  destinationViewController2 = [segueCopy destinationViewController];
  viewControllers = [destinationViewController2 viewControllers];
  v23 = [viewControllers objectAtIndexedSubscript:0];

  destinationViewController = v23;
  pendingItemToShow2 = [(FBAMailboxesViewController *)self pendingItemToShow];
  [destinationViewController setContentItem:pendingItemToShow2];

  data3 = [(FBAMailboxesViewController *)self data];
  currentUser2 = [data3 currentUser];
  bugFormStubs = [currentUser2 bugFormStubs];
  v28 = [bugFormStubs count] == 0;
  navigationItem2 = [destinationViewController navigationItem];

  [navigationItem2 setHidesBackButton:v28];
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
  inboxLiteMode = [v3 inboxLiteMode];

  if (inboxLiteMode)
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
  sortedTeams = [(FBAMailboxesViewController *)self sortedTeams];
  firstObject = [sortedTeams firstObject];
  canStartNewFeedback = [firstObject canStartNewFeedback];

  return canStartNewFeedback;
}

- (void)bugFormPicker:(id)picker didSelectBugFormStub:(id)stub
{
  pickerCopy = picker;
  stubCopy = stub;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002542C;
  v10[3] = &unk_1000DF3F0;
  v8 = stubCopy;
  v11 = v8;
  v9 = pickerCopy;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [(FBAMailboxesViewController *)self dismissViewControllerAnimated:1 completion:v10];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (void)bugFormPickerDidCancel:(id)cancel
{
  pendingLaunchAction = [(FBAMailboxesViewController *)self pendingLaunchAction];
  if (pendingLaunchAction)
  {
    v5 = pendingLaunchAction;
    pendingLaunchAction2 = [(FBAMailboxesViewController *)self pendingLaunchAction];
    isCaptive = [pendingLaunchAction2 isCaptive];

    if (isCaptive)
    {
      v8 = +[FBALog appHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bug form picker cancelled, exiting restricted mode.", v10, 2u);
      }

      pendingLaunchAction3 = [(FBAMailboxesViewController *)self pendingLaunchAction];
      +[iFBKUtils exitCaptiveModeRemovingFromHomeScreen:](iFBKUtils, "exitCaptiveModeRemovingFromHomeScreen:", [pendingLaunchAction3 shouldMakeFBAVisible]);
    }
  }
}

- (BOOL)_shouldUseBackgroundColor
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

- (id)batchUICellWithCollectionView:(id)view indexPath:(id)path reuseIdentifier:(id)identifier
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_100049A10(viewCopy, v11);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (void)presentNonParticipantView
{
  selfCopy = self;
  sub_100049F50();
}

- (void)launchNewDraftViewControllerWithBugFormStub:(id)stub draftItem:(id)item surveyBugForm:(id)form launchAction:(id)action team:(id)team completion:(id)completion
{
  v13 = _Block_copy(completion);
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

  stubCopy = stub;
  itemCopy = item;
  formCopy = form;
  actionCopy = action;
  teamCopy = team;
  selfCopy = self;
  sub_10004A17C(stub, item, form, action, team, v13, v14);
  sub_10004BA44(v13);
}

- (void)controller:(id)controller didFinishSubmissionWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_28didFinishSubmissionWithErrorySo015FBKBugFormTablebC0C_s0K0_pSgtF_0(controllerCopy);
}

- (void)controller:(id)controller didFailToLoadDraftWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_27didFailToLoadDraftWithErrorySo015FBKBugFormTablebC0C_s0M0_ptF_0();
}

- (void)controller:(id)controller didRequestDismissalWithSavedDraft:(BOOL)draft
{
  controllerCopy = controller;
  selfCopy = self;
  _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_33didRequestDismissalWithSavedDraftySo015FBKBugFormTablebC0C_SbtF_0(controllerCopy);
}

- (id)batchEvaluationViewControllerWithUseNavigationStack:(BOOL)stack showsCloseButton:(BOOL)button onDismiss:(id)dismiss
{
  v5 = _Block_copy(dismiss);
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

- (void)shouldShowBatchUIWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for BatchEvaluationViewController();
  static BatchEvaluationViewController.shouldShowBatchUI(completion:)();
}

@end