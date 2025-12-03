@interface MFTransferStackViewController
+ (id)log;
- (BOOL)stackController:(id)controller isDataLoadedForItem:(id)item inView:(id)view;
- (CGRect)_stackItemRect;
- (CNContactStore)contactStore;
- (ConversationViewController)conversationViewController;
- (MFTransferStackControllerDataSource)dataSource;
- (MFTransferStackViewController)initWithScene:(id)scene;
- (MailSplitViewController)mailSplitViewController;
- (MessageDisplayCapable)scene;
- (UIEdgeInsets)stackContainerViewEdgeInsetsForStackController:(id)controller;
- (id)_titleForTransferOptions:(unint64_t)options;
- (id)splitViewController;
- (id)stackController:(id)controller viewForItem:(id)item;
- (void)_messageContentRepresentationRequestForItemWithItemID:(id)d completionHandler:(id)handler;
- (void)_splitViewStateChanged:(id)changed;
- (void)_updateBackgroundColor;
- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)mode isCollapsed:(BOOL)collapsed isShowingTitle:(BOOL)title;
- (void)_updateStackController;
- (void)_updateTitleAnimated:(BOOL)animated;
- (void)_updateTitleForDisplayMode:(int64_t)mode animated:(BOOL)animated;
- (void)addStackedItemsWithItemIDs:(id)ds;
- (void)dealloc;
- (void)displayStackedViewsForItemsWithIDs:(id)ds;
- (void)removeStackedItemsWithItemIDs:(id)ds;
- (void)removeStackedViewsAnimated:(BOOL)animated completion:(id)completion;
- (void)stackController:(id)controller loadDataForItem:(id)item inView:(id)view;
- (void)stackController:(id)controller willDisplayView:(id)view forItem:(id)item;
- (void)stackController:(id)controller willRemoveViewForItem:(id)item;
- (void)stackControllerDidStopStackingViews:(id)views;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForDisplayMode:(int64_t)mode isCollapsed:(BOOL)collapsed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MFTransferStackViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v23 viewDidLoad];
  v3 = objc_alloc_init(UINavigationBarAppearance);
  [v3 configureWithDefaultBackground];
  navigationItem = [(MFTransferStackViewController *)self navigationItem];
  [navigationItem setScrollEdgeAppearance:v3];

  v5 = [_MFStackContainerView alloc];
  view = [(MFTransferStackViewController *)self view];
  [view bounds];
  v7 = [(_MFStackContainerView *)v5 initWithFrame:?];
  stackContainerView = self->_stackContainerView;
  self->_stackContainerView = v7;

  v9 = +[UIColor clearColor];
  [(_MFStackContainerView *)self->_stackContainerView setBackgroundColor:v9];

  [(_MFStackContainerView *)self->_stackContainerView setDelegate:self];
  view2 = [(MFTransferStackViewController *)self view];
  [view2 addSubview:self->_stackContainerView];

  [(_MFStackContainerView *)self->_stackContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(MFTransferStackViewController *)self view];
  v12 = self->_stackContainerView;
  v26 = @"_container";
  v27 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v14 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_container]|" options:0 metrics:0 views:v13];
  [view3 addConstraints:v14];

  view4 = [(MFTransferStackViewController *)self view];
  v16 = self->_stackContainerView;
  v24 = @"_container";
  v25 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v18 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_container]|" options:0 metrics:0 views:v17];
  [view4 addConstraints:v18];

  v19 = +[UIColor _dimmingViewColor];
  view5 = [(MFTransferStackViewController *)self view];
  [view5 setBackgroundColor:v19];

  view6 = [(MFTransferStackViewController *)self view];
  [view6 setUserInteractionEnabled:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_splitViewStateChanged:" name:@"MailSplitViewControllerViewStateChangedNotification" object:0];
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100228E18;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD6F0 != -1)
  {
    dispatch_once(&qword_1006DD6F0, block);
  }

  v2 = qword_1006DD6E8;

  return v2;
}

