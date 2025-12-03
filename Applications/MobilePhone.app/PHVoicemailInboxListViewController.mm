@interface PHVoicemailInboxListViewController
- (BOOL)_selectionContainsUnreadVoicemail;
- (BOOL)hasContentToDisplay;
- (BOOL)hasLegacyVoicemailInboxes;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldShowBlockedSubFolder;
- (BOOL)shouldShowGreetingButton;
- (BOOL)shouldShowTrashSubFolder;
- (BOOL)showTipView;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NSString)folderName;
- (PHVoicemailInboxListViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController;
- (PHVoicemailNavigationController)voicemailNavigationController;
- (id)cellDetailDestructiveActionText;
- (id)navigationBarText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)viewControllerAtIndexPath:(id)path;
- (int)sectionTypeAt:(int64_t)at;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_delete:(id)_delete;
- (void)_markAsRead:(id)read;
- (void)_updateGreetingButtonAllowed;
- (void)greetingButtonTapped;
- (void)hideTipViewWithCompletionHandler:(id)handler;
- (void)performTableViewDestructiveActionAtIndexPath:(id)path;
- (void)reloadLegacyVoicemails;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)startObservingPreferences;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willShowVoicemails:(id)voicemails;
@end

@implementation PHVoicemailInboxListViewController

- (PHVoicemailInboxListViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PHVoicemailInboxListViewController;
  v7 = [(MPVoicemailTableViewController *)&v12 initWithNavigationController:controllerCopy voicemailController:voicemailController];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_voicemailNavigationController, controllerCopy);
    [(PHVoicemailInboxListViewController *)v8 _updateGreetingButtonAllowed];
    editButtonItem = [(PHVoicemailInboxListViewController *)v8 editButtonItem];
    navigationItem = [(PHVoicemailInboxListViewController *)v8 navigationItem];
    [navigationItem setLeftBarButtonItem:editButtonItem];
  }

  return v8;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v24 viewDidLoad];
  navigationBarText = [(PHVoicemailInboxListViewController *)self navigationBarText];
  navigationItem = [(PHVoicemailInboxListViewController *)self navigationItem];
  [navigationItem setTitle:navigationBarText];

  tableView = [(PHVoicemailInboxListViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[MPVoicemailMailboxTableViewCell reuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  tableView2 = [(PHVoicemailInboxListViewController *)self tableView];
  [tableView2 setAllowsMultipleSelectionDuringEditing:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"NO_VOICEMAIL" value:&stru_10028F310 table:@"Voicemail"];
  [(PHTableViewController *)self setContentUnavailableViewTitle:v10];

  v11 = [UIBarButtonItem alloc];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"MARK_AS_READ" value:&stru_10028F310 table:@"Voicemail"];
  v14 = [v11 initWithTitle:v13 style:0 target:self action:"_markAsRead:"];
  [(PHVoicemailInboxListViewController *)self setReadButton:v14];

  v15 = [UIBarButtonItem alloc];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DELETE" value:&stru_10028F310 table:@"Voicemail"];
  v18 = [v15 initWithTitle:v17 style:0 target:self action:"_delete:"];
  [(PHVoicemailInboxListViewController *)self setDeleteButton:v18];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  readButton = [(PHVoicemailInboxListViewController *)self readButton];
  v25[0] = readButton;
  v25[1] = v19;
  deleteButton = [(PHVoicemailInboxListViewController *)self deleteButton];
  v25[2] = deleteButton;
  v22 = [NSArray arrayWithObjects:v25 count:3];
  [(PHVoicemailInboxListViewController *)self setToolbarItems:v22];

  navigationController = [(PHVoicemailInboxListViewController *)self navigationController];
  [navigationController setToolbarHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v13 viewWillAppear:appear];
  v4 = objc_alloc_init(TUFeatureFlags);
  nameAndPhotoEnabledC3 = [v4 nameAndPhotoEnabledC3];

  if (nameAndPhotoEnabledC3)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going to present CNKCNSharedProfileOnboardingController on launch", v12, 2u);
    }

    onboardingController = [(PHVoicemailInboxListViewController *)self onboardingController];

    if (!onboardingController)
    {
      v8 = objc_opt_new();
      [(PHVoicemailInboxListViewController *)self setOnboardingController:v8];
    }

    onboardingController2 = [(PHVoicemailInboxListViewController *)self onboardingController];
    v10 = +[TUCallCenter sharedInstance];
    contactStore = [v10 contactStore];
    [onboardingController2 presentOnboardingControllerOnLaunchIfNeededFrom:self withContactStore:contactStore];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v13 viewDidAppear:appear];
  [(PHVoicemailInboxListViewController *)self tipKitStartObservation];
  objc_initWeak(&location, self);
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  accountManager = [v4 accountManager];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __52__PHVoicemailInboxListViewController_viewDidAppear___block_invoke;
  v10 = &unk_100285148;
  objc_copyWeak(&v11, &location);
  v6 = [accountManager listenForChangesWithHandler:&v7];
  [(PHVoicemailInboxListViewController *)self setInboxListeners:v6, v7, v8, v9, v10];

  [(PHVoicemailInboxListViewController *)self reloadLegacyVoicemails];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__PHVoicemailInboxListViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[MPVoicemailAccountManagerUpdate voicemails];
    v6 = [v3 contains:v5];

    if (v6)
    {
      [WeakRetained reloadLegacyVoicemails];
    }

    v7 = +[MPVoicemailAccountManagerUpdate accounts];
    v8 = [v3 contains:v7];

    if (v8)
    {
      [WeakRetained reloadLegacyVoicemails];
    }

    v9 = +[MPVoicemailAccountManagerUpdate onlineStatus];
    v10 = [v3 contains:v9];

    if (v10)
    {
      v11 = WeakRetained;
      TUGuaranteeExecutionOnMainThreadAsync();
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v4 viewDidDisappear:disappear];
  [(PHVoicemailInboxListViewController *)self tipKitStopObservation];
  [(PHVoicemailInboxListViewController *)self setInboxListeners:0];
}

