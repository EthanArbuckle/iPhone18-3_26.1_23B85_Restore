@interface ListViewController
- (BOOL)_isVisible;
- (BOOL)_processScrollingMessagesOnEveryFrameFromListViewController;
- (BOOL)_rowDrawsBackground:(id)background;
- (BOOL)_selectedDateIsVisible;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasContent;
- (CGSize)scrubberCellSize;
- (ListViewController)initWithModel:(id)model window:(id)window;
- (NSString)description;
- (double)contentInset;
- (id)_dateForFirstVisibleRow;
- (id)_eventForRowAtIndexPath:(id)path;
- (id)_indexPathForDate:(id)date;
- (id)backButtonTitleForEventDetails;
- (id)contentUnavailableConfigurationForState:(id)state;
- (id)defaultEventForSelectedDate;
- (id)pasteboardManager;
- (id)sceneTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addAllObservers;
- (void)_contentCategorySizeChangedNotification:(id)notification;
- (void)_deleteEventAtIndexPath:(id)path withCompletionHandler:(id)handler;
- (void)_deselectAllSelectedRowsAnimated:(BOOL)animated;
- (void)_deselectRowAtIndexPath:(id)path animated:(BOOL)animated;
- (void)_localeChanged:(id)changed;
- (void)_multiSelect:(id)select;
- (void)_selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position;
- (void)_selectTodayDate;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_setTopVisibleDateAsSelectedDate;
- (void)_showEvent:(id)event viewController:(id)controller animated:(BOOL)animated showComments:(BOOL)comments modal:(BOOL)modal;
- (void)_timeChangedSignificantly:(id)significantly;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)date;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateNavigationTitleToDate:(id)date;
- (void)_updatePaletteWeekDayHeaderDayFrames;
- (void)_updateSeparatorVisibilityForOccurrenceCell:(id)cell atIndexPath:(id)path;
- (void)_updateSeparatorVisibilityForRowAtIndexPath:(id)path;
- (void)_weekNumberChanged:(id)changed;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventIconButtonPressed:(id)pressed;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (void)loadView;
- (void)paste:(id)paste;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)refresh;
- (void)refreshIfNeeded;
- (void)scrollToDate:(id)date animated:(BOOL)animated;
- (void)scrollToTodayAnimated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)selectEvent:(id)event animated:(BOOL)animated;
- (void)setNeedsRefresh:(BOOL)refresh;
- (void)setSelectedDateAndFirstVisibleHeaderDate:(id)date;
- (void)setUpViewConstraints;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)updatePalette:(id)palette;
- (void)updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:(id)path;
- (void)updateUIToTopHeaderDate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ListViewController

