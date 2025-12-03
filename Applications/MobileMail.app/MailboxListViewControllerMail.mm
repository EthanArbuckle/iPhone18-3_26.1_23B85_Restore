@interface MailboxListViewControllerMail
- (BOOL)isRefreshing;
- (BOOL)shouldAutorotate;
- (CGRect)rectOfMailbox:(id)mailbox;
- (MailScene)scene;
- (MailboxListViewControllerMail)initWithScene:(id)scene;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_ntsMailboxesForAccount:(id)account;
- (id)cellForMailbox:(id)mailbox;
- (id)displayPathForMailbox:(id)mailbox;
- (id)indexPathForMailbox:(id)mailbox;
- (id)indexPathForSelection;
- (id)mailboxForIndexPath:(id)path;
- (id)mailboxes;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_loadOutbox:(id)outbox;
- (void)_queueReloadIfOutboxChanged:(id)changed;
- (void)_reloadIfOutboxChanged:(id)changed;
- (void)applicationWillSuspend;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)didSelectMailbox:(id)mailbox changed:(BOOL)changed animated:(BOOL)animated;
- (void)disableMailboxTypes:(id)types;
- (void)disableMailboxes:(id)mailboxes;
- (void)enableMailboxTypes:(id)types;
- (void)filterMailboxesContainingText:(id)text;
- (void)mailAccountsChanged:(id)changed;
- (void)mailboxEditingControllerDidFinish:(id)finish;
- (void)messageStoreChanged:(id)changed;
- (void)pulledToRefresh:(id)refresh;
- (void)setAccount:(id)account;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHideInbox:(BOOL)inbox;
- (void)setIsRefreshing:(BOOL)refreshing;
- (void)shouldReloadMailboxesWithOutbox:(id)outbox;
- (void)showMailboxEditingControllerWithMailbox:(id)mailbox;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillReappear:(BOOL)reappear;
@end

@implementation MailboxListViewControllerMail

- (MailboxListViewControllerMail)initWithScene:(id)scene
{
  sceneCopy = scene;
  v16.receiver = self;
  v16.super_class = MailboxListViewControllerMail;
  v5 = [(MailboxListViewControllerMail *)&v16 initWithStyle:0];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"messageStoreChanged:" name:MailMessageStoreMessagesAdded object:0];
    [v6 addObserver:v5 selector:"messageStoreChanged:" name:MailMessageStoreMessageFlagsChanged object:0];
    [v6 addObserver:v5 selector:"accountDisplayNameChanged:" name:MailApplicationDidChangeAccountDisplayName object:0];
    [v6 addObserver:v5 selector:"mailAccountsChanged:" name:ECMailAccountsDidChangeNotification object:0];
    [v6 addObserver:v5 selector:"pendingMailboxesChanged:" name:@"MVMailboxListHasPendingChangesNotification" object:0];
    [v6 addObserver:v5 selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
    *(v5 + 87) = 0;
    v5[48] |= 1u;
    v5[113] = 1;
    objc_storeWeak((v5 + 127), sceneCopy);
    v7 = [EFLocked alloc];
    v8 = objc_opt_new();
    v9 = [v7 initWithObject:v8];
    v10 = *(v5 + 143);
    *(v5 + 143) = v9;

    *(v5 + 151) = 0;
    v11 = [[EFLazyCache alloc] initWithCountLimit:100];
    v12 = *(v5 + 159);
    *(v5 + 159) = v11;

    v13 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.MailboxListViewControllerMail.mailboxFilterScheduler" qualityOfService:25];
    v14 = *(v5 + 167);
    *(v5 + 167) = v13;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v4 dealloc];
}

- (void)_getRotationContentSettings:(id *)settings
{
  *&settings->var0 = 257;
  +[MFTableViewCell defaultAccessoryWidth];
  settings->var5 = v4;
}

