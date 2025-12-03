@interface InboxViewController
- (CGSize)preferredContentSize;
- (InboxViewController)initWithModel:(id)model destination:(unint64_t)destination;
- (InboxViewControllerDelegate)delegate;
- (id)displayedDetailViewControllers;
- (id)inboxSwitcherViewControllerLeftBarButtonItem:(id)item;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissMessagesViewControllerWithCompletion:(id)completion;
- (void)_inspectEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments proposedTimeAttendee:(id)attendee;
- (void)_pushDetailViewControllerForEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments proposedTimeAttendee:(id)attendee;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation InboxViewController

- (InboxViewController)initWithModel:(id)model destination:(unint64_t)destination
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = InboxViewController;
  v9 = [(InboxViewController *)&v11 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (!modelCopy)
    {
      sub_10016F9FC(a2, v9);
    }

    objc_storeStrong(&v9->_model, model);
    v9->_destination = destination;
  }

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(InboxViewController *)self view];
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
  view = [(UINavigationController *)self->_embeddedNavigationController view];
  [(InboxView *)v8 addSubview:view];

  [(InboxViewController *)self setView:v8];
}

- (CGSize)preferredContentSize
{
  [(UINavigationController *)self->_embeddedNavigationController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = InboxViewController;
  [(InboxViewController *)&v9 viewDidAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = InboxViewController;
  [(InboxViewController *)&v7 viewDidDisappear:disappear];
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
  view = [(InboxViewController *)self view];
  [view frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view2 = [(UINavigationController *)self->_embeddedNavigationController view];
  [view2 setFrame:{v4, v6, v8, v10}];
}

- (id)displayedDetailViewControllers
{
  viewControllers = [(UINavigationController *)self->_embeddedNavigationController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewControllers);
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

      v4 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_inspectEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments proposedTimeAttendee:(id)attendee
{
  commentsCopy = comments;
  animatedCopy = animated;
  eventCopy = event;
  attendeeCopy = attendee;
  view = [(InboxViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
  }

  else
  {
    view2 = [(InboxViewController *)self view];
    IsCompact = EKUICurrentHeightSizeClassIsCompact();

    if (!IsCompact)
    {
      if ([eventCopy participationStatus] != 3 || (-[CUIKCalendarModel eventStore](self->_model, "eventStore"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "showDeclinedEvents"), v15, (v16 & 1) != 0))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000453A0;
        v17[3] = &unk_10020F5A8;
        v17[4] = self;
        v18 = eventCopy;
        v19 = animatedCopy;
        v20 = commentsCopy;
        [(InboxViewController *)self _dismissMessagesViewControllerWithCompletion:v17];

        goto LABEL_5;
      }

      [(UINavigationController *)self->_embeddedNavigationController _setClipUnderlapWhileTransitioning:1];
    }
  }

  [(InboxViewController *)self _pushDetailViewControllerForEvent:eventCopy animated:animatedCopy showComments:commentsCopy proposedTimeAttendee:attendeeCopy];
LABEL_5:
}

- (id)inboxSwitcherViewControllerLeftBarButtonItem:(id)item
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

- (void)_pushDetailViewControllerForEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments proposedTimeAttendee:(id)attendee
{
  commentsCopy = comments;
  animatedCopy = animated;
  eventCopy = event;
  attendeeCopy = attendee;
  calendar = [eventCopy calendar];
  type = [calendar type];

  if (type != 4 || (+[CalContactsProvider defaultProvider](CalContactsProvider, "defaultProvider"), v14 = objc_claimAutoreleasedReturnValue(), [eventCopy birthdayContactIdentifier], v15 = objc_claimAutoreleasedReturnValue(), +[CNContactViewController descriptorForRequiredKeys](CNContactViewController, "descriptorForRequiredKeys"), v16 = objc_claimAutoreleasedReturnValue(), v22 = v16, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v22, 1), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "unifiedContactWithIdentifier:keysToFetch:", v15, v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v14, +[CNContactViewController viewControllerForContact:](CNContactViewController, "viewControllerForContact:", v18), v19 = objc_claimAutoreleasedReturnValue(), +[CalContactsProvider defaultProvider](CalContactsProvider, "defaultProvider"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "contactStore"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setContactStore:", v21), v21, v20, objc_msgSend(v19, "setShouldShowLinkedContacts:", 1), objc_msgSend(v19, "setDisplayMode:", 1), objc_msgSend(v19, "setActions:", objc_msgSend(v19, "actions") | 0x400), objc_msgSend(v19, "setAllowsEditing:", 0), v18, !v19))
  {
    if (attendeeCopy)
    {
      v19 = [[EKUIProposedTimeEventViewController alloc] initWithProposedTimeAttendee:attendeeCopy];
      [v19 setEvent:eventCopy];
      [v19 setDelegate:self];
      animatedCopy = 1;
    }

    else
    {
      v19 = objc_opt_new();
      animatedCopy = 1;
      [v19 setCalendarPreviewIsInlineDayView:1];
      [v19 setEvent:eventCopy];
      [v19 setAllowsEditing:1];
      [v19 setDelegate:self];
      [v19 setAllowsCalendarPreview:1];
      [v19 setShowsDetectedConferenceItem:1];
    }
  }

  [(UINavigationController *)self->_embeddedNavigationController pushViewController:v19 animated:animatedCopy];
  if (commentsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 openAttendeesDetailItem];
    }
  }
}

- (void)_dismissMessagesViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(InboxViewController *)self view];
  [view endEditing:1];

  [(InboxSwitcherViewController *)self->_switcherViewController inboxWillDismiss];
  v6 = [(UINavigationController *)self->_embeddedNavigationController popViewControllerAnimated:0];
  if (completionCopy)
  {
    self->_wantsDisplayReviewPrompt = 0;
    presentingViewController = [(InboxViewController *)self presentingViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100045944;
    v10[3] = &unk_10020F5D0;
    v10[4] = self;
    v11 = completionCopy;
    [presentingViewController dismissViewControllerAnimated:0 completion:v10];
  }

  else
  {
    doneBlock = [(InboxViewController *)self doneBlock];

    if (doneBlock)
    {
      doneBlock2 = [(InboxViewController *)self doneBlock];
      (doneBlock2)[2](doneBlock2, self, 0);
    }
  }
}

- (InboxViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end