- (void)reloadLegacyVoicemails
{
  v3 = PHPreferencesGetValue();
  if ([v3 BOOLValue])
  {
    v4 = +[MPLegacyVoicemail mock];
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, self);
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __60__PHVoicemailInboxListViewController_reloadLegacyVoicemails__block_invoke;
  v13 = &unk_100285520;
  objc_copyWeak(&v16, &location);
  v6 = v4;
  v14 = v6;
  selfCopy = self;
  [voicemailController fetchLegacyVoicemailsCompletion:&v10];

  v7 = [(MPVoicemailTableViewController *)self voicemailController:v10];
  accountManager = [v7 accountManager];
  accounts = [accountManager accounts];
  -[PHVoicemailInboxListViewController setShowLegacyVoicemailLabel:](self, "setShowLegacyVoicemailLabel:", [accounts count] > 1);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__PHVoicemailInboxListViewController_reloadLegacyVoicemails__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 48));
  v4 = v3;
  v5 = *(a1 + 32);
  TUGuaranteeExecutionOnMainThreadAsync();

  objc_destroyWeak(&v6);
}

void __60__PHVoicemailInboxListViewController_reloadLegacyVoicemails__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [WeakRetained hasLegacyVoicemailInboxes];
    [v13 setLegacyVoicemails:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v4 = [v13 legacyVoicemails];
      v5 = [v4 arrayByAddingObject:*(a1 + 40)];
      [v13 setLegacyVoicemails:v5];
    }

    v6 = [v13 hasLegacyVoicemailInboxes];
    if (v3)
    {
      if ((v6 & 1) == 0)
      {
        v7 = [v13 tableView];
        v8 = [NSIndexSet indexSetWithIndex:0];
        [v7 deleteSections:v8 withRowAnimation:100];

LABEL_12:
        [*(a1 + 48) updateTitleDisplayModeIfNeeded];
        goto LABEL_13;
      }
    }

    else if (v6)
    {
      v9 = [v13 tableView];
      v10 = [NSIndexSet indexSetWithIndex:0];
      [v9 insertSections:v10 withRowAnimation:100];

LABEL_13:
      WeakRetained = v13;
      goto LABEL_14;
    }

    if (![*(a1 + 48) sectionTypeAt:0])
    {
      v11 = [v13 tableView];
      v12 = [NSIndexSet indexSetWithIndex:0];
      [v11 reloadSections:v12 withRowAnimation:5];
    }

    WeakRetained = v13;
    if (v3)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
}

