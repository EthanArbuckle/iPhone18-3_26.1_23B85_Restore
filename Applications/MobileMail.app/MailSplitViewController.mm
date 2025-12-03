@interface MailSplitViewController
+ (NSArray)menuCommands;
+ (id)conversationViewArrowCommands;
+ (id)log;
- (BOOL)_conversationViewControllerHasReferenceMessage;
- (BOOL)_isSearchActive;
- (BOOL)conversationViewControllerCanPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)messageListCanPerformAction:(SEL)action withSender:(id)sender;
- (ConversationViewController)conversationViewController;
- (MailSplitViewController)initWithMailboxPickerNavigationController:(id)controller messageListNavigationController:(id)navigationController mailDetailNavigationController:(id)detailNavigationController scene:(id)scene;
- (MailboxPickerOutlineController)mailboxPickerController;
- (MailboxSelectionCapable)scene;
- (MessageListViewController)messageListViewController;
- (UIBarButtonItem)supplementaryButtonItem;
- (id)keyCommands;
- (id)mf_preferredTitle;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)_dismissVisiblePopoverInSplitViewController;
- (void)_notifyViewStateChanged:(int64_t)changed;
- (void)restorePrimaryNavigationState:(int64_t)state;
- (void)setFocusedViewController:(id)controller;
- (void)setMessageListHasFocus:(BOOL)focus;
- (void)showConversationViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)showMailboxPickerController:(BOOL)controller animated:(BOOL)animated completion:(id)completion;
- (void)showMessageListViewController:(BOOL)controller animated:(BOOL)animated completion:(id)completion;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)end;
- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)begin;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MailSplitViewController

- (id)mf_preferredTitle
{
  messageListViewController = [(MailSplitViewController *)self messageListViewController];
  mf_preferredTitle = [messageListViewController mf_preferredTitle];

  return mf_preferredTitle;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000197B4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD160 != -1)
  {
    dispatch_once(&qword_1006DD160, block);
  }

  v2 = qword_1006DD158;

  return v2;
}

+ (id)conversationViewArrowCommands
{
  v2 = qword_1006DD170;
  if (!qword_1006DD170)
  {
    v3 = sub_100027104(0, UIKeyInputUpArrow, 0, "_selectNextMessageCommandInvoked:", 0, 0, 0);
    v10[0] = v3;
    v4 = sub_100027104(v3, UIKeyInputUpArrow, 0x100000, "_selectNextMessageCommandInvoked:", 0, 0, &off_100675068);
    v10[1] = v4;
    v5 = sub_100027104(v4, UIKeyInputDownArrow, 0, "_selectPreviousMessageCommandInvoked:", 0, 0, 0);
    v10[2] = v5;
    v6 = sub_100027104(v5, UIKeyInputDownArrow, 0x100000, "_selectPreviousMessageCommandInvoked:", 0, 0, &off_100675090);
    v10[3] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:4];
    v8 = qword_1006DD170;
    qword_1006DD170 = v7;

    v2 = qword_1006DD170;
  }

  return v2;
}

+ (NSArray)menuCommands
{
  v2 = qword_1006DD180;
  if (!qword_1006DD180)
  {
    v3 = sub_100025E9C();
    v4 = sub_100024318();
    v5 = [v3 arrayByAddingObjectsFromArray:v4];
    v6 = qword_1006DD180;
    qword_1006DD180 = v5;

    v2 = qword_1006DD180;
  }

  return v2;
}

