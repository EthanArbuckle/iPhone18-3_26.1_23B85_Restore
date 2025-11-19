@interface CalendarsViewController
- (BOOL)canDismiss;
- (BOOL)isModalInPresentation;
- (CalendarsViewController)initWithModel:(id)a3 destination:(unint64_t)a4;
- (id)backgroundColor;
- (id)preservedState;
- (id)refreshCalendarsButtonPressed;
- (unint64_t)supportedInterfaceOrientations;
- (void)_identityChanged:(id)a3;
- (void)_saveFilterAndNotifyWithReason:(id)a3;
- (void)_updateChooserForFocusMode;
- (void)calendarChooserCollapsedSectionIdentifiersDidChange:(id)a3;
- (void)calendarChooserDidFinish:(id)a3;
- (void)calendarChooserSelectedIdentityDidChange:(id)a3;
- (void)calendarChooserSelectionDidChange:(id)a3;
- (void)calendarChooserUpdatedToolbarItems;
- (void)dealloc;
- (void)focusModeConfigurationChanged:(id)a3;
- (void)loadView;
- (void)restorePresentedViewControllers:(id)a3 startIndex:(unint64_t)a4 presenter:(id)a5;
- (void)restorePreservedState:(id)a3;
- (void)selectedCalendarsChanged:(id)a3;
- (void)showAddSubscribedCalendarWithURL:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CalendarsViewController

