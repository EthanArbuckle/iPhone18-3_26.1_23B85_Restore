@interface InboxNewSectionViewController
- (BOOL)_canEnableRefresh;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)inPadSidebar;
- (BOOL)isFocusBannerSection:(int64_t)section;
- (BOOL)isIdentityChooserSection:(int64_t)section;
- (BOOL)shouldShowFocusBanner;
- (BOOL)shouldShowIdentityChooser;
- (CGSize)preferredContentSize;
- (InboxNewSectionViewController)initWithModel:(id)model;
- (InboxNewSectionViewControllerDelegate)inboxNewSectionDelegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_eventForIndexPath:(id)path;
- (id)_groupForIndexPath:(id)path;
- (id)_groupForSection:(int64_t)section;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)noContentStringForInboxTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)firstGroupSection;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_delegateShouldClose;
- (void)_focusConfigurationChanged:(id)changed;
- (void)_refreshIfNeeded;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_updateGroupVisibility;
- (void)accountRefreshFinished:(id)finished;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)focusBannerTableViewCellToggled:(id)toggled;
- (void)inboxTableViewGroupController:(id)controller addedRows:(id)rows removedRows:(id)removedRows updatedRows:(id)updatedRows;
- (void)inboxTableViewGroupController:(id)controller inspectEvent:(id)event;
- (void)inboxTableViewGroupController:(id)controller requestsReloadOfRow:(int64_t)row;
- (void)inboxTableViewGroupController:(id)controller viewCommentsForEvent:(id)event;
- (void)inboxTableViewGroupController:(id)controller viewProposedTimeForAttendee:(id)attendee onEvent:(id)event;
- (void)inboxWillDismiss;
- (void)loadView;
- (void)refresh:(id)refresh;
- (void)setViewIsVisible:(BOOL)visible;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation InboxNewSectionViewController

