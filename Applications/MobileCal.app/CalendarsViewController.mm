@interface CalendarsViewController
- (BOOL)canDismiss;
- (BOOL)isModalInPresentation;
- (CalendarsViewController)initWithModel:(id)model destination:(unint64_t)destination;
- (id)backgroundColor;
- (id)preservedState;
- (id)refreshCalendarsButtonPressed;
- (unint64_t)supportedInterfaceOrientations;
- (void)_identityChanged:(id)changed;
- (void)_saveFilterAndNotifyWithReason:(id)reason;
- (void)_updateChooserForFocusMode;
- (void)calendarChooserCollapsedSectionIdentifiersDidChange:(id)change;
- (void)calendarChooserDidFinish:(id)finish;
- (void)calendarChooserSelectedIdentityDidChange:(id)change;
- (void)calendarChooserSelectionDidChange:(id)change;
- (void)calendarChooserUpdatedToolbarItems;
- (void)dealloc;
- (void)focusModeConfigurationChanged:(id)changed;
- (void)loadView;
- (void)restorePresentedViewControllers:(id)controllers startIndex:(unint64_t)index presenter:(id)presenter;
- (void)restorePreservedState:(id)state;
- (void)selectedCalendarsChanged:(id)changed;
- (void)showAddSubscribedCalendarWithURL:(id)l;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CalendarsViewController

- (CalendarsViewController)initWithModel:(id)model destination:(unint64_t)destination
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = CalendarsViewController;
  v8 = [(CalendarsViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, model);
    v9->_destination = destination;
    if (destination == 2)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:v9 selector:"_identityChanged:" name:CUIKCalendarModelIdentityChangedNotification object:modelCopy];
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
  view = [(CalendarsViewController *)self view];
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
  backgroundColor = [(CalendarsViewController *)self backgroundColor];
  view = [(CalendarsViewController *)self view];
  [view setBackgroundColor:backgroundColor];
  mainView = [view mainView];
  [mainView setBackgroundColor:backgroundColor];
}

- (void)loadView
{
  model = [(CalendarsViewController *)self model];
  v3 = [EKCalendarChooser alloc];
  if (self->_destination == 2)
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  eventStore = [model eventStore];
  sourceForSelectedIdentity = [model sourceForSelectedIdentity];
  *(&v18 + 1) = 257;
  LOBYTE(v18) = self->_destination != 2;
  v7 = [v3 initWithSelectionStyle:1 displayStyle:v4 entityType:0 forEvent:0 eventStore:eventStore limitedToSource:sourceForSelectedIdentity showIdentityChooser:v18 showDelegateSetupCell:? showAccountStatus:?];

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
    selectedCalendarsIgnoringFocus = [model selectedCalendarsIgnoringFocus];
    [v7 setSelectedCalendars:selectedCalendarsIgnoringFocus];

    [v7 setDelegate:self];
    collapsedSectionIdentifiers = [model collapsedSectionIdentifiers];
    [v7 setCollapsedSectionIdentifiers:collapsedSectionIdentifiers];

    [v7 setShowsDoneButton:self->_destination == 0];
    [v7 setAllowsPullToRefresh:1];
    [v7 setShowsDeclinedEventsSetting:{objc_msgSend(model, "invitationBearingStoresExistForEvents")}];
    [v7 setShowsCompletedRemindersSetting:1];
    [v7 setShowDetailAccessories:1];
    objc_storeStrong(&self->_chooser, v7);
    [(CalendarsViewController *)self _updateChooserForFocusMode];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"selectedCalendarsChanged:" name:CUIKCalendarModelFilterChangedNotification object:model];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"focusModeConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:model];

    [CalDistributedNotificationCenter addObserver:self selector:"blockedUserChanged" name:CMFSyncAgentBlockListUpdated];
  }

  v15 = [(RootView *)[CalendarsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  chooser = self->_embeddedNavigationController;
  if (!chooser)
  {
    chooser = self->_chooser;
  }

  view = [chooser view];
  [(RootView *)v15 setMainView:view];
  [(CalendarsViewController *)self setView:v15];
}

- (void)_updateChooserForFocusMode
{
  unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self->_model unselectedCalendarsForFocusMode];
  v4 = unselectedCalendarsForFocusMode != 0;

  chooser = self->_chooser;

  [(EKCalendarChooser *)chooser setDisableCalendarsUnselectedByFocus:v4];
}