- (MFTransferStackViewController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v16.receiver = self;
  v16.super_class = MFTransferStackViewController;
  v5 = [(MFTransferStackViewController *)&v16 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
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

- (void)displayStackedViewsForItemsWithIDs:(id)ds
{
  dsCopy = ds;
  v12 = [(NSMutableOrderedSet *)self->_stackedItemIDs mutableCopy];
  [v12 removeObjectsInArray:dsCopy];
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

  v10 = [[NSMutableOrderedSet alloc] initWithArray:dsCopy];
  stackedItemIDs = self->_stackedItemIDs;
  self->_stackedItemIDs = v10;

  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateBackgroundColor];
}

- (void)removeStackedViewsAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  if ([(StackController *)self->_stackController hasStackedItems])
  {
    if (completionCopy)
    {
      v7 = [completionCopy copy];
      removeStackedViewsAnimationCompletionBlock = self->_removeStackedViewsAnimationCompletionBlock;
      self->_removeStackedViewsAnimationCompletionBlock = v7;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002292D8;
    v9[3] = &unk_10064D9D8;
    v9[4] = self;
    animatedCopy = animated;
    [UIView animateWithDuration:v9 animations:0.3];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)addStackedItemsWithItemIDs:(id)ds
{
  dsCopy = ds;
  [(NSMutableOrderedSet *)self->_stackedItemIDs addObjectsFromArray:?];
  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateBackgroundColor];
}

- (void)removeStackedItemsWithItemIDs:(id)ds
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(dsCopy);
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

      v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    dataSource = [(MFTransferStackViewController *)self dataSource];
    array = [(NSMutableOrderedSet *)self->_stackedItemIDs array];
    v5 = [dataSource transferStackViewController:self itemIDsToDisplayFromItemIDs:array];

    [(StackController *)self->_stackController displayStackedViewsForItems:v5 animated:1];
  }
}

- (ConversationViewController)conversationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationViewController);
  if (!WeakRetained)
  {
    mailSplitViewController = [(MFTransferStackViewController *)self mailSplitViewController];
    messageDetailNavController = [mailSplitViewController messageDetailNavController];
    WeakRetained = [messageDetailNavController conversationViewController];

    objc_storeWeak(&self->_conversationViewController, WeakRetained);
  }

  return WeakRetained;
}

