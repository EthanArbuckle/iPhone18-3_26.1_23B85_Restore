@interface InboxRepliedSectionViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)inPadSidebar;
- (BOOL)isFocusBannerSection:(int64_t)section;
- (BOOL)shouldShowFocusBanner;
- (CGSize)preferredContentSize;
- (InboxRepliedSectionViewController)initWithModel:(id)model;
- (InboxRepliedSectionViewControllerDelegate)inboxRepliedSectionDelegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_eventForIndexPath:(id)path cache:(id)cache;
- (id)_eventForItem:(id)item;
- (id)_eventForOccurrenceInfo:(id)info;
- (id)_itemForIndexPath:(id)path cache:(id)cache;
- (id)_notificationForIndexPath:(id)path cache:(id)cache;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)noContentStringForInboxTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)title;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_eventStoreChanged:(id)changed;
- (void)_focusConfigurationChanged:(id)changed;
- (void)_identityChanged:(id)changed;
- (void)_localeChanged:(id)changed;
- (void)_refreshIfNeeded;
- (void)_savePendingComments;
- (void)_saveStatus:(int64_t)status forItemAtIndexPath:(id)path;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_updateCell:(id)cell atIndexPath:(id)path;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)focusBannerTableViewCellToggled:(id)toggled;
- (void)loadView;
- (void)messageCell:(id)cell committedComment:(id)comment;
- (void)performAction:(int64_t)action forCell:(id)cell sourceView:(id)view sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled;
- (void)setDestination:(unint64_t)destination;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation InboxRepliedSectionViewController

- (InboxRepliedSectionViewController)initWithModel:(id)model
{
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = InboxRepliedSectionViewController;
  v6 = [(InboxRepliedSectionViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    v7->_needsRefresh = 1;
    v8 = objc_opt_new();
    pendingComments = v7->_pendingComments;
    v7->_pendingComments = v8;

    v10 = objc_opt_new();
    organizerNames = v7->_organizerNames;
    v7->_organizerNames = v10;

    +[(CalendarMessageCell *)InboxRepliedEventInvitationCell];
    v7->_minimumContentHeight = v12 * 4.5;
    v13 = dispatch_queue_create("com.apple.mobilecal.inbox.replied.notificationsQ", 0);
    notificationQ = v7->_notificationQ;
    v7->_notificationQ = v13;

    v15 = dispatch_queue_create("com.apple.mobilecal.inbox.replied.namesQ", 0);
    organizerNamesQ = v7->_organizerNamesQ;
    v7->_organizerNamesQ = v15;

    v17 = dispatch_queue_create("com.apple.mobilecal.inbox.replied.prefetchQ", 0);
    prefetchQ = v7->_prefetchQ;
    v7->_prefetchQ = v17;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v7 selector:"_eventStoreChanged:" name:EKEventStoreChangedNotification object:0];
    [v19 addObserver:v7 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v19 addObserver:v7 selector:"_identityChanged:" name:CUIKCalendarModelIdentityChangedNotification object:modelCopy];
    [v19 addObserver:v7 selector:"_focusConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:modelCopy];
  }

  return v7;
}

- (void)dealloc
{
  view = [(InboxRepliedSectionViewController *)self view];
  [view removeInteraction:self->_contextMenuInteraction];

  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = 0;

  v5.receiver = self;
  v5.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v5 dealloc];
}

- (void)setDestination:(unint64_t)destination
{
  if (self->_destination != destination)
  {
    self->_destination = destination;
    tableView = [(InboxRepliedSectionViewController *)self tableView];
    [tableView reloadData];
  }
}

- (BOOL)inPadSidebar
{
  v3 = CalSystemSolariumEnabled();
  if (v3)
  {
    LOBYTE(v3) = [(InboxRepliedSectionViewController *)self destination]== 2;
  }

  return v3;
}

