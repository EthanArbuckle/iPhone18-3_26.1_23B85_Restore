@interface PHVoicemailInboxListViewController
- (BOOL)_selectionContainsUnreadVoicemail;
- (BOOL)hasContentToDisplay;
- (BOOL)hasLegacyVoicemailInboxes;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldShowBlockedSubFolder;
- (BOOL)shouldShowGreetingButton;
- (BOOL)shouldShowTrashSubFolder;
- (BOOL)showTipView;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NSString)folderName;
- (PHVoicemailInboxListViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4;
- (PHVoicemailNavigationController)voicemailNavigationController;
- (id)cellDetailDestructiveActionText;
- (id)navigationBarText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)viewControllerAtIndexPath:(id)a3;
- (int)sectionTypeAt:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_delete:(id)a3;
- (void)_markAsRead:(id)a3;
- (void)_updateGreetingButtonAllowed;
- (void)greetingButtonTapped;
- (void)hideTipViewWithCompletionHandler:(id)a3;
- (void)performTableViewDestructiveActionAtIndexPath:(id)a3;
- (void)reloadLegacyVoicemails;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)startObservingPreferences;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willShowVoicemails:(id)a3;
@end

@implementation PHVoicemailInboxListViewController

- (PHVoicemailInboxListViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PHVoicemailInboxListViewController;
  v7 = [(MPVoicemailTableViewController *)&v12 initWithNavigationController:v6 voicemailController:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_voicemailNavigationController, v6);
    [(PHVoicemailInboxListViewController *)v8 _updateGreetingButtonAllowed];
    v9 = [(PHVoicemailInboxListViewController *)v8 editButtonItem];
    v10 = [(PHVoicemailInboxListViewController *)v8 navigationItem];
    [v10 setLeftBarButtonItem:v9];
  }

  return v8;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v24 viewDidLoad];
  v3 = [(PHVoicemailInboxListViewController *)self navigationBarText];
  v4 = [(PHVoicemailInboxListViewController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [(PHVoicemailInboxListViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[MPVoicemailMailboxTableViewCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(PHVoicemailInboxListViewController *)self tableView];
  [v8 setAllowsMultipleSelectionDuringEditing:1];

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
  v20 = [(PHVoicemailInboxListViewController *)self readButton];
  v25[0] = v20;
  v25[1] = v19;
  v21 = [(PHVoicemailInboxListViewController *)self deleteButton];
  v25[2] = v21;
  v22 = [NSArray arrayWithObjects:v25 count:3];
  [(PHVoicemailInboxListViewController *)self setToolbarItems:v22];

  v23 = [(PHVoicemailInboxListViewController *)self navigationController];
  [v23 setToolbarHidden:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v13 viewWillAppear:a3];
  v4 = objc_alloc_init(TUFeatureFlags);
  v5 = [v4 nameAndPhotoEnabledC3];

  if (v5)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going to present CNKCNSharedProfileOnboardingController on launch", v12, 2u);
    }

    v7 = [(PHVoicemailInboxListViewController *)self onboardingController];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(PHVoicemailInboxListViewController *)self setOnboardingController:v8];
    }

    v9 = [(PHVoicemailInboxListViewController *)self onboardingController];
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 contactStore];
    [v9 presentOnboardingControllerOnLaunchIfNeededFrom:self withContactStore:v11];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v13 viewDidAppear:a3];
  [(PHVoicemailInboxListViewController *)self tipKitStartObservation];
  objc_initWeak(&location, self);
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  v5 = [v4 accountManager];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __52__PHVoicemailInboxListViewController_viewDidAppear___block_invoke;
  v10 = &unk_100285148;
  objc_copyWeak(&v11, &location);
  v6 = [v5 listenForChangesWithHandler:&v7];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v4 viewDidDisappear:a3];
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
  v5 = [(MPVoicemailTableViewController *)self voicemailController];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __60__PHVoicemailInboxListViewController_reloadLegacyVoicemails__block_invoke;
  v13 = &unk_100285520;
  objc_copyWeak(&v16, &location);
  v6 = v4;
  v14 = v6;
  v15 = self;
  [v5 fetchLegacyVoicemailsCompletion:&v10];

  v7 = [(MPVoicemailTableViewController *)self voicemailController:v10];
  v8 = [v7 accountManager];
  v9 = [v8 accounts];
  -[PHVoicemailInboxListViewController setShowLegacyVoicemailLabel:](self, "setShowLegacyVoicemailLabel:", [v9 count] > 1);

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
  v2 = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
  v3 = [v2 count] != 0;

  return v3;
}

