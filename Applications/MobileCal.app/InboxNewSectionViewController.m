@interface InboxNewSectionViewController
- (BOOL)_canEnableRefresh;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)inPadSidebar;
- (BOOL)isFocusBannerSection:(int64_t)a3;
- (BOOL)isIdentityChooserSection:(int64_t)a3;
- (BOOL)shouldShowFocusBanner;
- (BOOL)shouldShowIdentityChooser;
- (CGSize)preferredContentSize;
- (InboxNewSectionViewController)initWithModel:(id)a3;
- (InboxNewSectionViewControllerDelegate)inboxNewSectionDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_eventForIndexPath:(id)a3;
- (id)_groupForIndexPath:(id)a3;
- (id)_groupForSection:(int64_t)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)noContentStringForInboxTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)firstGroupSection;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_delegateShouldClose;
- (void)_focusConfigurationChanged:(id)a3;
- (void)_refreshIfNeeded;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_updateGroupVisibility;
- (void)accountRefreshFinished:(id)a3;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)focusBannerTableViewCellToggled:(id)a3;
- (void)inboxTableViewGroupController:(id)a3 addedRows:(id)a4 removedRows:(id)a5 updatedRows:(id)a6;
- (void)inboxTableViewGroupController:(id)a3 inspectEvent:(id)a4;
- (void)inboxTableViewGroupController:(id)a3 requestsReloadOfRow:(int64_t)a4;
- (void)inboxTableViewGroupController:(id)a3 viewCommentsForEvent:(id)a4;
- (void)inboxTableViewGroupController:(id)a3 viewProposedTimeForAttendee:(id)a4 onEvent:(id)a5;
- (void)inboxWillDismiss;
- (void)loadView;
- (void)refresh:(id)a3;
- (void)setViewIsVisible:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation InboxNewSectionViewController

- (InboxNewSectionViewController)initWithModel:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = InboxNewSectionViewController;
  v6 = [(InboxNewSectionViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
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
  v3 = [(InboxNewSectionViewController *)self visibleGroups];
  v4 = [v3 count];

  [(InboxNewSectionViewController *)self _updateGroupVisibility];
  v5 = [(InboxNewSectionViewController *)self visibleGroups];
  v6 = [v5 count];

  v10 = [(InboxNewSectionViewController *)self tableView];
  [v10 reloadData];
  if (v6)
  {
    [v10 setShowNoContentString:0];
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

    [v10 setShowNoContentString:v9];
    if (v4)
    {
      [(InboxNewSectionViewController *)self _delegateShouldClose];
      goto LABEL_10;
    }
  }

  v7 = [(InboxNewSectionViewController *)self view];
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
  v4 = [(InboxNewSectionViewController *)self allGroups];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001379C8;
  v7[3] = &unk_1002120D0;
  v8 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v7];

  v6 = [NSArray arrayWithArray:v5];
  [(InboxNewSectionViewController *)self setVisibleGroups:v6];
}

- (void)setViewIsVisible:(BOOL)a3
{
  self->_viewIsVisible = a3;
  v4 = [(InboxNewSectionViewController *)self allGroups];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100137ABC;
  v5[3] = &unk_1002120F0;
  v6 = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)inboxWillDismiss
{
  +[CalendarMessageCell emptyAuthorCache];
  allGroups = self->_allGroups;

  [(NSArray *)allGroups enumerateObjectsUsingBlock:&stru_100212130];
}

- (void)dealloc
{
  v3 = [(InboxNewSectionViewController *)self view];
  [v3 removeInteraction:self->_contextMenuInteraction];

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
  v3 = [(InboxNewSectionViewController *)self inPadSidebar];
  if (v3)
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
  if (v3)
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

  v5 = [(InboxNewSectionViewController *)self view];
  [v5 addInteraction:self->_contextMenuInteraction];
}

- (BOOL)_canEnableRefresh
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [(CUIKCalendarModel *)self->_model eventStore];
  v3 = [v2 sources];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v13 viewWillAppear:?];
  v5 = [(InboxNewSectionViewController *)self refreshControl];
  if (!v5)
  {
    if (![(InboxNewSectionViewController *)self _canEnableRefresh])
    {
      goto LABEL_5;
    }

    v5 = objc_alloc_init(UIRefreshControl);
    [v5 addTarget:self action:"_pulledToRefresh:" forControlEvents:4096];
    v6 = [(InboxNewSectionViewController *)self tableView];
    [v6 _setRefreshControl:v5];

    [(InboxNewSectionViewController *)self setRefreshControl:v5];
  }