- (void)loadView
{
  inPadSidebar = [(InboxRepliedSectionViewController *)self inPadSidebar];
  if (inPadSidebar)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v11 = [[InboxTableView alloc] initWithFrame:v4 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(InboxTableView *)v11 setRowHeight:UITableViewAutomaticDimension];
  [(InboxTableView *)v11 setListViewDelegate:self];
  [(InboxTableView *)v11 setPrefetchDataSource:self];
  if (inPadSidebar)
  {
    v5 = +[UIColor clearColor];
    [(InboxTableView *)v11 setSeparatorColor:v5];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(InboxTableView *)v11 registerClass:v6 forCellReuseIdentifier:v7];
  [(InboxRepliedSectionViewController *)self setTableView:v11];
  v8 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = v8;

  view = [(InboxRepliedSectionViewController *)self view];
  [view addInteraction:self->_contextMenuInteraction];
}

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Replied" value:&stru_1002133B8 table:0];

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v5 viewWillAppear:appear];
  lastDisplayedFocusMode = self->_lastDisplayedFocusMode;
  if (lastDisplayedFocusMode != [(CUIKCalendarModel *)self->_model focusFilterMode])
  {
    self->_needsRefresh = 1;
  }

  [(InboxRepliedSectionViewController *)self _refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v6 viewDidAppear:appear];
  self->_viewIsVisible = 1;
  if (+[ApplicationTester testingSessionStarted])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"InboxRepliedSectionViewController_ViewDidAppearNotification" object:self];
  }

  if (self->_destination == 2)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->_model];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v7 viewWillDisappear:disappear];
  if (self->_destination == 2)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->_model];
  }

  selectionTimer = self->_selectionTimer;
  if (selectionTimer)
  {
    [(NSTimer *)selectionTimer invalidate];
    v6 = self->_selectionTimer;
    self->_selectionTimer = 0;
  }

  self->_viewIsVisible = 0;
}

- (CGSize)preferredContentSize
{
  [(InboxRepliedSectionViewController *)self _refreshIfNeeded];
  tableView = [(InboxRepliedSectionViewController *)self tableView];
  EKUIContainedControllerIdealWidth();
  [tableView sizeThatFits:?];
  minimumContentHeight = v4;

  if (self->_minimumContentHeight >= minimumContentHeight)
  {
    minimumContentHeight = self->_minimumContentHeight;
  }

  self->_minimumContentHeight = minimumContentHeight;
  EKUIWidthForWindowSizeParadigm();
  v7 = v6;
  EKUIGoldenRatioPhi();
  v9 = minimumContentHeight / v8;
  EKUIContainedControllerIdealWidth();
  if (v9 < v10)
  {
    v10 = v9;
  }

  if (v7 >= v10)
  {
    v10 = v7;
  }

  v11 = minimumContentHeight;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  changedCopy = changed;
  if (self->_currentSelectedEvent && !self->_selectionTimer)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014E358;
    v7[3] = &unk_100212198;
    v7[4] = self;
    v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:0.15];
    selectionTimer = self->_selectionTimer;
    self->_selectionTimer = v5;
  }
}

- (void)_focusConfigurationChanged:(id)changed
{
  self->_needsRefresh = 1;
  if (self->_viewIsVisible)
  {
    [(InboxRepliedSectionViewController *)self _refreshIfNeeded];
  }
}

- (BOOL)shouldShowFocusBanner
{
  focusFilterMode = [(CUIKCalendarModel *)self->_model focusFilterMode];
  if (focusFilterMode)
  {
    if (CalSystemSolariumEnabled())
    {
      LOBYTE(focusFilterMode) = [(InboxRepliedSectionViewController *)self destination]!= 2;
    }

    else
    {
      LOBYTE(focusFilterMode) = 1;
    }
  }

  return focusFilterMode;
}

