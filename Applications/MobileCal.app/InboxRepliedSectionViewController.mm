@interface InboxRepliedSectionViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)inPadSidebar;
- (BOOL)isFocusBannerSection:(int64_t)a3;
- (BOOL)shouldShowFocusBanner;
- (CGSize)preferredContentSize;
- (InboxRepliedSectionViewController)initWithModel:(id)a3;
- (InboxRepliedSectionViewControllerDelegate)inboxRepliedSectionDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_eventForIndexPath:(id)a3 cache:(id)a4;
- (id)_eventForItem:(id)a3;
- (id)_eventForOccurrenceInfo:(id)a3;
- (id)_itemForIndexPath:(id)a3 cache:(id)a4;
- (id)_notificationForIndexPath:(id)a3 cache:(id)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)noContentStringForInboxTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)title;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_eventStoreChanged:(id)a3;
- (void)_focusConfigurationChanged:(id)a3;
- (void)_identityChanged:(id)a3;
- (void)_localeChanged:(id)a3;
- (void)_refreshIfNeeded;
- (void)_savePendingComments;
- (void)_saveStatus:(int64_t)a3 forItemAtIndexPath:(id)a4;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_updateCell:(id)a3 atIndexPath:(id)a4;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)focusBannerTableViewCellToggled:(id)a3;
- (void)loadView;
- (void)messageCell:(id)a3 committedComment:(id)a4;
- (void)performAction:(int64_t)a3 forCell:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 appliesToAll:(BOOL)a7 ifCancelled:(id)a8;
- (void)setDestination:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation InboxRepliedSectionViewController

- (InboxRepliedSectionViewController)initWithModel:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = InboxRepliedSectionViewController;
  v6 = [(InboxRepliedSectionViewController *)&v21 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
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
    [v19 addObserver:v7 selector:"_identityChanged:" name:CUIKCalendarModelIdentityChangedNotification object:v5];
    [v19 addObserver:v7 selector:"_focusConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:v5];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(InboxRepliedSectionViewController *)self view];
  [v3 removeInteraction:self->_contextMenuInteraction];

  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = 0;

  v5.receiver = self;
  v5.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v5 dealloc];
}

- (void)setDestination:(unint64_t)a3
{
  if (self->_destination != a3)
  {
    self->_destination = a3;
    v4 = [(InboxRepliedSectionViewController *)self tableView];
    [v4 reloadData];
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
  v3 = [(InboxRepliedSectionViewController *)self inPadSidebar];
  if (v3)
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
  if (v3)
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

  v10 = [(InboxRepliedSectionViewController *)self view];
  [v10 addInteraction:self->_contextMenuInteraction];
}

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Replied" value:&stru_1002133B8 table:0];

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v5 viewWillAppear:a3];
  lastDisplayedFocusMode = self->_lastDisplayedFocusMode;
  if (lastDisplayedFocusMode != [(CUIKCalendarModel *)self->_model focusFilterMode])
  {
    self->_needsRefresh = 1;
  }

  [(InboxRepliedSectionViewController *)self _refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v6 viewDidAppear:a3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v7 viewWillDisappear:a3];
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
  v3 = [(InboxRepliedSectionViewController *)self tableView];
  EKUIContainedControllerIdealWidth();
  [v3 sizeThatFits:?];
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

