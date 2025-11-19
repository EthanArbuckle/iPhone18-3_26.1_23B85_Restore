@interface MailboxListViewControllerMail
- (BOOL)isRefreshing;
- (BOOL)shouldAutorotate;
- (CGRect)rectOfMailbox:(id)a3;
- (MailScene)scene;
- (MailboxListViewControllerMail)initWithScene:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_ntsMailboxesForAccount:(id)a3;
- (id)cellForMailbox:(id)a3;
- (id)displayPathForMailbox:(id)a3;
- (id)indexPathForMailbox:(id)a3;
- (id)indexPathForSelection;
- (id)mailboxForIndexPath:(id)a3;
- (id)mailboxes;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_getRotationContentSettings:(id *)a3;
- (void)_loadOutbox:(id)a3;
- (void)_queueReloadIfOutboxChanged:(id)a3;
- (void)_reloadIfOutboxChanged:(id)a3;
- (void)applicationWillSuspend;
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)didSelectMailbox:(id)a3 changed:(BOOL)a4 animated:(BOOL)a5;
- (void)disableMailboxTypes:(id)a3;
- (void)disableMailboxes:(id)a3;
- (void)enableMailboxTypes:(id)a3;
- (void)filterMailboxesContainingText:(id)a3;
- (void)mailAccountsChanged:(id)a3;
- (void)mailboxEditingControllerDidFinish:(id)a3;
- (void)messageStoreChanged:(id)a3;
- (void)pulledToRefresh:(id)a3;
- (void)setAccount:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHideInbox:(BOOL)a3;
- (void)setIsRefreshing:(BOOL)a3;
- (void)shouldReloadMailboxesWithOutbox:(id)a3;
- (void)showMailboxEditingControllerWithMailbox:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillReappear:(BOOL)a3;
@end

@implementation MailboxListViewControllerMail

- (MailboxListViewControllerMail)initWithScene:(id)a3
{
  v4 = a3;
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
    objc_storeWeak((v5 + 127), v4);
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

- (void)_getRotationContentSettings:(id *)a3
{
  *&a3->var0 = 257;
  +[MFTableViewCell defaultAccessoryWidth];
  a3->var5 = v4;
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
  v7 = [WeakRetained containsMultipleAccounts];

  if (v7)
  {
    v8 = [(MailboxListViewControllerBase *)self account];
    v9 = [v8 displayName];

    if ([v9 length])
    {
      v10 = v9;

      v5 = 0;
      v15 = v10;
    }
  }

  v11 = [(MailboxListViewControllerMail *)self title];
  v12 = [v15 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    [(MailboxListViewControllerMail *)self setTitle:v15];
    v13 = [(MailboxListViewControllerMail *)self navigationItem];
    [v13 setBackButtonTitle:v5];

    v14 = [(MailboxListViewControllerMail *)self navigationItem];
    [v14 setBackButtonDisplayMode:0];
  }
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerBase *)self account];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = MailboxListViewControllerMail;
    [(MailboxListViewControllerBase *)&v7 setAccount:v4];
    if ([(MailboxListViewControllerMail *)self isViewLoaded])
    {
      v6 = [(MailboxListViewControllerMail *)self tableView];
      [v6 setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];
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

- (void)setIsRefreshing:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailboxListViewControllerMail.m" lineNumber:147 description:@"Current thread must be main"];
  }

  if (self->_showRefreshControl != v3 && !v3)
  {
    self->_showRefreshControl = v3;
    mlvcmDelegate_high = HIBYTE(self->_mlvcmDelegate);
    v7 = [(MailboxListViewControllerMail *)self tableView];
    [v7 _endRefreshingAnimated:mlvcmDelegate_high];
  }
}