- (BOOL)isFocusBannerSection:(int64_t)section
{
  result = [(InboxRepliedSectionViewController *)self shouldShowFocusBanner];
  if (section)
  {
    return 0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(InboxRepliedSectionViewController *)self shouldShowFocusBanner])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(InboxRepliedSectionViewController *)self isFocusBannerSection:section])
  {
    return 1;
  }

  occurrenceInfos = self->_occurrenceInfos;

  return [(NSArray *)occurrenceInfos count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    if (!self->_focusBannerCell)
    {
      v6 = [[EKUIFocusBannerTableViewCell alloc] initWithReuseIdentifier:@"FocusBanner"];
      focusBannerCell = self->_focusBannerCell;
      self->_focusBannerCell = v6;

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
    v15 = ;
    [(EKUIFocusBannerTableViewCell *)self->_focusBannerCell setBackgroundConfiguration:v15];

    v11 = self->_focusBannerCell;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    tableView = [(InboxRepliedSectionViewController *)self tableView];
    v11 = [tableView dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

    view = [(InboxRepliedSectionViewController *)self view];
    window = [view window];

    EKUIPushFallbackSizingContextWithViewHierarchy();
    [(InboxRepliedSectionViewController *)self _updateCell:v11 atIndexPath:pathCopy];
    EKUIPopFallbackSizingContextWithViewHierarchy();
    [(EKUIFocusBannerTableViewCell *)v11 setDestination:[(InboxRepliedSectionViewController *)self destination]];
    v14 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = pathCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Loading cell at index path: [%@]", &v17, 0xCu);
    }
  }

  return v11;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_itemCache;
  objc_sync_exit(selfCopy);

  prefetchQ = selfCopy->_prefetchQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E8AC;
  block[3] = &unk_10020F2E0;
  v12 = pathsCopy;
  v13 = selfCopy;
  v14 = v7;
  v9 = v7;
  v10 = pathsCopy;
  dispatch_async(prefetchQ, block);
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [path section]))
  {
    return UITableViewAutomaticDimension;
  }

  +[(CalendarMessageCell *)InboxRepliedEventInvitationCell];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index path selected: [%@]", &v14, 0xCu);
  }

  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_inboxRepliedSectionDelegate);

    if (WeakRetained)
    {
      v10 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:pathCopy cache:self->_itemCache];
      if (v10)
      {
        v11 = kCalUILogInboxHandle;
        if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Requesting from our delegate that the following event should be inspected: [%@]", &v14, 0xCu);
        }

        v12 = objc_loadWeakRetained(&self->_inboxRepliedSectionDelegate);
        [v12 inboxRepliedSectionViewController:self inspectEvent:v10];

        if (self->_destination == 2)
        {
          objc_storeStrong(&self->_currentSelectedEvent, v10);
        }
      }
    }

    else
    {
      v13 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No delegate found.  Will not request that event be inspected.", &v14, 2u);
      }
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v4 dismissViewControllerAnimated:animated completion:completion];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  view = [(InboxRepliedSectionViewController *)self view];
  [interactionCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(InboxRepliedSectionViewController *)self view];
  tableView = [(InboxRepliedSectionViewController *)self tableView];
  [view2 convertPoint:tableView toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  tableView2 = [(InboxRepliedSectionViewController *)self tableView];
  v18 = [tableView2 indexPathForRowAtPoint:{v14, v16}];

  v19 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:v18 cache:self->_itemCache];
  v20 = v19;
  v21 = 0;
  if (v18 && v19)
  {
    tableView3 = [(InboxRepliedSectionViewController *)self tableView];
    [tableView3 rectForRowAtIndexPath:v18];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    objc_storeStrong(&self->_indexPathForRowWithContextMenu, v18);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10014EFE4;
    v39[3] = &unk_10020EBF0;
    v40 = v20;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10014F050;
    v32[3] = &unk_1002121E8;
    v32[4] = self;
    v33 = v18;
    v34 = v40;
    v35 = v24;
    v36 = v26;
    v37 = v28;
    v38 = v30;
    v21 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v39 actionProvider:v32];
  }

  return v21;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  targetedPreview = self->_targetedPreview;
  self->_targetedPreview = 0;
  interactionCopy = interaction;

  tableView = [(InboxRepliedSectionViewController *)self tableView];
  [interactionCopy locationInView:tableView];
  v10 = v9;
  v12 = v11;

  tableView2 = [(InboxRepliedSectionViewController *)self tableView];
  v14 = [tableView2 indexPathForRowAtPoint:{v10, v12}];

  if (v14)
  {
    tableView3 = [(InboxRepliedSectionViewController *)self tableView];
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
    v11[2] = sub_10014F518;
    v11[3] = &unk_10020EC68;
    v11[4] = self;
    v12 = event;
    [animatorCopy addAnimations:v11];
  }
}