- (void)_selectedOccurrencesChanged:(id)a3
{
  v4 = a3;
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

- (void)_focusConfigurationChanged:(id)a3
{
  self->_needsRefresh = 1;
  if (self->_viewIsVisible)
  {
    [(InboxRepliedSectionViewController *)self _refreshIfNeeded];
  }
}

- (BOOL)shouldShowFocusBanner
{
  v3 = [(CUIKCalendarModel *)self->_model focusFilterMode];
  if (v3)
  {
    if (CalSystemSolariumEnabled())
    {
      LOBYTE(v3) = [(InboxRepliedSectionViewController *)self destination]!= 2;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)isFocusBannerSection:(int64_t)a3
{
  result = [(InboxRepliedSectionViewController *)self shouldShowFocusBanner];
  if (a3)
  {
    return 0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(InboxRepliedSectionViewController *)self isFocusBannerSection:a4])
  {
    return 1;
  }

  occurrenceInfos = self->_occurrenceInfos;

  return [(NSArray *)occurrenceInfos count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v5 section]))
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
    v10 = [(InboxRepliedSectionViewController *)self tableView];
    v11 = [v10 dequeueReusableCellWithIdentifier:v9 forIndexPath:v5];

    v12 = [(InboxRepliedSectionViewController *)self view];
    v13 = [v12 window];

    EKUIPushFallbackSizingContextWithViewHierarchy();
    [(InboxRepliedSectionViewController *)self _updateCell:v11 atIndexPath:v5];
    EKUIPopFallbackSizingContextWithViewHierarchy();
    [(EKUIFocusBannerTableViewCell *)v11 setDestination:[(InboxRepliedSectionViewController *)self destination]];
    v14 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Loading cell at index path: [%@]", &v17, 0xCu);
    }
  }

  return v11;
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_itemCache;
  objc_sync_exit(v6);

  prefetchQ = v6->_prefetchQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E8AC;
  block[3] = &unk_10020F2E0;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v5;
  dispatch_async(prefetchQ, block);
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [a4 section]))
  {
    return UITableViewAutomaticDimension;
  }

  +[(CalendarMessageCell *)InboxRepliedEventInvitationCell];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Index path selected: [%@]", &v14, 0xCu);
  }

  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v7 section]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_inboxRepliedSectionDelegate);

    if (WeakRetained)
    {
      v10 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:v7 cache:self->_itemCache];
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

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = InboxRepliedSectionViewController;
  [(InboxRepliedSectionViewController *)&v4 dismissViewControllerAnimated:a3 completion:a4];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(InboxRepliedSectionViewController *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(InboxRepliedSectionViewController *)self view];
  v12 = [(InboxRepliedSectionViewController *)self tableView];
  [v11 convertPoint:v12 toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  v17 = [(InboxRepliedSectionViewController *)self tableView];
  v18 = [v17 indexPathForRowAtPoint:{v14, v16}];

  v19 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:v18 cache:self->_itemCache];
  v20 = v19;
  v21 = 0;
  if (v18 && v19)
  {
    v22 = [(InboxRepliedSectionViewController *)self tableView];
    [v22 rectForRowAtIndexPath:v18];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  targetedPreview = self->_targetedPreview;
  self->_targetedPreview = 0;
  v7 = a3;

  v8 = [(InboxRepliedSectionViewController *)self tableView];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(InboxRepliedSectionViewController *)self tableView];
  v14 = [v13 indexPathForRowAtPoint:{v10, v12}];

  if (v14)
  {
    v15 = [(InboxRepliedSectionViewController *)self tableView];
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
    v11[2] = sub_10014F518;
    v11[3] = &unk_10020EC68;
    v11[4] = self;
    v12 = v9;
    [v6 addAnimations:v11];
  }
}