- (InboxNewSectionViewController)initWithModel:(id)model
{
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = InboxNewSectionViewController;
  v6 = [(InboxNewSectionViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    +[CalendarMessageCell defaultRowHeight];
    v7->_minimumContentHeight = v8 * 4.5;
    v9 = [(InboxNotificationsGroupController *)[InboxInvitationsGroupController alloc] initWithModel:v7->_model delegate:v7];
    v23[0] = v9;
    v10 = [(InboxNotificationsGroupController *)[InboxInviteeResponsesGroupController alloc] initWithModel:v7->_model delegate:v7];
    v23[1] = v10;
    v11 = [(InboxNotificationsGroupController *)[InboxSharedCalendarGroupController alloc] initWithModel:v7->_model delegate:v7];
    v23[2] = v11;
    v12 = [(InboxNotificationsGroupController *)[InboxSuggestionsGroupController alloc] initWithModel:v7->_model delegate:v7];
    v23[3] = v12;
    v13 = [NSArray arrayWithObjects:v23 count:4];
    allGroups = v7->_allGroups;
    v7->_allGroups = v13;

    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v22 count:2];
    objc_initWeak(&location, v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100137754;
    v18[3] = &unk_10020E9E0;
    objc_copyWeak(&v19, &location);
    v16 = [(InboxNewSectionViewController *)v7 registerForTraitChanges:v15 withHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)_refreshIfNeeded
{
  self->_isRefreshing = 1;
  visibleGroups = [(InboxNewSectionViewController *)self visibleGroups];
  v4 = [visibleGroups count];

  [(InboxNewSectionViewController *)self _updateGroupVisibility];
  visibleGroups2 = [(InboxNewSectionViewController *)self visibleGroups];
  v6 = [visibleGroups2 count];

  tableView = [(InboxNewSectionViewController *)self tableView];
  [tableView reloadData];
  if (v6)
  {
    [tableView setShowNoContentString:0];
  }

  else
  {
    if ([(InboxNewSectionViewController *)self shouldShowIdentityChooser])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(InboxNewSectionViewController *)self shouldShowFocusBanner]^ 1;
    }

    [tableView setShowNoContentString:v9];
    if (v4)
    {
      [(InboxNewSectionViewController *)self _delegateShouldClose];
      goto LABEL_10;
    }
  }

  view = [(InboxNewSectionViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    [(InboxNewSectionViewController *)self preferredContentSize];
    [(InboxNewSectionViewController *)self setPreferredContentSize:?];
  }

LABEL_10:
  self->_isRefreshing = 0;
}

- (void)_updateGroupVisibility
{
  v3 = objc_opt_new();
  allGroups = [(InboxNewSectionViewController *)self allGroups];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001379C8;
  v7[3] = &unk_1002120D0;
  v8 = v3;
  v5 = v3;
  [allGroups enumerateObjectsUsingBlock:v7];

  v6 = [NSArray arrayWithArray:v5];
  [(InboxNewSectionViewController *)self setVisibleGroups:v6];
}

- (void)setViewIsVisible:(BOOL)visible
{
  self->_viewIsVisible = visible;
  allGroups = [(InboxNewSectionViewController *)self allGroups];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100137ABC;
  v5[3] = &unk_1002120F0;
  visibleCopy = visible;
  [allGroups enumerateObjectsUsingBlock:v5];
}

- (void)inboxWillDismiss
{
  +[CalendarMessageCell emptyAuthorCache];
  allGroups = self->_allGroups;

  [(NSArray *)allGroups enumerateObjectsUsingBlock:&stru_100212130];
}

- (void)dealloc
{
  view = [(InboxNewSectionViewController *)self view];
  [view removeInteraction:self->_contextMenuInteraction];

  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = 0;

  v5.receiver = self;
  v5.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v5 dealloc];
}

- (BOOL)inPadSidebar
{
  v3 = CalSystemSolariumEnabled();
  if (v3)
  {
    LOBYTE(v3) = [(InboxNewSectionViewController *)self destination]== 2;
  }

  return v3;
}

- (void)loadView
{
  inPadSidebar = [(InboxNewSectionViewController *)self inPadSidebar];
  if (inPadSidebar)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v6 = [[InboxTableView alloc] initWithFrame:v4 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(InboxTableView *)v6 setListViewDelegate:self];
  [(InboxTableView *)v6 setPrefetchDataSource:self];
  if (inPadSidebar)
  {
    v5 = +[UIColor clearColor];
    [(InboxTableView *)v6 setSeparatorColor:v5];
  }

  [(InboxNewSectionViewController *)self setTableView:v6];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v6 viewDidLoad];
  v3 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = v3;

  view = [(InboxNewSectionViewController *)self view];
  [view addInteraction:self->_contextMenuInteraction];
}

- (BOOL)_canEnableRefresh
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  sources = [eventStore sources];

  v4 = [sources countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(sources);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 sourceType] && objc_msgSend(v8, "sourceType") != 5)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v9 = [v8 calendarsForEntityType:{0, 0}];
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v17;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if ([*(*(&v16 + 1) + 8 * j) allowEvents])
                {

                  v14 = 1;
                  goto LABEL_22;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [sources countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v5);
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v13 viewWillAppear:?];
  refreshControl = [(InboxNewSectionViewController *)self refreshControl];
  if (!refreshControl)
  {
    if (![(InboxNewSectionViewController *)self _canEnableRefresh])
    {
      goto LABEL_5;
    }

    refreshControl = objc_alloc_init(UIRefreshControl);
    [refreshControl addTarget:self action:"_pulledToRefresh:" forControlEvents:4096];
    tableView = [(InboxNewSectionViewController *)self tableView];
    [tableView _setRefreshControl:refreshControl];

    [(InboxNewSectionViewController *)self setRefreshControl:refreshControl];
  }

