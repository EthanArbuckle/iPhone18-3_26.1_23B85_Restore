@interface InboxViewController
- (CGSize)preferredContentSize;
- (InboxViewController)initWithModel:(id)a3 destination:(unint64_t)a4;
- (InboxViewControllerDelegate)delegate;
- (id)displayedDetailViewControllers;
- (id)inboxSwitcherViewControllerLeftBarButtonItem:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissMessagesViewControllerWithCompletion:(id)a3;
- (void)_inspectEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 proposedTimeAttendee:(id)a6;
- (void)_pushDetailViewControllerForEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 proposedTimeAttendee:(id)a6;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation InboxViewController

- (InboxViewController)initWithModel:(id)a3 destination:(unint64_t)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = InboxViewController;
  v9 = [(InboxViewController *)&v11 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (!v8)
    {
      sub_10016F9FC(a2, v9);
    }

    objc_storeStrong(&v9->_model, a3);
    v9->_destination = a4;
  }

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(InboxViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)loadView
{
  v3 = [[InboxSwitcherViewController alloc] initWithModel:self->_model destination:self->_destination];
  switcherViewController = self->_switcherViewController;
  self->_switcherViewController = v3;

  [(InboxSwitcherViewController *)self->_switcherViewController setSwitcherDelegate:self];
  v5 = objc_alloc_init(UINavigationController);
  embeddedNavigationController = self->_embeddedNavigationController;
  self->_embeddedNavigationController = v5;

  [(UINavigationController *)self->_embeddedNavigationController pushViewController:self->_switcherViewController animated:0];
  [(InboxViewController *)self addChildViewController:self->_embeddedNavigationController];
  [(UINavigationController *)self->_embeddedNavigationController didMoveToParentViewController:self];
  v8 = objc_alloc_init(InboxView);
  v7 = [(UINavigationController *)self->_embeddedNavigationController view];
  [(InboxView *)v8 addSubview:v7];

  [(InboxViewController *)self setView:v8];
}

- (CGSize)preferredContentSize
{
  [(UINavigationController *)self->_embeddedNavigationController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = InboxViewController;
  [(InboxViewController *)&v9 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear", buf, 0xCu);
  }

  if (+[ApplicationTester testingSessionStarted])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"InboxViewController_ViewDidAppearNotification" object:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = InboxViewController;
  [(InboxViewController *)&v7 viewDidDisappear:a3];
  if (self->_wantsDisplayReviewPrompt)
  {
    self->_wantsDisplayReviewPrompt = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 attemptDisplayReviewPrompt];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v12 = [(InboxViewController *)self view];
  [v12 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UINavigationController *)self->_embeddedNavigationController view];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (id)displayedDetailViewControllers
{
  v2 = [(UINavigationController *)self->_embeddedNavigationController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v9 = +[NSMutableArray array];

          v5 = v9;
        }

        if (v5)
        {
          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_inspectEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 proposedTimeAttendee:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(InboxViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
  }

  else
  {
    v13 = [(InboxViewController *)self view];
    IsCompact = EKUICurrentHeightSizeClassIsCompact();

    if (!IsCompact)
    {
      if ([v10 participationStatus] != 3 || (-[CUIKCalendarModel eventStore](self->_model, "eventStore"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "showDeclinedEvents"), v15, (v16 & 1) != 0))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000453A0;
        v17[3] = &unk_10020F5A8;
        v17[4] = self;
        v18 = v10;
        v19 = v8;
        v20 = v7;
        [(InboxViewController *)self _dismissMessagesViewControllerWithCompletion:v17];

        goto LABEL_5;
      }

      [(UINavigationController *)self->_embeddedNavigationController _setClipUnderlapWhileTransitioning:1];
    }
  }

  [(InboxViewController *)self _pushDetailViewControllerForEvent:v10 animated:v8 showComments:v7 proposedTimeAttendee:v11];
LABEL_5:
}

- (id)inboxSwitcherViewControllerLeftBarButtonItem:(id)a3
{
  if (self->_destination)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissMessagesViewController"];
    [v3 setStyle:0];
  }

  return v3;
}

- (void)_pushDetailViewControllerForEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 proposedTimeAttendee:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [v10 calendar];
  v13 = [v12 type];

  if (v13 != 4 || (+[CalContactsProvider defaultProvider](CalContactsProvider, "defaultProvider"), v14 = objc_claimAutoreleasedReturnValue(), [v10 birthdayContactIdentifier], v15 = objc_claimAutoreleasedReturnValue(), +[CNContactViewController descriptorForRequiredKeys](CNContactViewController, "descriptorForRequiredKeys"), v16 = objc_claimAutoreleasedReturnValue(), v22 = v16, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v22, 1), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "unifiedContactWithIdentifier:keysToFetch:", v15, v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v14, +[CNContactViewController viewControllerForContact:](CNContactViewController, "viewControllerForContact:", v18), v19 = objc_claimAutoreleasedReturnValue(), +[CalContactsProvider defaultProvider](CalContactsProvider, "defaultProvider"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "contactStore"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setContactStore:", v21), v21, v20, objc_msgSend(v19, "setShouldShowLinkedContacts:", 1), objc_msgSend(v19, "setDisplayMode:", 1), objc_msgSend(v19, "setActions:", objc_msgSend(v19, "actions") | 0x400), objc_msgSend(v19, "setAllowsEditing:", 0), v18, !v19))
  {
    if (v11)
    {
      v19 = [[EKUIProposedTimeEventViewController alloc] initWithProposedTimeAttendee:v11];
      [v19 setEvent:v10];
      [v19 setDelegate:self];
      v8 = 1;
    }

    else
    {
      v19 = objc_opt_new();
      v8 = 1;
      [v19 setCalendarPreviewIsInlineDayView:1];
      [v19 setEvent:v10];
      [v19 setAllowsEditing:1];
      [v19 setDelegate:self];
      [v19 setAllowsCalendarPreview:1];
      [v19 setShowsDetectedConferenceItem:1];
    }
  }

  [(UINavigationController *)self->_embeddedNavigationController pushViewController:v19 animated:v8];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 openAttendeesDetailItem];
    }
  }
}

- (void)_dismissMessagesViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(InboxViewController *)self view];
  [v5 endEditing:1];

  [(InboxSwitcherViewController *)self->_switcherViewController inboxWillDismiss];
  v6 = [(UINavigationController *)self->_embeddedNavigationController popViewControllerAnimated:0];
  if (v4)
  {
    self->_wantsDisplayReviewPrompt = 0;
    v7 = [(InboxViewController *)self presentingViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100045944;
    v10[3] = &unk_10020F5D0;
    v10[4] = self;
    v11 = v4;
    [v7 dismissViewControllerAnimated:0 completion:v10];
  }

  else
  {
    v8 = [(InboxViewController *)self doneBlock];

    if (v8)
    {
      v9 = [(InboxViewController *)self doneBlock];
      (v9)[2](v9, self, 0);
    }
  }
}

- (InboxViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end