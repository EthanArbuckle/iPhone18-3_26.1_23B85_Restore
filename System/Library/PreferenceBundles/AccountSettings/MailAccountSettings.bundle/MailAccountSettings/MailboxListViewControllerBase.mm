@interface MailboxListViewControllerBase
- (MailboxListViewControllerBase)init;
- (id)_ntsMailboxesForAccount:(id)account;
- (id)indexPathForMailbox:(id)mailbox;
- (id)indexPathForSelection;
- (id)mailboxForIndexPath:(id)path;
- (id)mailboxSelectionTarget;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadMailboxes:(BOOL)mailboxes;
- (void)_loadMailboxesForcibly:(id)forcibly;
- (void)_popToMailboxListViewController;
- (void)dealloc;
- (void)didSelectMailbox:(id)mailbox changed:(BOOL)changed animated:(BOOL)animated;
- (void)mailboxListingChanged:(id)changed;
- (void)setAccount:(id)account;
- (void)setSelectedMailbox:(id)mailbox forceChange:(BOOL)change animated:(BOOL)animated;
- (void)setViewingContext:(id)context;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillFirstAppear:(BOOL)appear;
- (void)viewWillReappear:(BOOL)reappear;
@end

@implementation MailboxListViewControllerBase

- (MailboxListViewControllerBase)init
{
  tableViewStyle = [objc_opt_class() tableViewStyle];
  v7.receiver = self;
  v7.super_class = MailboxListViewControllerBase;
  v4 = [(MailboxListViewControllerBase *)&v7 initWithStyle:tableViewStyle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"mailboxListingChanged:" name:AccountMailboxListingDidChange object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v4 dealloc];
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  if (self->_account != accountCopy)
  {
    objc_storeStrong(&self->_account, account);
    [(MailboxListViewControllerBase *)self setSortedMailboxes:0];
  }
}

- (id)mailboxForIndexPath:(id)path
{
  pathCopy = path;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase mailboxForIndexPath:]", "MailboxListViewControllerBase.m", 58, "0");
}

- (id)indexPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase indexPathForMailbox:]", "MailboxListViewControllerBase.m", 62, "0");
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_preventNextScrollbarFlash)
  {
    tableView = [(MailboxListViewControllerBase *)self tableView];
    [tableView setScrollEnabled:0];
  }

  v7.receiver = self;
  v7.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v7 viewDidAppear:appearCopy];
  if (self->_preventNextScrollbarFlash)
  {
    tableView2 = [(MailboxListViewControllerBase *)self tableView];
    [tableView2 setScrollEnabled:1];

    self->_preventNextScrollbarFlash = 0;
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v4 viewDidLoad];
  tableView = [(MailboxListViewControllerBase *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];
}

- (void)setViewingContext:(id)context
{
  contextCopy = context;
  account = [contextCopy account];
  [(MailboxListViewControllerBase *)self setAccount:account];

  selectionTarget = [contextCopy selectionTarget];
  objc_storeWeak(&self->_mailboxSelectionTarget, selectionTarget);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MailboxListViewControllerBase *)self isReappearing])
  {
    [(MailboxListViewControllerBase *)self viewWillReappear:appearCopy];
  }

  else
  {
    [(MailboxListViewControllerBase *)self viewWillFirstAppear:appearCopy];
  }

  v5.receiver = self;
  v5.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v6 viewWillDisappear:disappear];
  self->_interactiveTransitionWasCancelled = 0;
  transitionCoordinator = [(MailboxListViewControllerBase *)self transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_73228;
  v5[3] = &unk_B9D68;
  v5[4] = self;
  [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v5];
}

- (void)viewWillFirstAppear:(BOOL)appear
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_loadMailboxes" object:0];
  [(MailboxListViewControllerBase *)self setSortedMailboxes:0];
  [(MailboxListViewControllerBase *)self _loadMailboxes];
  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = [MFMonitoredInvocation mf_invocationWithSelector:"fetchMailboxListImplicit" target:self->_account];
  [v5 addInvocation:v4];
}

- (void)viewWillReappear:(BOOL)reappear
{
  reappearCopy = reappear;
  [(MailboxListViewControllerBase *)self _loadMailboxes];
  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (selectedMailbox)
  {
    presentedViewController = [(MailboxListViewControllerBase *)self presentedViewController];
    if (presentedViewController)
    {
      goto LABEL_3;
    }

    interactiveTransitionWasCancelled = self->_interactiveTransitionWasCancelled;

    if (!interactiveTransitionWasCancelled)
    {
      selectedMailbox = [(MailboxListViewControllerBase *)self indexPathForSelection];
      if (!selectedMailbox)
      {
        goto LABEL_4;
      }

      presentedViewController = [(MailboxListViewControllerBase *)self tableView];
      if (![presentedViewController numberOfSections])
      {
        [presentedViewController reloadData];
      }

      [presentedViewController scrollToRowAtIndexPath:selectedMailbox atScrollPosition:0 animated:0];
      [presentedViewController selectRowAtIndexPath:selectedMailbox animated:0 scrollPosition:0];
      [presentedViewController deselectRowAtIndexPath:selectedMailbox animated:reappearCopy];
LABEL_3:

LABEL_4:
    }
  }

  v9 = +[MFInvocationQueue sharedInvocationQueue];
  v6 = [MFMonitoredInvocation mf_invocationWithSelector:"fetchMailboxListImplicit" target:self->_account];
  [v9 addInvocation:v6];
}