- (BOOL)shouldNavigationControllerPresentLargeTitles
{
  v4.receiver = self;
  v4.super_class = PHVoicemailInboxListViewController;
  if ([(MPVoicemailTableViewController *)&v4 shouldNavigationControllerPresentLargeTitles])
  {
    return 1;
  }

  else
  {
    return [(PHVoicemailInboxListViewController *)self hasLegacyVoicemailInboxes];
  }
}

- (BOOL)hasLegacyVoicemailInboxes
{
  legacyVoicemails = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
  v3 = [legacyVoicemails count] != 0;

  return v3;
}

- (int)sectionTypeAt:(int64_t)at
{
  tableView = [(PHVoicemailInboxListViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];
  if (at)
  {
    v6 = 0;
  }

  else
  {
    v6 = numberOfSections == 2;
  }

  v7 = !v6;

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(PHVoicemailInboxListViewController *)self hasLegacyVoicemailInboxes])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(PHVoicemailInboxListViewController *)self sectionTypeAt:section];
  if (v7 == 1)
  {
    v12.receiver = self;
    v12.super_class = PHVoicemailInboxListViewController;
    v9 = [(MPVoicemailTableViewController *)&v12 tableView:viewCopy numberOfRowsInSection:section];
    v10 = &v9[[(PHVoicemailInboxListViewController *)self shouldShowTrashSubFolder]];
    section = &v10[[(PHVoicemailInboxListViewController *)self shouldShowBlockedSubFolder]];
    [(PHTableViewController *)self setContentUnavailable:[(PHVoicemailInboxListViewController *)self hasContentToDisplay]^ 1 animated:0];
  }

  else if (!v7)
  {
    legacyVoicemails = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    section = [legacyVoicemails count];
  }

  return section;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [pathCopy section]);
  if (v8 == 1)
  {
    v13 = [pathCopy row];
    voicemails = [(MPVoicemailTableViewController *)self voicemails];
    v15 = [voicemails count];

    if (v13 >= v15)
    {
      tableView = [(PHVoicemailInboxListViewController *)self tableView];
      v21 = +[MPVoicemailMailboxTableViewCell reuseIdentifier];
      v12 = [tableView dequeueReusableCellWithIdentifier:v21 forIndexPath:pathCopy];

      v22 = [(PHVoicemailInboxListViewController *)self viewControllerAtIndexPath:pathCopy];
      folderName = [v22 folderName];
      titleLabel = [v12 titleLabel];
      [titleLabel setText:folderName];

      messageCountText = [v22 messageCountText];
      countLabel = [v12 countLabel];
      [countLabel setText:messageCountText];
    }

    else
    {
      v28.receiver = self;
      v28.super_class = PHVoicemailInboxListViewController;
      v12 = [(MPVoicemailTableViewController *)&v28 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    }
  }

  else if (v8 || (-[PHVoicemailInboxListViewController legacyVoicemails](self, "legacyVoicemails"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v11 = objc_msgSend(pathCopy, "row"), v9, v10 < v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"CallVoicemail" forIndexPath:pathCopy];
    legacyVoicemails = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    v17 = [legacyVoicemails objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    showLegacyVoicemailLabel = [(PHVoicemailInboxListViewController *)self showLegacyVoicemailLabel];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __70__PHVoicemailInboxListViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v29[3] = &unk_100284FD0;
    v30 = v17;
    v19 = v17;
    [(MPVoicemailTableViewController *)self configureLegacyVoicemailCell:v12 for:v19 showLabel:showLegacyVoicemailLabel onCallTapped:v29];
  }

  return v12;
}

void __70__PHVoicemailInboxListViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = UIApp;
  v2 = [*(a1 + 32) accountID];
  [v1 dialVoicemailWithAccountID:v2];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1 && [(PHVoicemailInboxListViewController *)self tableView:view numberOfRowsInSection:?]>= 1)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"OTHERS" value:&stru_10028F310 table:@"Voicemail"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)navigationBarText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VOICE_MAIL" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (NSString)folderName
{
  v4 = [NSString stringWithFormat:@"[PHVoicemailInboxListViewController folderName] should never get called"];
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHVoicemailInboxListViewController.m" lineNumber:266 description:@"-[PHVoicemailInboxListViewController folderName] should never get called"];
  }

  return [(PHVoicemailInboxListViewController *)self navigationBarText];
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)path
{
  pathCopy = path;
  pathCopy2 = path;
  v5 = [NSArray arrayWithObjects:&pathCopy count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __83__PHVoicemailInboxListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke;
  v6[3] = &unk_1002854D0;
  v6[4] = self;
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v5 dataSourceActions:v6 completionBlock:0];
}