- (int)sectionTypeAt:(int64_t)a3
{
  v4 = [(PHVoicemailInboxListViewController *)self tableView];
  v5 = [v4 numberOfSections];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 2;
  }

  v7 = !v6;

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PHVoicemailInboxListViewController *)self sectionTypeAt:a4];
  if (v7 == 1)
  {
    v12.receiver = self;
    v12.super_class = PHVoicemailInboxListViewController;
    v9 = [(MPVoicemailTableViewController *)&v12 tableView:v6 numberOfRowsInSection:a4];
    v10 = &v9[[(PHVoicemailInboxListViewController *)self shouldShowTrashSubFolder]];
    a4 = &v10[[(PHVoicemailInboxListViewController *)self shouldShowBlockedSubFolder]];
    [(PHTableViewController *)self setContentUnavailable:[(PHVoicemailInboxListViewController *)self hasContentToDisplay]^ 1 animated:0];
  }

  else if (!v7)
  {
    v8 = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    a4 = [v8 count];
  }

  return a4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [v7 section]);
  if (v8 == 1)
  {
    v13 = [v7 row];
    v14 = [(MPVoicemailTableViewController *)self voicemails];
    v15 = [v14 count];

    if (v13 >= v15)
    {
      v20 = [(PHVoicemailInboxListViewController *)self tableView];
      v21 = +[MPVoicemailMailboxTableViewCell reuseIdentifier];
      v12 = [v20 dequeueReusableCellWithIdentifier:v21 forIndexPath:v7];

      v22 = [(PHVoicemailInboxListViewController *)self viewControllerAtIndexPath:v7];
      v23 = [v22 folderName];
      v24 = [v12 titleLabel];
      [v24 setText:v23];

      v25 = [v22 messageCountText];
      v26 = [v12 countLabel];
      [v26 setText:v25];
    }

    else
    {
      v28.receiver = self;
      v28.super_class = PHVoicemailInboxListViewController;
      v12 = [(MPVoicemailTableViewController *)&v28 tableView:v6 cellForRowAtIndexPath:v7];
    }
  }

  else if (v8 || (-[PHVoicemailInboxListViewController legacyVoicemails](self, "legacyVoicemails"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v11 = objc_msgSend(v7, "row"), v9, v10 < v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = [v6 dequeueReusableCellWithIdentifier:@"CallVoicemail" forIndexPath:v7];
    v16 = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v18 = [(PHVoicemailInboxListViewController *)self showLegacyVoicemailLabel];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __70__PHVoicemailInboxListViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v29[3] = &unk_100284FD0;
    v30 = v17;
    v19 = v17;
    [(MPVoicemailTableViewController *)self configureLegacyVoicemailCell:v12 for:v19 showLabel:v18 onCallTapped:v29];
  }

  return v12;
}

void __70__PHVoicemailInboxListViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = UIApp;
  v2 = [*(a1 + 32) accountID];
  [v1 dialVoicemailWithAccountID:v2];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1 && [(PHVoicemailInboxListViewController *)self tableView:a3 numberOfRowsInSection:?]>= 1)
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

- (void)performTableViewDestructiveActionAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
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
  v3 = [(PHVoicemailInboxListViewController *)self trashVoicemails];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MPVoicemailTableViewController *)self voicemails];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v4 = [(PHVoicemailInboxListViewController *)self hasLegacyVoicemailInboxes];
      }
    }
  }

  return v4;
}