- (CalendarsViewController)initWithModel:(id)a3 destination:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CalendarsViewController;
  v8 = [(CalendarsViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, a3);
    v9->_destination = a4;
    if (a4 == 2)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:v9 selector:"_identityChanged:" name:CUIKCalendarModelIdentityChangedNotification object:v7];
    }
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CalendarsViewController;
  [(CalendarsViewController *)&v4 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(CalendarsViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillLayoutSubviews
{
  v5 = [(CalendarsViewController *)self backgroundColor];
  v3 = [(CalendarsViewController *)self view];
  [v3 setBackgroundColor:v5];
  v4 = [v3 mainView];
  [v4 setBackgroundColor:v5];
}

- (void)loadView
{
  v19 = [(CalendarsViewController *)self model];
  v3 = [EKCalendarChooser alloc];
  if (self->_destination == 2)
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v19 eventStore];
  v6 = [v19 sourceForSelectedIdentity];
  *(&v18 + 1) = 257;
  LOBYTE(v18) = self->_destination != 2;
  v7 = [v3 initWithSelectionStyle:1 displayStyle:v4 entityType:0 forEvent:0 eventStore:v5 limitedToSource:v6 showIdentityChooser:v18 showDelegateSetupCell:? showAccountStatus:?];

  if (self->_destination == 2)
  {
    [(CalendarsViewController *)self addChildViewController:v7];
    p_chooser = &self->_chooser;
  }

  else
  {
    v9 = [[UINavigationController alloc] initWithRootViewController:v7];
    p_chooser = &self->_embeddedNavigationController;
    embeddedNavigationController = self->_embeddedNavigationController;
    self->_embeddedNavigationController = v9;

    [(CalendarsViewController *)self addChildViewController:self->_embeddedNavigationController];
  }

  [*p_chooser didMoveToParentViewController:self];
  if (v7)
  {
    v11 = [v19 selectedCalendarsIgnoringFocus];
    [v7 setSelectedCalendars:v11];

    [v7 setDelegate:self];
    v12 = [v19 collapsedSectionIdentifiers];
    [v7 setCollapsedSectionIdentifiers:v12];

    [v7 setShowsDoneButton:self->_destination == 0];
    [v7 setAllowsPullToRefresh:1];
    [v7 setShowsDeclinedEventsSetting:{objc_msgSend(v19, "invitationBearingStoresExistForEvents")}];
    [v7 setShowsCompletedRemindersSetting:1];
    [v7 setShowDetailAccessories:1];
    objc_storeStrong(&self->_chooser, v7);
    [(CalendarsViewController *)self _updateChooserForFocusMode];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"selectedCalendarsChanged:" name:CUIKCalendarModelFilterChangedNotification object:v19];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"focusModeConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:v19];

    [CalDistributedNotificationCenter addObserver:self selector:"blockedUserChanged" name:CMFSyncAgentBlockListUpdated];
  }

  v15 = [(RootView *)[CalendarsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  chooser = self->_embeddedNavigationController;
  if (!chooser)
  {
    chooser = self->_chooser;
  }

  v17 = [chooser view];
  [(RootView *)v15 setMainView:v17];
  [(CalendarsViewController *)self setView:v15];
}

- (void)_updateChooserForFocusMode
{
  v3 = [(CUIKCalendarModel *)self->_model unselectedCalendarsForFocusMode];
  v4 = v3 != 0;

  chooser = self->_chooser;

  [(EKCalendarChooser *)chooser setDisableCalendarsUnselectedByFocus:v4];
}

- (void)calendarChooserUpdatedToolbarItems
{
  if (!self->_embeddedNavigationController)
  {
    v4 = [(EKCalendarChooser *)self->_chooser toolbarItems];
    [(CalendarsViewController *)self setToolbarItems:v4 animated:1];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CalendarsViewController;
  [(CalendarsViewController *)&v6 viewDidLoad];
  embeddedNavigationController = self->_embeddedNavigationController;
  if (!embeddedNavigationController)
  {
    embeddedNavigationController = self->_chooser;
  }

  v4 = [embeddedNavigationController view];
  v5 = [(CalendarsViewController *)self backgroundColor];
  [v4 setBackgroundColor:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  if (self->_urlToOpen)
  {
    [(CalendarsViewController *)self showAddSubscribedCalendarWithURL:?];
    urlToOpen = self->_urlToOpen;
    self->_urlToOpen = 0;
  }
}

- (BOOL)isModalInPresentation
{
  v3 = [(CalendarsViewController *)self embeddedNavigationController];
  v4 = [v3 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 viewControllers];
    v6 = [v5 firstObject];
    v7 = [v6 isModalInPresentation];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CalendarsViewController;
    v7 = [(CalendarsViewController *)&v9 isModalInPresentation];
  }

  return v7;
}

- (void)selectedCalendarsChanged:(id)a3
{
  v5 = [(CalendarsViewController *)self model];
  v4 = [v5 selectedCalendarsIgnoringFocus];
  [(EKCalendarChooser *)self->_chooser setSelectedCalendars:v4];
}

- (void)focusModeConfigurationChanged:(id)a3
{
  [(CalendarsViewController *)self _updateChooserForFocusMode];
  chooser = self->_chooser;

  [(EKCalendarChooser *)chooser focusModeConfigurationChanged];
}

- (void)_identityChanged:(id)a3
{
  chooser = self->_chooser;
  v5 = [(CalendarsViewController *)self model];
  v4 = [v5 sourceForSelectedIdentity];
  [(EKCalendarChooser *)chooser identityChanged:v4];
}

- (void)calendarChooserSelectionDidChange:(id)a3
{
  model = self->_model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model sourceForSelectedIdentity];
  v7 = [v5 selectedCalendars];

  [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v6 selectedCalendars:v7];

  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser selection changed"];
}

- (void)calendarChooserSelectedIdentityDidChange:(id)a3
{
  model = self->_model;
  v5 = [a3 sourceForSelectedIdentity];
  [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v5 selectedCalendars:0];

  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser selected identity changed"];
}

- (void)calendarChooserCollapsedSectionIdentifiersDidChange:(id)a3
{
  v4 = [a3 collapsedSectionIdentifiers];
  [(CUIKCalendarModel *)self->_model setCollapsedSectionIdentifiers:v4];
}

- (void)_saveFilterAndNotifyWithReason:(id)a3
{
  model = self->_model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model selectedCalendarsIgnoringFocus];
  [(CUIKCalendarModel *)self->_model setSelectedCalendarsAndRequestPreferenceSave:v6 reason:v5];
}

- (id)refreshCalendarsButtonPressed
{
  CalAnalyticsSendEvent();
  v3 = [EKAccountRefresher alloc];
  v4 = [(CalendarsViewController *)self model];
  v5 = [v4 eventStore];
  v6 = [v3 initWithEventStore:v5];

  [v6 refresh];

  return v6;
}

- (void)calendarChooserDidFinish:(id)a3
{
  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser dismissed"];
  v4 = [(CalendarsViewController *)self embeddedNavigationController];
  v5 = [v4 popViewControllerAnimated:0];

  v6 = [(CalendarsViewController *)self doneBlock];

  if (v6)
  {
    v7 = [(CalendarsViewController *)self doneBlock];
    (v7)[2](v7, self, 0);

    [(CalendarsViewController *)self setDoneBlock:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendarsviewcontroller dismissed"];
  v5.receiver = self;
  v5.super_class = CalendarsViewController;
  [(CalendarsViewController *)&v5 viewDidDisappear:v3];
}

- (void)showAddSubscribedCalendarWithURL:(id)a3
{
  v5 = a3;
  chooser = self->_chooser;
  v7 = v5;
  if (chooser)
  {
    [(EKCalendarChooser *)chooser showAddSubscribedCalendarWithURL:?];
  }

  else
  {
    objc_storeStrong(&self->_urlToOpen, a3);
  }
}

- (id)preservedState
{
  v3 = objc_alloc_init(CalendarsViewControllerPreservedState);
  v4 = [(EKCalendarChooser *)self->_chooser centeredCalendar];
  [(CalendarsViewControllerPreservedState *)v3 setCenteredCalendar:v4];

  v5 = [(EKCalendarChooser *)self->_chooser displayedEditor];
  [(CalendarsViewControllerPreservedState *)v3 setDisplayedEditor:v5];

  v6 = +[NSMutableArray array];
  v7 = [(CalendarsViewController *)self presentedViewController];
  if (v7)
  {
    v8 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"MFMessageComposeViewController"), (objc_opt_isKindOfClass()) || (NSClassFromString(@"_UIContextMenuActionsOnlyViewController"), (objc_opt_isKindOfClass()) || (NSClassFromString(@"DDParsecCollectionViewController"), (objc_opt_isKindOfClass()))
      {
        v9 = [v8 presentingViewController];
        [v9 dismissViewControllerAnimated:0 completion:0];

        v10 = [v8 presentedViewController];
      }

      else
      {
        v11 = objc_alloc_init(PresentedViewControllerState);
        [(PresentedViewControllerState *)v11 setViewController:v8];
        v12 = [v8 popoverPresentationController];
        v13 = [v12 sourceView];
        [(PresentedViewControllerState *)v11 setSourceView:v13];

        v14 = [v8 popoverPresentationController];
        -[PresentedViewControllerState setArrowDirection:](v11, "setArrowDirection:", [v14 permittedArrowDirections]);

        [v6 addObject:v11];
        v10 = [v8 presentedViewController];

        v8 = v11;
      }

      v8 = v10;
    }

    while (v10);
  }

  if ([v6 count])
  {
    v15 = [v6 count];
    v16 = v15 - 1;
    if (v15 != 1)
    {
      v17 = 0;
      do
      {
        v18 = v17;
        v19 = [v6 objectAtIndex:v16];
        v17 = [v19 viewController];

        v20 = [v17 presentingViewController];
        [v20 dismissViewControllerAnimated:0 completion:0];

        --v16;
      }

      while (v16);
    }

    [(CalendarsViewControllerPreservedState *)v3 setPresentedViewControllersState:v6];
  }

  return v3;
}

- (void)restorePreservedState:(id)a3
{
  v4 = a3;
  v5 = [v4 displayedEditor];
  v6 = [(CUIKCalendarModel *)self->_model selectedCalendarsIgnoringFocus];
  [(EKCalendarChooser *)self->_chooser setSelectedCalendars:v6];

  chooser = self->_chooser;
  v8 = [v4 centeredCalendar];
  [(EKCalendarChooser *)chooser centerOnCalendar:v8];

  v9 = self->_chooser;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100104620;
  v12[3] = &unk_10020F2E0;
  v12[4] = self;
  v13 = v4;
  v14 = v5;
  v10 = v5;
  v11 = v4;
  [(EKCalendarChooser *)v9 redisplayEditor:v10 completion:v12];
}

- (void)restorePresentedViewControllers:(id)a3 startIndex:(unint64_t)a4 presenter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 presentedViewControllersState];
  if ([v10 count] > a4)
  {
    v11 = [v10 objectAtIndex:a4];
    v12 = [v11 viewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 viewControllers], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayedEditor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, v15))
    {
      [(CalendarsViewController *)self restorePresentedViewControllers:v8 startIndex:a4 + 1 presenter:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v16 = [v11 sourceView];

        if (v16)
        {
          v17 = [v11 sourceView];
          v18 = [v12 popoverPresentationController];
          [v18 setSourceView:v17];

          v19 = [v11 arrowDirection];
          v20 = [v12 popoverPresentationController];
          [v20 setPermittedArrowDirections:v19];
        }

        else
        {
          v25 = [v8 displayedEditor];
          v21 = [v25 navigationController];
          v22 = [v21 view];
          v23 = [v12 popoverPresentationController];
          [v23 setSourceView:v22];
        }
      }

      else
      {
        [v12 setModalPresentationStyle:3];
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001048F4;
      v26[3] = &unk_10020FD10;
      v27 = v12;
      v28 = v9;
      v29 = self;
      v30 = v8;
      v31 = a4;
      v24 = objc_retainBlock(v26);
      (v24[2])();
    }
  }
}

- (id)backgroundColor
{
  if (CalSplitViewEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor tableViewBackgroundColorOpaque];
  }

  return v2;
}

- (BOOL)canDismiss
{
  v2 = [(CalendarsViewController *)self embeddedNavigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 count] == 1;

  return v4;
}

@end