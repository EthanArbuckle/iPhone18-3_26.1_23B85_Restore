@interface MailSplitViewController
+ (NSArray)menuCommands;
+ (id)conversationViewArrowCommands;
+ (id)log;
- (BOOL)_conversationViewControllerHasReferenceMessage;
- (BOOL)_isSearchActive;
- (BOOL)conversationViewControllerCanPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)messageListCanPerformAction:(SEL)a3 withSender:(id)a4;
- (ConversationViewController)conversationViewController;
- (MailSplitViewController)initWithMailboxPickerNavigationController:(id)a3 messageListNavigationController:(id)a4 mailDetailNavigationController:(id)a5 scene:(id)a6;
- (MailboxPickerOutlineController)mailboxPickerController;
- (MailboxSelectionCapable)scene;
- (MessageListViewController)messageListViewController;
- (UIBarButtonItem)supplementaryButtonItem;
- (id)keyCommands;
- (id)mf_preferredTitle;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)_dismissVisiblePopoverInSplitViewController;
- (void)_notifyViewStateChanged:(int64_t)a3;
- (void)restorePrimaryNavigationState:(int64_t)a3;
- (void)setFocusedViewController:(id)a3;
- (void)setMessageListHasFocus:(BOOL)a3;
- (void)showConversationViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)showMailboxPickerController:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)showMessageListViewController:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)a3;
- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MailSplitViewController

- (id)mf_preferredTitle
{
  v2 = [(MailSplitViewController *)self messageListViewController];
  v3 = [v2 mf_preferredTitle];

  return v3;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000197B4;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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

- (MailSplitViewController)initWithMailboxPickerNavigationController:(id)a3 messageListNavigationController:(id)a4 mailDetailNavigationController:(id)a5 scene:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = MailSplitViewController;
  v15 = [(MailSplitViewController *)&v26 initWithStyle:2];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageListNavController, a4);
    objc_storeStrong(&v16->_messageDetailNavController, a5);
    objc_storeStrong(&v16->_mailboxPickerNavController, a3);
    v17 = [v11 topViewController];
    mailboxPickerController = v16->_mailboxPickerController;
    v16->_mailboxPickerController = v17;

    objc_storeWeak(&v16->_scene, v14);
    [(MailSplitViewController *)v16 setDelegate:v16];
    v19 = +[UIColor mailSplitViewBackgroundColor];
    v20 = [(MailSplitViewController *)v16 view];
    [v20 setBackgroundColor:v19];

    v21 = [(MailSplitViewController *)v16 view];
    [v21 setOpaque:0];

    [(MailSplitViewController *)v16 _setPrefersOverlayInRegularWidthPhone:1];
    [(MailSplitViewController *)v16 setViewController:v11 forColumn:0];
    [(MailSplitViewController *)v16 setViewController:v12 forColumn:1];
    [(MailSplitViewController *)v16 setViewController:v13 forColumn:2];
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

- (void)setFocusedViewController:(id)a3
{
  v5 = a3;
  v4 = [(MailNavigationController *)self->_messageListNavController viewControllers];
  -[MailSplitViewController setMessageListHasFocus:](self, "setMessageListHasFocus:", [v4 containsObject:v5]);
}

- (void)setMessageListHasFocus:(BOOL)a3
{
  if (self->_messageListHasFocus != a3)
  {
    v3 = a3;
    self->_messageListHasFocus = a3;
    v4 = +[MailSplitViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"conversation view";
      if (v3)
      {
        v5 = @"message list";
      }

      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Changed split view focus to %{public}@.", &v6, 0xCu);
    }
  }
}

- (void)showMessageListViewController:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = +[MailSplitViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "showMessageListViewController: %{BOOL}d, animated: %{BOOL}d", v10, 0xEu);
  }

  [(MailSplitViewController *)self mf_setColumn:1 visible:v6 animated:v5 completion:v8];
}

- (void)showMailboxPickerController:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = +[MailSplitViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "showMailboxPickerController: %{BOOL}d, animated: %{BOOL}d", v10, 0xEu);
  }

  [(MailSplitViewController *)self mf_setColumn:0 visible:v6 animated:v5 completion:v8];
}