- (void)calendarChooserUpdatedToolbarItems
{
  if (!self->_embeddedNavigationController)
  {
    toolbarItems = [(EKCalendarChooser *)self->_chooser toolbarItems];
    [(CalendarsViewController *)self setToolbarItems:toolbarItems animated:1];
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

  view = [embeddedNavigationController view];
  backgroundColor = [(CalendarsViewController *)self backgroundColor];
  [view setBackgroundColor:backgroundColor];
}

- (void)viewDidAppear:(BOOL)appear
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
  embeddedNavigationController = [(CalendarsViewController *)self embeddedNavigationController];
  presentedViewController = [embeddedNavigationController presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [presentedViewController viewControllers];
    firstObject = [viewControllers firstObject];
    isModalInPresentation = [firstObject isModalInPresentation];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CalendarsViewController;
    isModalInPresentation = [(CalendarsViewController *)&v9 isModalInPresentation];
  }

  return isModalInPresentation;
}

- (void)selectedCalendarsChanged:(id)changed
{
  model = [(CalendarsViewController *)self model];
  selectedCalendarsIgnoringFocus = [model selectedCalendarsIgnoringFocus];
  [(EKCalendarChooser *)self->_chooser setSelectedCalendars:selectedCalendarsIgnoringFocus];
}

- (void)focusModeConfigurationChanged:(id)changed
{
  [(CalendarsViewController *)self _updateChooserForFocusMode];
  chooser = self->_chooser;

  [(EKCalendarChooser *)chooser focusModeConfigurationChanged];
}

- (void)_identityChanged:(id)changed
{
  chooser = self->_chooser;
  model = [(CalendarsViewController *)self model];
  sourceForSelectedIdentity = [model sourceForSelectedIdentity];
  [(EKCalendarChooser *)chooser identityChanged:sourceForSelectedIdentity];
}

- (void)calendarChooserSelectionDidChange:(id)change
{
  model = self->_model;
  changeCopy = change;
  sourceForSelectedIdentity = [(CUIKCalendarModel *)model sourceForSelectedIdentity];
  selectedCalendars = [changeCopy selectedCalendars];

  [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:sourceForSelectedIdentity selectedCalendars:selectedCalendars];

  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser selection changed"];
}

- (void)calendarChooserSelectedIdentityDidChange:(id)change
{
  model = self->_model;
  sourceForSelectedIdentity = [change sourceForSelectedIdentity];
  [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:sourceForSelectedIdentity selectedCalendars:0];

  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser selected identity changed"];
}

- (void)calendarChooserCollapsedSectionIdentifiersDidChange:(id)change
{
  collapsedSectionIdentifiers = [change collapsedSectionIdentifiers];
  [(CUIKCalendarModel *)self->_model setCollapsedSectionIdentifiers:collapsedSectionIdentifiers];
}

- (void)_saveFilterAndNotifyWithReason:(id)reason
{
  model = self->_model;
  reasonCopy = reason;
  selectedCalendarsIgnoringFocus = [(CUIKCalendarModel *)model selectedCalendarsIgnoringFocus];
  [(CUIKCalendarModel *)self->_model setSelectedCalendarsAndRequestPreferenceSave:selectedCalendarsIgnoringFocus reason:reasonCopy];
}

- (id)refreshCalendarsButtonPressed
{
  CalAnalyticsSendEvent();
  v3 = [EKAccountRefresher alloc];
  model = [(CalendarsViewController *)self model];
  eventStore = [model eventStore];
  v6 = [v3 initWithEventStore:eventStore];

  [v6 refresh];

  return v6;
}