- (void)_saveStatus:(int64_t)a3 forItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(InboxRepliedSectionViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v8 notification];
  v43 = [(CUIKCalendarModel *)self->_model eventStore];
  v10 = [v9 eventFromEventStore:?];
  [v8 setShowsCommentPrompt:0 animated:0 initialValue:0];
  if (a3)
  {
    [v10 setParticipationStatus:a3];
    v11 = 2;
  }

  else
  {
    v11 = [v10 hasRecurrenceRules];
  }

  pendingComments = self->_pendingComments;
  v13 = [v9 URL];
  v14 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = self->_pendingComments;
    v16 = [v9 URL];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    v17 = [v10 responseComment];
    v18 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v17];

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
      v41 = v9;
      if (![v14 length])
      {

        v14 = 0;
      }

      v20 = [v10 proposedStartDate];
      v21 = [v10 timeZone];
      v22 = [CUIKNotificationDescriptionGenerator comment:v14 withInsertedAutoCommentForDate:v20 timeZone:v21];
      [v10 setResponseComment:v22];

      v9 = v41;
    }
  }

  v23 = [(InboxRepliedSectionViewController *)self EKUI_editor];
  v44 = 0;
  v24 = [v23 saveEvent:v10 span:v11 error:&v44];
  v25 = v44;
  if (v24)
  {
    v26 = [(InboxRepliedSectionViewController *)self tableView];
    [v26 indexPathForCell:v8];
    v27 = v42 = v9;
    v38 = v25;
    v28 = [v27 row];
    +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v27 section]);
    v29 = v40 = v8;
    [v26 moveRowAtIndexPath:v27 toIndexPath:v29];
    v39 = v23;
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

    v23 = v39;
    [(InboxRepliedSectionViewController *)self _updateCell:v40 atIndexPath:v29];

    v8 = v40;
    v9 = v42;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(InboxRepliedSectionViewController *)v2 shouldShowFocusBanner];
  itemCache = v2->_itemCache;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014FB00;
  v5[3] = &unk_100212688;
  v5[4] = v2;
  v5[5] = v3;
  [(NSMutableArray *)itemCache enumerateObjectsUsingBlock:v5];
  objc_sync_exit(v2);

  [(NSMutableDictionary *)v2->_pendingComments removeAllObjects];
}

- (void)performAction:(int64_t)a3 forCell:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 appliesToAll:(BOOL)a7 ifCancelled:(id)a8
{
  v9 = a7;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (v9)
  {
    sub_100170F58(a2, self);
  }

  v17 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    v19 = CalendarMessageCellStringForButtonAction(a3);
    v37 = 138412546;
    v38 = v19;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Action [%@] performed for cell: [%@].", &v37, 0x16u);
  }

  v20 = [v14 notification];
  v21 = [(CUIKCalendarModel *)self->_model eventStore];
  v22 = [v20 eventFromEventStore:v21];
  v23 = v22;
  if (v22)
  {
    [v22 setInvitationStatus:0];
    if (a3 == 1)
    {
      v24 = 2;
    }

    else
    {
      if (a3 != 4)
      {
        if (a3 == 2)
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
        v27 = [v26 promptForCommentWhenDeclining];

        if (v27 == 2 || v27 == 1 && ([v23 calendar], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "source"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "wantsCommentPromptWhenDeclining"), v29, v28, v30))
        {
          v31 = [v23 responseComment];
          v32 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v31];

          if (!v32)
          {
            v32 = &stru_1002133B8;
          }

          pendingComments = self->_pendingComments;
          v34 = [v20 URL];
          [(NSMutableDictionary *)pendingComments setObject:v32 forKeyedSubscript:v34];

          [v14 setShowsCommentPrompt:1 animated:1 initialValue:v32];
          goto LABEL_23;
        }
      }

      v24 = 3;
    }

LABEL_22:
    v35 = [(InboxRepliedSectionViewController *)self tableView];
    v36 = [v35 indexPathForCell:v14];
    [(InboxRepliedSectionViewController *)self _saveStatus:v24 forItemAtIndexPath:v36];

    goto LABEL_23;
  }

  v25 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
  {
    v37 = 138412546;
    v38 = v21;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find event in event store [%@] that corresponds with notification: [%@].", &v37, 0x16u);
  }

LABEL_23:
}

- (void)messageCell:(id)a3 committedComment:(id)a4
{
  pendingComments = self->_pendingComments;
  v6 = a4;
  v8 = [a3 notification];
  v7 = [v8 URL];
  [(NSMutableDictionary *)pendingComments setObject:v6 forKeyedSubscript:v7];
}

- (id)noContentStringForInboxTableView:(id)a3
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"No Events" value:&stru_1002133B8 table:0];

  return v4;
}