- (void)_saveStatus:(int64_t)status forItemAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(InboxRepliedSectionViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:pathCopy];

  notification = [v8 notification];
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v10 = [notification eventFromEventStore:?];
  [v8 setShowsCommentPrompt:0 animated:0 initialValue:0];
  if (status)
  {
    [v10 setParticipationStatus:status];
    hasRecurrenceRules = 2;
  }

  else
  {
    hasRecurrenceRules = [v10 hasRecurrenceRules];
  }

  pendingComments = self->_pendingComments;
  v13 = [notification URL];
  v14 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = self->_pendingComments;
    v16 = [notification URL];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    responseComment = [v10 responseComment];
    v18 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:responseComment];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = &stru_1002133B8;
    }

    if (([v14 isEqualToString:v19] & 1) == 0)
    {
      v41 = notification;
      if (![v14 length])
      {

        v14 = 0;
      }

      proposedStartDate = [v10 proposedStartDate];
      timeZone = [v10 timeZone];
      v22 = [CUIKNotificationDescriptionGenerator comment:v14 withInsertedAutoCommentForDate:proposedStartDate timeZone:timeZone];
      [v10 setResponseComment:v22];

      notification = v41;
    }
  }

  eKUI_editor = [(InboxRepliedSectionViewController *)self EKUI_editor];
  v44 = 0;
  v24 = [eKUI_editor saveEvent:v10 span:hasRecurrenceRules error:&v44];
  v25 = v44;
  if (v24)
  {
    tableView2 = [(InboxRepliedSectionViewController *)self tableView];
    [tableView2 indexPathForCell:v8];
    v27 = v42 = notification;
    v38 = v25;
    v28 = [v27 row];
    +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v27 section]);
    v29 = v40 = v8;
    [tableView2 moveRowAtIndexPath:v27 toIndexPath:v29];
    v39 = eKUI_editor;
    v30 = [(NSArray *)self->_occurrenceInfos mutableCopy];
    v31 = [(NSArray *)v30 objectAtIndex:v28];
    [(NSArray *)v30 removeObjectAtIndex:v28];
    [(NSArray *)v30 insertObject:v31 atIndex:0];
    occurrenceInfos = self->_occurrenceInfos;
    self->_occurrenceInfos = v30;
    v33 = v30;

    [(NSMutableArray *)self->_itemCache removeObjectAtIndex:v28];
    itemCache = self->_itemCache;
    v35 = +[NSNull null];
    v36 = itemCache;
    v25 = v38;
    [(NSMutableArray *)v36 insertObject:v35 atIndex:0];

    eKUI_editor = v39;
    [(InboxRepliedSectionViewController *)self _updateCell:v40 atIndexPath:v29];

    v8 = v40;
    notification = v42;
  }

  else
  {
    v37 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error saving new invitation status: %@", buf, 0xCu);
    }
  }
}

- (void)_savePendingComments
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldShowFocusBanner = [(InboxRepliedSectionViewController *)selfCopy shouldShowFocusBanner];
  itemCache = selfCopy->_itemCache;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014FB00;
  v5[3] = &unk_100212688;
  v5[4] = selfCopy;
  v5[5] = shouldShowFocusBanner;
  [(NSMutableArray *)itemCache enumerateObjectsUsingBlock:v5];
  objc_sync_exit(selfCopy);

  [(NSMutableDictionary *)selfCopy->_pendingComments removeAllObjects];
}

- (void)performAction:(int64_t)action forCell:(id)cell sourceView:(id)view sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled
{
  allCopy = all;
  cellCopy = cell;
  viewCopy = view;
  cancelledCopy = cancelled;
  if (allCopy)
  {
    sub_100170F58(a2, self);
  }

  v17 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    v19 = CalendarMessageCellStringForButtonAction(action);
    v37 = 138412546;
    v38 = v19;
    v39 = 2112;
    v40 = cellCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Action [%@] performed for cell: [%@].", &v37, 0x16u);
  }

  notification = [cellCopy notification];
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v22 = [notification eventFromEventStore:eventStore];
  v23 = v22;
  if (v22)
  {
    [v22 setInvitationStatus:0];
    if (action == 1)
    {
      v24 = 2;
    }

    else
    {
      if (action != 4)
      {
        if (action == 2)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_22;
      }

      if ([v23 allowsResponseCommentModifications])
      {
        v26 = +[CUIKPreferences sharedPreferences];
        promptForCommentWhenDeclining = [v26 promptForCommentWhenDeclining];

        if (promptForCommentWhenDeclining == 2 || promptForCommentWhenDeclining == 1 && ([v23 calendar], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "source"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "wantsCommentPromptWhenDeclining"), v29, v28, v30))
        {
          responseComment = [v23 responseComment];
          v32 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:responseComment];

          if (!v32)
          {
            v32 = &stru_1002133B8;
          }

          pendingComments = self->_pendingComments;
          v34 = [notification URL];
          [(NSMutableDictionary *)pendingComments setObject:v32 forKeyedSubscript:v34];

          [cellCopy setShowsCommentPrompt:1 animated:1 initialValue:v32];
          goto LABEL_23;
        }
      }

      v24 = 3;
    }