- (BOOL)shouldShowTrashSubFolder
{
  v2 = [(PHVoicemailInboxListViewController *)self trashVoicemails];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldShowBlockedSubFolder
{
  v2 = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [v7 section]))
  {
    v10.receiver = self;
    v10.super_class = PHVoicemailInboxListViewController;
    v8 = [(MPVoicemailTableViewController *)&v10 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [v7 section]) == 1)
  {
    v10.receiver = self;
    v10.super_class = PHVoicemailInboxListViewController;
    v8 = [(MPVoicemailTableViewController *)&v10 tableView:v6 canEditRowAtIndexPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [v7 section]))
  {
    v15 = [(PHVoicemailInboxListViewController *)self legacyVoicemails];
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v17 = UIApp;
    v18 = [v16 accountID];
    [v17 dialVoicemailWithAccountID:v18];

    [v6 deselectRowAtIndexPath:v7 animated:1];
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v27 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 setSeparatorStyle:0];
  [v6 setSeparatorStyle:1];
  v8 = [v7 row];
  v9 = [(MPVoicemailTableViewController *)self voicemails];
  v10 = [v9 count];

  if (v8 >= v10)
  {
    v19 = [v7 row];
    v20 = [(MPVoicemailTableViewController *)self voicemails];
    v21 = [v20 count];

    if (v19 < v21)
    {
      goto LABEL_11;
    }

    v16 = [(PHVoicemailInboxListViewController *)self navigationController];
    v22 = [(PHVoicemailInboxListViewController *)self viewControllerAtIndexPath:v7];
    [v16 pushViewController:v22 animated:1];

LABEL_10:
    goto LABEL_11;
  }

  v11 = [(PHVoicemailInboxListViewController *)self readButton];
  if (v11)
  {
    v12 = v11;
    v13 = [(PHVoicemailInboxListViewController *)self deleteButton];

    if (v13)
    {
      if ([(PHVoicemailInboxListViewController *)self isEditing])
      {
        v14 = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
      }

      else
      {
        v14 = 0;
      }

      v23 = [(PHVoicemailInboxListViewController *)self readButton];
      [v23 setEnabled:v14];

      v24 = [(PHVoicemailInboxListViewController *)self isEditing];
      if (v24)
      {
        v23 = [v6 indexPathsForSelectedRows];
        v25 = [v23 count] != 0;
      }

      else
      {
        v25 = 0;
      }

      v26 = [(PHVoicemailInboxListViewController *)self deleteButton];
      [v26 setEnabled:v25];

      if (v24)
      {
      }
    }
  }

LABEL_11:
}

- (id)viewControllerAtIndexPath:(id)a3
{
  v4 = [a3 row];
  v5 = [(MPVoicemailTableViewController *)self voicemails];
  v6 = [v5 count];

  if (v4 == v6)
  {
    v7 = [(PHVoicemailInboxListViewController *)self shouldShowTrashSubFolder];
    v8 = [(PHVoicemailInboxListViewController *)self voicemailNavigationController];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 trashViewController];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [(PHVoicemailInboxListViewController *)self voicemailNavigationController];
    v9 = v8;
  }

  v10 = [v8 blockedViewController];
LABEL_6:
  v11 = v10;

  return v11;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PHVoicemailInboxListViewController sectionTypeAt:](self, "sectionTypeAt:", [v7 section]))
  {
    v19.receiver = self;
    v19.super_class = PHVoicemailInboxListViewController;
    [(MPVoicemailTableViewController *)&v19 tableView:v6 didDeselectRowAtIndexPath:v7];
    v8 = [v7 row];
    v9 = [(MPVoicemailTableViewController *)self voicemails];
    v10 = [v9 count];

    if (v8 < v10)
    {
      v11 = [(PHVoicemailInboxListViewController *)self readButton];
      if (v11)
      {
        v12 = v11;
        v13 = [(PHVoicemailInboxListViewController *)self deleteButton];

        if (v13)
        {
          if ([(PHVoicemailInboxListViewController *)self isEditing])
          {
            v14 = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
          }

          else
          {
            v14 = 0;
          }

          v15 = [(PHVoicemailInboxListViewController *)self readButton];
          [v15 setEnabled:v14];

          v16 = [(PHVoicemailInboxListViewController *)self isEditing];
          if (v16)
          {
            v15 = [v6 indexPathsForSelectedRows];
            v17 = [v15 count] != 0;
          }

          else
          {
            v17 = 0;
          }

          v18 = [(PHVoicemailInboxListViewController *)self deleteButton];
          [v18 setEnabled:v17];

          if (v16)
          {
          }
        }
      }
    }
  }
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PHVoicemailInboxListViewController *)self setIsSwipeToDelete:1];
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewController;
  [(PHTableViewController *)&v8 tableView:v7 willBeginEditingRowAtIndexPath:v6];
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PHVoicemailInboxListViewController *)self setIsSwipeToDelete:0];
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewController;
  [(PHTableViewController *)&v8 tableView:v7 didEndEditingRowAtIndexPath:v6];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PHVoicemailInboxListViewController;
  [(MPVoicemailTableViewController *)&v15 setEditing:a3 animated:a4];
  v6 = [(PHVoicemailInboxListViewController *)self tabBarController];
  if (v4 && ![(PHVoicemailInboxListViewController *)self isSwipeToDelete])
  {
    [v6 hideBarWithTransition:9];
    v8 = [(PHVoicemailInboxListViewController *)self _selectionContainsUnreadVoicemail];
    v9 = [(PHVoicemailInboxListViewController *)self readButton];
    [v9 setEnabled:v8];

    v10 = [(PHVoicemailInboxListViewController *)self tableView];
    v11 = [v10 indexPathsForSelectedRows];
    v12 = [v11 count] != 0;
    v13 = [(PHVoicemailInboxListViewController *)self deleteButton];
    [v13 setEnabled:v12];

    v14 = [(PHVoicemailInboxListViewController *)self navigationController];
    [v14 setToolbarHidden:0];
  }

  else
  {
    v7 = [(PHVoicemailInboxListViewController *)self navigationController];
    [v7 setToolbarHidden:1];

    [v6 showBarWithTransition:12];
  }
}