- (MailSplitViewController)initWithMailboxPickerNavigationController:(id)controller messageListNavigationController:(id)navigationController mailDetailNavigationController:(id)detailNavigationController scene:(id)scene
{
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  detailNavigationControllerCopy = detailNavigationController;
  sceneCopy = scene;
  v26.receiver = self;
  v26.super_class = MailSplitViewController;
  v15 = [(MailSplitViewController *)&v26 initWithStyle:2];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageListNavController, navigationController);
    objc_storeStrong(&v16->_messageDetailNavController, detailNavigationController);
    objc_storeStrong(&v16->_mailboxPickerNavController, controller);
    topViewController = [controllerCopy topViewController];
    mailboxPickerController = v16->_mailboxPickerController;
    v16->_mailboxPickerController = topViewController;

    objc_storeWeak(&v16->_scene, sceneCopy);
    [(MailSplitViewController *)v16 setDelegate:v16];
    v19 = +[UIColor mailSplitViewBackgroundColor];
    view = [(MailSplitViewController *)v16 view];
    [view setBackgroundColor:v19];

    view2 = [(MailSplitViewController *)v16 view];
    [view2 setOpaque:0];

    [(MailSplitViewController *)v16 _setPrefersOverlayInRegularWidthPhone:1];
    [(MailSplitViewController *)v16 setViewController:controllerCopy forColumn:0];
    [(MailSplitViewController *)v16 setViewController:navigationControllerCopy forColumn:1];
    [(MailSplitViewController *)v16 setViewController:detailNavigationControllerCopy forColumn:2];
    v22 = objc_opt_new();
    v23 = +[UIColor mailSplitViewBorderColor];
    [v22 setBorderColor:v23];

    [(MailSplitViewController *)v16 setConfiguration:v22];
    v16->_messageListHasFocus = 1;
    previouslyFocusedColumn = v16->_previouslyFocusedColumn;
    v16->_previouslyFocusedColumn = &off_1006741E0;

    sub_10048972C(v16);
  }

  return v16;
}

- (void)setFocusedViewController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(MailNavigationController *)self->_messageListNavController viewControllers];
  -[MailSplitViewController setMessageListHasFocus:](self, "setMessageListHasFocus:", [viewControllers containsObject:controllerCopy]);
}

- (void)setMessageListHasFocus:(BOOL)focus
{
  if (self->_messageListHasFocus != focus)
  {
    focusCopy = focus;
    self->_messageListHasFocus = focus;
    v4 = +[MailSplitViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"conversation view";
      if (focusCopy)
      {
        v5 = @"message list";
      }

      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Changed split view focus to %{public}@.", &v6, 0xCu);
    }
  }
}

- (void)showMessageListViewController:(BOOL)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v9 = +[MailSplitViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = controllerCopy;
    v11 = 1024;
    v12 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "showMessageListViewController: %{BOOL}d, animated: %{BOOL}d", v10, 0xEu);
  }

  [(MailSplitViewController *)self mf_setColumn:1 visible:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)showMailboxPickerController:(BOOL)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v9 = +[MailSplitViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = controllerCopy;
    v11 = 1024;
    v12 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "showMailboxPickerController: %{BOOL}d, animated: %{BOOL}d", v10, 0xEu);
  }

  [(MailSplitViewController *)self mf_setColumn:0 visible:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)showConversationViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = +[MailSplitViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showConversationViewController animated: %{BOOL}d", buf, 8u);
  }

  scene = [(MailSplitViewController *)self scene];
  if ([scene isInExpandedEnvironment] | !animatedCopy)
  {
    conversationViewController = 0;
  }

  else
  {
    conversationViewController = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  }

  if (_os_feature_enabled_impl())
  {
    v10 = EMIsGreymatterAvailable();
    if (!conversationViewController)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    if (!conversationViewController)
    {
      goto LABEL_22;
    }
  }

  if (![conversationViewController conversationSortOrder] || v10)
  {
    conversationViewController2 = [(MailSplitViewController *)self conversationViewController];
    isShowingGroupedSenderMessageList = [conversationViewController2 isShowingGroupedSenderMessageList];

    if ((isShowingGroupedSenderMessageList | v10))
    {
      if (isShowingGroupedSenderMessageList)
      {
        goto LABEL_22;
      }
    }

    else
    {
      messageCountHint = [conversationViewController messageCountHint];
      v14 = [messageCountHint resultWithTimeout:0 error:0.0299999993];

      if (v14)
      {
        v15 = [v14 integerValue] > 1;

        if (!v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = +[MailSplitViewController log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100489790(v16);
        }
      }
    }

    v17 = objc_opt_new();
    navigationItem = [conversationViewController navigationItem];
    [navigationItem setScrollEdgeAppearance:v17];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012DEF0;
    v19[3] = &unk_100651078;
    v22 = v10;
    v20 = conversationViewController;
    v21 = completionCopy;
    completionCopy = objc_retainBlock(v19);
  }

LABEL_22:
  [(MailSplitViewController *)self mf_setColumn:2 visible:1 animated:animatedCopy completion:completionCopy];
}

- (MailboxPickerOutlineController)mailboxPickerController
{
  mailboxPickerNavController = [(MailSplitViewController *)self mailboxPickerNavController];
  viewControllers = [mailboxPickerNavController viewControllers];
  v4 = [viewControllers objectAtIndexedSubscript:0];

  return v4;
}