LABEL_5:
  v7 = [(InboxNewSectionViewController *)self navigationController];
  v8 = [v7 view];
  v9 = [v8 window];

  if (v9)
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
  v12 = a3;
  [(NSArray *)allGroups enumerateObjectsUsingBlock:v11];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v7 viewDidAppear:a3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v7 viewWillDisappear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = InboxNewSectionViewController;
  [(InboxNewSectionViewController *)&v4 viewDidDisappear:a3];
  [(NSArray *)self->_allGroups enumerateObjectsUsingBlock:&stru_100212170];
}

- (CGSize)preferredContentSize
{
  v3 = [(InboxNewSectionViewController *)self tableView];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    v4 = [(InboxNewSectionViewController *)self presentedViewController];
    v5 = [v4 isBeingPresented];
  }

  else
  {
    v5 = 0;
  }

  if (!self->_isRefreshing && (v5 & 1) == 0)
  {
    [(InboxNewSectionViewController *)self _refreshIfNeeded];
  }

  v6 = [(InboxNewSectionViewController *)self tableView];
  EKUIContainedControllerIdealWidth();
  [v6 sizeThatFits:?];
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

- (void)_selectedOccurrencesChanged:(id)a3
{
  v4 = a3;
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

- (void)_focusConfigurationChanged:(id)a3
{
  v3 = [(InboxNewSectionViewController *)self tableView];
  [v3 reloadData];
}

- (BOOL)isFocusBannerSection:(int64_t)a3
{
  v5 = [(InboxNewSectionViewController *)self shouldShowFocusBanner];
  if (v5)
  {
    LOBYTE(v5) = [(InboxNewSectionViewController *)self focusBannerSection]== a3;
  }

  return v5;
}

- (BOOL)isIdentityChooserSection:(int64_t)a3
{
  v5 = [(InboxNewSectionViewController *)self shouldShowIdentityChooser];
  if (v5)
  {
    LOBYTE(v5) = [(InboxNewSectionViewController *)self identityChooserSection]== a3;
  }

  return v5;
}

- (int64_t)firstGroupSection
{
  v3 = [(InboxNewSectionViewController *)self shouldShowFocusBanner];
  v4 = [(InboxNewSectionViewController *)self shouldShowIdentityChooser];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (BOOL)shouldShowIdentityChooser
{
  v3 = [(CUIKCalendarModel *)self->_model containsDelegateSources];
  if (v3)
  {
    LOBYTE(v3) = self->_destination != 2;
  }

  return v3;
}

- (BOOL)shouldShowFocusBanner
{
  v3 = [(CUIKCalendarModel *)self->_model focusFilterMode];
  if (v3)
  {
    if (CalSystemSolariumEnabled())
    {
      LOBYTE(v3) = [(InboxNewSectionViewController *)self destination]!= 2;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(InboxNewSectionViewController *)self visibleGroups];
  v5 = [v4 count];

  v6 = &v5[[(InboxNewSectionViewController *)self shouldShowIdentityChooser]];
  return &v6[[(InboxNewSectionViewController *)self shouldShowFocusBanner]];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(InboxNewSectionViewController *)self isIdentityChooserSection:a4])
  {
    v6 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
    v7 = [v6 count] + 1;
LABEL_6:

    return v7;
  }

  if (![(InboxNewSectionViewController *)self isFocusBannerSection:a4])
  {
    v6 = [(InboxNewSectionViewController *)self _groupForSection:a4];
    v7 = [v6 numberOfRows];
    goto LABEL_6;
  }

  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v7 section]))
  {
    v8 = objc_opt_new();
    if ([v7 row])
    {
      v9 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row") - 1}];

      v11 = CUIKDisplayedTitleForSource();
      v12 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      v13 = [v10 isEqual:v12];
    }

    else
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v20 localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];

      v12 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      v10 = 0;
      v13 = v12 == 0;
    }

    v21 = [(CUIKCalendarModel *)self->_model eventNotificationReferencesForIdentity:v10];
    v22 = [v21 count];

    v23 = [(EKUIFocusBannerTableViewCell *)v8 titleLabel];
    [v23 setText:v11];

    if (v13)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    [(EKUIFocusBannerTableViewCell *)v8 setAccessoryType:v24];
    v25 = [(EKUIFocusBannerTableViewCell *)v8 titleLabel];
    [v25 setEnabled:1];

    if (v22)
    {
      v26 = CUIKLocalizedStringForInteger();
      v27 = [(EKUIFocusBannerTableViewCell *)v8 detailLabel];
      [v27 setText:v26];
    }

    else
    {
      v26 = [(EKUIFocusBannerTableViewCell *)v8 detailLabel];
      [v26 setText:0];
    }
  }

  else if (-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v7 section]))
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
    v16 = [(InboxNewSectionViewController *)self _groupForIndexPath:v7];
    v17 = [v7 row];
    if ([v6 isTracking] & 1) != 0 || (objc_msgSend(v6, "isScrollAnimating") & 1) != 0 || (objc_msgSend(v6, "isDecelerating"))
    {
      v18 = 1;
    }

    else
    {
      v18 = [UIApp isRunningTest];
    }

    v8 = [v16 cellForRow:v17 allowAsyncLoading:v18];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [(InboxNewSectionViewController *)self inPadSidebar];
      [(EKUIFocusBannerTableViewCell *)v8 setDrawsOwnSeparator:v19];
      [(EKUIFocusBannerTableViewCell *)v8 setInPadSidebar:v19];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(EKUIFocusBannerTableViewCell *)v8 setDestination:[(InboxNewSectionViewController *)self destination]];
  }

  return v8;
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (!-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v10 section]) && !-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(v10, "section")))
        {
          v11 = [(InboxNewSectionViewController *)self _groupForIndexPath:v10];
          [v11 prefetchRow:{objc_msgSend(v10, "row")}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v5 section]) || -[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(v5, "section")))
  {
    v6 = UITableViewAutomaticDimension;
  }

  else
  {
    v7 = [(InboxNewSectionViewController *)self _groupForIndexPath:v5];
    [v7 estimatedHeightForRow:{objc_msgSend(v5, "row")}];
    v6 = v8;
  }

  return v6;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v5 section]))
  {
    v6 = v5;
  }

  else if (-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v5 section]))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(InboxNewSectionViewController *)self _groupForIndexPath:v5];
    if ([v7 canSelectRow:{objc_msgSend(v5, "row")}])
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index path selected: [%@]", &v11, 0xCu);
  }

  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v7 section]))
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    if ([v7 row])
    {
      v9 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row") - 1}];
    }

    else
    {
      v10 = 0;
    }

    [(CUIKCalendarModel *)self->_model updateSourceForSelectedIdentity:v10 selectedCalendars:0];
    goto LABEL_10;
  }

  if (!-[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v7 section]))
  {
    v10 = [(InboxNewSectionViewController *)self _groupForIndexPath:v7];
    [v10 rowSelected:{objc_msgSend(v7, "row")}];
LABEL_10:
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(InboxNewSectionViewController *)self isIdentityChooserSection:a4])
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"View Notifications:" value:&stru_1002133B8 table:0];
  }

  else
  {
    if ([(InboxNewSectionViewController *)self isFocusBannerSection:a4])
    {
      goto LABEL_7;
    }

    v6 = [(InboxNewSectionViewController *)self _groupForSection:a4];
    v7 = [v6 titleForHeader];
  }

  v8 = v7;

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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(InboxNewSectionViewController *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(InboxNewSectionViewController *)self view];
  v12 = [(InboxNewSectionViewController *)self tableView];
  [v11 convertPoint:v12 toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  v17 = [(InboxNewSectionViewController *)self tableView];
  v18 = [v17 indexPathForRowAtPoint:{v14, v16}];

  if (v18)
  {
    v19 = [(InboxNewSectionViewController *)self tableView];
    [v19 rectForRowAtIndexPath:v18];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  targetedPreview = self->_targetedPreview;
  self->_targetedPreview = 0;
  v7 = a3;

  v8 = [(InboxNewSectionViewController *)self tableView];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(InboxNewSectionViewController *)self tableView];
  v14 = [v13 indexPathForRowAtPoint:{v10, v12}];

  if (v14)
  {
    v15 = [(InboxNewSectionViewController *)self tableView];
    v16 = [v15 cellForRowAtIndexPath:v14];

    v17 = [[UITargetedPreview alloc] initWithView:v16];
    v18 = self->_targetedPreview;
    self->_targetedPreview = v17;
  }

  v19 = self->_targetedPreview;
  v20 = v19;

  return v19;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  targetedPreview = self->_targetedPreview;
  v7 = targetedPreview;
  v8 = self->_targetedPreview;
  self->_targetedPreview = 0;

  return targetedPreview;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [v6 previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 previewViewController];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 event];
  [v8 willCommitPreview];
  if (v9)
  {
    v10 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that the following event should be inspected: [%@]", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100139974;
    v11[3] = &unk_10020EC68;
    v11[4] = self;
    v12 = v9;
    [v6 addAnimations:v11];
  }
}