- (void)calendarChooserDidFinish:(id)finish
{
  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendar chooser dismissed"];
  embeddedNavigationController = [(CalendarsViewController *)self embeddedNavigationController];
  v5 = [embeddedNavigationController popViewControllerAnimated:0];

  doneBlock = [(CalendarsViewController *)self doneBlock];

  if (doneBlock)
  {
    doneBlock2 = [(CalendarsViewController *)self doneBlock];
    (doneBlock2)[2](doneBlock2, self, 0);

    [(CalendarsViewController *)self setDoneBlock:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CalendarsViewController *)self _saveFilterAndNotifyWithReason:@"calendarsviewcontroller dismissed"];
  v5.receiver = self;
  v5.super_class = CalendarsViewController;
  [(CalendarsViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)showAddSubscribedCalendarWithURL:(id)l
{
  lCopy = l;
  chooser = self->_chooser;
  v7 = lCopy;
  if (chooser)
  {
    [(EKCalendarChooser *)chooser showAddSubscribedCalendarWithURL:?];
  }

  else
  {
    objc_storeStrong(&self->_urlToOpen, l);
  }
}

- (id)preservedState
{
  v3 = objc_alloc_init(CalendarsViewControllerPreservedState);
  centeredCalendar = [(EKCalendarChooser *)self->_chooser centeredCalendar];
  [(CalendarsViewControllerPreservedState *)v3 setCenteredCalendar:centeredCalendar];

  displayedEditor = [(EKCalendarChooser *)self->_chooser displayedEditor];
  [(CalendarsViewControllerPreservedState *)v3 setDisplayedEditor:displayedEditor];

  v6 = +[NSMutableArray array];
  presentedViewController = [(CalendarsViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v8 = presentedViewController;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"MFMessageComposeViewController"), (objc_opt_isKindOfClass()) || (NSClassFromString(@"_UIContextMenuActionsOnlyViewController"), (objc_opt_isKindOfClass()) || (NSClassFromString(@"DDParsecCollectionViewController"), (objc_opt_isKindOfClass()))
      {
        presentingViewController = [v8 presentingViewController];
        [presentingViewController dismissViewControllerAnimated:0 completion:0];

        presentedViewController2 = [v8 presentedViewController];
      }

      else
      {
        v11 = objc_alloc_init(PresentedViewControllerState);
        [(PresentedViewControllerState *)v11 setViewController:v8];
        popoverPresentationController = [v8 popoverPresentationController];
        sourceView = [popoverPresentationController sourceView];
        [(PresentedViewControllerState *)v11 setSourceView:sourceView];

        popoverPresentationController2 = [v8 popoverPresentationController];
        -[PresentedViewControllerState setArrowDirection:](v11, "setArrowDirection:", [popoverPresentationController2 permittedArrowDirections]);

        [v6 addObject:v11];
        presentedViewController2 = [v8 presentedViewController];

        v8 = v11;
      }

      v8 = presentedViewController2;
    }

    while (presentedViewController2);
  }

  if ([v6 count])
  {
    v15 = [v6 count];
    v16 = v15 - 1;
    if (v15 != 1)
    {
      viewController = 0;
      do
      {
        v18 = viewController;
        v19 = [v6 objectAtIndex:v16];
        viewController = [v19 viewController];

        presentingViewController2 = [viewController presentingViewController];
        [presentingViewController2 dismissViewControllerAnimated:0 completion:0];

        --v16;
      }

      while (v16);
    }

    [(CalendarsViewControllerPreservedState *)v3 setPresentedViewControllersState:v6];
  }

  return v3;
}

- (void)restorePreservedState:(id)state
{
  stateCopy = state;
  displayedEditor = [stateCopy displayedEditor];
  selectedCalendarsIgnoringFocus = [(CUIKCalendarModel *)self->_model selectedCalendarsIgnoringFocus];
  [(EKCalendarChooser *)self->_chooser setSelectedCalendars:selectedCalendarsIgnoringFocus];

  chooser = self->_chooser;
  centeredCalendar = [stateCopy centeredCalendar];
  [(EKCalendarChooser *)chooser centerOnCalendar:centeredCalendar];

  v9 = self->_chooser;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100104620;
  v12[3] = &unk_10020F2E0;
  v12[4] = self;
  v13 = stateCopy;
  v14 = displayedEditor;
  v10 = displayedEditor;
  v11 = stateCopy;
  [(EKCalendarChooser *)v9 redisplayEditor:v10 completion:v12];
}

- (void)restorePresentedViewControllers:(id)controllers startIndex:(unint64_t)index presenter:(id)presenter
{
  controllersCopy = controllers;
  presenterCopy = presenter;
  presentedViewControllersState = [controllersCopy presentedViewControllersState];
  if ([presentedViewControllersState count] > index)
  {
    v11 = [presentedViewControllersState objectAtIndex:index];
    viewController = [v11 viewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewController viewControllers], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(controllersCopy, "displayedEditor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, v15))
    {
      [(CalendarsViewController *)self restorePresentedViewControllers:controllersCopy startIndex:index + 1 presenter:presenterCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        sourceView = [v11 sourceView];

        if (sourceView)
        {
          sourceView2 = [v11 sourceView];
          popoverPresentationController = [viewController popoverPresentationController];
          [popoverPresentationController setSourceView:sourceView2];

          arrowDirection = [v11 arrowDirection];
          popoverPresentationController2 = [viewController popoverPresentationController];
          [popoverPresentationController2 setPermittedArrowDirections:arrowDirection];
        }

        else
        {
          displayedEditor = [controllersCopy displayedEditor];
          navigationController = [displayedEditor navigationController];
          view = [navigationController view];
          popoverPresentationController3 = [viewController popoverPresentationController];
          [popoverPresentationController3 setSourceView:view];
        }
      }

      else
      {
        [viewController setModalPresentationStyle:3];
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001048F4;
      v26[3] = &unk_10020FD10;
      v27 = viewController;
      v28 = presenterCopy;
      selfCopy = self;
      v30 = controllersCopy;
      indexCopy = index;
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
  embeddedNavigationController = [(CalendarsViewController *)self embeddedNavigationController];
  viewControllers = [embeddedNavigationController viewControllers];
  v4 = [viewControllers count] == 1;

  return v4;
}

@end