LABEL_5:
  navigationController = [(InboxNewSectionViewController *)self navigationController];
  view = [navigationController view];
  window = [view window];

  if (window)
  {
    EKUIPushFallbackSizingContextWithViewHierarchy();
    [(InboxNewSectionViewController *)self _refreshIfNeeded];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    [(InboxNewSectionViewController *)self _refreshIfNeeded];
  }

  allGroups = self->_allGroups;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100138090;
  v11[3] = &unk_100212150;
  appearCopy = appear;
  [(NSArray *)allGroups enumerateObjectsUsingBlock:v11];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v7 viewDidAppear:appear];
  [(InboxNewSectionViewController *)self setViewIsVisible:1];
  if (self->_destination == 2)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->_model];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_focusConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:self->_model];

  if (+[ApplicationTester testingSessionStarted])
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"InboxNewSectionViewController_ViewDidAppearNotification" object:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v7 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  selectionTimer = self->_selectionTimer;
  if (selectionTimer)
  {
    [(NSTimer *)selectionTimer invalidate];
    v6 = self->_selectionTimer;
    self->_selectionTimer = 0;
  }

  [(InboxNewSectionViewController *)self setViewIsVisible:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v4 viewDidDisappear:disappear];
  [(NSArray *)self->_allGroups enumerateObjectsUsingBlock:&stru_100212170];
}

- (CGSize)preferredContentSize
{
  tableView = [(InboxNewSectionViewController *)self tableView];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    presentedViewController = [(InboxNewSectionViewController *)self presentedViewController];
    isBeingPresented = [presentedViewController isBeingPresented];
  }

  else
  {
    isBeingPresented = 0;
  }

  if (!self->_isRefreshing && (isBeingPresented & 1) == 0)
  {
    [(InboxNewSectionViewController *)self _refreshIfNeeded];
  }

  tableView2 = [(InboxNewSectionViewController *)self tableView];
  EKUIContainedControllerIdealWidth();
  [tableView2 sizeThatFits:?];
  minimumContentHeight = v7;

  if (self->_minimumContentHeight >= minimumContentHeight)
  {
    minimumContentHeight = self->_minimumContentHeight;
  }

  self->_minimumContentHeight = minimumContentHeight;
  EKUIWidthForWindowSizeParadigm();
  v10 = v9;
  EKUIGoldenRatioPhi();
  v12 = minimumContentHeight / v11;
  EKUIContainedControllerIdealWidth();
  if (v12 < v13)
  {
    v13 = v12;
  }

  if (v10 >= v13)
  {
    v13 = v10;
  }

  v14 = minimumContentHeight;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  changedCopy = changed;
  if (self->_currentSelectedEvent && !self->_selectionTimer)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100138478;
    v7[3] = &unk_100212198;
    v7[4] = self;
    v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:0.15];
    selectionTimer = self->_selectionTimer;
    self->_selectionTimer = v5;
  }
}

- (void)_focusConfigurationChanged:(id)changed
{
  tableView = [(InboxNewSectionViewController *)self tableView];
  [tableView reloadData];
}

- (BOOL)isFocusBannerSection:(int64_t)section
{
  shouldShowFocusBanner = [(InboxNewSectionViewController *)self shouldShowFocusBanner];
  if (shouldShowFocusBanner)
  {
    LOBYTE(shouldShowFocusBanner) = [(InboxNewSectionViewController *)self focusBannerSection]== section;
  }

  return shouldShowFocusBanner;
}

- (BOOL)isIdentityChooserSection:(int64_t)section
{
  shouldShowIdentityChooser = [(InboxNewSectionViewController *)self shouldShowIdentityChooser];
  if (shouldShowIdentityChooser)
  {
    LOBYTE(shouldShowIdentityChooser) = [(InboxNewSectionViewController *)self identityChooserSection]== section;
  }

  return shouldShowIdentityChooser;
}

- (int64_t)firstGroupSection
{
  shouldShowFocusBanner = [(InboxNewSectionViewController *)self shouldShowFocusBanner];
  shouldShowIdentityChooser = [(InboxNewSectionViewController *)self shouldShowIdentityChooser];
  v5 = 1;
  if (shouldShowFocusBanner)
  {
    v5 = 2;
  }

  if (shouldShowIdentityChooser)
  {
    return v5;
  }

  else
  {
    return shouldShowFocusBanner;
  }
}

- (BOOL)shouldShowIdentityChooser
{
  containsDelegateSources = [(CUIKCalendarModel *)self->_model containsDelegateSources];
  if (containsDelegateSources)
  {
    LOBYTE(containsDelegateSources) = self->_destination != 2;
  }

  return containsDelegateSources;
}