- (MessageListViewController)messageListViewController
{
  messageListNavController = [(MailSplitViewController *)self messageListNavController];
  viewControllers = [messageListNavController viewControllers];
  v4 = [viewControllers objectAtIndexedSubscript:0];

  return v4;
}

- (ConversationViewController)conversationViewController
{
  messageDetailNavController = [(MailSplitViewController *)self messageDetailNavController];
  viewControllers = [messageDetailNavController viewControllers];
  v4 = [viewControllers objectAtIndexedSubscript:0];

  return v4;
}

- (void)_dismissVisiblePopoverInSplitViewController
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  splitViewController = [(MailSplitViewController *)self splitViewController];
  viewControllers = [splitViewController viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v7 + 1) + 8 * v6) mf_dismissPresentedViewControllerInPopover];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [viewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_isSearchActive
{
  messageListViewController = [(MailSplitViewController *)self messageListViewController];
  isSearchControllerActive = [messageListViewController isSearchControllerActive];

  return isSearchControllerActive;
}

- (BOOL)_conversationViewControllerHasReferenceMessage
{
  conversationViewController = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];
  v4 = referenceMessageListItem != 0;

  return v4;
}

- (void)_notifyViewStateChanged:(int64_t)changed
{
  v9 = objc_opt_new();
  v5 = [NSNumber numberWithInteger:changed];
  [v9 setObject:v5 forKeyedSubscript:@"MailSplitViewControllerNewDisplayModeKey"];

  v6 = [NSNumber numberWithBool:[(MailSplitViewController *)self isCollapsed]];
  [v9 setObject:v6 forKeyedSubscript:@"MailSplitViewControllerIsCollapsedKey"];

  transitionalTraitCollection = self->_transitionalTraitCollection;
  if (transitionalTraitCollection)
  {
    [v9 setObject:transitionalTraitCollection forKeyedSubscript:@"MailSplitViewControllerNewTraitCollectionKey"];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"MailSplitViewControllerViewStateChangedNotification" object:self userInfo:v9];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(MailSplitViewController *)self setTransitioningSize:1];
  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012E69C;
  v10[3] = &unk_10064CC00;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012E94C;
  v9[3] = &unk_10064CC00;
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
  v8.receiver = self;
  v8.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v8.receiver = self;
  v8.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  transitionalTraitCollection = self->_transitionalTraitCollection;
  self->_transitionalTraitCollection = collectionCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v5 traitCollectionDidChange:change];
  transitionalTraitCollection = self->_transitionalTraitCollection;
  self->_transitionalTraitCollection = 0;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  if (mode == 1)
  {
    [(MailSplitViewController *)self _dismissVisiblePopoverInSplitViewController];
  }

  [(MailSplitViewController *)self _notifyViewStateChanged:mode];
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  isTransitioningSize = [(MailSplitViewController *)self isTransitioningSize];
  if (column == 1 && (isTransitioningSize & 1) == 0)
  {
    messageListViewController = [(MailSplitViewController *)self messageListViewController];
    [messageListViewController updateForSplitViewControllerHidingMessageList];
  }
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  previouslyFocusedColumn = [(MailSplitViewController *)self previouslyFocusedColumn];

  if (previouslyFocusedColumn)
  {
    previouslyFocusedColumn2 = [(MailSplitViewController *)self previouslyFocusedColumn];
    column = [previouslyFocusedColumn2 integerValue];

    [(MailSplitViewController *)self setPreviouslyFocusedColumn:0];
  }

  else if (![(MailSplitViewController *)self _conversationViewControllerHasReferenceMessage]|| [(MailSplitViewController *)self _isSearchActive])
  {
    column = 1;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012ECF8;
  v10[3] = &unk_10064C7E8;
  v10[4] = self;
  [UIView performWithoutAnimation:v10];
  mailboxPickerController = [(MailSplitViewController *)self mailboxPickerController];
  [mailboxPickerController updateForSplitViewCollapseStateChanged:1];

  return column;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012EDE8;
  v6[3] = &unk_10064C7E8;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
  return mode;
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  collapseCopy = collapse;
  self->_hasFinishedInitialLayout = 1;
  v5 = collapseCopy;
  -[MailSplitViewController _notifyViewStateChanged:](self, "_notifyViewStateChanged:", [collapseCopy displayMode]);
}