- (void)pulledToRefresh:(id)a3
{
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MailboxListViewControllerMail.m" lineNumber:169 description:@"Current thread must be main"];
  }

  self->_showRefreshControl = 1;
  [(MailboxListViewControllerMail *)self performSelector:"updateIsRefreshing" withObject:0 afterDelay:0.0];
  v5 = [(MailboxListViewControllerMail *)self scene];
  v6 = [v5 daemonInterface];
  v8 = [v6 mailboxRepository];

  [v8 refreshMailboxList:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v23 viewWillAppear:a3];
  [(MailboxListViewControllerMail *)self updateTitle];
  [(MailboxListViewControllerMail *)self updateIsRefreshing];
  v4 = [(MailboxListViewControllerMail *)self toolbarItems];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v8 = [(MailboxListViewControllerMail *)self scene];
    if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") & 1) == 0 && [v8 conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector())
    {
      v9 = [v8 newComposeButtonItem];
      v25[0] = v6;
      v25[1] = v7;
      v25[2] = v9;
      v10 = [NSArray arrayWithObjects:v25 count:3];
      [(MailboxListViewControllerMail *)self setToolbarItems:v10];
    }

    else
    {
      v24[0] = v6;
      v24[1] = v7;
      v9 = [NSArray arrayWithObjects:v24 count:2];
      [(MailboxListViewControllerMail *)self setToolbarItems:v9];
    }
  }

  v11 = objc_alloc_init(NSMutableSet);
  v12 = [(MailboxListViewControllerBase *)self account];
  if (v12)
  {
    v13 = [(MailboxListViewControllerBase *)self account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v15 = [(MailboxListViewControllerBase *)self account];
      v16 = [v15 primaryMailboxUid];
      [v11 addObject:v16];
    }
  }

  v17 = [(MailboxListViewControllerBase *)self account];
  v18 = [v17 supportsMailboxEditing];

  if (v18)
  {
    v19 = [(MailboxListViewControllerMail *)self editButtonItem];
    v20 = [(MailboxListViewControllerMail *)self navigationItem];
    [v20 setRightBarButtonItem:v19];
  }

  else
  {
    v19 = [(MailboxListViewControllerMail *)self navigationItem];
    [v19 setRightBarButtonItem:0];
  }

  v21 = [(MailboxListViewControllerMail *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [v21 setEstimatedRowHeight:?];

  v22 = [(MailboxListViewControllerMail *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MailboxListViewControllerMail *)self setTableViewObserver:v22];
}

- (void)viewWillReappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailboxListViewControllerBase *)self account];

  if (!v5)
  {
    v6 = objc_alloc_init(MailboxListViewingContext);
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 selectedAccounts];

    if ([v8 count] >= 2)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100488424(v9);
      }
    }

    v10 = [v8 anyObject];
    [(MailboxListViewingContext *)v6 setAccount:v10];

    [(MailboxListViewControllerBase *)self setViewingContext:v6];
    [(MailboxListViewControllerBase *)self viewWillFirstAppear:v3];
  }

  v11.receiver = self;
  v11.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v11 viewWillReappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v4 viewDidAppear:a3];
  [(MailboxListViewControllerMail *)self mf_updateAlertSuppressionContextsForReason:@"mailbox list appeared"];
  HIBYTE(self->_mlvcmDelegate) = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v6 viewWillDisappear:a3];
  HIBYTE(self->_mlvcmDelegate) = 0;
  v4 = [(MailboxListViewControllerMail *)self tableView];
  v5 = [v4 refreshControl];
  [v5 endRefreshing];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerMail *)&v5 viewDidDisappear:0];
  [(MailboxListViewControllerMail *)self setIsRefreshing:0];
  v4 = [(MailboxListViewControllerMail *)self parentViewController];

  if (!v4)
  {
    [(MailboxListViewControllerMail *)self unloadViewIfReloadable];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerBase *)&v6 viewDidLoad];
  v3 = [(MailboxListViewControllerMail *)self tableView];
  if (self->_alignAccessories)
  {
    v4 = objc_alloc_init(UIRefreshControl);
    [v4 addTarget:self action:"pulledToRefresh:" forControlEvents:4096];
    [v3 _setRefreshControl:v4];
  }

  [v3 setSeparatorStyle:1];
  v5 = +[UIColor tableBackgroundColor];
  [v3 setBackgroundColor:v5];

  [v3 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setSelectionFollowsFocus:0];
}

- (void)applicationWillSuspend
{
  v5.receiver = self;
  v5.super_class = MailboxListViewControllerMail;
  [(MailboxListViewControllerMail *)&v5 applicationWillSuspend];
  v3 = [(MailboxListViewControllerMail *)self navigationController];
  v4 = [v3 visibleViewController];

  if (v4 == self)
  {
    [(MailboxListViewControllerMail *)self setEditing:0 animated:0];
  }
}