void __83__PHVoicemailInboxListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 trashMessages:v3];
}

- (id)cellDetailDestructiveActionText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DELETE" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (BOOL)hasContentToDisplay
{
  trashVoicemails = [(PHVoicemailInboxListViewController *)self trashVoicemails];
  if ([trashVoicemails count])
  {
    hasLegacyVoicemailInboxes = 1;
  }

  else
  {
    voicemails = [(MPVoicemailTableViewController *)self voicemails];
    if ([voicemails count])
    {
      hasLegacyVoicemailInboxes = 1;
    }

    else
    {
      blockedVoicemails = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
      if ([blockedVoicemails count])
      {
        hasLegacyVoicemailInboxes = 1;
      }

      else
      {
        hasLegacyVoicemailInboxes = [(PHVoicemailInboxListViewController *)self hasLegacyVoicemailInboxes];
      }
    }
  }

  return hasLegacyVoicemailInboxes;
}

- (BOOL)shouldShowTrashSubFolder
{
  trashVoicemails = [(PHVoicemailInboxListViewController *)self trashVoicemails];
  v3 = [trashVoicemails count] != 0;

  return v3;
}

- (BOOL)shouldShowBlockedSubFolder
{
  blockedVoicemails = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
  v3 = [blockedVoicemails count] != 0;

  return v3;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [pathCopy section]))
  {
    v10.receiver = self;
    v10.super_class = PHVoicemailInboxListViewController;
    v8 = [(MPVoicemailTableViewController *)&v10 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [pathCopy section]) == 1)
  {
    v10.receiver = self;
    v10.super_class = PHVoicemailInboxListViewController;
    v8 = [(MPVoicemailTableViewController *)&v10 tableView:viewCopy canEditRowAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [pathCopy section]))
  {
    legacyVoicemails = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    navigationController = [legacyVoicemails objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v17 = UIApp;
    accountID = [navigationController accountID];
    [v17 dialVoicemailWithAccountID:accountID];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy setSeparatorStyle:0];
  [viewCopy setSeparatorStyle:1];
  v8 = [pathCopy row];
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v10 = [voicemails count];

  if (v8 >= v10)
  {
    v19 = [pathCopy row];
    voicemails2 = [(MPVoicemailTableViewController *)self voicemails];
    v21 = [voicemails2 count];

    if (v19 < v21)
    {
      goto LABEL_11;
    }

    navigationController = [(PHVoicemailInboxListViewController *)self navigationController];
    v22 = [(PHVoicemailInboxListViewController *)self viewControllerAtIndexPath:pathCopy];
    [navigationController pushViewController:v22 animated:1];

LABEL_10:
    goto LABEL_11;
  }

  readButton = [(PHVoicemailInboxListViewController *)self readButton];
  if (readButton)
  {
    v12 = readButton;
    deleteButton = [(PHVoicemailInboxListViewController *)self deleteButton];

    if (deleteButton)
    {
      if ([(PHVoicemailInboxListViewController *)self isEditing])
      {
        _selectionContainsUnreadVoicemail = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
      }

      else
      {
        _selectionContainsUnreadVoicemail = 0;
      }

      readButton2 = [(PHVoicemailInboxListViewController *)self readButton];
      [readButton2 setEnabled:_selectionContainsUnreadVoicemail];

      isEditing = [(PHVoicemailInboxListViewController *)self isEditing];
      if (isEditing)
      {
        readButton2 = [viewCopy indexPathsForSelectedRows];
        v25 = [readButton2 count] != 0;
      }

      else
      {
        v25 = 0;
      }

      deleteButton2 = [(PHVoicemailInboxListViewController *)self deleteButton];
      [deleteButton2 setEnabled:v25];

      if (isEditing)
      {
      }
    }
  }

LABEL_11:
}