- (void)willShowVoicemails:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [(PHVoicemailInboxListViewController *)self editButtonItem];
  }

  else
  {
    if ([(PHVoicemailInboxListViewController *)self isEditing])
    {
      [(PHVoicemailInboxListViewController *)self setEditing:0 animated:1];
    }

    v6 = 0;
  }

  v7 = [(PHVoicemailInboxListViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  if (v5)
  {
  }

  v8 = +[PHVoicemailTrashListViewController voicemailPredicate];
  v9 = [(MPVoicemailTableViewController *)self voicemails:v4 passingTest:v8];
  [(PHVoicemailInboxListViewController *)self setTrashVoicemails:v9];

  v10 = +[PHVoicemailBlockedListViewController voicemailPredicate];
  v11 = [(MPVoicemailTableViewController *)self voicemails:v4 passingTest:v10];

  [(PHVoicemailInboxListViewController *)self setBlockedVoicemails:v11];
  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(PHVoicemailInboxListViewController *)self trashVoicemails];
    v14 = [v13 count];
    v15 = [(PHVoicemailInboxListViewController *)self blockedVoicemails];
    v16 = 134218240;
    v17 = v14;
    v18 = 2048;
    v19 = [v15 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found trashVoicemails.count: %ld blockedVoicemails.count: %ld", &v16, 0x16u);
  }
}

- (void)greetingButtonTapped
{
  v3 = [VMGreetingChangeViewController alloc];
  v4 = [(MPVoicemailTableViewController *)self voicemailController];
  v5 = [v4 accountManager];
  v6 = [(VMNavigationController *)v3 initWithManager:v5];

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

  v6 = [(PHVoicemailInboxListViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v7];
}

- (BOOL)_selectionContainsUnreadVoicemail
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(PHVoicemailInboxListViewController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) row];
        v10 = [(MPVoicemailTableViewController *)self voicemails];
        v11 = [v10 count];

        if (v9 < v11)
        {
          v12 = [(MPVoicemailTableViewController *)self voicemails];
          v13 = [v12 objectAtIndex:v9];

          if (v13 && ![v13 isRead])
          {

            v14 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_markAsRead:(id)a3
{
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PHVoicemailInboxListViewController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [*(*(&v14 + 1) + 8 * v10) row]);
        if (v11)
        {
          [v4 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    v12 = [(MPVoicemailTableViewController *)self voicemailController];
    v13 = [v4 allObjects];
    [v12 markMessagesAsRead:v13];
  }

  [(PHVoicemailInboxListViewController *)self setEditing:0 animated:1];
}

- (void)_delete:(id)a3
{
  v4 = [(PHVoicemailInboxListViewController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];
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
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v5 dataSourceActions:v7 completionBlock:v6];
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
  v2 = self;
  PHVoicemailInboxListViewController.tipKitStartObservation()();
}

- (void)tipKitStopObservation
{
  v2 = self;
  PHVoicemailInboxListViewController.tipKitStopObservation()();
}

- (void)hideTipViewWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (BOOL)showTipView
{
  v2 = self;
  v3 = PHVoicemailInboxListViewController.showTipView()();

  return v3;
}

- (void)startObservingPreferences
{
  v2 = self;
  PHVoicemailInboxListViewController.startObservingPreferences()();
}

- (BOOL)shouldShowGreetingButton
{
  v2 = self;
  v3 = PHVoicemailInboxListViewController.shouldShowGreetingButton()();

  return v3;
}

@end