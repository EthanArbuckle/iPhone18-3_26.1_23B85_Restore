@interface MailboxListViewControllerBase
- (MailboxListViewControllerBase)init;
- (id)_ntsMailboxesForAccount:(id)a3;
- (id)indexPathForMailbox:(id)a3;
- (id)indexPathForSelection;
- (id)mailboxForIndexPath:(id)a3;
- (id)mailboxSelectionTarget;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadMailboxes:(BOOL)a3;
- (void)_loadMailboxesForcibly:(id)a3;
- (void)_popToMailboxListViewController;
- (void)dealloc;
- (void)didSelectMailbox:(id)a3 changed:(BOOL)a4 animated:(BOOL)a5;
- (void)mailboxListingChanged:(id)a3;
- (void)setAccount:(id)a3;
- (void)setSelectedMailbox:(id)a3 forceChange:(BOOL)a4 animated:(BOOL)a5;
- (void)setViewingContext:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillFirstAppear:(BOOL)a3;
- (void)viewWillReappear:(BOOL)a3;
@end

@implementation MailboxListViewControllerBase

- (MailboxListViewControllerBase)init
{
  v3 = [objc_opt_class() tableViewStyle];
  v7.receiver = self;
  v7.super_class = MailboxListViewControllerBase;
  v4 = [(MailboxListViewControllerBase *)&v7 initWithStyle:v3];
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

- (void)setAccount:(id)a3
{
  v5 = a3;
  if (self->_account != v5)
  {
    objc_storeStrong(&self->_account, a3);
    [(MailboxListViewControllerBase *)self setSortedMailboxes:0];
  }
}

- (id)mailboxForIndexPath:(id)a3
{
  v5 = a3;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase mailboxForIndexPath:]", "MailboxListViewControllerBase.m", 58, "0");
}

- (id)indexPathForMailbox:(id)a3
{
  v5 = a3;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase indexPathForMailbox:]", "MailboxListViewControllerBase.m", 62, "0");
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (self->_preventNextScrollbarFlash)
  {
    v5 = [(MailboxListViewControllerBase *)self tableView];
    [v5 setScrollEnabled:0];
  }

  v7.receiver = self;
  v7.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v7 viewDidAppear:v3];
  if (self->_preventNextScrollbarFlash)
  {
    v6 = [(MailboxListViewControllerBase *)self tableView];
    [v6 setScrollEnabled:1];

    self->_preventNextScrollbarFlash = 0;
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v4 viewDidLoad];
  v3 = [(MailboxListViewControllerBase *)self tableView];
  [v3 setAllowsSelectionDuringEditing:1];
}

- (void)setViewingContext:(id)a3
{
  v6 = a3;
  v4 = [v6 account];
  [(MailboxListViewControllerBase *)self setAccount:v4];

  v5 = [v6 selectionTarget];
  objc_storeWeak(&self->_mailboxSelectionTarget, v5);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MailboxListViewControllerBase *)self isReappearing])
  {
    [(MailboxListViewControllerBase *)self viewWillReappear:v3];
  }

  else
  {
    [(MailboxListViewControllerBase *)self viewWillFirstAppear:v3];
  }

  v5.receiver = self;
  v5.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MailboxListViewControllerBase;
  [(MailboxListViewControllerBase *)&v6 viewWillDisappear:a3];
  self->_interactiveTransitionWasCancelled = 0;
  v4 = [(MailboxListViewControllerBase *)self transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E82C4;
  v5[3] = &unk_10064CC00;
  v5[4] = self;
  [v4 notifyWhenInteractionChangesUsingBlock:v5];
}

- (void)viewWillFirstAppear:(BOOL)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_loadMailboxes" object:0];
  [(MailboxListViewControllerBase *)self setSortedMailboxes:0];
  [(MailboxListViewControllerBase *)self _loadMailboxes];
  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = [MFMonitoredInvocation mf_invocationWithSelector:"fetchMailboxListImplicit" target:self->_account];
  [v5 addInvocation:v4];
}

- (void)viewWillReappear:(BOOL)a3
{
  v3 = a3;
  [(MailboxListViewControllerBase *)self _loadMailboxes];
  v8 = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (v8)
  {
    v5 = [(MailboxListViewControllerBase *)self presentedViewController];
    if (v5)
    {
      goto LABEL_3;
    }

    interactiveTransitionWasCancelled = self->_interactiveTransitionWasCancelled;

    if (!interactiveTransitionWasCancelled)
    {
      v8 = [(MailboxListViewControllerBase *)self indexPathForSelection];
      if (!v8)
      {
        goto LABEL_4;
      }

      v5 = [(MailboxListViewControllerBase *)self tableView];
      if (![v5 numberOfSections])
      {
        [v5 reloadData];
      }

      [v5 scrollToRowAtIndexPath:v8 atScrollPosition:0 animated:0];
      [v5 selectRowAtIndexPath:v8 animated:0 scrollPosition:0];
      [v5 deselectRowAtIndexPath:v8 animated:v3];
LABEL_3:

LABEL_4:
    }
  }

  v9 = +[MFInvocationQueue sharedInvocationQueue];
  v6 = [MFMonitoredInvocation mf_invocationWithSelector:"fetchMailboxListImplicit" target:self->_account];
  [v9 addInvocation:v6];
}