- (id)noContentStringForInboxTableView:(id)a3
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"No Invitations" value:&stru_1002133B8 table:0];

  return v4;
}

- (void)inboxTableViewGroupController:(id)a3 addedRows:(id)a4 removedRows:(id)a5 updatedRows:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_viewIsVisible)
  {
    if (self->_reloadsSuspendedUntilRefreshCompletes)
    {
      self->_needReloadWhenRefreshCompletes = 1;
    }

    else
    {
      v14 = [(InboxNewSectionViewController *)self visibleGroups];
      [(InboxNewSectionViewController *)self _updateGroupVisibility];
      v48 = v14;
      if (v10)
      {
        v15 = [v14 indexOfObject:v10];
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v49 = v11;
      v16 = [v11 count];
      v17 = [v12 count];
      v18 = [v13 count];
      v19 = [(InboxNewSectionViewController *)self firstGroupSection];
      if (v17 && (-[InboxNewSectionViewController visibleGroups](self, "visibleGroups"), v47 = v17, v20 = v15, v21 = v10, v22 = v13, v23 = v16, v24 = v12, v25 = v18, v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 count], v26, v18 = v25, v12 = v24, v16 = v23, v13 = v22, v10 = v21, v15 = v20, v17 = v47, !v27))
      {
        [(InboxNewSectionViewController *)self _delegateShouldClose];
      }

      else
      {
        v28 = v19 + v15;
        if (([v10 hasRows] & 1) != 0 || v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [(InboxNewSectionViewController *)self tableView];
          v32 = v31;
          if (v16 || v17 || v18)
          {
            [v31 beginUpdates];

            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_10013A000;
            v56[3] = &unk_100212210;
            v57 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v49, "count")}];
            v58 = v28;
            v32 = v57;
            [v49 enumerateIndexesUsingBlock:v56];
            v33 = [(InboxNewSectionViewController *)self tableView];
            [v33 insertRowsAtIndexPaths:v32 withRowAnimation:6];

            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_10013A064;
            v53[3] = &unk_100212210;
            v54 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
            v55 = v28;
            v34 = v54;
            [v12 enumerateIndexesUsingBlock:v53];
            v35 = [(InboxNewSectionViewController *)self tableView];
            [v35 deleteRowsAtIndexPaths:v34 withRowAnimation:6];

            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_10013A0C8;
            v50[3] = &unk_100212210;
            v51 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
            v52 = v28;
            v36 = v51;
            [v13 enumerateIndexesUsingBlock:v50];
            v37 = [(InboxNewSectionViewController *)self tableView];
            [v37 reloadRowsAtIndexPaths:v36 withRowAnimation:6];

            v38 = [(InboxNewSectionViewController *)self tableView];
            [v38 endUpdates];
          }

          else
          {
            [v31 reloadData];
          }
        }

        else
        {
          v29 = [(InboxNewSectionViewController *)self tableView];
          v30 = [NSIndexSet indexSetWithIndex:v28];
          [v29 deleteSections:v30 withRowAnimation:6];
        }
      }

      v39 = [(InboxNewSectionViewController *)self visibleGroups];
      if ([v39 count] || -[InboxNewSectionViewController shouldShowIdentityChooser](self, "shouldShowIdentityChooser"))
      {
        v40 = 0;
      }

      else
      {
        v40 = [(InboxNewSectionViewController *)self shouldShowFocusBanner]^ 1;
      }

      v41 = [(InboxNewSectionViewController *)self tableView];
      [v41 setShowNoContentString:v40];

      if (self->_wantsDisplayReviewPrompt)
      {
        if ([v48 count])
        {
          v42 = [(InboxNewSectionViewController *)self visibleGroups];
          v43 = [v42 count];

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

      v11 = v49;
    }
  }
}