- (void)splitViewControllerDidExpand:(id)expand
{
  expandCopy = expand;
  self->_hasFinishedInitialLayout = 1;
  v5 = expandCopy;
  -[MailSplitViewController _notifyViewStateChanged:](self, "_notifyViewStateChanged:", [expandCopy displayMode]);
}

- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)begin
{
  conversationViewController = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  if (conversationViewController)
  {
    [conversationViewController beginInteractiveResizing];
  }
}

- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)end
{
  conversationViewController = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  if (conversationViewController)
  {
    [conversationViewController endResizing];
  }
}

- (UIBarButtonItem)supplementaryButtonItem
{
  if (!self->_supplementaryButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithTitle:0 style:0 target:self action:"_showMessageListViewController"];
    [(UIBarButtonItem *)v4 _setShowsBackButtonIndicator:1];
    supplementaryButtonItem = self->_supplementaryButtonItem;
    self->_supplementaryButtonItem = v4;
  }

  messageListViewController = [(MailSplitViewController *)self messageListViewController];
  navigationItem = [messageListViewController navigationItem];
  title = [navigationItem title];
  v9 = title;
  if (!title)
  {
    v2 = +[NSBundle mainBundle];
    v9 = [v2 localizedStringForKey:@"BACK" value:&stru_100662A88 table:@"Main"];
  }

  [(UIBarButtonItem *)self->_supplementaryButtonItem setTitle:v9];
  if (!title)
  {
  }

  v10 = self->_supplementaryButtonItem;

  return v10;
}

- (void)restorePrimaryNavigationState:(int64_t)state
{
  previouslyFocusedColumn = self->_previouslyFocusedColumn;
  v5 = &off_1006741E0;
  if (state == 2)
  {
    v5 = &off_100674210;
  }

  if (!state)
  {
    v5 = &off_1006741F8;
  }

  self->_previouslyFocusedColumn = v5;

  self->_messageListHasFocus = [(NSNumber *)self->_previouslyFocusedColumn integerValue]== 1;
}

- (id)keyCommands
{
  if ([(MailSplitViewController *)self displayMode]== 1 || [(MailSplitViewController *)self isCollapsed])
  {
    isKindOfClass = 1;
  }

  else
  {
    scene = [(MailSplitViewController *)self scene];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v5 = +[MailSplitViewController conversationViewArrowCommands];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012F3BC;
  v8[3] = &unk_100651098;
  v9 = isKindOfClass & 1;
  v6 = [v5 ef_map:v8];

  return v6;
}

- (BOOL)messageListCanPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = senderCopy;
    if (sub_10012F7EC(self, action, v7))
    {
LABEL_3:
      LOBYTE(v8) = 0;
LABEL_18:

      goto LABEL_19;
    }

    messageListViewController = [(MailSplitViewController *)self messageListViewController];
    v10 = [messageListViewController canHandleAction:action withMailMenuCommand:v7];

    if ("_favoriteMailboxShortcutInvoked:" == action)
    {
      if (!v10)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = "_previousMailboxShortcutInvoked:" == action || "_nextMailboxShortcutInvoked:" == action;
      v12 = !v11;
      LOBYTE(v8) = v12 & v10;
      if (!v11 || ((v10 ^ 1) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    mailboxPickerController = [(MailSplitViewController *)self mailboxPickerController];
    v8 = [mailboxPickerController isEditing] ^ 1;

    goto LABEL_18;
  }

  LOBYTE(v8) = 0;
LABEL_19:

  return v8;
}

- (BOOL)conversationViewControllerCanPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = senderCopy;
    conversationViewController = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
    if (sub_10012F7EC(self, action, v7) == 1)
    {
      v9 = [conversationViewController canHandleAction:action withMailMenuCommand:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = sub_10012F7EC(self, action, senderCopy);
  if (v7)
  {
    if (v7 == 1)
    {
      conversationViewController = [(MailSplitViewController *)self conversationViewController];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = MailSplitViewController;
      conversationViewController = [(MailSplitViewController *)&v11 targetForAction:action withSender:senderCopy];
    }
  }

  else
  {
    conversationViewController = [(MailSplitViewController *)self messageListViewController];
  }

  v9 = conversationViewController;

  return v9;
}

- (MailboxSelectionCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end