- (BOOL)shouldAutorotate
{
  if (+[UIDevice mf_isPadIdiom])
  {
    return [(MailboxListViewControllerMail *)self isEditing]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)updateTitle
{
  v3 = +[NSBundle mainBundle];
  v15 = [v3 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAILBOXES_BACK_BUTTON" value:&stru_100662A88 table:@"Main"];

  WeakRetained = objc_loadWeakRetained((&self->_queuedOutboxCheck + 7));
  containsMultipleAccounts = [WeakRetained containsMultipleAccounts];

  if (containsMultipleAccounts)
  {
    account = [(MailboxListViewControllerBase *)self account];
    displayName = [account displayName];

    if ([displayName length])
    {
      v10 = displayName;

      v5 = 0;
      v15 = v10;
    }
  }

  title = [(MailboxListViewControllerMail *)self title];
  v12 = [v15 isEqualToString:title];

  if ((v12 & 1) == 0)
  {
    [(MailboxListViewControllerMail *)self setTitle:v15];
    navigationItem = [(MailboxListViewControllerMail *)self navigationItem];
    [navigationItem setBackButtonTitle:v5];

    navigationItem2 = [(MailboxListViewControllerMail *)self navigationItem];
    [navigationItem2 setBackButtonDisplayMode:0];
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  account = [(MailboxListViewControllerBase *)self account];

  if (account != accountCopy)
  {
    v7.receiver = self;
    v7.super_class = MailboxListViewControllerMail;
    [(MailboxListViewControllerBase *)&v7 setAccount:accountCopy];
    if ([(MailboxListViewControllerMail *)self isViewLoaded])
    {
      tableView = [(MailboxListViewControllerMail *)self tableView];
      [tableView setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];
    }

    [(MailboxListViewControllerMail *)self updateTitle];
  }
}

- (BOOL)isRefreshing
{
  if (pthread_main_np() != 1)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MailboxListViewControllerMail.m" lineNumber:142 description:@"Current thread must be main"];
  }

  return self->_showRefreshControl;
}

- (void)setIsRefreshing:(BOOL)refreshing
{
  refreshingCopy = refreshing;
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailboxListViewControllerMail.m" lineNumber:147 description:@"Current thread must be main"];
  }

  if (self->_showRefreshControl != refreshingCopy && !refreshingCopy)
  {
    self->_showRefreshControl = refreshingCopy;
    mlvcmDelegate_high = HIBYTE(self->_mlvcmDelegate);
    tableView = [(MailboxListViewControllerMail *)self tableView];
    [tableView _endRefreshingAnimated:mlvcmDelegate_high];
  }
}

- (void)pulledToRefresh:(id)refresh
{
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MailboxListViewControllerMail.m" lineNumber:169 description:@"Current thread must be main"];
  }

  self->_showRefreshControl = 1;
  [(MailboxListViewControllerMail *)self performSelector:"updateIsRefreshing" withObject:0 afterDelay:0.0];
  scene = [(MailboxListViewControllerMail *)self scene];
  daemonInterface = [scene daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];

  [mailboxRepository refreshMailboxList:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v23.receiver = self;
  v23.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v23 viewWillAppear:appear];
  [(MailboxListViewControllerMail *)self updateTitle];
  [(MailboxListViewControllerMail *)self updateIsRefreshing];
  toolbarItems = [(MailboxListViewControllerMail *)self toolbarItems];
  v5 = toolbarItems == 0;

  if (v5)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    scene = [(MailboxListViewControllerMail *)self scene];
    if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") & 1) == 0 && [scene conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector())
    {
      newComposeButtonItem = [scene newComposeButtonItem];
      v25[0] = v6;
      v25[1] = v7;
      v25[2] = newComposeButtonItem;
      v10 = [NSArray arrayWithObjects:v25 count:3];
      [(MailboxListViewControllerMail *)self setToolbarItems:v10];
    }

    else
    {
      v24[0] = v6;
      v24[1] = v7;
      newComposeButtonItem = [NSArray arrayWithObjects:v24 count:2];
      [(MailboxListViewControllerMail *)self setToolbarItems:newComposeButtonItem];
    }
  }

  v11 = objc_alloc_init(NSMutableSet);
  account = [(MailboxListViewControllerBase *)self account];
  if (account)
  {
    account2 = [(MailboxListViewControllerBase *)self account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      account3 = [(MailboxListViewControllerBase *)self account];
      primaryMailboxUid = [account3 primaryMailboxUid];
      [v11 addObject:primaryMailboxUid];
    }
  }

  account4 = [(MailboxListViewControllerBase *)self account];
  supportsMailboxEditing = [account4 supportsMailboxEditing];

  if (supportsMailboxEditing)
  {
    editButtonItem = [(MailboxListViewControllerMail *)self editButtonItem];
    navigationItem = [(MailboxListViewControllerMail *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  else
  {
    editButtonItem = [(MailboxListViewControllerMail *)self navigationItem];
    [editButtonItem setRightBarButtonItem:0];
  }

  tableView = [(MailboxListViewControllerMail *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [tableView setEstimatedRowHeight:?];

  mf_updatePreferredContentSizeBasedOnTableView = [(MailboxListViewControllerMail *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MailboxListViewControllerMail *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];
}

- (void)viewWillReappear:(BOOL)reappear
{
  reappearCopy = reappear;
  account = [(MailboxListViewControllerBase *)self account];

  if (!account)
  {
    v6 = objc_alloc_init(MailboxListViewingContext);
    v7 = +[UIApplication sharedApplication];
    selectedAccounts = [v7 selectedAccounts];

    if ([selectedAccounts count] >= 2)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100488424(v9);
      }
    }

    anyObject = [selectedAccounts anyObject];
    [(MailboxListViewingContext *)v6 setAccount:anyObject];

    [(MailboxListViewControllerBase *)self setViewingContext:v6];
    [(MailboxListViewControllerBase *)self viewWillFirstAppear:reappearCopy];
  }

  v11.receiver = self;
  v11.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v11 viewWillReappear:reappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v4 viewDidAppear:appear];
  [(MailboxListViewControllerMail *)self mf_updateAlertSuppressionContextsForReason:@"mailbox list appeared"];
  HIBYTE(self->_mlvcmDelegate) = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v6 viewWillDisappear:disappear];
  HIBYTE(self->_mlvcmDelegate) = 0;
  tableView = [(MailboxListViewControllerMail *)self tableView];
  refreshControl = [tableView refreshControl];
  [refreshControl endRefreshing];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerMail *)&v5 viewDidDisappear:0];
  [(MailboxListViewControllerMail *)self setIsRefreshing:0];
  parentViewController = [(MailboxListViewControllerMail *)self parentViewController];

  if (!parentViewController)
  {
    [(MailboxListViewControllerMail *)self unloadViewIfReloadable];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v6 viewDidLoad];
  tableView = [(MailboxListViewControllerMail *)self tableView];
  if (self->_alignAccessories)
  {
    v4 = objc_alloc_init(UIRefreshControl);
    [v4 addTarget:self action:"pulledToRefresh:" forControlEvents:4096];
    [tableView _setRefreshControl:v4];
  }

  [tableView setSeparatorStyle:1];
  v5 = +[UIColor tableBackgroundColor];
  [tableView setBackgroundColor:v5];

  [tableView setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [tableView setSelectionFollowsFocus:0];
}