- (void)setSelectedMailbox:(id)a3 forceChange:(BOOL)a4 animated:(BOOL)a5
{
  v7 = a3;
  if (self->_selectedMailbox != v7)
  {
    objc_storeStrong(&self->_selectedMailbox, a3);
  }

  [MailboxListViewControllerBase didSelectMailbox:"didSelectMailbox:changed:animated:" changed:? animated:?];
}

- (void)didSelectMailbox:(id)a3 changed:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a4;
  v8 = a3;
  v7 = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];
  if (v8 && v7 && v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 mailboxList:self didSelectMailbox:v8];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(MailboxListViewControllerBase *)self mailboxForIndexPath:a4];
  [MailboxListViewControllerBase setSelectedMailbox:"setSelectedMailbox:forceChange:animated:" forceChange:? animated:?];
}

- (id)_ntsMailboxesForAccount:(id)a3
{
  v5 = a3;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase _ntsMailboxesForAccount:]", "MailboxListViewControllerBase.m", 172, "0");
}

- (void)_loadMailboxesForcibly:(id)a3
{
  v13 = a3;
  if (!+[NSThread isMainThread])
  {
    __assert_rtn("[MailboxListViewControllerBase _loadMailboxesForcibly:]", "MailboxListViewControllerBase.m", 180, "[NSThread isMainThread]");
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (([v13 BOOLValue] & 1) == 0)
  {
    v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
    if ([v5 count])
    {
      v6 = Current - *&qword_1006DCFE8;

      if (v6 <= 5.0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  qword_1006DCFE8 = *&Current;
  *(self + 8) |= 1u;
  v7 = [(MailboxListViewControllerBase *)self _ntsMailboxesForAccount:self->_account];
  [(MailboxListViewControllerBase *)self setSortedMailboxes:v7];

  [(MailboxListViewControllerBase *)self _loadExtraMailboxes];
  v8 = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (v8)
  {
    v9 = [(MailboxListViewControllerBase *)self sortedMailboxes];
    v10 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v11 = [v9 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      [(MailboxListViewControllerBase *)self setSelectedMailbox:0];
    }
  }

  *(self + 8) &= ~1u;
  v12 = [(MailboxListViewControllerBase *)self tableView];
  [v12 reloadData];

LABEL_11:
}

- (void)_loadMailboxes:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
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
    v5 = [(MailboxListViewControllerBase *)self navigationController];
    v4 = [v5 popToViewController:self animated:1];
  }

  else
  {

    [(MailboxListViewControllerBase *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)mailboxListingChanged:(id)a3
{
  v14 = a3;
  if ((*(self + 8) & 1) == 0)
  {
    v4 = [v14 object];
    v5 = [v4 account];
    v6 = v5;
    if (!v4 || self->_account == v5 || (+[LocalAccount localAccount], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_loadMailboxesAfterMailboxListingChanged" object:0];
      [(MailboxListViewControllerBase *)self performSelector:"_loadMailboxesAfterMailboxListingChanged" withObject:0 afterDelay:0.3];
    }

    *(self + 8) &= ~1u;
  }

  v8 = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (v8)
  {
    v9 = [(MailboxListViewControllerBase *)self navigationController];
    v10 = [v9 topViewController];
    if (v10 != self)
    {
      v11 = [(MailboxListViewControllerBase *)self isEditing];

      if (v11)
      {
        goto LABEL_14;
      }

      v12 = [v14 userInfo];
      v9 = [v12 objectForKey:@"OldChildren"];

      v13 = [v14 userInfo];
      v10 = [v13 objectForKey:@"NewChildren"];

      if ([v9 containsObject:v8] && (-[MailboxListViewControllerBase containsObject:](v10, "containsObject:", v8) & 1) == 0)
      {
        [(MailboxListViewControllerBase *)self _popToMailboxListViewController];
      }
    }
  }

LABEL_14:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MailboxListViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailboxListViewControllerBase tableView:cellForRowAtIndexPath:]", "MailboxListViewControllerBase.m", 249, "0");
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MailboxListViewControllerBase *)self sortedMailboxes:a3];
  v5 = [v4 count];

  return v5;
}

- (id)indexPathForSelection
{
  v3 = [(MailboxListViewControllerBase *)self selectedMailbox];
  if (v3)
  {
    v4 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v5 = [(MailboxListViewControllerBase *)self indexPathForMailbox:v4];
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