- (ListViewController)initWithModel:(id)model window:(id)window
{
  modelCopy = model;
  windowCopy = window;
  if (!modelCopy)
  {
    v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Non-nil 'model' required." userInfo:0];
    objc_exception_throw(v12);
  }

  v8 = windowCopy;
  v13.receiver = self;
  v13.super_class = ListViewController;
  v9 = [(MainViewController *)&v13 initWithWindow:windowCopy model:modelCopy];
  v10 = v9;
  if (v9)
  {
    v9->_needsRefresh = 1;
    v9->_overrideExtendedEdges = 1;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = ListViewController;
  v4 = [(ListViewController *)&v9 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  model = [(MainViewController *)self model];
  [v5 setKey:@"model" withObject:model];

  build = [v5 build];

  return build;
}

- (void)dealloc
{
  tableView = [(ListViewController *)self tableView];
  [tableView setDelegate:0];

  v4.receiver = self;
  v4.super_class = ListViewController;
  [(MainViewController *)&v4 dealloc];
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = ListViewController;
  [(ListViewController *)&v26 loadView];
  if ([(ListViewController *)self overrideExtendedEdges])
  {
    [(ListViewController *)self setEdgesForExtendedLayout:0];
  }

  if (!self->_dateToShowWhenVisible)
  {
    v3 = CUIKTodayDate();
    model = [(MainViewController *)self model];
    calendar = [model calendar];
    timeZone = [calendar timeZone];
    v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];
    dateToShowWhenVisible = self->_dateToShowWhenVisible;
    self->_dateToShowWhenVisible = v7;
  }

  v9 = [[ListTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ListTableView *)v9 setDelegate:self];
  [(ListTableView *)v9 setDataSource:self];
  [(ListTableView *)v9 _setMarginWidth:0.0];
  [(ListTableView *)v9 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [(ListTableView *)v9 setRowHeight:UITableViewAutomaticDimension];
  [(ListTableView *)v9 setShowsHorizontalScrollIndicator:0];
  [(ListTableView *)v9 setShowsVerticalScrollIndicator:0];
  [(ListTableView *)v9 setScrollsToTop:0];
  [(ListTableView *)v9 setAllowsFocus:0];
  [(ListTableView *)v9 setAllowsMultipleSelection:1];
  [(ListTableView *)v9 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"ListViewSectionHeaderView"];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [(ListTableView *)v9 registerClass:v10 forCellReuseIdentifier:v12];

  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [(ListTableView *)v9 registerClass:v13 forCellReuseIdentifier:v15];

  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [(ListTableView *)v9 registerClass:v16 forCellReuseIdentifier:v18];

  if ([(ListViewController *)self destination]== 2)
  {
    if (CalSplitViewEnabled())
    {
      [(ListTableView *)v9 setBackgroundColor:0];
    }

    else
    {
      v19 = +[UIColor secondarySystemBackgroundColor];
      [(ListTableView *)v9 setBackgroundColor:v19];
    }
  }

  [(ListViewController *)self setTableView:v9];
  v20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_multiSelect:"];
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  self->_multiSelectGestureRecognizer = v20;

  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setAllowedTouchTypes:&off_100219F18];
  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setDelegate:self];
  [(ListTableView *)v9 addGestureRecognizer:self->_multiSelectGestureRecognizer];
  view = [(ListViewController *)self view];
  [view addSubview:v9];

  cellFactory = [(ListViewController *)self cellFactory];
  if (cellFactory)
  {
    v24 = [[DayNavigationViewController alloc] initWithModel:self->super._model];
    scrubberController = self->_scrubberController;
    self->_scrubberController = v24;

    [(DayNavigationViewController *)self->_scrubberController setCellFactory:cellFactory];
    [(DayNavigationViewController *)self->_scrubberController setDelegate:self];
    [(ListViewController *)self addChildViewController:self->_scrubberController];
    [(DayNavigationViewController *)self->_scrubberController didMoveToParentViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = ListViewController;
  [(ListViewController *)&v16 viewWillAppear:appear];
  [(ListViewController *)self setUpViewConstraints];
  self->_isVisible = 1;
  [(ListViewController *)self _addAllObservers];
  [(ListViewController *)self refresh];
  tableView = [(ListViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  if ([indexPathsForVisibleRows count])
  {
    v6 = [indexPathsForVisibleRows objectAtIndex:0];
    section = [v6 section];
    model = [(MainViewController *)self model];
    [model fetchCachedDaysInBackgroundStartingFromSection:section usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];
  }

  selectedDay = [(CUIKCalendarModel *)self->super._model selectedDay];
  date = [selectedDay date];
  firstVisibleHeaderDate = self->_firstVisibleHeaderDate;
  self->_firstVisibleHeaderDate = date;

  model2 = [(MainViewController *)self model];
  selectedDay2 = [(CUIKCalendarModel *)self->super._model selectedDay];
  date2 = [selectedDay2 date];
  self->_cachedTopHeaderSection = [model2 sectionForCachedOccurrencesOnDate:date2 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  if (CalSolariumEnabled())
  {
    selectedDay3 = [(CUIKCalendarModel *)self->super._model selectedDay];
    [(ListViewController *)self _updateNavigationTitleToDate:selectedDay3];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ListViewController;
  [(MainViewController *)&v6 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ListViewController_ViewDidAppearNotification" object:self];

  model = [(MainViewController *)self model];
  [model startNotificationMonitor];

  [(CUIKCalendarModel *)self->super._model simulateFirstLoadFinished];
  [(ListViewController *)self setPreventScrollingForNextViewAppear:0];
}

- (void)setUpViewConstraints
{
  tableView = [(ListViewController *)self tableView];
  superview = [tableView superview];

  if (superview)
  {
    tableView2 = [(ListViewController *)self tableView];
    tableView3 = [(ListViewController *)self tableView];
    [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [NSLayoutConstraint constraintWithItem:tableView2 attribute:3 relatedBy:0 toItem:superview attribute:3 multiplier:1.0 constant:0.0];
    [v6 setActive:1];

    v7 = [NSLayoutConstraint constraintWithItem:superview attribute:4 relatedBy:0 toItem:tableView2 attribute:4 multiplier:1.0 constant:0.0];
    [v7 setActive:1];

    v8 = [NSLayoutConstraint constraintWithItem:superview attribute:7 relatedBy:0 toItem:tableView2 attribute:7 multiplier:1.0 constant:0.0];
    [v8 setActive:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_isVisible = 0;
  self->_userIsScrolling = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  if (![(ListViewController *)self _selectedDateIsVisible])
  {
    [(ListViewController *)self _setTopVisibleDateAsSelectedDate];
  }

  v6.receiver = self;
  v6.super_class = ListViewController;
  [(ListViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ListViewController;
  [(ListViewController *)&v4 viewDidDisappear:disappear];
  [(ListViewController *)self _deselectAllSelectedRowsAnimated:0];
}

- (void)setSelectedDateAndFirstVisibleHeaderDate:(id)date
{
  dateCopy = date;
  delegate = [(ListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ListViewController *)self delegate];
    date = [dateCopy date];
    [delegate2 listViewController:self didScrollToDate:date];
  }

  else
  {
    [(CUIKCalendarModel *)self->super._model setSelectedDate:dateCopy];
  }

  date2 = [dateCopy date];

  firstVisibleHeaderDate = self->_firstVisibleHeaderDate;
  self->_firstVisibleHeaderDate = date2;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setTodayButtonVisible:0];
  [paletteCopy setDateStringVisible:0];
  [paletteCopy setWeekdayHeaderVisible:0];
  [paletteCopy setDividerLineVisible:0];
  [paletteCopy setDayScrubberController:0];
  if (CalSolariumEnabled())
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [paletteCopy setFocusBannerPlacement:v3];
}

- (void)_updatePaletteWeekDayHeaderDayFrames
{
  v12 = +[NSMutableArray array];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  [(ListViewController *)self scrubberCellSize];
  v6 = v5;
  v8 = v7;
  v9 = 7;
  do
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v11 = [NSValue valueWithCGRect:x, y, v6, v8];
    if (IsLeftToRight)
    {
      [v12 addObject:v11];
    }

    else
    {
      [v12 insertObject:v11 atIndex:0];
    }

    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = v6;
    v14.size.height = v8;
    x = CGRectGetMaxX(v14);
    --v9;
  }

  while (v9);
  [(PaletteView *)self->_palette setDayHeaderFrames:v12];
}

- (CGSize)scrubberCellSize
{
  weekScrollView = [(DayNavigationViewController *)self->_scrubberController weekScrollView];
  [weekScrollView cellSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  parentViewController = [(ListViewController *)self parentViewController];
  if (![parentViewController conformsToProtocol:&OBJC_PROTOCOL___ListViewControllerDelegate])
  {
    goto LABEL_6;
  }

  parentViewController2 = [(ListViewController *)self parentViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  parentViewController3 = [(ListViewController *)self parentViewController];
  listViewControllerContainerHandlesShowEvent = [parentViewController3 listViewControllerContainerHandlesShowEvent];

  if (listViewControllerContainerHandlesShowEvent)
  {
    parentViewController4 = [(ListViewController *)self parentViewController];
    [parentViewController4 showEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
    goto LABEL_16;
  }

LABEL_7:
  if (!mode)
  {
    parentViewController4 = 0;
LABEL_14:
    v18 = 0;
    v17 = eventCopy;
    goto LABEL_15;
  }

  if (mode != 3)
  {
    v19 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];
    parentViewController4 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v19 canvasView:3];
    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [parentViewController4 ekui_adjustNavBarToTransparentStyle];
    }

    goto LABEL_14;
  }

  v16 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:eventCopy model:self->super._model creationMethod:0 viewStart:3 eventEditViewDelegate:self];
  v17 = eventCopy;
  parentViewController4 = v16;
  v18 = 1;
LABEL_15:
  [(ListViewController *)self _showEvent:v17 viewController:parentViewController4 animated:animatedCopy showComments:mode == 2 modal:v18];
LABEL_16:
}

- (void)_showEvent:(id)event viewController:(id)controller animated:(BOOL)animated showComments:(BOOL)comments modal:(BOOL)modal
{
  modalCopy = modal;
  commentsCopy = comments;
  animatedCopy = animated;
  eventCopy = event;
  controllerCopy = controller;
  startCalendarDate = [eventCopy startCalendarDate];
  [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:startCalendarDate];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:eventCopy];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  if (!controllerCopy)
  {
    [(ListViewController *)self selectEvent:eventCopy animated:animatedCopy];
    goto LABEL_10;
  }

  if (!commentsCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = 0;
    if (!modalCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    navigationController = [(ListViewController *)self navigationController];
    [navigationController presentViewController:controllerCopy animated:animatedCopy completion:v15];

    goto LABEL_8;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001AFC8;
  v17[3] = &unk_10020EB00;
  v18 = controllerCopy;
  v15 = objc_retainBlock(v17);

  if (modalCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  [(ListViewController *)self showViewController:controllerCopy sender:self animated:animatedCopy completion:v15];
LABEL_8:

LABEL_10:
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  parentViewController = [(ListViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  backButtonTitleForEventDetails = [(ListViewController *)self backButtonTitleForEventDetails];
  [navigationItem setBackButtonTitle:backButtonTitleForEventDetails];

  if ([(ListViewController *)self isMemberOfClass:objc_opt_class()]&& CalSolariumEnabled())
  {
    [(ListViewController *)self presentViewController:controllerCopy animated:1 completion:completionCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ListViewController;
    [(MainViewController *)&v16 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)backButtonTitleForEventDetails
{
  selectedDate = [(CUIKCalendarModel *)self->super._model selectedDate];
  dayComponents = [selectedDate dayComponents];
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  v6 = CUIKStringForDateComponents();

  return v6;
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:?];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(ListViewController *)self setNeedsRefresh:1];
  if (self->_isVisible)
  {
    dateToShowWhenVisible = self->_dateToShowWhenVisible;
    self->_dateToShowWhenVisible = 0;

    [(ListViewController *)self scrollToSelectedDateAnimated:animatedCopy];
  }

  else
  {
    objc_storeStrong(&self->_dateToShowWhenVisible, date);
  }

  [(ListViewController *)self updateUIToTopHeaderDate];
}

- (void)_selectTodayDate
{
  v7 = CUIKTodayDate();
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];

  v6 = [[EKCalendarDate alloc] initWithDate:v7 timeZone:timeZone];
  [(ListViewController *)self selectDate:v6 animated:0];
}

- (id)sceneTitle
{
  v3 = self->_firstVisibleHeaderDate;
  if (v3 || ([(ListViewController *)self _dateForFirstVisibleRow], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = CUIKStringForDateWithCommaAndYear();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refresh
{
  [(ListViewController *)self setNeedsRefresh:1];

  [(ListViewController *)self refreshIfNeeded];
}

- (BOOL)_isVisible
{
  if (self->_isVisible)
  {
    return [(ListViewController *)self isViewLoaded];
  }

  else
  {
    return 0;
  }
}

- (void)refreshIfNeeded
{
  if ([(ListViewController *)self _isVisible])
  {
    if (self->_needsRefresh)
    {
      [(ListViewController *)self setNeedsRefresh:0];
      tableView = [(ListViewController *)self tableView];
      indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
      [tableView reloadData];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = indexPathsForSelectedRows;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(ListViewController *)self _selectRowAtIndexPath:*(*(&v13 + 1) + 8 * i) animated:0 scrollPosition:0, v13];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      if ([(ListViewController *)self shouldPreserveDateAcrossRefresh]&& !self->_preventScrollingForNextViewAppear)
      {
        [(ListViewController *)self scrollToDate:self->_firstVisibleHeaderDate animated:0];
      }

      numberOfSections = [tableView numberOfSections];
      if (tableView)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
        }
      }

      if (numberOfSections && self->_dateToShowWhenVisible)
      {
        if ([(ListViewController *)self shouldAutoScrollToSelectedDateAfterFirstRefresh])
        {
          [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:self->_dateToShowWhenVisible];
          dateToShowWhenVisible = self->_dateToShowWhenVisible;
          self->_dateToShowWhenVisible = 0;

          [(MainViewController *)self setSceneTitleNeedsUpdate];
          [(ListViewController *)self scrollToSelectedDateAnimated:0];
        }
      }

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:@"ListViewController_DidRefreshNotification" object:self];
    }
  }

  else
  {

    [(ListViewController *)self setNeedsRefresh:1];
  }
}

- (void)setNeedsRefresh:(BOOL)refresh
{
  if (self->_needsRefresh != refresh)
  {
    self->_needsRefresh = refresh;
  }
}

- (BOOL)hasContent
{
  tableView = [(ListViewController *)self tableView];
  v3 = [tableView numberOfSections] != 0;

  return v3;
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(ListViewController *)self hasContent])
  {
    [(ListViewController *)self _setContentUnavailableConfiguration:0];
  }

  else
  {
    v4 = [(ListViewController *)self contentUnavailableConfigurationForState:stateCopy];
    [(ListViewController *)self _setContentUnavailableConfiguration:v4];
  }
}

- (id)contentUnavailableConfigurationForState:(id)state
{
  stateCopy = state;
  v4 = +[UIContentUnavailableConfiguration emptyConfiguration];
  v5 = [v4 updatedConfigurationForState:stateCopy];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"No Events" value:&stru_1002133B8 table:0];
  [v5 setText:v7];

  v8 = +[UIColor secondaryLabelColor];
  textProperties = [v5 textProperties];
  [textProperties setColor:v8];

  return v5;
}

- (BOOL)_selectedDateIsVisible
{
  tableView = [(ListViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
  if ([indexPathsForVisibleRows count])
  {
    model = [(MainViewController *)self model];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = indexPathsForVisibleRows;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = indexPathsForVisibleRows;
      v18 = tableView;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [model dateForCachedOccurrencesInSection:objc_msgSend(*(*(&v19 + 1) + 8 * i) usingFilter:{"section", v17, v18, v19), -[ListViewController showFilteredData](self, "showFilteredData")}];
          selectedDay = [model selectedDay];
          date = [selectedDay date];
          v14 = [v11 isEqualToDate:date];

          if (v14)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_12:
      indexPathsForVisibleRows = v17;
      tableView = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_dateForFirstVisibleRow
{
  tableView = [(ListViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  if ([indexPathsForVisibleRows count])
  {
    v5 = [indexPathsForVisibleRows objectAtIndex:0];
    v6 = -[CUIKCalendarModel dateForCachedOccurrencesInSection:usingFilter:](self->super._model, "dateForCachedOccurrencesInSection:usingFilter:", [v5 section], -[ListViewController showFilteredData](self, "showFilteredData"));
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollToTodayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = CUIKTodayDate();
  [(ListViewController *)self scrollToDate:v5 animated:animatedCopy];
}

- (void)scrollToDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  if (dateCopy)
  {
    v29 = dateCopy;
    if ([(ListViewController *)self _isVisible]&& [(CUIKCalendarModel *)self->super._model numberOfDaysWithCachedOccurrencesUsingFilter:[(ListViewController *)self showFilteredData]]>= 1)
    {
      v7 = CUIKTodayDate();
      v8 = [(CUIKCalendarModel *)self->super._model sectionForCachedOccurrencesOnDate:v7 usingFilter:[(ListViewController *)self showFilteredData]];
      v9 = [(CUIKCalendarModel *)self->super._model numberOfCachedOccurrencesInSection:v8 usingFilter:[(ListViewController *)self showFilteredData]];
      v10 = [(CUIKCalendarModel *)self->super._model sectionForCachedOccurrencesOnDate:v29 usingFilter:[(ListViewController *)self showFilteredData]];
      if (!v9 && (v10 == v8 || v10 - 1 == v8))
      {
        v12 = v7;

        v29 = v12;
      }

      _dateForFirstVisibleRow = [(ListViewController *)self _dateForFirstVisibleRow];
      if (_dateForFirstVisibleRow)
      {
        v14 = _dateForFirstVisibleRow;
        model = [(MainViewController *)self model];
        calendar = [model calendar];
        _dateForFirstVisibleRow2 = [(ListViewController *)self _dateForFirstVisibleRow];
        v18 = [calendar components:16 fromDate:_dateForFirstVisibleRow2 toDate:v29 options:0];
        v19 = [v18 day];

        if (v19 >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = -v19;
        }

        v21 = v29;
        if (v20 < 7)
        {
          animatedCopy = animatedCopy;
        }

        else
        {
          animatedCopy = 0;
        }
      }

      else
      {
        v21 = v29;
      }

      v22 = [(ListViewController *)self _indexPathForDate:v21];
      if ([v22 row] != 0x7FFFFFFFFFFFFFFFLL)
      {
        tableView = [(ListViewController *)self tableView];
        [tableView scrollToRowAtIndexPath:v22 atScrollPosition:1 animated:animatedCopy];
      }

      v24 = [(ListViewController *)self _indexPathForDate:v29];
      section = [v24 section];
      tableView2 = [(ListViewController *)self tableView];
      numberOfSections = [tableView2 numberOfSections];

      if (section <= numberOfSections)
      {
        tableView3 = [(ListViewController *)self tableView];
        [tableView3 scrollToRowAtIndexPath:v24 atScrollPosition:1 animated:animatedCopy];
      }
    }

    dateCopy = v29;
  }
}

- (id)_indexPathForDate:(id)date
{
  dateCopy = date;
  if ([(CUIKCalendarModel *)self->super._model numberOfDaysWithCachedOccurrencesUsingFilter:[(ListViewController *)self showFilteredData]])
  {
    eventStore = [(CUIKCalendarModel *)self->super._model eventStore];
    timeZone = [eventStore timeZone];
    v7 = [dateCopy dateForDayInTimeZone:timeZone];

    v8 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:[(CUIKCalendarModel *)self->super._model sectionForCachedOccurrencesOnDate:v7 usingFilter:[(ListViewController *)self showFilteredData]]];
  }

  else
  {
    v8 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0];
  }

  return v8;
}

- (void)_setTopVisibleDateAsSelectedDate
{
  if ([(ListViewController *)self shouldUpdateModelSelectedDate])
  {
    v10 = self->_firstVisibleHeaderDate;
    model = [(MainViewController *)self model];
    if (v10)
    {
      selectedDate = [model selectedDate];
      date = [selectedDate date];
      v6 = [(NSDate *)v10 compare:date];

      if (v6)
      {
        calendar = [model calendar];
        timeZone = [calendar timeZone];

        v9 = [EKCalendarDate calendarDateWithDate:v10 timeZone:timeZone];
        [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v9];
      }
    }
  }
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(ListViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateBackButtonToDate:dateCopy];
  }
}

- (void)_updateNavigationTitleToDate:(id)date
{
  dateCopy = date;
  navigationController = [(ListViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateTitleToDate:dateCopy];
  }
}

- (double)contentInset
{
  tableView = [(ListViewController *)self tableView];
  [tableView contentInset];
  v4 = v3;

  return v4;
}

- (BOOL)_processScrollingMessagesOnEveryFrameFromListViewController
{
  delegate = [(ListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ListViewController *)self delegate];
    v5 = [delegate2 wantsScrollingMessagesOnEveryFrameFromListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultEventForSelectedDate
{
  _dateForFirstVisibleRow = [(ListViewController *)self _dateForFirstVisibleRow];
  v4 = [(ListViewController *)self _indexPathForDate:_dateForFirstVisibleRow];
  v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v4 section]);

  if ([v5 section] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [NSIndexPath indexPathForRow:0 inSection:0];

    v5 = v6;
  }

  v7 = [(ListViewController *)self _eventForRowAtIndexPath:v5];

  return v7;
}

- (void)selectEvent:(id)event animated:(BOOL)animated
{
  animatedCopy = animated;
  eventCopy = event;
  v7 = [(CUIKCalendarModel *)self->super._model indexPathsForOccurrence:eventCopy usingFilter:[(ListViewController *)self showFilteredData]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ListViewController *)self _selectRowAtIndexPath:*(*(&v12 + 1) + 8 * v11) animated:animatedCopy scrollPosition:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] >= 1)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
    [(ListViewController *)self _updateSeparatorVisibilityForRowAtIndexPath:v4];
  }

  [(ListViewController *)self _updateSeparatorVisibilityForRowAtIndexPath:pathCopy];
}

- (void)_addAllObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_eventStoreChanged:" name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->super._model];
  [v3 addObserver:self selector:"_timeChangedSignificantly:" name:CUIKCalendarModelSignificantTimeChangeNotification object:self->super._model];
  [v3 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
  [v3 addObserver:self selector:"_weekNumberChanged:" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];
  [v3 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->super._model];
  [v3 addObserver:self selector:"_contentCategorySizeChangedNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_timeChangedSignificantly:(id)significantly
{
  userInfo = [significantly userInfo];
  v6 = [userInfo objectForKey:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  if (([v6 BOOLValue] & 1) != 0 || !v6)
  {
    tableView = [(ListViewController *)self tableView];
    [tableView reloadData];
  }

  _objc_release_x1();
}

- (void)_localeChanged:(id)changed
{
  tableView = [(ListViewController *)self tableView];
  [tableView reloadData];
}

- (void)_weekNumberChanged:(id)changed
{
  tableView = [(ListViewController *)self tableView];
  [tableView reloadData];
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  v6 = [NSSet setWithArray:selectedOccurrences];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  indexPathsForSelectedRows = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        model2 = [(MainViewController *)self model];
        v14 = [model2 cachedOccurrenceAtIndexPath:v12];

        if (([v6 containsObject:v14] & 1) == 0)
        {
          [(ListViewController *)self _deselectRowAtIndexPath:v12 animated:1];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedRows countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        model3 = [(MainViewController *)self model];
        v22 = [model3 indexPathsForOccurrence:v20 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v29;
          do
          {
            v27 = 0;
            do
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [(ListViewController *)self _selectRowAtIndexPath:*(*(&v28 + 1) + 8 * v27) animated:1 scrollPosition:0];
              v27 = v27 + 1;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v25);
        }

        v19 = v19 + 1;
      }

      while (v19 != v17);
      v17 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }
}

- (void)_contentCategorySizeChangedNotification:(id)notification
{
  _dateForFirstVisibleRow = [(ListViewController *)self _dateForFirstVisibleRow];
  tableView = [(ListViewController *)self tableView];
  [tableView reloadData];

  v5 = _dateForFirstVisibleRow;
  if (_dateForFirstVisibleRow)
  {
    [(ListViewController *)self scrollToDate:_dateForFirstVisibleRow animated:0];
    v5 = _dateForFirstVisibleRow;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  model = [(MainViewController *)self model];
  v6 = [model numberOfDaysWithCachedOccurrencesUsingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  swipedRow = self->_swipedRow;
  if (swipedRow)
  {
    v6 = ((__PAIR128__(v6, [(ListViewController *)self tableView:viewCopy numberOfRowsInSection:[(NSIndexPath *)swipedRow section]]) - 1) >> 64);
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  model = [(MainViewController *)self model];
  v7 = [model numberOfCachedOccurrencesInSection:section usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  swipedRow = self->_swipedRow;
  if (swipedRow)
  {
    return v7 - ([(NSIndexPath *)swipedRow section]== section);
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  model = [(MainViewController *)self model];
  v9 = [model cachedOccurrenceAtIndexPath:pathCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  v43 = -[CUIKCalendarModel dateForCachedOccurrencesInSection:usingFilter:](self->super._model, "dateForCachedOccurrencesInSection:usingFilter:", [pathCopy section], -[ListViewController showFilteredData](self, "showFilteredData"));
  endDate = [v9 endDate];
  v11 = CUIKNowDate();
  v12 = CUIKCalendar();
  if ([endDate isBeforeDate:v11])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v43 isBeforeDayForDate:v11 inCalendar:v12];
  }

  if ([v9 isReminderIntegrationEvent])
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    [v16 setDelegate:self];
LABEL_8:
    [v16 updateWithEvent:v9 dimmed:v13];
    goto LABEL_10;
  }

  if ([v9 isAllDay])
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v18 forIndexPath:pathCopy];

    goto LABEL_8;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v16 = [viewCopy dequeueReusableCellWithIdentifier:v20 forIndexPath:pathCopy];

  startDate = [v9 startDate];
  [v9 endDateUnadjustedForLegacyClients];
  HIDWORD(v42) = v13;
  v22 = v11;
  v24 = v23 = endDate;
  LODWORD(v42) = [v12 cal_isMultidayEventForUIWithStartDate:startDate endDate:v24];

  endDate = v23;
  v11 = v22;

  [v16 updateWithEvent:v9 isMultiday:v42 occurrenceStartDate:v43 dimmed:HIDWORD(v42)];
LABEL_10:
  [objc_opt_class() adjustedSeparatorInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [viewCopy safeAreaInsets];
  if (IsLeftToRight)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v37 = CalInterfaceIsLeftToRight();
  [viewCopy safeAreaInsets];
  if (v37)
  {
    v40 = v39;
  }

  else
  {
    v40 = v38;
  }

  [v16 setSeparatorInset:{v26, v28 + v36, v30, v32 + v40, v42}];
  [v16 setDrawsOwnRowSeparators:1];
  [(ListViewController *)self _updateSeparatorVisibilityForOccurrenceCell:v16 atIndexPath:pathCopy];

  return v16;
}

- (void)_updateSeparatorVisibilityForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(ListTableView *)self->_tableView cellForRowAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ListViewController *)self _updateSeparatorVisibilityForOccurrenceCell:v4 atIndexPath:pathCopy];
  }
}

- (void)_updateSeparatorVisibilityForOccurrenceCell:(id)cell atIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  model = [(MainViewController *)self model];
  v8 = [model numberOfCachedOccurrencesInSection:objc_msgSend(pathCopy usingFilter:{"section"), -[ListViewController showFilteredData](self, "showFilteredData")}];

  if ([pathCopy row] >= (v8 - 1) || -[ListViewController _rowDrawsBackground:](self, "_rowDrawsBackground:", pathCopy))
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] + 1, objc_msgSend(pathCopy, "section"));
    v11 = [(ListViewController *)self _rowDrawsBackground:v10];

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4;
    }
  }

  if ([pathCopy row])
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  [cellCopy setSeparatorEdges:v12];
}

- (BOOL)_rowDrawsBackground:(id)background
{
  backgroundCopy = background;
  indexPathsForSelectedRows = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v6 = indexPathsForSelectedRows;
  if (indexPathsForSelectedRows && ([indexPathsForSelectedRows containsObject:backgroundCopy] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    model = [(MainViewController *)self model];
    v9 = [model cachedOccurrenceAtIndexPath:backgroundCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    v7 = [EKUIListViewCell drawsBackgroundForEvent:v9];
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  model = [(MainViewController *)self model];
  v8 = [model dateForCachedOccurrencesInSection:section usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"ListViewSectionHeaderView"];

  model2 = [(MainViewController *)self model];
  calendar = [model2 calendar];
  timeZone = [calendar timeZone];
  [v9 configureWithDate:v8 timeZone:timeZone];

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (self->_userIsScrolling)
  {
    if (self->_cachedTopHeaderSection > section)
    {
      v9 = [(CUIKCalendarModel *)self->super._model dateForCachedOccurrencesInSection:section usingFilter:[(ListViewController *)self showFilteredData]];
      calendar = [(CUIKCalendarModel *)self->super._model calendar];
      timeZone = [calendar timeZone];
      v12 = [EKCalendarDate calendarDateWithDate:v9 timeZone:timeZone];

      [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v12];
      [(ListViewController *)self updateUIToTopHeaderDate];
    }

    tableView = [(ListViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    firstObject = [indexPathsForVisibleRows firstObject];
    if ([firstObject section] >= section)
    {
      self->_cachedTopHeaderSection = section;
    }
  }
}

- (void)tableView:(id)view didEndDisplayingHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (self->_userIsScrolling && self->_cachedTopHeaderSection >= section)
  {
    tableView = [(ListViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    firstObject = [indexPathsForVisibleRows firstObject];
    v12 = firstObject;
    if (firstObject)
    {
      cachedTopHeaderSection = [firstObject section];
    }

    else
    {
      cachedTopHeaderSection = self->_cachedTopHeaderSection;
    }

    self->_cachedTopHeaderSection = cachedTopHeaderSection;
    v14 = [(CUIKCalendarModel *)self->super._model dateForCachedOccurrencesInSection:cachedTopHeaderSection usingFilter:[(ListViewController *)self showFilteredData]];
    calendar = [(CUIKCalendarModel *)self->super._model calendar];
    timeZone = [calendar timeZone];
    v17 = [EKCalendarDate calendarDateWithDate:v14 timeZone:timeZone];

    [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v17];
    [(ListViewController *)self updateUIToTopHeaderDate];
  }
}

- (void)updateUIToTopHeaderDate
{
  if (![(ListViewController *)self _processScrollingMessagesOnEveryFrameFromListViewController])
  {
    v3 = CalSolariumEnabled();
    selectedDate = [(CUIKCalendarModel *)self->super._model selectedDate];
    if (v3)
    {
      [(ListViewController *)self _updateNavigationTitleToDate:selectedDate];
    }

    else
    {
      [(ListViewController *)self _updateBackButtonOnBackViewControllerToDate:selectedDate];
    }

    [(MainViewController *)self setSceneTitleNeedsUpdate];
  }

  dayScrubberController = [(PaletteView *)self->_palette dayScrubberController];
  [dayScrubberController setSelectedDate:self->_firstVisibleHeaderDate animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  presentedViewController = [(ListViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    [(ListViewController *)self setPreventScrollingForNextViewAppear:1];
    model = [(MainViewController *)self model];
    v7 = [model cachedOccurrenceAtIndexPath:pathCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    [(ListViewController *)self showEvent:v7 animated:1 showMode:1 context:0];
  }

  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(ListViewController *)self showFilteredData])
  {
    [(ListViewController *)self tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    model = [(MainViewController *)self model];
    v8 = [model cachedOccurrenceAtIndexPath:pathCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    [(CUIKCalendarModel *)self->super._model deselectOccurrence:v8];
    [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:pathCopy];
  }
}

- (void)_deselectRowAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  tableView = self->_tableView;
  pathCopy = path;
  [(ListTableView *)tableView deselectRowAtIndexPath:pathCopy animated:animatedCopy];
  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:pathCopy];
}

- (void)_selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position
{
  animatedCopy = animated;
  tableView = self->_tableView;
  pathCopy = path;
  [(ListTableView *)tableView selectRowAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:pathCopy];
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  navigationController = [(ListViewController *)self navigationController];
  [navigationController popViewControllersAfterAndIncluding:controllerCopy animated:!self->_editorDismissedFromDelete];

  self->_editorDismissedFromDelete = 0;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10001D9BC;
    v12 = &unk_10020EBC8;
    selfCopy = self;
    v14 = handlerCopy;
    v8 = objc_retainBlock(&v9);
  }

  else
  {
    v8 = 0;
  }

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:0, v9, v10, v11, v12];
  [(ListViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    self->_userIsScrolling = 0;
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy && (-[ListViewController presentedViewController](self, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isBeingDismissed], v9, (v10 & 1) == 0))
  {
    v12 = [(ListViewController *)self _eventForRowAtIndexPath:pathCopy];
    if (v12)
    {
      selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v14 = [selectedOccurrences containsObject:v12];

      if ((v14 & 1) == 0)
      {
        v20 = v12;
        v15 = [NSArray arrayWithObjects:&v20 count:1];
        [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:v15];
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10001DC28;
      v18[3] = &unk_10020EBF0;
      v19 = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001DC6C;
      v17[3] = &unk_10020EC40;
      v17[4] = self;
      v11 = [UIContextMenuConfiguration configurationWithIdentifier:pathCopy previewProvider:v18 actionProvider:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  identifier = [configurationCopy identifier];
  v8 = [viewCopy cellForRowAtIndexPath:identifier];

  identifier2 = [configurationCopy identifier];

  v16 = identifier2;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [viewCopy reloadRowsAtIndexPaths:v10 withRowAnimation:100];

  if (v8)
  {
    window = [v8 window];

    if (window)
    {
      v12 = [UITargetedPreview alloc];
      contentView = [v8 contentView];
      v14 = objc_alloc_init(UIPreviewParameters);
      window = [v12 initWithView:contentView parameters:v14];
    }
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
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
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001E038;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = event;
    [animatorCopy addAnimations:v10];
  }
}

- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  v6 = [(CUIKCalendarModel *)self->super._model selectedOccurrences:view];
  v7 = [v6 count];

  if (v7 == 1)
  {
    model = self->super._model;

    [(CUIKCalendarModel *)model setSelectedOccurrences:&__NSArray0__struct];
  }
}

- (id)_eventForRowAtIndexPath:(id)path
{
  pathCopy = path;
  model = [(MainViewController *)self model];
  v6 = [model cachedOccurrenceAtIndexPath:pathCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = +[CUIKPreferences sharedPreferences];
  swipeToDeleteEnabled = [v10 swipeToDeleteEnabled];

  if (style == 1 && swipeToDeleteEnabled)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001E2FC;
    v13[3] = &unk_10020EC90;
    v13[4] = self;
    v14 = pathCopy;
    v15 = viewCopy;
    [(ListViewController *)self _deleteEventAtIndexPath:v14 withCompletionHandler:v13];
  }

  else
  {
    swipedRow = self->_swipedRow;
    self->_swipedRow = 0;
  }
}

- (void)_deleteEventAtIndexPath:(id)path withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(ListViewController *)self _eventForRowAtIndexPath:path];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Delete" value:&stru_1002133B8 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E5F0;
  v14[3] = &unk_10020ECB8;
  v14[4] = self;
  v15 = v7;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = v7;
  v12 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:0 viewController:self barButtonItem:0 forEvent:v11 stringForDeleteButton:v9 withCompletionHandler:v14];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v12;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(ListViewController *)self _eventForRowAtIndexPath:path];
  v5 = +[CUIKPreferences sharedPreferences];
  if (![v5 swipeToDeleteEnabled])
  {

    goto LABEL_5;
  }

  isEditable = [v4 isEditable];

  if ((isEditable & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  v7 = eventCopy;
  if (forwardCopy)
  {
    nextOccurrence = [eventCopy nextOccurrence];
    if (nextOccurrence)
    {
      tableView = [(ListViewController *)self tableView];
      v10 = [(ListViewController *)self numberOfSectionsInTableView:tableView];

      tableView2 = [(ListViewController *)self tableView];
      v12 = [(ListViewController *)self tableView:tableView2 numberOfRowsInSection:--v10];

      v23 = v10;
      v24 = v12 - 1;
      v13 = [NSIndexPath indexPathWithIndexes:&v23 length:2];
      model = [(MainViewController *)self model];
      v15 = [model cachedOccurrenceAtIndexPath:v13 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

      startDate = [nextOccurrence startDate];
      startDate2 = [v15 startDate];
      v18 = [startDate isBeforeDate:startDate2];
LABEL_8:
      v20 = v18;

      goto LABEL_9;
    }
  }

  else
  {
    previousOccurrence = [eventCopy previousOccurrence];
    nextOccurrence = previousOccurrence;
    if (previousOccurrence && [previousOccurrence reminderOccurrenceType] != 1)
    {
      v23 = 0;
      v24 = 0;
      v13 = [NSIndexPath indexPathWithIndexes:&v23 length:2];
      model2 = [(MainViewController *)self model];
      v15 = [model2 cachedOccurrenceAtIndexPath:v13 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

      startDate = [nextOccurrence startDate];
      startDate2 = [v15 startDate];
      v18 = [startDate isAfterDate:startDate2];
      goto LABEL_8;
    }
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  v10 = eventCopy;
  if (forwardCopy)
  {
    [eventCopy nextOccurrence];
  }

  else
  {
    [eventCopy previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    startCalendarDate = [v7 startCalendarDate];
    [(ListViewController *)self selectDate:startCalendarDate animated:1];

    [(ListViewController *)self selectEvent:v8 animated:1];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    [(ListViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(ListViewController *)self showEvent:nextOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    [(ListViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(ListViewController *)self showEvent:previousOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  controllerCopy = controller;
  [(ListViewController *)self eventViewController:controllerCopy didCompleteWithAction:0];
  context = [controllerCopy context];

  [(ListViewController *)self showEvent:eventCopy animated:1 showMode:1 context:context];
}

- (id)pasteboardManager
{
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  v6 = multiSelectGestureRecognizer != beginCopy || ([(UITapGestureRecognizer *)multiSelectGestureRecognizer modifierFlags]& 0x120000) != 0;

  return v6;
}

- (void)_multiSelect:(id)select
{
  [select locationInView:self->_tableView];
  v4 = [(ListTableView *)self->_tableView indexPathForRowAtPoint:?];
  if (v4)
  {
    v8 = v4;
    indexPathsForSelectedRows = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
    model = [(MainViewController *)self model];
    v7 = [model cachedOccurrenceAtIndexPath:v8 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    if ([indexPathsForSelectedRows containsObject:v8])
    {
      [(ListViewController *)self _deselectRowAtIndexPath:v8 animated:1];
      [(CUIKCalendarModel *)self->super._model deselectOccurrence:v7];
    }

    else
    {
      [(ListViewController *)self _selectRowAtIndexPath:v8 animated:1 scrollPosition:0];
      [(CUIKCalendarModel *)self->super._model selectOccurrence:v7];
    }
  }

  _objc_release_x1();
}

- (void)_deselectAllSelectedRowsAnimated:(BOOL)animated
{
  indexPathsForSelectedRows = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [indexPathsForSelectedRows countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        [(ListViewController *)self _deselectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0)
  {
    if ("paste:" == action)
    {
      pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
      canPerformPaste = [pasteboardManager canPerformPaste];

      goto LABEL_11;
    }

    if ("copy:" == action)
    {
      selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v10 = 1;
    }

    else
    {
      if ("cut:" != action)
      {
        v12.receiver = self;
        v12.super_class = ListViewController;
        canPerformPaste = [(ListViewController *)&v12 canPerformAction:action withSender:senderCopy];
        goto LABEL_11;
      }

      selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v10 = 0;
    }

    canPerformPaste = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:selectedOccurrences];

    goto LABEL_11;
  }

  canPerformPaste = 0;
LABEL_11:

  return canPerformPaste;
}

- (void)cut:(id)cut
{
  selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)copy
{
  selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager copyEvents:v5 delegate:self];
  }
}

- (void)paste:(id)paste
{
  selectedOccurrence = [(CUIKCalendarModel *)self->super._model selectedOccurrence];
  if (selectedOccurrence)
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    startDate = [selectedOccurrence startDate];
    [pasteboardManager setDateForPaste:startDate];
  }

  pasteboardManager2 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [pasteboardManager2 pasteEventsWithDateMode:0 delegate:self];
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)eventIconButtonPressed:(id)pressed
{
  event = [pressed event];
  [event setCompleted:{objc_msgSend(event, "completed") ^ 1}];
  eKUI_editor = [(ListViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [eKUI_editor saveEvent:event span:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't complete/uncomplete event: %@", buf, 0xCu);
    }
  }
}

@end