- (void)applicationWillSuspend
{
  v5.receiver = self;
  v5.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerMail *)&v5 applicationWillSuspend];
  navigationController = [(MailboxListViewControllerMail *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    [(MailboxListViewControllerMail *)self setEditing:0 animated:0];
  }
}

- (id)mailboxForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && [pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 row];
    mailboxes = [(MailboxListViewControllerMail *)self mailboxes];
    v9 = [mailboxes objectAtIndex:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  mailboxes = [(MailboxListViewControllerMail *)self mailboxes];
  v6 = [mailboxes indexOfObject:mailboxCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSIndexPath indexPathForRow:v6 inSection:0];
  }

  return v7;
}

- (void)didSelectMailbox:(id)mailbox changed:(BOOL)changed animated:(BOOL)animated
{
  animatedCopy = animated;
  changedCopy = changed;
  mailboxCopy = mailbox;
  if (([*(self + 55) containsObject:mailboxCopy] & 1) == 0)
  {
    if (![*(&self->_disabledMailboxes + 7) count] || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(mailboxCopy, "mailboxType")), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(*(&self->_disabledMailboxes + 7), "containsObject:", v9), v9, (v10 & 1) == 0))
    {
      if ([(MailboxListViewControllerMail *)self isEditing])
      {
        if ([mailboxCopy mv_isEditable])
        {
          [(MailboxListViewControllerMail *)self showMailboxEditingControllerWithMailbox:mailboxCopy];
        }
      }

      else
      {
        mailboxSelectionTarget = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];

        if (mailboxSelectionTarget)
        {
          v12.receiver = self;
          v12.super_class = MailboxListViewControllerMail;
          [(MailboxListViewControllerBase *)&v12 didSelectMailbox:mailboxCopy changed:changedCopy animated:animatedCopy];
        }
      }
    }
  }
}