LABEL_22:
    tableView = [(InboxRepliedSectionViewController *)self tableView];
    v36 = [tableView indexPathForCell:cellCopy];
    [(InboxRepliedSectionViewController *)self _saveStatus:v24 forItemAtIndexPath:v36];

    goto LABEL_23;
  }

  v25 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
  {
    v37 = 138412546;
    v38 = eventStore;
    v39 = 2112;
    v40 = notification;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find event in event store [%@] that corresponds with notification: [%@].", &v37, 0x16u);
  }

LABEL_23:
}

- (void)messageCell:(id)cell committedComment:(id)comment
{
  pendingComments = self->_pendingComments;
  commentCopy = comment;
  notification = [cell notification];
  v7 = [notification URL];
  [(NSMutableDictionary *)pendingComments setObject:commentCopy forKeyedSubscript:v7];
}

- (id)noContentStringForInboxTableView:(id)view
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"No Events" value:&stru_1002133B8 table:0];

  return v4;
}

- (void)_localeChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@].", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150174;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_eventStoreChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@]", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001502C4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_identityChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@]", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150414;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_refreshIfNeeded
{
  if (self->_needsRefresh)
  {
    v3 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Kicking off a refresh for [%@]", buf, 0xCu);
    }

    selfCopy2 = self;
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    eventStore = [(CUIKCalendarModel *)selfCopy3->_model eventStore];
    inboxRepliedSectionItems = [eventStore inboxRepliedSectionItems];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100150828;
    v31[3] = &unk_1002126B0;
    v31[4] = selfCopy3;
    v6 = [NSPredicate predicateWithBlock:v31];
    v7 = [inboxRepliedSectionItems filteredArrayUsingPredicate:v6];
    occurrenceInfos = selfCopy3->_occurrenceInfos;
    selfCopy3->_occurrenceInfos = v7;

    v9 = [(NSArray *)selfCopy3->_occurrenceInfos count];
    v10 = [[NSMutableArray alloc] initWithCapacity:v9];
    itemCache = selfCopy3->_itemCache;
    selfCopy3->_itemCache = v10;

    v12 = +[NSNull null];
    if (v9)
    {
      v13 = v9;
      do
      {
        [(NSMutableArray *)selfCopy3->_itemCache addObject:v12];
        v13 = (v13 - 1);
      }

      while (v13);
    }

    v14 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      selfCopy = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Number of replied events after refresh: [%lu]", buf, 0xCu);
    }

    if ([(NSMutableDictionary *)selfCopy3->_pendingComments count])
    {
      allKeys = [(NSMutableDictionary *)selfCopy3->_pendingComments allKeys];
      v16 = [allKeys mutableCopy];

      shouldShowFocusBanner = [(InboxRepliedSectionViewController *)selfCopy3 shouldShowFocusBanner];
      if (v9)
      {
        v18 = 0;
        v19 = &v9[-1]._inboxRepliedSectionDelegate + 7;
        v20 = shouldShowFocusBanner;
        do
        {
          v21 = [NSIndexPath indexPathForRow:v18 inSection:v20];
          v22 = [(InboxRepliedSectionViewController *)selfCopy3 _notificationForIndexPath:v21 cache:selfCopy3->_itemCache];

          v23 = [v22 URL];
          [v16 removeObject:v23];

          v24 = [v16 count] == 0;
          v26 = v19 == v18++ || v24;
        }

        while ((v26 & 1) == 0);
      }

      [(NSMutableDictionary *)selfCopy3->_pendingComments removeObjectsForKeys:v16];
    }

    objc_sync_exit(selfCopy3);
    tableView = [(InboxRepliedSectionViewController *)selfCopy3 tableView];
    [tableView reloadData];
    if ([(NSArray *)selfCopy3->_occurrenceInfos count])
    {
      v28 = 0;
    }

    else
    {
      v28 = [(InboxRepliedSectionViewController *)selfCopy3 shouldShowFocusBanner]^ 1;
    }

    [tableView setShowNoContentString:v28];
    selfCopy3->_lastDisplayedFocusMode = [(CUIKCalendarModel *)selfCopy3->_model focusFilterMode];
    selfCopy2->_needsRefresh = 0;
  }
}