- (void)setSelectedMailbox:(id)mailbox forceChange:(BOOL)change animated:(BOOL)animated
{
  mailboxCopy = mailbox;
  if (self->_selectedMailbox != mailboxCopy)
  {
    objc_storeStrong(&self->_selectedMailbox, mailbox);
  }

  [MailboxListViewControllerBase didSelectMailbox:"didSelectMailbox:changed:animated:" changed:? animated:?];
}

- (void)didSelectMailbox:(id)mailbox changed:(BOOL)changed animated:(BOOL)animated
{
  changedCopy = changed;
  mailboxCopy = mailbox;
  mailboxSelectionTarget = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];
  if (mailboxCopy && mailboxSelectionTarget && changedCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [mailboxSelectionTarget mailboxList:self didSelectMailbox:mailboxCopy];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(MailboxListViewControllerBase *)self mailboxForIndexPath:path];
  [MailboxListViewControllerBase setSelectedMailbox:"setSelectedMailbox:forceChange:animated:" forceChange:? animated:?];
}

- (id)_ntsMailboxesForAccount:(id)account
{
  accountCopy = account;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase _ntsMailboxesForAccount:]", "MailboxListViewControllerBase.m", 172, "0");
}

- (void)_loadMailboxesForcibly:(id)forcibly
{
  forciblyCopy = forcibly;
  if (!+[NSThread isMainThread])
  {
    __assert_rtn("[MailboxListViewControllerBase _loadMailboxesForcibly:]", "MailboxListViewControllerBase.m", 180, "[NSThread isMainThread]");
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (([forciblyCopy BOOLValue] & 1) == 0)
  {
    sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
    if ([sortedMailboxes count])
    {
      v6 = Current - *&qword_D6628;

      if (v6 <= 5.0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  qword_D6628 = *&Current;
  *(self + 8) |= 1u;
  v7 = [(MailboxListViewControllerBase *)self _ntsMailboxesForAccount:self->_account];
  [(MailboxListViewControllerBase *)self setSortedMailboxes:v7];

  [(MailboxListViewControllerBase *)self _loadExtraMailboxes];
  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (selectedMailbox)
  {
    sortedMailboxes2 = [(MailboxListViewControllerBase *)self sortedMailboxes];
    selectedMailbox2 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v11 = [sortedMailboxes2 containsObject:selectedMailbox2];

    if ((v11 & 1) == 0)
    {
      [(MailboxListViewControllerBase *)self setSelectedMailbox:0];
    }
  }

  *(self + 8) &= ~1u;
  tableView = [(MailboxListViewControllerBase *)self tableView];
  [tableView reloadData];

LABEL_11:
}

- (void)_loadMailboxes:(BOOL)mailboxes
{
  v4 = [NSNumber numberWithBool:mailboxes];
  if (+[NSThread isMainThread])
  {
    [(MailboxListViewControllerBase *)self _loadMailboxesForcibly:v4];
  }

  else
  {
    [(MailboxListViewControllerBase *)self performSelectorOnMainThread:"_loadMailboxesForcibly:" withObject:v4 waitUntilDone:0];
  }
}

- (void)_popToMailboxListViewController
{
  if (+[NSThread isMainThread])
  {
    navigationController = [(MailboxListViewControllerBase *)self navigationController];
    v4 = [navigationController popToViewController:self animated:1];
  }

  else
  {

    [(MailboxListViewControllerBase *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)mailboxListingChanged:(id)changed
{
  changedCopy = changed;
  if ((*(self + 8) & 1) == 0)
  {
    object = [changedCopy object];
    account = [object account];
    v6 = account;
    if (!object || self->_account == account || (+[LocalAccount localAccount], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_loadMailboxesAfterMailboxListingChanged" object:0];
      [(MailboxListViewControllerBase *)self performSelector:"_loadMailboxesAfterMailboxListingChanged" withObject:0 afterDelay:0.3];
    }

    *(self + 8) &= ~1u;
  }

  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (selectedMailbox)
  {
    navigationController = [(MailboxListViewControllerBase *)self navigationController];
    topViewController = [navigationController topViewController];
    if (topViewController != self)
    {
      isEditing = [(MailboxListViewControllerBase *)self isEditing];

      if (isEditing)
      {
        goto LABEL_14;
      }

      userInfo = [changedCopy userInfo];
      navigationController = [userInfo objectForKey:@"OldChildren"];

      userInfo2 = [changedCopy userInfo];
      topViewController = [userInfo2 objectForKey:@"NewChildren"];

      if ([navigationController containsObject:selectedMailbox] && (-[MailboxListViewControllerBase containsObject:](topViewController, "containsObject:", selectedMailbox) & 1) == 0)
      {
        [(MailboxListViewControllerBase *)self _popToMailboxListViewController];
      }
    }
  }

LABEL_14:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase tableView:cellForRowAtIndexPath:]", "MailboxListViewControllerBase.m", 249, "0");
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MailboxListViewControllerBase *)self sortedMailboxes:view];
  v5 = [v4 count];

  return v5;
}

- (id)indexPathForSelection
{
  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (selectedMailbox)
  {
    selectedMailbox2 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v5 = [(MailboxListViewControllerBase *)self indexPathForMailbox:selectedMailbox2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mailboxSelectionTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_mailboxSelectionTarget);

  return WeakRetained;
}

@end