- (void)_localeChanged:(id)a3
{
  v4 = a3;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@].", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150174;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_eventStoreChanged:(id)a3
{
  v4 = a3;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@]", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001502C4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_identityChanged:(id)a3
{
  v4 = a3;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
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
      v33 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Kicking off a refresh for [%@]", buf, 0xCu);
    }

    v29 = self;
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(CUIKCalendarModel *)v4->_model eventStore];
    v30 = [v5 inboxRepliedSectionItems];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100150828;
    v31[3] = &unk_1002126B0;
    v31[4] = v4;
    v6 = [NSPredicate predicateWithBlock:v31];
    v7 = [v30 filteredArrayUsingPredicate:v6];
    occurrenceInfos = v4->_occurrenceInfos;
    v4->_occurrenceInfos = v7;

    v9 = [(NSArray *)v4->_occurrenceInfos count];
    v10 = [[NSMutableArray alloc] initWithCapacity:v9];
    itemCache = v4->_itemCache;
    v4->_itemCache = v10;

    v12 = +[NSNull null];
    if (v9)
    {
      v13 = v9;
      do
      {
        [(NSMutableArray *)v4->_itemCache addObject:v12];
        v13 = (v13 - 1);
      }

      while (v13);
    }

    v14 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Number of replied events after refresh: [%lu]", buf, 0xCu);
    }

    if ([(NSMutableDictionary *)v4->_pendingComments count])
    {
      v15 = [(NSMutableDictionary *)v4->_pendingComments allKeys];
      v16 = [v15 mutableCopy];

      v17 = [(InboxRepliedSectionViewController *)v4 shouldShowFocusBanner];
      if (v9)
      {
        v18 = 0;
        v19 = &v9[-1]._inboxRepliedSectionDelegate + 7;
        v20 = v17;
        do
        {
          v21 = [NSIndexPath indexPathForRow:v18 inSection:v20];
          v22 = [(InboxRepliedSectionViewController *)v4 _notificationForIndexPath:v21 cache:v4->_itemCache];

          v23 = [v22 URL];
          [v16 removeObject:v23];

          v24 = [v16 count] == 0;
          v26 = v19 == v18++ || v24;
        }

        while ((v26 & 1) == 0);
      }

      [(NSMutableDictionary *)v4->_pendingComments removeObjectsForKeys:v16];
    }

    objc_sync_exit(v4);
    v27 = [(InboxRepliedSectionViewController *)v4 tableView];
    [v27 reloadData];
    if ([(NSArray *)v4->_occurrenceInfos count])
    {
      v28 = 0;
    }

    else
    {
      v28 = [(InboxRepliedSectionViewController *)v4 shouldShowFocusBanner]^ 1;
    }

    [v27 setShowNoContentString:v28];
    v4->_lastDisplayedFocusMode = [(CUIKCalendarModel *)v4->_model focusFilterMode];
    v29->_needsRefresh = 0;
  }
}

- (void)_updateCell:(id)a3 atIndexPath:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v9 section]))
  {
    v10 = [(InboxRepliedSectionViewController *)self _notificationForIndexPath:v9 cache:self->_itemCache];
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
      [v8 setOrganizerName:v29[5]];
    }

    v13 = [v8 authorView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v8 authorView];
      v16 = [(InboxRepliedSectionViewController *)self tableView];
      v17 = [v16 isTracking];
      if (v17)
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        v4 = [(InboxRepliedSectionViewController *)self tableView];
        if ([v4 isScrollAnimating])
        {
          v18 = 0;
          v19 = 1;
        }

        else
        {
          v5 = [(InboxRepliedSectionViewController *)self tableView];
          if ([v5 isDecelerating])
          {
            v18 = 1;
            v19 = 1;
          }

          else
          {
            v19 = [UIApp isRunningTest];
            v18 = 1;
          }
        }
      }

      [v15 setLoadContactsAsynchronously:v19];
      if (v18)
      {
      }

      if ((v17 & 1) == 0)
      {
      }
    }

    [v8 setDelegate:self];
    [v8 setNotification:v12];
    pendingComments = self->_pendingComments;
    v21 = [v8 notification];
    v22 = [v21 URL];
    v23 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v22];

    [v8 setShowsCommentPrompt:v23 != 0 animated:0 initialValue:v23];
    v24 = [(InboxRepliedSectionViewController *)self inPadSidebar];
    [v8 setDrawsOwnSeparator:v24];
    [v8 setInPadSidebar:v24];

    _Block_object_dispose(&v28, 8);
  }
}