- (BOOL)shouldShowFocusBanner
{
  focusFilterMode = [(CUIKCalendarModel *)self->_model focusFilterMode];
  if (focusFilterMode)
  {
    if (CalSystemSolariumEnabled())
    {
      LOBYTE(focusFilterMode) = [(InboxNewSectionViewController *)self destination]!= 2;
    }

    else
    {
      LOBYTE(focusFilterMode) = 1;
    }
  }

  return focusFilterMode;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  visibleGroups = [(InboxNewSectionViewController *)self visibleGroups];
  v5 = [visibleGroups count];

  v6 = &v5[[(InboxNewSectionViewController *)self shouldShowIdentityChooser]];
  return &v6[[(InboxNewSectionViewController *)self shouldShowFocusBanner]];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(InboxNewSectionViewController *)self isIdentityChooserSection:section])
  {
    sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
    numberOfRows = [sortedEnabledDelegates count] + 1;
LABEL_6:

    return numberOfRows;
  }

  if (![(InboxNewSectionViewController *)self isFocusBannerSection:section])
  {
    sortedEnabledDelegates = [(InboxNewSectionViewController *)self _groupForSection:section];
    numberOfRows = [sortedEnabledDelegates numberOfRows];
    goto LABEL_6;
  }

  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [pathCopy section]))
  {
    v8 = objc_opt_new();
    if ([pathCopy row])
    {
      sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v10 = [sortedEnabledDelegates objectAtIndex:{objc_msgSend(pathCopy, "row") - 1}];

      v11 = CUIKDisplayedTitleForSource();
      sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      v13 = [v10 isEqual:sourceForSelectedIdentity];
    }

    else
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v20 localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];

      sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      v10 = 0;
      v13 = sourceForSelectedIdentity == 0;
    }

    v21 = [(CUIKCalendarModel *)self->_model eventNotificationReferencesForIdentity:v10];
    v22 = [v21 count];

    titleLabel = [(EKUIFocusBannerTableViewCell *)v8 titleLabel];
    [titleLabel setText:v11];

    if (v13)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    [(EKUIFocusBannerTableViewCell *)v8 setAccessoryType:v24];
    titleLabel2 = [(EKUIFocusBannerTableViewCell *)v8 titleLabel];
    [titleLabel2 setEnabled:1];

    if (v22)
    {
      detailLabel2 = CUIKLocalizedStringForInteger();
      detailLabel = [(EKUIFocusBannerTableViewCell *)v8 detailLabel];
      [detailLabel setText:detailLabel2];
    }

    else
    {
      detailLabel2 = [(EKUIFocusBannerTableViewCell *)v8 detailLabel];
      [detailLabel2 setText:0];
    }
  }

  else if (-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    if (!self->_focusBannerCell)
    {
      v14 = [[EKUIFocusBannerTableViewCell alloc] initWithReuseIdentifier:@"FocusBanner"];
      focusBannerCell = self->_focusBannerCell;
      self->_focusBannerCell = v14;

      [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setSelectionStyle:0];
      [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setDelegate:self];
    }

    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setOn:[(CUIKCalendarModel *)self->_model focusFilterMode]== 1];
    if (self->_destination == 2)
    {
      +[UIBackgroundConfiguration listSidebarCellConfiguration];
    }

    else
    {
      +[UIBackgroundConfiguration listGroupedCellConfiguration];
    }
    v28 = ;
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setBackgroundConfiguration:v28];

    v8 = self->_focusBannerCell;
  }

  else
  {
    v16 = [(InboxNewSectionViewController *)self _groupForIndexPath:pathCopy];
    v17 = [pathCopy row];
    if ([viewCopy isTracking] & 1) != 0 || (objc_msgSend(viewCopy, "isScrollAnimating") & 1) != 0 || (objc_msgSend(viewCopy, "isDecelerating"))
    {
      isRunningTest = 1;
    }

    else
    {
      isRunningTest = [UIApp isRunningTest];
    }

    v8 = [v16 cellForRow:v17 allowAsyncLoading:isRunningTest];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      inPadSidebar = [(InboxNewSectionViewController *)self inPadSidebar];
      [(EKUIFocusBannerTableViewCell *)v8 setDrawsOwnSeparator:inPadSidebar];
      [(EKUIFocusBannerTableViewCell *)v8 setInPadSidebar:inPadSidebar];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(EKUIFocusBannerTableViewCell *)v8 setDestination:[(InboxNewSectionViewController *)self destination]];
  }

  return v8;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (!-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v10 section]) && !-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(v10, "section")))
        {
          v11 = [(InboxNewSectionViewController *)self _groupForIndexPath:v10];
          [v11 prefetchRow:{objc_msgSend(v10, "row")}];
        }
      }

      v7 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [pathCopy section]) || -[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(pathCopy, "section")))
  {
    v6 = UITableViewAutomaticDimension;
  }

  else
  {
    v7 = [(InboxNewSectionViewController *)self _groupForIndexPath:pathCopy];
    [v7 estimatedHeightForRow:{objc_msgSend(pathCopy, "row")}];
    v6 = v8;
  }

  return v6;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [pathCopy section]))
  {
    v6 = pathCopy;
  }

  else if (-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(InboxNewSectionViewController *)self _groupForIndexPath:pathCopy];
    if ([v7 canSelectRow:{objc_msgSend(pathCopy, "row")}])
    {
      v8 = pathCopy;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index path selected: [%@]", &v11, 0xCu);
  }

  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [pathCopy section]))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if ([pathCopy row])
    {
      sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v10 = [sortedEnabledDelegates objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row") - 1}];
    }

    else
    {
      v10 = 0;
    }

    [(CUIKCalendarModel *)self->_model updateSourceForSelectedIdentity:v10 selectedCalendars:0];
    goto LABEL_10;
  }

  if (!-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    v10 = [(InboxNewSectionViewController *)self _groupForIndexPath:pathCopy];
    [v10 rowSelected:{objc_msgSend(pathCopy, "row")}];
LABEL_10:
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(InboxNewSectionViewController *)self isIdentityChooserSection:section])
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    titleForHeader = [v6 localizedStringForKey:@"View Notifications:" value:&stru_1002133B8 table:0];
  }

  else
  {
    if ([(InboxNewSectionViewController *)self isFocusBannerSection:section])
    {
      goto LABEL_7;
    }

    v6 = [(InboxNewSectionViewController *)self _groupForSection:section];
    titleForHeader = [v6 titleForHeader];
  }

  v8 = titleForHeader;

  if (v8)
  {
    v9 = +[UIListContentConfiguration headerConfiguration];
    [v9 setText:v8];
    v10 = [[UIListContentView alloc] initWithConfiguration:v9];

    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  view = [(InboxNewSectionViewController *)self view];
  [interactionCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(InboxNewSectionViewController *)self view];
  tableView = [(InboxNewSectionViewController *)self tableView];
  [view2 convertPoint:tableView toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  tableView2 = [(InboxNewSectionViewController *)self tableView];
  v18 = [tableView2 indexPathForRowAtPoint:{v14, v16}];

  if (v18)
  {
    tableView3 = [(InboxNewSectionViewController *)self tableView];
    [tableView3 rectForRowAtIndexPath:v18];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [(InboxNewSectionViewController *)self _eventForIndexPath:v18];
    if (v28)
    {
      objc_storeStrong(&self->_indexPathForRowWithContextMenu, v18);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1001393EC;
      v38[3] = &unk_10020EBF0;
      v39 = v28;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100139458;
      v31[3] = &unk_1002121E8;
      v31[4] = self;
      v32 = v18;
      v33 = v39;
      v34 = v21;
      v35 = v23;
      v36 = v25;
      v37 = v27;
      v29 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v38 actionProvider:v31];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  targetedPreview = self->_targetedPreview;
  self->_targetedPreview = 0;
  interactionCopy = interaction;

  tableView = [(InboxNewSectionViewController *)self tableView];
  [interactionCopy locationInView:tableView];
  v10 = v9;
  v12 = v11;

  tableView2 = [(InboxNewSectionViewController *)self tableView];
  v14 = [tableView2 indexPathForRowAtPoint:{v10, v12}];

  if (v14)
  {
    tableView3 = [(InboxNewSectionViewController *)self tableView];
    v16 = [tableView3 cellForRowAtIndexPath:v14];

    v17 = [[UITargetedPreview alloc] initWithView:v16];
    v18 = self->_targetedPreview;
    self->_targetedPreview = v17;
  }

  v19 = self->_targetedPreview;
  v20 = v19;

  return v19;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  targetedPreview = self->_targetedPreview;
  v7 = targetedPreview;
  v8 = self->_targetedPreview;
  self->_targetedPreview = 0;

  return targetedPreview;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previewViewController2 = [animatorCopy previewViewController];
  }

  else
  {
    previewViewController2 = 0;
  }

  event = [previewViewController2 event];
  [previewViewController2 willCommitPreview];
  if (event)
  {
    v10 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = event;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that the following event should be inspected: [%@]", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100139974;
    v11[3] = &unk_10020EC68;
    v11[4] = self;
    v12 = event;
    [animatorCopy addAnimations:v11];
  }
}

- (id)noContentStringForInboxTableView:(id)view
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"No Invitations" value:&stru_1002133B8 table:0];

  return v4;
}

