@interface MFTransferStackViewController
+ (id)log;
- (BOOL)stackController:(id)a3 isDataLoadedForItem:(id)a4 inView:(id)a5;
- (CGRect)_stackItemRect;
- (CNContactStore)contactStore;
- (ConversationViewController)conversationViewController;
- (MFTransferStackControllerDataSource)dataSource;
- (MFTransferStackViewController)initWithScene:(id)a3;
- (MailSplitViewController)mailSplitViewController;
- (MessageDisplayCapable)scene;
- (UIEdgeInsets)stackContainerViewEdgeInsetsForStackController:(id)a3;
- (id)_titleForTransferOptions:(unint64_t)a3;
- (id)splitViewController;
- (id)stackController:(id)a3 viewForItem:(id)a4;
- (void)_messageContentRepresentationRequestForItemWithItemID:(id)a3 completionHandler:(id)a4;
- (void)_splitViewStateChanged:(id)a3;
- (void)_updateBackgroundColor;
- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)a3 isCollapsed:(BOOL)a4 isShowingTitle:(BOOL)a5;
- (void)_updateStackController;
- (void)_updateTitleAnimated:(BOOL)a3;
- (void)_updateTitleForDisplayMode:(int64_t)a3 animated:(BOOL)a4;
- (void)addStackedItemsWithItemIDs:(id)a3;
- (void)dealloc;
- (void)displayStackedViewsForItemsWithIDs:(id)a3;
- (void)removeStackedItemsWithItemIDs:(id)a3;
- (void)removeStackedViewsAnimated:(BOOL)a3 completion:(id)a4;
- (void)stackController:(id)a3 loadDataForItem:(id)a4 inView:(id)a5;
- (void)stackController:(id)a3 willDisplayView:(id)a4 forItem:(id)a5;
- (void)stackController:(id)a3 willRemoveViewForItem:(id)a4;
- (void)stackControllerDidStopStackingViews:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForDisplayMode:(int64_t)a3 isCollapsed:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MFTransferStackViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v23 viewDidLoad];
  v3 = objc_alloc_init(UINavigationBarAppearance);
  [v3 configureWithDefaultBackground];
  v4 = [(MFTransferStackViewController *)self navigationItem];
  [v4 setScrollEdgeAppearance:v3];

  v5 = [_MFStackContainerView alloc];
  v6 = [(MFTransferStackViewController *)self view];
  [v6 bounds];
  v7 = [(_MFStackContainerView *)v5 initWithFrame:?];
  stackContainerView = self->_stackContainerView;
  self->_stackContainerView = v7;

  v9 = +[UIColor clearColor];
  [(_MFStackContainerView *)self->_stackContainerView setBackgroundColor:v9];

  [(_MFStackContainerView *)self->_stackContainerView setDelegate:self];
  v10 = [(MFTransferStackViewController *)self view];
  [v10 addSubview:self->_stackContainerView];

  [(_MFStackContainerView *)self->_stackContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(MFTransferStackViewController *)self view];
  v12 = self->_stackContainerView;
  v26 = @"_container";
  v27 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v14 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_container]|" options:0 metrics:0 views:v13];
  [v11 addConstraints:v14];

  v15 = [(MFTransferStackViewController *)self view];
  v16 = self->_stackContainerView;
  v24 = @"_container";
  v25 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v18 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_container]|" options:0 metrics:0 views:v17];
  [v15 addConstraints:v18];

  v19 = +[UIColor _dimmingViewColor];
  v20 = [(MFTransferStackViewController *)self view];
  [v20 setBackgroundColor:v19];

  v21 = [(MFTransferStackViewController *)self view];
  [v21 setUserInteractionEnabled:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_splitViewStateChanged:" name:@"MailSplitViewControllerViewStateChangedNotification" object:0];
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100228E18;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD6F0 != -1)
  {
    dispatch_once(&qword_1006DD6F0, block);
  }

  v2 = qword_1006DD6E8;

  return v2;
}