- (void)mailboxEditingControllerDidFinish:(id)finish
{
  presentedViewController = [(MailboxListViewControllerMail *)self presentedViewController];

  if (presentedViewController)
  {

    [(MailboxListViewControllerMail *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(MailboxListViewControllerMail *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)showMailboxEditingControllerWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = mailboxCopy;
  if (mailboxCopy)
  {
    [mailboxCopy account];
  }

  else
  {
    [(MailboxListViewControllerBase *)self account];
  }
  v6 = ;
  v7 = v6;
  if (v6)
  {
    v13 = v6;
    allObjects = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    accountsProvider = [v9 accountsProvider];
    displayedAccounts = [accountsProvider displayedAccounts];
    allObjects = [displayedAccounts allObjects];
  }

  v12 = [[MailboxEditingController alloc] initWithMailbox:v5 account:v7 validAccounts:allObjects];
  [(MailboxEditingController *)v12 setDelegate:self];
  [(MailboxListViewControllerMail *)self showViewController:v12 sender:self];
}

- (id)indexPathForSelection
{
  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];

  if (selectedMailbox)
  {
    selectedMailbox2 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v5 = [(MailboxListViewControllerMail *)self indexPathForMailbox:selectedMailbox2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)rectOfMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  tableView = [(MailboxListViewControllerMail *)self tableView];
  [tableView contentOffset];
  [tableView setContentOffset:0 animated:?];
  v6 = [(MailboxListViewControllerMail *)self indexPathForMailbox:mailboxCopy];
  if (v6)
  {
    [tableView rectForRowAtIndexPath:v6];
    v8 = v7;
    y = v9;
    v12 = v11;
    height = v13;
    v15 = sub_10024BD78([mailboxCopy level]);
    v16 = v15;
    x = v8 + v16;
    width = v12 - v16;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)cellForMailbox:(id)mailbox
{
  v4 = [(MailboxListViewControllerMail *)self indexPathForMailbox:mailbox];
  if (v4)
  {
    tableView = [(MailboxListViewControllerMail *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disableMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v5 = *(self + 55);
  v8 = mailboxesCopy;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(self + 55);
    *(self + 55) = v6;

    v5 = *(self + 55);
    mailboxesCopy = v8;
  }

  [v5 unionSet:mailboxesCopy];
}

- (void)disableMailboxTypes:(id)types
{
  typesCopy = types;
  v5 = *(&self->_disabledMailboxes + 7);
  v8 = typesCopy;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(&self->_disabledMailboxes + 7);
    *(&self->_disabledMailboxes + 7) = v6;

    v5 = *(&self->_disabledMailboxes + 7);
    typesCopy = v8;
  }

  [v5 unionSet:typesCopy];
}

- (void)enableMailboxTypes:(id)types
{
  typesCopy = types;
  v4 = *(&self->_disabledMailboxes + 7);
  if (v4)
  {
    [v4 minusSet:typesCopy];
  }
}

- (void)setHideInbox:(BOOL)inbox
{
  v3 = *(self + 48);
  if (((((v3 & 2) == 0) ^ inbox) & 1) == 0)
  {
    inboxCopy = inbox;
    if (inbox)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 48) = v3 & 0xFD | v6;
    v8 = [NSNumber numberWithInt:7];
    [NSSet setWithObject:v8];
    if (inboxCopy)
      v7 = {;
      [(MailboxListViewControllerMail *)self disableMailboxTypes:v7];
    }

    else
      v7 = {;
      [(MailboxListViewControllerMail *)self enableMailboxTypes:v7];
    }
  }
}

- (void)_reloadIfOutboxChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[MailAccount outboxMailboxUid];
  if (v4 && (*(&self->super + 8) & 1) == 0)
  {
    v5 = [changedCopy objectForKey:MailMessageStoreChangedMailboxesKey];
    if ([v5 containsObject:v4])
    {
      [(MailboxListViewControllerBase *)self _loadMailboxes:1];

      goto LABEL_9;
    }

    v6 = [changedCopy objectForKey:MailMessageStoreMessageKey];
    v7 = [v6 valueForKey:@"mailbox"];

    if ([v7 containsObject:v4])
    {
      [(MailboxListViewControllerBase *)self _loadMailboxes];
    }
  }

  *(&self->_editingToolbarItems + 7) = CFAbsoluteTimeGetCurrent();
LABEL_9:
}

- (void)_queueReloadIfOutboxChanged:(id)changed
{
  changedCopy = changed;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(&self->_editingToolbarItems + 7);
  if (Current - v5 <= 1.0)
  {
    if ((HIBYTE(self->_lastCheckedOutbox) & 1) == 0)
    {
      [(MailboxListViewControllerMail *)self performSelector:"_reloadIfOutboxChanged:" withObject:changedCopy afterDelay:v5 + 1.0 - Current];
      HIBYTE(self->_lastCheckedOutbox) = 1;
    }
  }

  else
  {
    [(MailboxListViewControllerMail *)self _reloadIfOutboxChanged:changedCopy];
    HIBYTE(self->_lastCheckedOutbox) = 0;
  }
}

- (void)messageStoreChanged:(id)changed
{
  userInfo = [changed userInfo];
  [MailboxListViewControllerMail performSelectorOnMainThread:"performSelectorOnMainThread:withObject:waitUntilDone:" withObject:"_queueReloadIfOutboxChanged:" waitUntilDone:?];
}

- (void)mailAccountsChanged:(id)changed
{
  changedCopy = changed;
  if (+[NSThread isMainThread])
  {
    account = [(MailboxListViewControllerBase *)self account];

    if (account)
    {
      account2 = [(MailboxListViewControllerBase *)self account];
      uniqueID = [account2 uniqueID];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = +[UIApplication sharedApplication];
      accountsProvider = [v9 accountsProvider];
      displayedAccounts = [accountsProvider displayedAccounts];

      v12 = [displayedAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(displayedAccounts);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            if ([v15 isActive])
            {
              uniqueID2 = [v15 uniqueID];
              v17 = [uniqueID isEqualToString:uniqueID2];

              if (v17)
              {
                v12 = v15;
                goto LABEL_15;
              }
            }
          }

          v12 = [displayedAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      [(MailboxListViewControllerMail *)self setAccount:v12];
      [(MailboxListViewControllerBase *)self _loadMailboxes:1];
    }
  }

  else
  {
    [(MailboxListViewControllerMail *)self performSelectorOnMainThread:a2 withObject:changedCopy waitUntilDone:0];
  }
}

- (void)contentSizeCategoryChanged:(id)changed
{
  +[MailboxTableCell invalidateCachedLayoutInformation];
  tableView = [(MailboxListViewControllerMail *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [tableView setRowHeight:?];

  tableView2 = [(MailboxListViewControllerMail *)self tableView];
  [tableView2 reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MailboxListViewControllerMail *)self mailboxes:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(MailboxListViewControllerMail *)self mailboxForIndexPath:path];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"MailboxCellReuse"];
  if (!v8)
  {
    v8 = [[MailboxTableCell alloc] initWithStyle:3 reuseIdentifier:@"MailboxCellReuse"];
    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(MailboxTableCell *)v8 setPreferredSubtitleFont:v9];

    [(MailboxTableCell *)v8 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewMailboxListControllerCell];
  }

  if (v7)
  {
    v10 = [NSSet setWithObject:v7];
  }

  else
  {
    v10 = 0;
  }

  [(MailboxTableCell *)v8 setLegacyMailboxes:v10 showUnreadCount:1];
  -[MailboxTableCell setDisabledForEditing:](v8, "setDisabledForEditing:", [v7 mv_isEditable] ^ 1);
  filteredMailboxes = [(MailboxListViewControllerMail *)self filteredMailboxes];
  getObject = [filteredMailboxes getObject];
  v13 = [getObject count];

  if (v13)
  {
    v14 = [(MailboxListViewControllerMail *)self displayPathForMailbox:v7];
    [(MailboxTableCell *)v8 setSubtitle:v14];
    v15 = v14;
    [(MailboxTableCell *)v8 setFlattenHierarchy:1];
  }

  else
  {
    v15 = 0;
  }

  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  v17 = selectedMailbox;
  if (selectedMailbox == v7)
  {
  }

  else
  {
    if (!v7 || ([*(self + 55) containsObject:v7] & 1) != 0)
    {

LABEL_13:
      [(MailboxTableCell *)v8 setCellEnabled:0];
      goto LABEL_16;
    }

    v18 = *(&self->_disabledMailboxes + 7);
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 type]);
    LODWORD(v18) = [v18 containsObject:v19];

    if (v18)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  isStore = [v7 isStore];
  mv_isEditable = [v7 mv_isEditable];
  v22 = v8;
  v23 = v22;
  if (*(self + 48))
  {
    [(MailboxTableCell *)v22 setAccessoryType:isStore];
    [(MailboxTableCell *)v23 setEditingAccessoryType:mv_isEditable];
  }

  return v23;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  +[MailboxTableCell defaultRowHeight];
  return result;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v23.receiver = self;
  v23.super_class = MailboxListViewControllerMail;
  [MailboxListViewControllerMail setEditing:"setEditing:animated:" animated:?];
  v7 = +[UIApplication sharedApplication];
  accountsProvider = [v7 accountsProvider];
  isDisplayingMultipleAccounts = [accountsProvider isDisplayingMultipleAccounts];

  if (isDisplayingMultipleAccounts)
  {
    navigationItem = [(MailboxListViewControllerMail *)self navigationItem];
    [navigationItem setHidesBackButton:editingCopy animated:animatedCopy];
  }

  if (editingCopy)
  {
    [(MailboxListViewControllerMail *)self focus:animatedCopy];
  }

  else
  {
    [(MailboxListViewControllerMail *)self unfocus:animatedCopy];
  }

  if (([(MailboxListViewControllerMail *)self isEditing]& 1) != 0)
  {
    v11 = (&self->_defaultToolbarItems + 7);
    v12 = *(&self->_defaultToolbarItems + 7);
    if (!v12)
    {
      v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v14 = [UIBarButtonItem alloc];
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"NEW_MAILBOX" value:&stru_100662A88 table:@"Main"];
      v17 = [v14 initWithTitle:v16 style:0 target:self action:"newMailboxClicked:"];

      v24[0] = v13;
      v24[1] = v17;
      v18 = [NSArray arrayWithObjects:v24 count:2];
      scene = *v11;
      *v11 = v18;
LABEL_16:

      v12 = *v11;
    }
  }

  else
  {
    v11 = (&self->_disabledMailboxTypes + 7);
    v12 = *(&self->_disabledMailboxTypes + 7);
    if (!v12)
    {
      v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
      v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      scene = [(MailboxListViewControllerMail *)self scene];
      if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") & 1) == 0 && [scene conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector())
      {
        newComposeButtonItem = [scene newComposeButtonItem];
        v26[0] = v13;
        v26[1] = v17;
        v26[2] = newComposeButtonItem;
        v21 = [NSArray arrayWithObjects:v26 count:3];
        [(MailboxListViewControllerMail *)self setToolbarItems:v21];
      }

      else
      {
        v25[0] = v13;
        v25[1] = v17;
        newComposeButtonItem = [NSArray arrayWithObjects:v25 count:2];
        [(MailboxListViewControllerMail *)self setToolbarItems:newComposeButtonItem];
      }

      goto LABEL_16;
    }
  }

  v22 = v12;
  [(MailboxListViewControllerMail *)self setToolbarItems:v22 animated:animatedCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(MailboxListViewControllerMail *)self setSelectedSourceType:0];
  v5 = [(MailboxListViewControllerMail *)self mailboxForIndexPath:pathCopy];
  if (v5)
  {
    [(MailboxListViewControllerBase *)self setSelectedMailbox:v5 animated:1];
  }
}

- (id)_ntsMailboxesForAccount:(id)account
{
  accountCopy = account;
  v5 = [MFMonitoredInvocation invocationWithSelector:"_loadOutbox:" target:self object:accountCopy taskName:@"LoadOutboxTask" priority:12 canBeCancelled:1];
  v6 = +[MFInvocationQueue sharedInvocationQueue];
  [v6 addInvocation:v5];

  v7 = +[MailChangeManager sharedChangeManager];
  v8 = [v7 allMailboxUidsSortedWithSpecialsAtTopForAccount:accountCopy includingLocals:1 client:self outbox:0];

  return v8;
}

- (void)_loadOutbox:(id)outbox
{
  outboxCopy = outbox;
  v4 = +[UIApplication sharedApplication];
  daemonInterface = [v4 daemonInterface];
  accountRepository = [daemonInterface accountRepository];

  identifier = [outboxCopy identifier];
  v8 = [accountRepository accountForAccountIdentifier:identifier];

  v9 = +[UIApplication sharedApplication];
  daemonInterface2 = [v9 daemonInterface];
  outgoingMessageRepository = [daemonInterface2 outgoingMessageRepository];

  if ([outgoingMessageRepository outboxContainsMessageFromAccount:v8])
  {
    v12 = +[MailAccount outboxMailboxUid];
    [(MailboxListViewControllerMail *)self shouldReloadMailboxesWithOutbox:v12];
  }
}

- (void)shouldReloadMailboxesWithOutbox:(id)outbox
{
  outboxCopy = outbox;
  if (+[NSThread isMainThread])
  {
    *(&self->super + 8) |= 1u;
    v5 = +[MailChangeManager sharedChangeManager];
    account = [(MailboxListViewControllerBase *)self account];
    v7 = [v5 allMailboxUidsSortedWithSpecialsAtTopForAccount:account includingLocals:1 client:self outbox:outboxCopy];
    [(MailboxListViewControllerBase *)self setSortedMailboxes:v7];

    *(&self->super + 8) &= ~1u;
    tableView = [(MailboxListViewControllerMail *)self tableView];
    [tableView reloadData];
  }

  else
  {
    [(MailboxListViewControllerMail *)self performSelectorOnMainThread:a2 withObject:outboxCopy waitUntilDone:0];
  }
}

- (id)mailboxes
{
  filteredMailboxes = [(MailboxListViewControllerMail *)self filteredMailboxes];
  getObject = [filteredMailboxes getObject];

  if ([getObject count])
  {
    sortedMailboxes = getObject;
  }

  else
  {
    sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  }

  v6 = sortedMailboxes;

  return v6;
}

- (void)filterMailboxesContainingText:(id)text
{
  textCopy = text;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [sortedMailboxes copy];

  v7 = [(MailboxListViewControllerMail *)self currentMailboxFilterID]+ 1;
  [(MailboxListViewControllerMail *)self setCurrentMailboxFilterID:v7];
  objc_initWeak(&location, self);
  mailboxFilterScheduler = [(MailboxListViewControllerMail *)self mailboxFilterScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EC0FC;
  v11[3] = &unk_10064FDA8;
  objc_copyWeak(v14, &location);
  v9 = textCopy;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  v14[1] = v7;
  [mailboxFilterScheduler performBlock:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (id)displayPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  parent = [mailboxCopy parent];
  isRootMailbox = [parent isRootMailbox];

  if (isRootMailbox)
  {
    v7 = 0;
  }

  else
  {
    mailboxDisplayPathCache = [(MailboxListViewControllerMail *)self mailboxDisplayPathCache];
    uniqueId = [mailboxCopy uniqueId];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EC61C;
    v11[3] = &unk_10064FDD0;
    v12 = mailboxCopy;
    selfCopy = self;
    v7 = [mailboxDisplayPathCache objectForKey:uniqueId generator:v11];
  }

  return v7;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained((&self->_selectedSourceType + 7));

  return WeakRetained;
}

@end