- (id)viewControllerAtIndexPath:(id)path
{
  v4 = [path row];
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v6 = [voicemails count];

  if (v4 == v6)
  {
    shouldShowTrashSubFolder = [(PHVoicemailInboxListViewController *)self shouldShowTrashSubFolder];
    voicemailNavigationController = [(PHVoicemailInboxListViewController *)self voicemailNavigationController];
    v9 = voicemailNavigationController;
    if (shouldShowTrashSubFolder)
    {
      trashViewController = [voicemailNavigationController trashViewController];
      goto LABEL_6;
    }
  }

  else
  {
    voicemailNavigationController = [(PHVoicemailInboxListViewController *)self voicemailNavigationController];
    v9 = voicemailNavigationController;
  }

  trashViewController = [voicemailNavigationController blockedViewController];
LABEL_6:
  v11 = trashViewController;

  return v11;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [pathCopy section]))
  {
    v19.receiver = self;
    v19.super_class = PHVoicemailInboxListViewController;
    [(MPVoicemailTableViewController *)&v19 tableView:viewCopy didDeselectRowAtIndexPath:pathCopy];
    v8 = [pathCopy row];
    voicemails = [(MPVoicemailTableViewController *)self voicemails];
    v10 = [voicemails count];

    if (v8 < v10)
    {
      readButton = [(PHVoicemailInboxListViewController *)self readButton];
      if (readButton)
      {
        v12 = readButton;
        deleteButton = [(PHVoicemailInboxListViewController *)self deleteButton];

        if (deleteButton)
        {
          if ([(PHVoicemailInboxListViewController *)self isEditing])
          {
            _selectionContainsUnreadVoicemail = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
          }

          else
          {
            _selectionContainsUnreadVoicemail = 0;
          }

          readButton2 = [(PHVoicemailInboxListViewController *)self readButton];
          [readButton2 setEnabled:_selectionContainsUnreadVoicemail];

          isEditing = [(PHVoicemailInboxListViewController *)self isEditing];
          if (isEditing)
          {
            readButton2 = [viewCopy indexPathsForSelectedRows];
            v17 = [readButton2 count] != 0;
          }

          else
          {
            v17 = 0;
          }

          deleteButton2 = [(PHVoicemailInboxListViewController *)self deleteButton];
          [deleteButton2 setEnabled:v17];

          if (isEditing)
          {
          }
        }
      }
    }
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(PHVoicemailInboxListViewController *)self setIsSwipeToDelete:1];
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewController;
  [(PHTableViewController *)&v8 tableView:viewCopy willBeginEditingRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(PHVoicemailInboxListViewController *)self setIsSwipeToDelete:0];
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewController;
  [(PHTableViewController *)&v8 tableView:viewCopy didEndEditingRowAtIndexPath:pathCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v15.receiver = self;
  v15.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v15 setEditing:editing animated:animated];
  tabBarController = [(PHVoicemailInboxListViewController *)self tabBarController];
  if (editingCopy && ![(PHVoicemailInboxListViewController *)self isSwipeToDelete])
  {
    [tabBarController hideBarWithTransition:9];
    _selectionContainsUnreadVoicemail = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
    readButton = [(PHVoicemailInboxListViewController *)self readButton];
    [readButton setEnabled:_selectionContainsUnreadVoicemail];

    tableView = [(PHVoicemailInboxListViewController *)self tableView];
    indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
    v12 = [indexPathsForSelectedRows count] != 0;
    deleteButton = [(PHVoicemailInboxListViewController *)self deleteButton];
    [deleteButton setEnabled:v12];

    navigationController = [(PHVoicemailInboxListViewController *)self navigationController];
    [navigationController setToolbarHidden:0];
  }

  else
  {
    navigationController2 = [(PHVoicemailInboxListViewController *)self navigationController];
    [navigationController2 setToolbarHidden:1];

    [tabBarController showBarWithTransition:12];
  }
}