- (void)inboxTableViewGroupController:(id)controller addedRows:(id)rows removedRows:(id)removedRows updatedRows:(id)updatedRows
{
  controllerCopy = controller;
  rowsCopy = rows;
  removedRowsCopy = removedRows;
  updatedRowsCopy = updatedRows;
  if (self->_viewIsVisible)
  {
    if (self->_reloadsSuspendedUntilRefreshCompletes)
    {
      self->_needReloadWhenRefreshCompletes = 1;
    }

    else
    {
      visibleGroups = [(InboxNewSectionViewController *)self visibleGroups];
      [(InboxNewSectionViewController *)self _updateGroupVisibility];
      v48 = visibleGroups;
      if (controllerCopy)
      {
        v15 = [visibleGroups indexOfObject:controllerCopy];
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v49 = rowsCopy;
      v16 = [rowsCopy count];
      v17 = [removedRowsCopy count];
      v18 = [updatedRowsCopy count];
      firstGroupSection = [(InboxNewSectionViewController *)self firstGroupSection];
      if (v17 && (-[InboxNewSectionViewController visibleGroups](self, "visibleGroups"), v47 = v17, v20 = v15, v21 = controllerCopy, v22 = updatedRowsCopy, v23 = v16, v24 = removedRowsCopy, v25 = v18, v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 count], v26, v18 = v25, removedRowsCopy = v24, v16 = v23, updatedRowsCopy = v22, controllerCopy = v21, v15 = v20, v17 = v47, !v27))
      {
        [(InboxNewSectionViewController *)self _delegateShouldClose];
      }

      else
      {
        v28 = firstGroupSection + v15;
        if (([controllerCopy hasRows] & 1) != 0 || v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          tableView = [(InboxNewSectionViewController *)self tableView];
          v32 = tableView;
          if (v16 || v17 || v18)
          {
            [tableView beginUpdates];

            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_10013A000;
            v56[3] = &unk_100212210;
            v57 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v49, "count")}];
            v58 = v28;
            v32 = v57;
            [v49 enumerateIndexesUsingBlock:v56];
            tableView2 = [(InboxNewSectionViewController *)self tableView];
            [tableView2 insertRowsAtIndexPaths:v32 withRowAnimation:6];

            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_10013A064;
            v53[3] = &unk_100212210;
            v54 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(removedRowsCopy, "count")}];
            v55 = v28;
            v34 = v54;
            [removedRowsCopy enumerateIndexesUsingBlock:v53];
            tableView3 = [(InboxNewSectionViewController *)self tableView];
            [tableView3 deleteRowsAtIndexPaths:v34 withRowAnimation:6];

            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_10013A0C8;
            v50[3] = &unk_100212210;
            v51 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(updatedRowsCopy, "count")}];
            v52 = v28;
            v36 = v51;
            [updatedRowsCopy enumerateIndexesUsingBlock:v50];
            tableView4 = [(InboxNewSectionViewController *)self tableView];
            [tableView4 reloadRowsAtIndexPaths:v36 withRowAnimation:6];

            tableView5 = [(InboxNewSectionViewController *)self tableView];
            [tableView5 endUpdates];
          }

          else
          {
            [tableView reloadData];
          }
        }

        else
        {
          tableView6 = [(InboxNewSectionViewController *)self tableView];
          v30 = [NSIndexSet indexSetWithIndex:v28];
          [tableView6 deleteSections:v30 withRowAnimation:6];
        }
      }

      visibleGroups2 = [(InboxNewSectionViewController *)self visibleGroups];
      if ([visibleGroups2 count] || -[InboxNewSectionViewController shouldShowIdentityChooser](self, "shouldShowIdentityChooser"))
      {
        v40 = 0;
      }

      else
      {
        v40 = [(InboxNewSectionViewController *)self shouldShowFocusBanner]^ 1;
      }

      tableView7 = [(InboxNewSectionViewController *)self tableView];
      [tableView7 setShowNoContentString:v40];

      if (self->_wantsDisplayReviewPrompt)
      {
        if ([v48 count])
        {
          visibleGroups3 = [(InboxNewSectionViewController *)self visibleGroups];
          v43 = [visibleGroups3 count];

          if (!v43)
          {
            self->_wantsDisplayReviewPrompt = 0;
            WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
            v45 = objc_opt_respondsToSelector();

            if (v45)
            {
              v46 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
              [v46 attemptDisplayReviewPrompt];
            }
          }
        }
      }

      rowsCopy = v49;
    }
  }
}