- (void)_updateCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    v10 = [(InboxRepliedSectionViewController *)self _notificationForIndexPath:pathCopy cache:self->_itemCache];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100150CA8;
    v32 = sub_100150CB8;
    v33 = 0;
    organizerNamesQ = self->_organizerNamesQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100150CC0;
    block[3] = &unk_1002100B0;
    v27 = &v28;
    block[4] = self;
    v12 = v10;
    v26 = v12;
    dispatch_sync(organizerNamesQ, block);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setOrganizerName:v29[5]];
    }

    authorView = [cellCopy authorView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      authorView2 = [cellCopy authorView];
      tableView = [(InboxRepliedSectionViewController *)self tableView];
      isTracking = [tableView isTracking];
      if (isTracking)
      {
        v18 = 0;
        isRunningTest = 1;
      }

      else
      {
        tableView2 = [(InboxRepliedSectionViewController *)self tableView];
        if ([tableView2 isScrollAnimating])
        {
          v18 = 0;
          isRunningTest = 1;
        }

        else
        {
          tableView3 = [(InboxRepliedSectionViewController *)self tableView];
          if ([tableView3 isDecelerating])
          {
            v18 = 1;
            isRunningTest = 1;
          }

          else
          {
            isRunningTest = [UIApp isRunningTest];
            v18 = 1;
          }
        }
      }

      [authorView2 setLoadContactsAsynchronously:isRunningTest];
      if (v18)
      {
      }

      if ((isTracking & 1) == 0)
      {
      }
    }

    [cellCopy setDelegate:self];
    [cellCopy setNotification:v12];
    pendingComments = self->_pendingComments;
    notification = [cellCopy notification];
    v22 = [notification URL];
    v23 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v22];

    [cellCopy setShowsCommentPrompt:v23 != 0 animated:0 initialValue:v23];
    inPadSidebar = [(InboxRepliedSectionViewController *)self inPadSidebar];
    [cellCopy setDrawsOwnSeparator:inPadSidebar];
    [cellCopy setInPadSidebar:inPadSidebar];

    _Block_object_dispose(&v28, 8);
  }
}

- (id)_itemForIndexPath:(id)path cache:(id)cache
{
  pathCopy = path;
  cacheCopy = cache;
  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    if (pathCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v10 = [pathCopy row];
      v11 = [cacheCopy objectAtIndex:v10];
      v12 = +[NSNull null];
      v13 = [v12 isEqual:v11];

      if (v13)
      {
        if (v10 >= [(NSArray *)selfCopy->_occurrenceInfos count])
        {
          v8 = 0;
        }

        else
        {
          v14 = [(NSArray *)selfCopy->_occurrenceInfos objectAtIndex:v10];
          v8 = [[InboxRepliedSectionItem alloc] initWithOccurrenceInfo:v14];
          [cacheCopy replaceObjectAtIndex:v10 withObject:v8];
        }
      }

      else
      {
        v8 = v11;
      }

      objc_sync_exit(selfCopy);
      goto LABEL_12;
    }

    v15 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "nil 'indexPath' provided.  Will not fetch item.", v17, 2u);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_eventForIndexPath:(id)path cache:(id)cache
{
  pathCopy = path;
  cacheCopy = cache;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
LABEL_2:
    v8 = 0;
    goto LABEL_5;
  }

  if (!pathCopy)
  {
    v11 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "nil 'indexPath' provided.  Will not fetch event.", v12, 2u);
    }

    goto LABEL_2;
  }

  v9 = [(InboxRepliedSectionViewController *)self _itemForIndexPath:pathCopy cache:cacheCopy];
  v8 = [(InboxRepliedSectionViewController *)self _eventForItem:v9];

LABEL_5:

  return v8;
}