- (MFTransferStackViewController)initWithScene:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MFTransferStackViewController;
  v5 = [(MFTransferStackViewController *)&v16 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v7 = objc_alloc_init(StackController);
    stackController = v6->_stackController;
    v6->_stackController = v7;

    [(StackController *)v6->_stackController setDelegate:v6];
    [(StackController *)v6->_stackController setDataSource:v6];
    v9 = objc_alloc_init(NSMutableDictionary);
    contentRequests = v6->_contentRequests;
    v6->_contentRequests = v9;

    v11 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.transferStack.messagePreview"];
    messageLoadScheduler = v6->_messageLoadScheduler;
    v6->_messageLoadScheduler = v11;

    v13 = +[UIColor mailTransferConversationViewBackgroundColor];
    conversationColor = v6->_conversationColor;
    v6->_conversationColor = v13;
  }

  return v6;
}

- (void)displayStackedViewsForItemsWithIDs:(id)a3
{
  v13 = a3;
  v12 = [(NSMutableOrderedSet *)self->_stackedItemIDs mutableCopy];
  [v12 removeObjectsInArray:v13];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v12;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v8];
        [v9 cancel];
        [(NSMutableDictionary *)self->_contentRequests removeObjectForKey:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [[NSMutableOrderedSet alloc] initWithArray:v13];
  stackedItemIDs = self->_stackedItemIDs;
  self->_stackedItemIDs = v10;

  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateBackgroundColor];
}

- (void)removeStackedViewsAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if ([(StackController *)self->_stackController hasStackedItems])
  {
    if (v6)
    {
      v7 = [v6 copy];
      removeStackedViewsAnimationCompletionBlock = self->_removeStackedViewsAnimationCompletionBlock;
      self->_removeStackedViewsAnimationCompletionBlock = v7;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002292D8;
    v9[3] = &unk_10064D9D8;
    v9[4] = self;
    v10 = a3;
    [UIView animateWithDuration:v9 animations:0.3];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)addStackedItemsWithItemIDs:(id)a3
{
  v4 = a3;
  [(NSMutableOrderedSet *)self->_stackedItemIDs addObjectsFromArray:?];
  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateBackgroundColor];
}

- (void)removeStackedItemsWithItemIDs:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v8, v10];
        if (([v9 isFinished] & 1) == 0)
        {
          [v9 cancel];
        }

        [(NSMutableDictionary *)self->_contentRequests removeObjectForKey:v8];
        [(NSMutableOrderedSet *)self->_stackedItemIDs removeObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateBackgroundColor];
}

- (void)_updateStackController
{
  if ([(MFTransferStackViewController *)self isStackControllerVisible])
  {
    v3 = [(MFTransferStackViewController *)self dataSource];
    v4 = [(NSMutableOrderedSet *)self->_stackedItemIDs array];
    v5 = [v3 transferStackViewController:self itemIDsToDisplayFromItemIDs:v4];

    [(StackController *)self->_stackController displayStackedViewsForItems:v5 animated:1];
  }
}

- (ConversationViewController)conversationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationViewController);
  if (!WeakRetained)
  {
    v4 = [(MFTransferStackViewController *)self mailSplitViewController];
    v5 = [v4 messageDetailNavController];
    WeakRetained = [v5 conversationViewController];

    objc_storeWeak(&self->_conversationViewController, WeakRetained);
  }

  return WeakRetained;
}