- (void)inboxTableViewGroupController:(id)controller inspectEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (WeakRetained)
  {
    if (eventCopy)
    {
      v8 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that an event should be inspected.", buf, 2u);
      }

      v9 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
      [v9 inboxNewSectionViewController:self inspectEvent:eventCopy];

      if (self->_destination == 2)
      {
        objc_storeStrong(&self->_currentSelectedEvent, event);
      }
    }
  }

  else
  {
    v10 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "No delegate found.  Will not request that event be inspected.", v11, 2u);
    }
  }
}

- (void)inboxTableViewGroupController:(id)controller viewCommentsForEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (eventCopy && WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
    [v6 inboxNewSectionViewController:self viewCommentsForEvent:eventCopy];
  }
}

- (void)inboxTableViewGroupController:(id)controller viewProposedTimeForAttendee:(id)attendee onEvent:(id)event
{
  attendeeCopy = attendee;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (eventCopy && WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
    [v9 inboxNewSectionViewController:self viewProposedTimeForAttendee:attendeeCopy onEvent:eventCopy];
  }
}

- (void)inboxTableViewGroupController:(id)controller requestsReloadOfRow:(int64_t)row
{
  controllerCopy = controller;
  if (self->_viewIsVisible)
  {
    if (self->_reloadsSuspendedUntilRefreshCompletes)
    {
      self->_needReloadWhenRefreshCompletes = 1;
    }

    else
    {
      v15 = controllerCopy;
      visibleGroups = [(InboxNewSectionViewController *)self visibleGroups];
      v8 = [visibleGroups indexOfObject:v15];
      firstGroupSection = [(InboxNewSectionViewController *)self firstGroupSection];

      v10 = [NSIndexPath indexPathForRow:row inSection:&v8[firstGroupSection]];
      tableView = [(InboxNewSectionViewController *)self tableView];
      [tableView beginUpdates];

      tableView2 = [(InboxNewSectionViewController *)self tableView];
      v13 = [NSArray arrayWithObjects:v10, 0];
      [tableView2 reloadRowsAtIndexPaths:v13 withRowAnimation:100];

      tableView3 = [(InboxNewSectionViewController *)self tableView];
      [tableView3 endUpdates];

      controllerCopy = v15;
    }
  }
}