- (id)mailboxForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 row];
    v8 = [(MailboxListViewControllerMail *)self mailboxes];
    v9 = [v8 objectAtIndex:v7];

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

- (id)indexPathForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerMail *)self mailboxes];
  v6 = [v5 indexOfObject:v4];

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

- (void)didSelectMailbox:(id)a3 changed:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (([*(self + 55) containsObject:v8] & 1) == 0)
  {
    if (![*(&self->_disabledMailboxes + 7) count] || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v8, "mailboxType")), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(*(&self->_disabledMailboxes + 7), "containsObject:", v9), v9, (v10 & 1) == 0))
    {
      if ([(MailboxListViewControllerMail *)self isEditing])
      {
        if ([v8 mv_isEditable])
        {
          [(MailboxListViewControllerMail *)self showMailboxEditingControllerWithMailbox:v8];
        }
      }

      else
      {
        v11 = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];

        if (v11)
        {
          v12.receiver = self;
          v12.super_class = MailboxListViewControllerMail;
          [(MailboxListViewControllerBase *)&v12 didSelectMailbox:v8 changed:v6 animated:v5];
        }
      }
    }
  }
}

- (void)mailboxEditingControllerDidFinish:(id)a3
{
  v4 = [(MailboxListViewControllerMail *)self presentedViewController];

  if (v4)
  {

    [(MailboxListViewControllerMail *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = [(MailboxListViewControllerMail *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (void)showMailboxEditingControllerWithMailbox:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 account];
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
    v8 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 accountsProvider];
    v11 = [v10 displayedAccounts];
    v8 = [v11 allObjects];
  }

  v12 = [[MailboxEditingController alloc] initWithMailbox:v5 account:v7 validAccounts:v8];
  [(MailboxEditingController *)v12 setDelegate:self];
  [(MailboxListViewControllerMail *)self showViewController:v12 sender:self];
}

- (id)indexPathForSelection
{
  v3 = [(MailboxListViewControllerBase *)self selectedMailbox];

  if (v3)
  {
    v4 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v5 = [(MailboxListViewControllerMail *)self indexPathForMailbox:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)rectOfMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerMail *)self tableView];
  [v5 contentOffset];
  [v5 setContentOffset:0 animated:?];
  v6 = [(MailboxListViewControllerMail *)self indexPathForMailbox:v4];
  if (v6)
  {
    [v5 rectForRowAtIndexPath:v6];
    v8 = v7;
    y = v9;
    v12 = v11;
    height = v13;
    v15 = sub_10024BD78([v4 level]);
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

- (id)cellForMailbox:(id)a3
{
  v4 = [(MailboxListViewControllerMail *)self indexPathForMailbox:a3];
  if (v4)
  {
    v5 = [(MailboxListViewControllerMail *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disableMailboxes:(id)a3
{
  v4 = a3;
  v5 = *(self + 55);
  v8 = v4;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(self + 55);
    *(self + 55) = v6;

    v5 = *(self + 55);
    v4 = v8;
  }

  [v5 unionSet:v4];
}

- (void)disableMailboxTypes:(id)a3
{
  v4 = a3;
  v5 = *(&self->_disabledMailboxes + 7);
  v8 = v4;
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(&self->_disabledMailboxes + 7);
    *(&self->_disabledMailboxes + 7) = v6;

    v5 = *(&self->_disabledMailboxes + 7);
    v4 = v8;
  }

  [v5 unionSet:v4];
}

- (void)enableMailboxTypes:(id)a3
{
  v5 = a3;
  v4 = *(&self->_disabledMailboxes + 7);
  if (v4)
  {
    [v4 minusSet:v5];
  }
}

- (void)setHideInbox:(BOOL)a3
{
  v3 = *(self + 48);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if (a3)
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
    if (v4)
      v7 = {;
      [(MailboxListViewControllerMail *)self disableMailboxTypes:v7];
    }

    else
      v7 = {;
      [(MailboxListViewControllerMail *)self enableMailboxTypes:v7];
    }
  }
}

- (void)_reloadIfOutboxChanged:(id)a3
{
  v8 = a3;
  v4 = +[MailAccount outboxMailboxUid];
  if (v4 && (*(&self->super + 8) & 1) == 0)
  {
    v5 = [v8 objectForKey:MailMessageStoreChangedMailboxesKey];
    if ([v5 containsObject:v4])
    {
      [(MailboxListViewControllerBase *)self _loadMailboxes:1];

      goto LABEL_9;
    }

    v6 = [v8 objectForKey:MailMessageStoreMessageKey];
    v7 = [v6 valueForKey:@"mailbox"];

    if ([v7 containsObject:v4])
    {
      [(MailboxListViewControllerBase *)self _loadMailboxes];
    }
  }

  *(&self->_editingToolbarItems + 7) = CFAbsoluteTimeGetCurrent();
LABEL_9:
}

- (void)_queueReloadIfOutboxChanged:(id)a3
{
  v6 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(&self->_editingToolbarItems + 7);
  if (Current - v5 <= 1.0)
  {
    if ((HIBYTE(self->_lastCheckedOutbox) & 1) == 0)
    {
      [(MailboxListViewControllerMail *)self performSelector:"_reloadIfOutboxChanged:" withObject:v6 afterDelay:v5 + 1.0 - Current];
      HIBYTE(self->_lastCheckedOutbox) = 1;
    }
  }

  else
  {
    [(MailboxListViewControllerMail *)self _reloadIfOutboxChanged:v6];
    HIBYTE(self->_lastCheckedOutbox) = 0;
  }
}

- (void)messageStoreChanged:(id)a3
{
  v4 = [a3 userInfo];
  [MailboxListViewControllerMail performSelectorOnMainThread:"performSelectorOnMainThread:withObject:waitUntilDone:" withObject:"_queueReloadIfOutboxChanged:" waitUntilDone:?];
}

- (void)mailAccountsChanged:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread])
  {
    v6 = [(MailboxListViewControllerBase *)self account];

    if (v6)
    {
      v7 = [(MailboxListViewControllerBase *)self account];
      v8 = [v7 uniqueID];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 accountsProvider];
      v11 = [v10 displayedAccounts];

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            if ([v15 isActive])
            {
              v16 = [v15 uniqueID];
              v17 = [v8 isEqualToString:v16];

              if (v17)
              {
                v12 = v15;
                goto LABEL_15;
              }
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    [(MailboxListViewControllerMail *)self performSelectorOnMainThread:a2 withObject:v5 waitUntilDone:0];
  }
}

- (void)contentSizeCategoryChanged:(id)a3
{
  +[MailboxTableCell invalidateCachedLayoutInformation];
  v4 = [(MailboxListViewControllerMail *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [v4 setRowHeight:?];

  v5 = [(MailboxListViewControllerMail *)self tableView];
  [v5 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MailboxListViewControllerMail *)self mailboxes:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(MailboxListViewControllerMail *)self mailboxForIndexPath:a4];
  v8 = [v6 dequeueReusableCellWithIdentifier:@"MailboxCellReuse"];
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
  v11 = [(MailboxListViewControllerMail *)self filteredMailboxes];
  v12 = [v11 getObject];
  v13 = [v12 count];

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

  v16 = [(MailboxListViewControllerBase *)self selectedMailbox];
  v17 = v16;
  if (v16 == v7)
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
  v20 = [v7 isStore];
  v21 = [v7 mv_isEditable];
  v22 = v8;
  v23 = v22;
  if (*(self + 48))
  {
    [(MailboxTableCell *)v22 setAccessoryType:v20];
    [(MailboxTableCell *)v23 setEditingAccessoryType:v21];
  }

  return v23;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  +[MailboxTableCell defaultRowHeight];
  return result;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v23.receiver = self;
  v23.super_class = MailboxListViewControllerMail;
  [MailboxListViewControllerMail setEditing:"setEditing:animated:" animated:?];
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 accountsProvider];
  v9 = [v8 isDisplayingMultipleAccounts];

  if (v9)
  {
    v10 = [(MailboxListViewControllerMail *)self navigationItem];
    [v10 setHidesBackButton:v5 animated:v4];
  }

  if (v5)
  {
    [(MailboxListViewControllerMail *)self focus:v4];
  }

  else
  {
    [(MailboxListViewControllerMail *)self unfocus:v4];
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
      v19 = *v11;
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
      v19 = [(MailboxListViewControllerMail *)self scene];
      if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") & 1) == 0 && [v19 conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector())
      {
        v20 = [v19 newComposeButtonItem];
        v26[0] = v13;
        v26[1] = v17;
        v26[2] = v20;
        v21 = [NSArray arrayWithObjects:v26 count:3];
        [(MailboxListViewControllerMail *)self setToolbarItems:v21];
      }

      else
      {
        v25[0] = v13;
        v25[1] = v17;
        v20 = [NSArray arrayWithObjects:v25 count:2];
        [(MailboxListViewControllerMail *)self setToolbarItems:v20];
      }

      goto LABEL_16;
    }
  }

  v22 = v12;
  [(MailboxListViewControllerMail *)self setToolbarItems:v22 animated:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [(MailboxListViewControllerMail *)self setSelectedSourceType:0];
  v5 = [(MailboxListViewControllerMail *)self mailboxForIndexPath:v6];
  if (v5)
  {
    [(MailboxListViewControllerBase *)self setSelectedMailbox:v5 animated:1];
  }
}

- (id)_ntsMailboxesForAccount:(id)a3
{
  v4 = a3;
  v5 = [MFMonitoredInvocation invocationWithSelector:"_loadOutbox:" target:self object:v4 taskName:@"LoadOutboxTask" priority:12 canBeCancelled:1];
  v6 = +[MFInvocationQueue sharedInvocationQueue];
  [v6 addInvocation:v5];

  v7 = +[MailChangeManager sharedChangeManager];
  v8 = [v7 allMailboxUidsSortedWithSpecialsAtTopForAccount:v4 includingLocals:1 client:self outbox:0];

  return v8;
}

- (void)_loadOutbox:(id)a3
{
  v13 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 daemonInterface];
  v6 = [v5 accountRepository];

  v7 = [v13 identifier];
  v8 = [v6 accountForAccountIdentifier:v7];

  v9 = +[UIApplication sharedApplication];
  v10 = [v9 daemonInterface];
  v11 = [v10 outgoingMessageRepository];

  if ([v11 outboxContainsMessageFromAccount:v8])
  {
    v12 = +[MailAccount outboxMailboxUid];
    [(MailboxListViewControllerMail *)self shouldReloadMailboxesWithOutbox:v12];
  }
}

- (void)shouldReloadMailboxesWithOutbox:(id)a3
{
  v9 = a3;
  if (+[NSThread isMainThread])
  {
    *(&self->super + 8) |= 1u;
    v5 = +[MailChangeManager sharedChangeManager];
    v6 = [(MailboxListViewControllerBase *)self account];
    v7 = [v5 allMailboxUidsSortedWithSpecialsAtTopForAccount:v6 includingLocals:1 client:self outbox:v9];
    [(MailboxListViewControllerBase *)self setSortedMailboxes:v7];

    *(&self->super + 8) &= ~1u;
    v8 = [(MailboxListViewControllerMail *)self tableView];
    [v8 reloadData];
  }

  else
  {
    [(MailboxListViewControllerMail *)self performSelectorOnMainThread:a2 withObject:v9 waitUntilDone:0];
  }
}

- (id)mailboxes
{
  v3 = [(MailboxListViewControllerMail *)self filteredMailboxes];
  v4 = [v3 getObject];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  }

  v6 = v5;

  return v6;
}

- (void)filterMailboxesContainingText:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [v5 copy];

  v7 = [(MailboxListViewControllerMail *)self currentMailboxFilterID]+ 1;
  [(MailboxListViewControllerMail *)self setCurrentMailboxFilterID:v7];
  objc_initWeak(&location, self);
  v8 = [(MailboxListViewControllerMail *)self mailboxFilterScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EC0FC;
  v11[3] = &unk_10064FDA8;
  objc_copyWeak(v14, &location);
  v9 = v4;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  v14[1] = v7;
  [v8 performBlock:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (id)displayPathForMailbox:(id)a3
{
  v4 = a3;
  v5 = [v4 parent];
  v6 = [v5 isRootMailbox];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(MailboxListViewControllerMail *)self mailboxDisplayPathCache];
    v9 = [v4 uniqueId];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EC61C;
    v11[3] = &unk_10064FDD0;
    v12 = v4;
    v13 = self;
    v7 = [v8 objectForKey:v9 generator:v11];
  }

  return v7;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained((&self->_selectedSourceType + 7));

  return WeakRetained;
}

@end