- (void)inboxTableViewGroupController:(id)a3 inspectEvent:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (WeakRetained)
  {
    if (v6)
    {
      v8 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that an event should be inspected.", buf, 2u);
      }

      v9 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
      [v9 inboxNewSectionViewController:self inspectEvent:v6];

      if (self->_destination == 2)
      {
        objc_storeStrong(&self->_currentSelectedEvent, a4);
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

- (void)inboxTableViewGroupController:(id)a3 viewCommentsForEvent:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (v7 && WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
    [v6 inboxNewSectionViewController:self viewCommentsForEvent:v7];
  }
}

- (void)inboxTableViewGroupController:(id)a3 viewProposedTimeForAttendee:(id)a4 onEvent:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);

  if (v7 && WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_inboxNewSectionDelegate);
    [v9 inboxNewSectionViewController:self viewProposedTimeForAttendee:v10 onEvent:v7];
  }
}

- (void)inboxTableViewGroupController:(id)a3 requestsReloadOfRow:(int64_t)a4
{
  v6 = a3;
  if (self->_viewIsVisible)
  {
    if (self->_reloadsSuspendedUntilRefreshCompletes)
    {
      self->_needReloadWhenRefreshCompletes = 1;
    }

    else
    {
      v15 = v6;
      v7 = [(InboxNewSectionViewController *)self visibleGroups];
      v8 = [v7 indexOfObject:v15];
      v9 = [(InboxNewSectionViewController *)self firstGroupSection];

      v10 = [NSIndexPath indexPathForRow:a4 inSection:&v8[v9]];
      v11 = [(InboxNewSectionViewController *)self tableView];
      [v11 beginUpdates];

      v12 = [(InboxNewSectionViewController *)self tableView];
      v13 = [NSArray arrayWithObjects:v10, 0];
      [v12 reloadRowsAtIndexPaths:v13 withRowAnimation:100];

      v14 = [(InboxNewSectionViewController *)self tableView];
      [v14 endUpdates];

      v6 = v15;
    }
  }
}