- (void)refresh:(id)refresh
{
  CalAnalyticsSendEvent();
  v4 = [EKAccountRefresher alloc];
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v6 = [v4 initWithEventStore:eventStore];
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = v6;

  [(EKAccountRefresher *)self->_currentAccountRefresher setDelegate:self];
  v8 = self->_currentAccountRefresher;

  [(EKAccountRefresher *)v8 refresh];
}

- (void)accountRefreshFinished:(id)finished
{
  finishedCopy = finished;
  self->_reloadsSuspendedUntilRefreshCompletes = 0;
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = 0;

  refreshControl = [(InboxNewSectionViewController *)self refreshControl];

  if (refreshControl)
  {
    refreshControl2 = [(InboxNewSectionViewController *)self refreshControl];
    [refreshControl2 endRefreshing];
  }

  if ([finishedCopy allAccountsOffline])
  {
    [EKUIAccountErrorDisplayer presentAlertForOfflineErrorUsingViewController:self];
  }

  if (self->_needReloadWhenRefreshCompletes)
  {
    self->_needReloadWhenRefreshCompletes = 0;
    [(InboxNewSectionViewController *)self inboxTableViewGroupController:0 addedRows:0 removedRows:0 updatedRows:0];
  }
}

- (id)_eventForIndexPath:(id)path
{
  pathCopy = path;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [pathCopy section]) || -[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(pathCopy, "section")))
  {
    v5 = 0;
  }

  else
  {
    v6 = [(InboxNewSectionViewController *)self _groupForIndexPath:pathCopy];
    v5 = [v6 eventForRow:{objc_msgSend(pathCopy, "row")}];
  }

  return v5;
}