- (void)willShowVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  v5 = [voicemailsCopy count];
  if (v5)
  {
    editButtonItem = [(PHVoicemailInboxListViewController *)self editButtonItem];
  }

  else
  {
    if ([(PHVoicemailInboxListViewController *)self isEditing])
    {
      [(PHVoicemailInboxListViewController *)self setEditing:0 animated:1];
    }

    editButtonItem = 0;
  }

  navigationItem = [(PHVoicemailInboxListViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:editButtonItem];

  if (v5)
  {
  }

  v8 = +[PHVoicemailTrashListViewController voicemailPredicate];
  v9 = [(MPVoicemailTableViewController *)self voicemails:voicemailsCopy passingTest:v8];
  [(PHVoicemailInboxListViewController *)self setTrashVoicemails:v9];

  v10 = +[PHVoicemailBlockedListViewController voicemailPredicate];
  v11 = [(MPVoicemailTableViewController *)self voicemails:voicemailsCopy passingTest:v10];

  [(PHVoicemailInboxListViewController *)self setBlockedVoicemails:v11];
  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    trashVoicemails = [(PHVoicemailInboxListViewController *)self trashVoicemails];
    v14 = [trashVoicemails count];
    blockedVoicemails = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
    v16 = 134218240;
    v17 = v14;
    v18 = 2048;
    v19 = [blockedVoicemails count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found trashVoicemails.count: %ld blockedVoicemails.count: %ld", &v16, 0x16u);
  }
}

- (void)greetingButtonTapped
{
  v3 = [VMGreetingChangeViewController alloc];
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  v6 = [(VMNavigationController *)v3 initWithManager:accountManager];

  [(PHVoicemailInboxListViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_updateGreetingButtonAllowed
{
  if ([(PHVoicemailInboxListViewController *)self shouldShowGreetingButton])
  {
    v3 = [UIBarButtonItem alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"GREETING" value:&stru_10028F310 table:@"Voicemail"];
    v7 = [v3 initWithTitle:v5 style:0 target:self action:"greetingButtonTapped"];
  }

  else
  {
    v7 = 0;
  }

  navigationItem = [(PHVoicemailInboxListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];
}

- (BOOL)_selectionContainsUnreadVoicemail
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(PHVoicemailInboxListViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v5 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) row];
        voicemails = [(MPVoicemailTableViewController *)self voicemails];
        v11 = [voicemails count];

        if (v9 < v11)
        {
          voicemails2 = [(MPVoicemailTableViewController *)self voicemails];
          v13 = [voicemails2 objectAtIndex:v9];

          if (v13 && ![v13 isRead])
          {

            v14 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_markAsRead:(id)read
{
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  tableView = [(PHVoicemailInboxListViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v11 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [*(*(&v14 + 1) + 8 * v10) row]);
        if (v11)
        {
          [v4 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
    allObjects = [v4 allObjects];
    [voicemailController markMessagesAsRead:allObjects];
  }

  [(PHVoicemailInboxListViewController *)self setEditing:0 animated:1];
}

- (void)_delete:(id)_delete
{
  tableView = [(PHVoicemailInboxListViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__PHVoicemailInboxListViewController__delete___block_invoke;
  v7[3] = &unk_1002854D0;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __46__PHVoicemailInboxListViewController__delete___block_invoke_2;
  v6[3] = &unk_1002854D0;
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:indexPathsForSelectedRows dataSourceActions:v7 completionBlock:v6];
}

void __46__PHVoicemailInboxListViewController__delete___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 trashMessages:v3];
}

- (PHVoicemailNavigationController)voicemailNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_voicemailNavigationController);

  return WeakRetained;
}

- (void)tipKitStartObservation
{
  selfCopy = self;
  PHVoicemailInboxListViewController.tipKitStartObservation()();
}

- (void)tipKitStopObservation
{
  selfCopy = self;
  PHVoicemailInboxListViewController.tipKitStopObservation()();
}

- (void)hideTipViewWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in PHVoicemailInboxListViewController.hideTipView();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (BOOL)showTipView
{
  selfCopy = self;
  v3 = PHVoicemailInboxListViewController.showTipView()();

  return v3;
}

- (void)startObservingPreferences
{
  selfCopy = self;
  PHVoicemailInboxListViewController.startObservingPreferences()();
}

- (BOOL)shouldShowGreetingButton
{
  selfCopy = self;
  v3 = PHVoicemailInboxListViewController.shouldShowGreetingButton()();

  return v3;
}

@end