- (id)_titleForTransferOptions:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 2) != 0)
  {
    if ((a3 & 1) == 0)
    {
      v7 = [(NSMutableDictionary *)self->_contentRequests count];
      v8 = +[NSBundle mainBundle];
      v5 = v8;
      if (v7 == 1)
      {
        [v8 localizedStringForKey:@"SINGLE_MESSAGE_MOVE_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        [v8 localizedStringForKey:@"MULTIPE_MESSAGES_MOVE_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      goto LABEL_5;
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SINGLE_MESSAGE_MOVE_TITLE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    if ((a3 & 0x10) == 0)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      if ((v3 & 0x20) != 0)
      {
        [v4 localizedStringForKey:@"MESSAGE_SELECTION_TRASH_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        [v4 localizedStringForKey:@"MESSAGE_SELECTION_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      v6 = LABEL_5:;
      goto LABEL_13;
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MESSAGE_SELECTION_ARCHIVE_TITLE" value:&stru_100662A88 table:@"Main"];
  }

LABEL_13:
  v9 = v6;

  return v9;
}

- (void)_updateTitleAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFTransferStackViewController *)self splitViewController];
  -[MFTransferStackViewController _updateTitleForDisplayMode:animated:](self, "_updateTitleForDisplayMode:animated:", [v5 displayMode], v3);
}

- (void)_updateTitleForDisplayMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(MFTransferStackViewController *)self splitViewController];
  v8 = [(MFTransferStackViewController *)self traitCollection];
  v9 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:v8];

  if (v9)
  {
    [(MFTransferStackViewController *)self setTitle:0];
  }

  else
  {
    v10 = [(MFTransferStackViewController *)self _titleForTransferOptions:[(MFTransferStackViewController *)self transferOptions]];
    v11 = v10;
    if (a3 == 5 || a3 == 3)
    {
      v12 = [[BarLabelItem alloc] initWithTitle:v10 style:1];
      v13 = [(MFTransferStackViewController *)self view];
      [v13 frame];
      v15 = v14;
      [v7 primaryColumnWidth];
      v17 = v16;

      v18 = [(BarLabelItem *)v12 customView];
      [v18 frame];
      v20 = v19;

      v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
      [v21 setWidth:(v15 - v17 - v20) * 0.5];
      v25[0] = v21;
      v25[1] = v12;
      v22 = [NSArray arrayWithObjects:v25 count:2];

      v23 = 0;
    }

    else
    {
      v23 = v10;
      v22 = &__NSArray0__struct;
    }

    [(MFTransferStackViewController *)self setTitle:v23];
    v24 = [(MFTransferStackViewController *)self navigationItem];
    [v24 setRightBarButtonItems:v22 animated:v4];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v6 viewWillAppear:?];
  [(MFTransferStackViewController *)self setIsStackControllerVisible:1];
  [(MFTransferStackViewController *)self stackContainerViewEdgeInsetsForStackController:self->_stackController];
  [(_MFStackContainerView *)self->_stackContainerView setLayoutInsets:?];
  [(_MFStackContainerView *)self->_stackContainerView setNeedsLayout];
  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateTitleAnimated:v3];
  v5 = [(MFTransferStackViewController *)self splitViewController];
  -[MFTransferStackViewController _updateDisplayModeButtonItemForDisplayMode:isCollapsed:](self, "_updateDisplayModeButtonItemForDisplayMode:isCollapsed:", [v5 displayMode], objc_msgSend(v5, "isCollapsed"));
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v5 viewDidAppear:a3];
  v4 = [(MFTransferStackViewController *)self stackController];
  [v4 updateStackedViewsFrame];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v6 viewDidDisappear:a3];
  v4 = [(MFTransferStackViewController *)self conversationViewController];
  v5 = [v4 barItemsManager];
  [v5 setShowSupplementaryButtonItem:0];

  [v4 _updateBarButtonsAnimated:0 force:1];
  [(MFTransferStackViewController *)self setIsStackControllerVisible:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v4 viewDidLayoutSubviews];
  if ([(MFTransferStackViewController *)self isStackControllerVisible])
  {
    v3 = [(MFTransferStackViewController *)self stackController];
    [v3 updateStackedViewsFrame];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  -[MFTransferStackViewController _updateTitleAnimated:](self, "_updateTitleAnimated:", [v7 isAnimated]);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v7 traitCollectionDidChange:v4];
  v5 = [(MFTransferStackViewController *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    [(MFTransferStackViewController *)self _updateStackController];
  }
}