- (id)_groupForIndexPath:(id)path
{
  section = [path section];

  return [(InboxNewSectionViewController *)self _groupForSection:section];
}

- (id)_groupForSection:(int64_t)section
{
  v4 = section - [(InboxNewSectionViewController *)self firstGroupSection];
  visibleGroups = [(InboxNewSectionViewController *)self visibleGroups];
  v6 = [visibleGroups count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    visibleGroups2 = [(InboxNewSectionViewController *)self visibleGroups];
    v8 = [visibleGroups2 objectAtIndexedSubscript:v4];
  }

  return v8;
}

- (void)_delegateShouldClose
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  v4 = kCalUILogInboxHandle;
  v5 = os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG);
  if (WeakRetained)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that this view controller be closed.", buf, 2u);
    }

    v6 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
    [v6 inboxNewSectionViewController:self shouldCloseAnimated:1];
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "No delegate found.  Will not request closing.", v7, 2u);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = 0;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0 && "paste:" != action)
  {
    if ("copy:" == action)
    {
      if (self->_indexPathForRowWithContextMenu)
      {
        v8 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
        v9 = v8;
        if (v8)
        {
          v16 = v8;
          v10 = [NSArray arrayWithObjects:&v16 count:1];
          v11 = 1;
LABEL_12:
          v7 = [CUIKPasteboardUtilities allEventsValidForAction:v11 fromEvents:v10];

LABEL_15:
          goto LABEL_16;
        }

LABEL_14:
        v7 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      if ("cut:" != action)
      {
        v14.receiver = self;
        v14.super_class = InboxNewSectionViewController;
        v7 = [(InboxNewSectionViewController *)&v14 canPerformAction:action withSender:senderCopy];
        goto LABEL_16;
      }

      if (self->_indexPathForRowWithContextMenu)
      {
        v12 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
        v9 = v12;
        if (v12)
        {
          v15 = v12;
          v10 = [NSArray arrayWithObjects:&v15 count:1];
          v11 = 0;
          goto LABEL_12;
        }

        goto LABEL_14;
      }
    }

    v7 = 0;
  }

LABEL_16:

  return v7;
}

- (void)cut:(id)cut
{
  if (self->_indexPathForRowWithContextMenu)
  {
    v4 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
    if (v4)
    {
      v7 = v4;
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v6 = [NSSet setWithObject:v7];
      [pasteboardManager cutEvents:v6 delegate:self];

      v4 = v7;
    }
  }
}

- (void)copy:(id)copy
{
  if (self->_indexPathForRowWithContextMenu)
  {
    v4 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
    if (v4)
    {
      v7 = v4;
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v6 = [NSSet setWithObject:v7];
      [pasteboardManager copyEvents:v6 delegate:self];

      v4 = v7;
    }
  }
}

- (void)focusBannerTableViewCellToggled:(id)toggled
{
  if ([toggled on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  model = self->_model;

  [(CUIKCalendarModel *)model setFocusFilterMode:v4];
}

- (InboxNewSectionViewControllerDelegate)inboxNewSectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  return WeakRetained;
}

@end