- (void)showConversationViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[MailSplitViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showConversationViewController animated: %{BOOL}d", buf, 8u);
  }

  v8 = [(MailSplitViewController *)self scene];
  if ([v8 isInExpandedEnvironment] | !v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  }

  if (_os_feature_enabled_impl())
  {
    v10 = EMIsGreymatterAvailable();
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (![v9 conversationSortOrder] || v10)
  {
    v11 = [(MailSplitViewController *)self conversationViewController];
    v12 = [v11 isShowingGroupedSenderMessageList];

    if ((v12 | v10))
    {
      if (v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = [v9 messageCountHint];
      v14 = [v13 resultWithTimeout:0 error:0.0299999993];

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
    v18 = [v9 navigationItem];
    [v18 setScrollEdgeAppearance:v17];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012DEF0;
    v19[3] = &unk_100651078;
    v22 = v10;
    v20 = v9;
    v21 = v6;
    v6 = objc_retainBlock(v19);
  }

LABEL_22:
  [(MailSplitViewController *)self mf_setColumn:2 visible:1 animated:v4 completion:v6];
}

- (MailboxPickerOutlineController)mailboxPickerController
{
  v2 = [(MailSplitViewController *)self mailboxPickerNavController];
  v3 = [v2 viewControllers];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

- (MessageListViewController)messageListViewController
{
  v2 = [(MailSplitViewController *)self messageListNavController];
  v3 = [v2 viewControllers];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

- (ConversationViewController)conversationViewController
{
  v2 = [(MailSplitViewController *)self messageDetailNavController];
  v3 = [v2 viewControllers];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

- (void)_dismissVisiblePopoverInSplitViewController
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MailSplitViewController *)self splitViewController];
  v3 = [v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) mf_dismissPresentedViewControllerInPopover];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_isSearchActive
{
  v2 = [(MailSplitViewController *)self messageListViewController];
  v3 = [v2 isSearchControllerActive];

  return v3;
}

- (BOOL)_conversationViewControllerHasReferenceMessage
{
  v2 = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  v3 = [v2 referenceMessageListItem];
  v4 = v3 != 0;

  return v4;
}

- (void)_notifyViewStateChanged:(int64_t)a3
{
  v9 = objc_opt_new();
  v5 = [NSNumber numberWithInteger:a3];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
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
  [v7 animateAlongsideTransition:v10 completion:v9];
  v8.receiver = self;
  v8.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v8 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  transitionalTraitCollection = self->_transitionalTraitCollection;
  self->_transitionalTraitCollection = v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = MailSplitViewController;
  [(MailSplitViewController *)&v5 traitCollectionDidChange:a3];
  transitionalTraitCollection = self->_transitionalTraitCollection;
  self->_transitionalTraitCollection = 0;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    [(MailSplitViewController *)self _dismissVisiblePopoverInSplitViewController];
  }

  [(MailSplitViewController *)self _notifyViewStateChanged:a4];
}

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v6 = [(MailSplitViewController *)self isTransitioningSize];
  if (a4 == 1 && (v6 & 1) == 0)
  {
    v7 = [(MailSplitViewController *)self messageListViewController];
    [v7 updateForSplitViewControllerHidingMessageList];
  }
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v6 = [(MailSplitViewController *)self previouslyFocusedColumn];

  if (v6)
  {
    v7 = [(MailSplitViewController *)self previouslyFocusedColumn];
    a4 = [v7 integerValue];

    [(MailSplitViewController *)self setPreviouslyFocusedColumn:0];
  }

  else if (![(MailSplitViewController *)self _conversationViewControllerHasReferenceMessage]|| [(MailSplitViewController *)self _isSearchActive])
  {
    a4 = 1;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012ECF8;
  v10[3] = &unk_10064C7E8;
  v10[4] = self;
  [UIView performWithoutAnimation:v10];
  v8 = [(MailSplitViewController *)self mailboxPickerController];
  [v8 updateForSplitViewCollapseStateChanged:1];

  return a4;
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012EDE8;
  v6[3] = &unk_10064C7E8;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
  return a4;
}

- (void)splitViewControllerDidCollapse:(id)a3
{
  v4 = a3;
  self->_hasFinishedInitialLayout = 1;
  v5 = v4;
  -[MailSplitViewController _notifyViewStateChanged:](self, "_notifyViewStateChanged:", [v4 displayMode]);
}

- (void)splitViewControllerDidExpand:(id)a3
{
  v4 = a3;
  self->_hasFinishedInitialLayout = 1;
  v5 = v4;
  -[MailSplitViewController _notifyViewStateChanged:](self, "_notifyViewStateChanged:", [v4 displayMode]);
}

- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)a3
{
  v3 = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  if (v3)
  {
    [v3 beginInteractiveResizing];
  }
}

- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)a3
{
  v3 = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
  if (v3)
  {
    [v3 endResizing];
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

  v6 = [(MailSplitViewController *)self messageListViewController];
  v7 = [v6 navigationItem];
  v8 = [v7 title];
  v9 = v8;
  if (!v8)
  {
    v2 = +[NSBundle mainBundle];
    v9 = [v2 localizedStringForKey:@"BACK" value:&stru_100662A88 table:@"Main"];
  }

  [(UIBarButtonItem *)self->_supplementaryButtonItem setTitle:v9];
  if (!v8)
  {
  }

  v10 = self->_supplementaryButtonItem;

  return v10;
}

- (void)restorePrimaryNavigationState:(int64_t)a3
{
  previouslyFocusedColumn = self->_previouslyFocusedColumn;
  v5 = &off_1006741E0;
  if (a3 == 2)
  {
    v5 = &off_100674210;
  }

  if (!a3)
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
    v4 = [(MailSplitViewController *)self scene];
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

- (BOOL)messageListCanPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if (sub_10012F7EC(self, a3, v7))
    {
LABEL_3:
      LOBYTE(v8) = 0;
LABEL_18:

      goto LABEL_19;
    }

    v9 = [(MailSplitViewController *)self messageListViewController];
    v10 = [v9 canHandleAction:a3 withMailMenuCommand:v7];

    if ("_favoriteMailboxShortcutInvoked:" == a3)
    {
      if (!v10)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = "_previousMailboxShortcutInvoked:" == a3 || "_nextMailboxShortcutInvoked:" == a3;
      v12 = !v11;
      LOBYTE(v8) = v12 & v10;
      if (!v11 || ((v10 ^ 1) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    v13 = [(MailSplitViewController *)self mailboxPickerController];
    v8 = [v13 isEditing] ^ 1;

    goto LABEL_18;
  }

  LOBYTE(v8) = 0;
LABEL_19:

  return v8;
}

- (BOOL)conversationViewControllerCanPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(MailDetailNavigationController *)self->_messageDetailNavController conversationViewController];
    if (sub_10012F7EC(self, a3, v7) == 1)
    {
      v9 = [v8 canHandleAction:a3 withMailMenuCommand:v7];
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

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = sub_10012F7EC(self, a3, v6);
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [(MailSplitViewController *)self conversationViewController];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = MailSplitViewController;
      v8 = [(MailSplitViewController *)&v11 targetForAction:a3 withSender:v6];
    }
  }

  else
  {
    v8 = [(MailSplitViewController *)self messageListViewController];
  }

  v9 = v8;

  return v9;
}

- (MailboxSelectionCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end