- (void)_updateBackgroundColor
{
  if ([(NSMutableOrderedSet *)self->_stackedItemIDs count])
  {
    +[UIColor mailTransferStackViewBackgroundColor];
  }

  else
  {
    +[UIColor _dimmingViewColor];
  }
  v4 = ;
  v3 = [(MFTransferStackViewController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)updateForDisplayMode:(int64_t)a3 isCollapsed:(BOOL)a4
{
  [(MFTransferStackViewController *)self _updateDisplayModeButtonItemForDisplayMode:a3 isCollapsed:a4 isShowingTitle:0];

  [(MFTransferStackViewController *)self _updateTitleForDisplayMode:a3 animated:1];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v4 dealloc];
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(CNContactStore);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (id)splitViewController
{
  v8.receiver = self;
  v8.super_class = MFTransferStackViewController;
  v3 = [(MFTransferStackViewController *)&v8 splitViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MFTransferStackViewController *)self presentingViewController];
    v5 = [v6 splitViewController];
  }

  return v5;
}

- (void)_splitViewStateChanged:(id)a3
{
  v13 = a3;
  v5 = [v13 object];
  v6 = [(MFTransferStackViewController *)self splitViewController];

  if (v5 == v6)
  {
    v7 = [v13 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"MailSplitViewControllerNewDisplayModeKey"];
    v9 = [v7 objectForKeyedSubscript:@"MailSplitViewControllerIsCollapsedKey"];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"MFTransferStackViewController.m" lineNumber:492 description:{@"Notification is missing information: %@, %@", v8, v10}];
    }

    -[MFTransferStackViewController updateForDisplayMode:isCollapsed:](self, "updateForDisplayMode:isCollapsed:", [v8 integerValue], objc_msgSend(v10, "BOOLValue"));
  }
}

- (MailSplitViewController)mailSplitViewController
{
  v2 = [(MFTransferStackViewController *)self splitViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)a3 isCollapsed:(BOOL)a4 isShowingTitle:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v17 = [(MFTransferStackViewController *)self mailSplitViewController];
  if (+[UINavigationBar mf_canUseDesktopClassNavigationBar])
  {
    v9 = a3 == 1 || v6;
    if (v17)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(MFTransferStackViewController *)self conversationViewController];
    v12 = [v11 barItemsManager];
    [v12 setShowSupplementaryButtonItem:v10];

    v13 = [(MFTransferStackViewController *)self traitCollection];
    v14 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:v13];

    if (v14)
    {
      [v11 _updateBarButtonsAnimated:1 withDisplayMode:a3 isCollapsed:v6 isShowingTitle:v5];
    }
  }

  else
  {
    v15 = !v6;
    if (a3 == 1)
    {
      v15 = 0;
    }

    if (v15 || !v17)
    {
      v11 = [(MFTransferStackViewController *)self navigationItem];
      [v11 setLeftBarButtonItem:0];
    }

    else
    {
      v11 = [v17 supplementaryButtonItem];
      v16 = [(MFTransferStackViewController *)self navigationItem];
      [v16 setLeftBarButtonItem:v11];
    }
  }
}

- (CGRect)_stackItemRect
{
  v3 = [(MFTransferStackViewController *)self view];
  [v3 bounds];

  [(MFTransferStackViewController *)self stackContainerViewEdgeInsetsForStackController:self->_stackController];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)stackContainerViewEdgeInsetsForStackController:(id)a3
{
  v4 = [(MFTransferStackViewController *)self scene];
  v5 = [v4 statusBarManager];
  [v5 statusBarFrame];
  Height = CGRectGetHeight(v15);

  v7 = [(MFTransferStackViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 frame];
  v10 = v9;

  v11 = Height + v10;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)stackController:(id)a3 viewForItem:(id)a4
{
  v5 = [(MFTransferStackViewController *)self scene:a3];
  v6 = [_MFStackWrapperView alloc];
  [(MFTransferStackViewController *)self _stackItemRect];
  v7 = [(_MFStackWrapperView *)v6 initWithFrame:?];
  v8 = [MFMessageContentView alloc];
  [(_MFStackWrapperView *)v7 bounds];
  v9 = [v8 initWithFrame:?];
  [v9 setMessageBlockingReason:4];
  [v9 setShowsBanners:0];
  v10 = +[UIApplication sharedApplication];
  v11 = [v10 mailboxProvider];
  [v9 setMailboxProvider:v11];

  v12 = [v5 daemonInterface];
  [v9 setDaemonInterface:v12];

  v13 = [MFConversationItemHeaderBlock alloc];
  v14 = [(MFTransferStackViewController *)self contactStore];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [(MFConversationItemHeaderBlock *)v13 initWithFrame:v14 contactStore:CGRectZero.origin.x, y, width, height];

  [(MFConversationItemHeaderBlock *)v18 setDisplayOptions:2];
  v19 = [v9 headerView];
  [v19 addHeaderBlock:v18 animated:0];

  v20 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  v21 = [v9 headerView];
  [v21 addHeaderBlock:v20 animated:0];

  [(_MFStackWrapperView *)v7 addWrappedView:v9];
  v22 = [(MFTransferStackViewController *)self traitCollection];
  v23 = [(MFTransferStackViewController *)self view];
  [v23 layoutMargins];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(MFTransferStackViewController *)self view];
  [v32 safeAreaInsets];
  v37 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", v22, [v5 interfaceOrientation], v25, v27, v29, v31, v33, v34, v35, v36);

  [v9 setLayoutMargins:{v25, v27, v29, v31}];
  [v9 setDisplayMetrics:v37];

  return v7;
}