- (void)refresh:(id)a3
{
  CalAnalyticsSendEvent();
  v4 = [EKAccountRefresher alloc];
  v5 = [(CUIKCalendarModel *)self->_model eventStore];
  v6 = [v4 initWithEventStore:v5];
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = v6;

  [(EKAccountRefresher *)self->_currentAccountRefresher setDelegate:self];
  v8 = self->_currentAccountRefresher;

  [(EKAccountRefresher *)v8 refresh];
}

- (void)accountRefreshFinished:(id)a3
{
  v7 = a3;
  self->_reloadsSuspendedUntilRefreshCompletes = 0;
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = 0;

  v5 = [(InboxNewSectionViewController *)self refreshControl];

  if (v5)
  {
    v6 = [(InboxNewSectionViewController *)self refreshControl];
    [v6 endRefreshing];
  }

  if ([v7 allAccountsOffline])
  {
    [EKUIAccountErrorDisplayer presentAlertForOfflineErrorUsingViewController:self];
  }

  if (self->_needReloadWhenRefreshCompletes)
  {
    self->_needReloadWhenRefreshCompletes = 0;
    [(InboxNewSectionViewController *)self inboxTableViewGroupController:0 addedRows:0 removedRows:0 updatedRows:0];
  }
}

- (id)_eventForIndexPath:(id)a3
{
  v4 = a3;
  if (-[InboxNewSectionViewController isIdentityChooserSection:](self, "isIdentityChooserSection:", [v4 section]) || -[InboxNewSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", objc_msgSend(v4, "section")))
  {
    v5 = 0;
  }

  else
  {
    v6 = [(InboxNewSectionViewController *)self _groupForIndexPath:v4];
    v5 = [v6 eventForRow:{objc_msgSend(v4, "row")}];
  }

  return v5;
}

- (id)_groupForIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(InboxNewSectionViewController *)self _groupForSection:v4];
}

- (id)_groupForSection:(int64_t)a3
{
  v4 = a3 - [(InboxNewSectionViewController *)self firstGroupSection];
  v5 = [(InboxNewSectionViewController *)self visibleGroups];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(InboxNewSectionViewController *)self visibleGroups];
    v8 = [v7 objectAtIndexedSubscript:v4];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0 && "paste:" != a3)
  {
    if ("copy:" == a3)
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
      if ("cut:" != a3)
      {
        v14.receiver = self;
        v14.super_class = InboxNewSectionViewController;
        v7 = [(InboxNewSectionViewController *)&v14 canPerformAction:a3 withSender:v6];
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

- (void)cut:(id)a3
{
  if (self->_indexPathForRowWithContextMenu)
  {
    v4 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
    if (v4)
    {
      v7 = v4;
      v5 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v6 = [NSSet setWithObject:v7];
      [v5 cutEvents:v6 delegate:self];

      v4 = v7;
    }
  }
}

- (void)copy:(id)a3
{
  if (self->_indexPathForRowWithContextMenu)
  {
    v4 = [(InboxNewSectionViewController *)self _eventForIndexPath:?];
    if (v4)
    {
      v7 = v4;
      v5 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v6 = [NSSet setWithObject:v7];
      [v5 copyEvents:v6 delegate:self];

      v4 = v7;
    }
  }
}

- (void)focusBannerTableViewCellToggled:(id)a3
{
  if ([a3 on])
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