- (id)_titleForTransferOptions:(unint64_t)options
{
  optionsCopy = options;
  if ((options & 2) != 0)
  {
    if ((options & 1) == 0)
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
    if ((options & 0x10) == 0)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      if ((optionsCopy & 0x20) != 0)
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

- (void)_updateTitleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  splitViewController = [(MFTransferStackViewController *)self splitViewController];
  -[MFTransferStackViewController _updateTitleForDisplayMode:animated:](self, "_updateTitleForDisplayMode:animated:", [splitViewController displayMode], animatedCopy);
}

- (void)_updateTitleForDisplayMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  splitViewController = [(MFTransferStackViewController *)self splitViewController];
  traitCollection = [(MFTransferStackViewController *)self traitCollection];
  v9 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:traitCollection];

  if (v9)
  {
    [(MFTransferStackViewController *)self setTitle:0];
  }

  else
  {
    v10 = [(MFTransferStackViewController *)self _titleForTransferOptions:[(MFTransferStackViewController *)self transferOptions]];
    v11 = v10;
    if (mode == 5 || mode == 3)
    {
      v12 = [[BarLabelItem alloc] initWithTitle:v10 style:1];
      view = [(MFTransferStackViewController *)self view];
      [view frame];
      v15 = v14;
      [splitViewController primaryColumnWidth];
      v17 = v16;

      customView = [(BarLabelItem *)v12 customView];
      [customView frame];
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
    navigationItem = [(MFTransferStackViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v22 animated:animatedCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v6 viewWillAppear:?];
  [(MFTransferStackViewController *)self setIsStackControllerVisible:1];
  [(MFTransferStackViewController *)self stackContainerViewEdgeInsetsForStackController:self->_stackController];
  [(_MFStackContainerView *)self->_stackContainerView setLayoutInsets:?];
  [(_MFStackContainerView *)self->_stackContainerView setNeedsLayout];
  [(MFTransferStackViewController *)self _updateStackController];
  [(MFTransferStackViewController *)self _updateTitleAnimated:appearCopy];
  splitViewController = [(MFTransferStackViewController *)self splitViewController];
  -[MFTransferStackViewController _updateDisplayModeButtonItemForDisplayMode:isCollapsed:](self, "_updateDisplayModeButtonItemForDisplayMode:isCollapsed:", [splitViewController displayMode], objc_msgSend(splitViewController, "isCollapsed"));
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v5 viewDidAppear:appear];
  stackController = [(MFTransferStackViewController *)self stackController];
  [stackController updateStackedViewsFrame];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v6 viewDidDisappear:disappear];
  conversationViewController = [(MFTransferStackViewController *)self conversationViewController];
  barItemsManager = [conversationViewController barItemsManager];
  [barItemsManager setShowSupplementaryButtonItem:0];

  [conversationViewController _updateBarButtonsAnimated:0 force:1];
  [(MFTransferStackViewController *)self setIsStackControllerVisible:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v4 viewDidLayoutSubviews];
  if ([(MFTransferStackViewController *)self isStackControllerVisible])
  {
    stackController = [(MFTransferStackViewController *)self stackController];
    [stackController updateStackedViewsFrame];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  -[MFTransferStackViewController _updateTitleAnimated:](self, "_updateTitleAnimated:", [coordinatorCopy isAnimated]);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = MFTransferStackViewController;
  [(MFTransferStackViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFTransferStackViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
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
  view = [(MFTransferStackViewController *)self view];
  [view setBackgroundColor:v4];
}

- (void)updateForDisplayMode:(int64_t)mode isCollapsed:(BOOL)collapsed
{
  [(MFTransferStackViewController *)self _updateDisplayModeButtonItemForDisplayMode:mode isCollapsed:collapsed isShowingTitle:0];

  [(MFTransferStackViewController *)self _updateTitleForDisplayMode:mode animated:1];
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
  splitViewController = [(MFTransferStackViewController *)&v8 splitViewController];
  v4 = splitViewController;
  if (splitViewController)
  {
    splitViewController2 = splitViewController;
  }

  else
  {
    presentingViewController = [(MFTransferStackViewController *)self presentingViewController];
    splitViewController2 = [presentingViewController splitViewController];
  }

  return splitViewController2;
}

- (void)_splitViewStateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  splitViewController = [(MFTransferStackViewController *)self splitViewController];

  if (object == splitViewController)
  {
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"MailSplitViewControllerNewDisplayModeKey"];
    v9 = [userInfo objectForKeyedSubscript:@"MailSplitViewControllerIsCollapsedKey"];
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
  splitViewController = [(MFTransferStackViewController *)self splitViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = splitViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)mode isCollapsed:(BOOL)collapsed isShowingTitle:(BOOL)title
{
  titleCopy = title;
  collapsedCopy = collapsed;
  mailSplitViewController = [(MFTransferStackViewController *)self mailSplitViewController];
  if (+[UINavigationBar mf_canUseDesktopClassNavigationBar])
  {
    v9 = mode == 1 || collapsedCopy;
    if (mailSplitViewController)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    conversationViewController = [(MFTransferStackViewController *)self conversationViewController];
    barItemsManager = [conversationViewController barItemsManager];
    [barItemsManager setShowSupplementaryButtonItem:v10];

    traitCollection = [(MFTransferStackViewController *)self traitCollection];
    v14 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:traitCollection];

    if (v14)
    {
      [conversationViewController _updateBarButtonsAnimated:1 withDisplayMode:mode isCollapsed:collapsedCopy isShowingTitle:titleCopy];
    }
  }

  else
  {
    v15 = !collapsedCopy;
    if (mode == 1)
    {
      v15 = 0;
    }

    if (v15 || !mailSplitViewController)
    {
      conversationViewController = [(MFTransferStackViewController *)self navigationItem];
      [conversationViewController setLeftBarButtonItem:0];
    }

    else
    {
      conversationViewController = [mailSplitViewController supplementaryButtonItem];
      navigationItem = [(MFTransferStackViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:conversationViewController];
    }
  }
}

- (CGRect)_stackItemRect
{
  view = [(MFTransferStackViewController *)self view];
  [view bounds];

  [(MFTransferStackViewController *)self stackContainerViewEdgeInsetsForStackController:self->_stackController];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)stackContainerViewEdgeInsetsForStackController:(id)controller
{
  scene = [(MFTransferStackViewController *)self scene];
  statusBarManager = [scene statusBarManager];
  [statusBarManager statusBarFrame];
  Height = CGRectGetHeight(v15);

  navigationController = [(MFTransferStackViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
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

- (id)stackController:(id)controller viewForItem:(id)item
{
  v5 = [(MFTransferStackViewController *)self scene:controller];
  v6 = [_MFStackWrapperView alloc];
  [(MFTransferStackViewController *)self _stackItemRect];
  v7 = [(_MFStackWrapperView *)v6 initWithFrame:?];
  v8 = [MFMessageContentView alloc];
  [(_MFStackWrapperView *)v7 bounds];
  v9 = [v8 initWithFrame:?];
  [v9 setMessageBlockingReason:4];
  [v9 setShowsBanners:0];
  v10 = +[UIApplication sharedApplication];
  mailboxProvider = [v10 mailboxProvider];
  [v9 setMailboxProvider:mailboxProvider];

  daemonInterface = [v5 daemonInterface];
  [v9 setDaemonInterface:daemonInterface];

  v13 = [MFConversationItemHeaderBlock alloc];
  contactStore = [(MFTransferStackViewController *)self contactStore];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MFConversationItemHeaderBlock *)v13 initWithFrame:contactStore contactStore:CGRectZero.origin.x, y, width, height];

  [(MFConversationItemHeaderBlock *)height setDisplayOptions:2];
  headerView = [v9 headerView];
  [headerView addHeaderBlock:height animated:0];

  height2 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView2 = [v9 headerView];
  [headerView2 addHeaderBlock:height2 animated:0];

  [(_MFStackWrapperView *)v7 addWrappedView:v9];
  traitCollection = [(MFTransferStackViewController *)self traitCollection];
  view = [(MFTransferStackViewController *)self view];
  [view layoutMargins];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  view2 = [(MFTransferStackViewController *)self view];
  [view2 safeAreaInsets];
  v37 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", traitCollection, [v5 interfaceOrientation], v25, v27, v29, v31, v33, v34, v35, v36);

  [v9 setLayoutMargins:{v25, v27, v29, v31}];
  [v9 setDisplayMetrics:v37];

  return v7;
}

- (void)_messageContentRepresentationRequestForItemWithItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:dCopy];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:dCopy];
    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    v10 = +[MFTransferStackViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request display message for message: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    dataSource = [(MFTransferStackViewController *)self dataSource];
    v12 = [dataSource transferStackViewController:self displayMessageForMessageListItemWithItemID:dCopy];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10022B048;
    v20[3] = &unk_100655E70;
    v13 = dCopy;
    v21 = v13;
    v14 = [v12 map:v20];
    v15 = +[EFScheduler mainThreadScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10022B118;
    v16[3] = &unk_100655E98;
    objc_copyWeak(&v19, buf);
    v17 = v13;
    v18 = handlerCopy;
    [v14 onScheduler:v15 addSuccessBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (BOOL)stackController:(id)controller isDataLoadedForItem:(id)item inView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:itemCopy];
    message = [v9 message];
    isAvailableLocally = [message isAvailableLocally];
  }

  else
  {
    isAvailableLocally = 0;
  }

  return isAvailableLocally;
}

- (void)stackController:(id)controller loadDataForItem:(id)item inView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___EMCollectionItemID])
    {
      v10 = itemCopy;
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

- (void)stackControllerDidStopStackingViews:(id)views
{
  removeStackedViewsAnimationCompletionBlock = self->_removeStackedViewsAnimationCompletionBlock;
  if (removeStackedViewsAnimationCompletionBlock)
  {
    removeStackedViewsAnimationCompletionBlock[2](removeStackedViewsAnimationCompletionBlock, a2, views);
    v5 = self->_removeStackedViewsAnimationCompletionBlock;
    self->_removeStackedViewsAnimationCompletionBlock = 0;
  }
}

- (void)stackController:(id)controller willDisplayView:(id)view forItem:(id)item
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  if (itemCopy)
  {
    [(MFTransferStackViewController *)self _stackItemRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [viewCopy frame];
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
      stackController = [(MFTransferStackViewController *)self stackController];
      [stackController updateStackedViewFrameForItem:itemCopy];
    }
  }
}

- (void)stackController:(id)controller willRemoveViewForItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v8 = itemCopy;
    v6 = [(NSMutableDictionary *)self->_contentRequests objectForKeyedSubscript:itemCopy];
    v7 = v6;
    if (v6)
    {
      [v6 cancel];
    }

    [(NSMutableDictionary *)self->_contentRequests removeObjectForKey:v8];

    itemCopy = v8;
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