- (id)_itemForIndexPath:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v6 section]))
  {
    if (v6)
    {
      v9 = self;
      objc_sync_enter(v9);
      v10 = [v6 row];
      v11 = [v7 objectAtIndex:v10];
      v12 = +[NSNull null];
      v13 = [v12 isEqual:v11];

      if (v13)
      {
        if (v10 >= [(NSArray *)v9->_occurrenceInfos count])
        {
          v8 = 0;
        }

        else
        {
          v14 = [(NSArray *)v9->_occurrenceInfos objectAtIndex:v10];
          v8 = [[InboxRepliedSectionItem alloc] initWithOccurrenceInfo:v14];
          [v7 replaceObjectAtIndex:v10 withObject:v8];
        }
      }

      else
      {
        v8 = v11;
      }

      objc_sync_exit(v9);
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

- (id)_eventForIndexPath:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v6 section]))
  {
LABEL_2:
    v8 = 0;
    goto LABEL_5;
  }

  if (!v6)
  {
    v11 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "nil 'indexPath' provided.  Will not fetch event.", v12, 2u);
    }

    goto LABEL_2;
  }

  v9 = [(InboxRepliedSectionViewController *)self _itemForIndexPath:v6 cache:v7];
  v8 = [(InboxRepliedSectionViewController *)self _eventForItem:v9];

LABEL_5:

  return v8;
}

- (id)_notificationForIndexPath:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100150CA8;
  v29 = sub_100150CB8;
  v30 = 0;
  if (-[InboxRepliedSectionViewController isFocusBannerSection:](self, "isFocusBannerSection:", [v6 section]))
  {
    v8 = 0;
  }

  else
  {
    if (v6)
    {
      v9 = [(InboxRepliedSectionViewController *)self _itemForIndexPath:v6 cache:v7];
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
        v12 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:v6 cache:v7];
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

- (id)_eventForItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 event];
    if (!v6)
    {
      v7 = [v5 occurrenceInfo];
      v6 = [(InboxRepliedSectionViewController *)self _eventForOccurrenceInfo:v7];
      if (v6)
      {
        [v5 setEvent:v6];
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

    v6 = 0;
  }

  return v6;
}

- (id)_eventForOccurrenceInfo:(id)a3
{
  v4 = a3;
  [v4 date];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [(CUIKCalendarModel *)self->_model eventStore];
  v7 = [v4 objectID];
  v8 = [v6 eventForObjectID:v7 occurrenceDate:v5 checkValid:0];

  if (!v8)
  {
    v9 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v4 objectID];
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not fetch event with rowID [%{public}@] and start date: [%{public}@].", &v13, 0x16u);
    }
  }

  return v8;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0 && "paste:" != a3)
  {
    if ("copy:" == a3)
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
      if ("cut:" != a3)
      {
        v16.receiver = self;
        v16.super_class = InboxRepliedSectionViewController;
        v7 = [(InboxRepliedSectionViewController *)&v16 canPerformAction:a3 withSender:v6];
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

- (void)cut:(id)a3
{
  indexPathForRowWithContextMenu = self->_indexPathForRowWithContextMenu;
  if (indexPathForRowWithContextMenu)
  {
    v5 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:indexPathForRowWithContextMenu cache:self->_itemCache];
    if (v5)
    {
      v8 = v5;
      v6 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [NSSet setWithObject:v8];
      [v6 cutEvents:v7 delegate:self];

      v5 = v8;
    }
  }
}

- (void)copy:(id)a3
{
  indexPathForRowWithContextMenu = self->_indexPathForRowWithContextMenu;
  if (indexPathForRowWithContextMenu)
  {
    v5 = [(InboxRepliedSectionViewController *)self _eventForIndexPath:indexPathForRowWithContextMenu cache:self->_itemCache];
    if (v5)
    {
      v8 = v5;
      v6 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [NSSet setWithObject:v8];
      [v6 copyEvents:v7 delegate:self];

      v5 = v8;
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

- (InboxRepliedSectionViewControllerDelegate)inboxRepliedSectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxRepliedSectionDelegate);

  return WeakRetained;
}

@end