- (id)_notificationForIndexPath:(id)path cache:(id)cache
{
  pathCopy = path;
  cacheCopy = cache;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100150CA8;
  v29 = sub_100150CB8;
  v30 = 0;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [pathCopy section]))
  {
    v8 = 0;
  }

  else
  {
    if (pathCopy)
    {
      v9 = [(InboxRepliedSectionViewController *)self _itemForIndexPath:pathCopy cache:cacheCopy];
      notificationQ = self->_notificationQ;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015129C;
      block[3] = &unk_10020F500;
      v23 = &v25;
      v11 = v9;
      v22 = v11;
      dispatch_sync(notificationQ, block);
      if (!v26[5])
      {
        v12 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:pathCopy cache:cacheCopy];
        if (v12)
        {
          v13 = [[EKCalendarEventInvitationNotification alloc] initWithEvent:v12];
          v14 = v26[5];
          v26[5] = v13;

          v15 = self->_notificationQ;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1001512E8;
          v18[3] = &unk_10020F3C0;
          v19 = v11;
          v20 = &v25;
          dispatch_sync(v15, v18);
        }
      }
    }

    else
    {
      v16 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "nil 'indexPath' provided.  Will not fetch notification.", buf, 2u);
      }
    }

    v8 = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

- (id)_eventForItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    event = [itemCopy event];
    if (!event)
    {
      occurrenceInfo = [v5 occurrenceInfo];
      event = [(InboxRepliedSectionViewController *)self _eventForOccurrenceInfo:occurrenceInfo];
      if (event)
      {
        [v5 setEvent:event];
      }
    }
  }

  else
  {
    v8 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "nil 'item' provided.  Will not fetch event.", v10, 2u);
    }

    event = 0;
  }

  return event;
}

- (id)_eventForOccurrenceInfo:(id)info
{
  infoCopy = info;
  [infoCopy date];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  objectID = [infoCopy objectID];
  v8 = [eventStore eventForObjectID:objectID occurrenceDate:v5 checkValid:0];

  if (!v8)
  {
    v9 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      objectID2 = [infoCopy objectID];
      v13 = 138543618;
      v14 = objectID2;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not fetch event with rowID [%{public}@] and start date: [%{public}@].", &v13, 0x16u);
    }
  }

  return v8;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = 0;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0 && "paste:" != action)
  {
    if ("copy:" == action)
    {
      indexPathForRowWithContextMenu = self->_indexPathForRowWithContextMenu;
      if (indexPathForRowWithContextMenu)
      {
        v9 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:indexPathForRowWithContextMenu cache:self->_itemCache];
        v10 = v9;
        if (v9)
        {
          v18 = v9;
          v11 = [NSArray arrayWithObjects:&v18 count:1];
          v12 = 1;
LABEL_12:
          v7 = [CUIKPasteboardUtilities allEventsValidForAction:v12 fromEvents:v11];

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
        v16.receiver = self;
        v16.super_class = InboxRepliedSectionViewController;
        v7 = [(InboxRepliedSectionViewController *)&v16 canPerformAction:action withSender:senderCopy];
        goto LABEL_16;
      }

      v13 = self->_indexPathForRowWithContextMenu;
      if (v13)
      {
        v14 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:v13 cache:self->_itemCache];
        v10 = v14;
        if (v14)
        {
          v17 = v14;
          v11 = [NSArray arrayWithObjects:&v17 count:1];
          v12 = 0;
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
  indexPathForRowWithContextMenu = self->_indexPathForRowWithContextMenu;
  if (indexPathForRowWithContextMenu)
  {
    v5 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:indexPathForRowWithContextMenu cache:self->_itemCache];
    if (v5)
    {
      v8 = v5;
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [NSSet setWithObject:v8];
      [pasteboardManager cutEvents:v7 delegate:self];

      v5 = v8;
    }
  }
}

- (void)copy:(id)copy
{
  indexPathForRowWithContextMenu = self->_indexPathForRowWithContextMenu;
  if (indexPathForRowWithContextMenu)
  {
    v5 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:indexPathForRowWithContextMenu cache:self->_itemCache];
    if (v5)
    {
      v8 = v5;
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [NSSet setWithObject:v8];
      [pasteboardManager copyEvents:v7 delegate:self];

      v5 = v8;
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

- (InboxRepliedSectionViewControllerDelegate)inboxRepliedSectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxRepliedSectionDelegate);

  return WeakRetained;
}

@end