- (void)_messageContentRepresentationRequestForItemWithItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v6];
    v7[2](v7, v9);
  }

  else
  {
    v10 = +[MFTransferStackViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request display message for message: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11 = [(MFTransferStackViewController *)self dataSource];
    v12 = [v11 transferStackViewController:self displayMessageForMessageListItemWithItemID:v6];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10022B048;
    v20[3] = &unk_100655E70;
    v13 = v6;
    v21 = v13;
    v14 = [v12 map:v20];
    v15 = +[EFScheduler mainThreadScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10022B118;
    v16[3] = &unk_100655E98;
    objc_copyWeak(&v19, buf);
    v17 = v13;
    v18 = v7;
    [v14 onScheduler:v15 addSuccessBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (BOOL)stackController:(id)a3 isDataLoadedForItem:(id)a4 inView:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v7];
    v10 = [v9 message];
    v11 = [v10 isAvailableLocally];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)stackController:(id)a3 loadDataForItem:(id)a4 inView:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if ([v7 conformsToProtocol:&OBJC_PROTOCOL___EMCollectionItemID])
    {
      v10 = v7;
      v11 = +[MFTransferStackViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Load data for message: %{public}@", buf, 0xCu);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10022B504;
      v15[3] = &unk_100655EC0;
      v16 = v9;
      v12 = v10;
      v17 = v12;
      [(MFTransferStackViewController *)self _messageContentRepresentationRequestForItemWithItemID:v12 completionHandler:v15];
    }

    else
    {
      v12 = +[MFTransferStackViewController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        sub_10048C4BC(v14, buf, v12);
      }
    }
  }
}

- (void)stackControllerDidStopStackingViews:(id)a3
{
  removeStackedViewsAnimationCompletionBlock = self->_removeStackedViewsAnimationCompletionBlock;
  if (removeStackedViewsAnimationCompletionBlock)
  {
    removeStackedViewsAnimationCompletionBlock[2](removeStackedViewsAnimationCompletionBlock, a2, a3);
    v5 = self->_removeStackedViewsAnimationCompletionBlock;
    self->_removeStackedViewsAnimationCompletionBlock = 0;
  }
}

- (void)stackController:(id)a3 willDisplayView:(id)a4 forItem:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    [(MFTransferStackViewController *)self _stackItemRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v8 frame];
    v26.origin.x = v18;
    v26.origin.y = v19;
    v26.size.width = v20;
    v26.size.height = v21;
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    if (!CGRectEqualToRect(v25, v26))
    {
      v22 = [(MFTransferStackViewController *)self stackController];
      [v22 updateStackedViewFrameForItem:v9];
    }
  }
}

- (void)stackController:(id)a3 willRemoveViewForItem:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v8 = v5;
    v6 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 cancel];
    }

    [(NSMutableDictionary *)self->_contentRequests removeObjectForKey:v8];

    v5 = v8;
  }
}

- (MFTransferStackControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MessageDisplayCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end