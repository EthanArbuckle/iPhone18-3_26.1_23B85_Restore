@interface ListViewController
- (BOOL)_isVisible;
- (BOOL)_processScrollingMessagesOnEveryFrameFromListViewController;
- (BOOL)_rowDrawsBackground:(id)a3;
- (BOOL)_selectedDateIsVisible;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasContent;
- (CGSize)scrubberCellSize;
- (ListViewController)initWithModel:(id)a3 window:(id)a4;
- (NSString)description;
- (double)contentInset;
- (id)_dateForFirstVisibleRow;
- (id)_eventForRowAtIndexPath:(id)a3;
- (id)_indexPathForDate:(id)a3;
- (id)backButtonTitleForEventDetails;
- (id)contentUnavailableConfigurationForState:(id)a3;
- (id)defaultEventForSelectedDate;
- (id)pasteboardManager;
- (id)sceneTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addAllObservers;
- (void)_contentCategorySizeChangedNotification:(id)a3;
- (void)_deleteEventAtIndexPath:(id)a3 withCompletionHandler:(id)a4;
- (void)_deselectAllSelectedRowsAnimated:(BOOL)a3;
- (void)_deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_localeChanged:(id)a3;
- (void)_multiSelect:(id)a3;
- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5;
- (void)_selectTodayDate;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_setTopVisibleDateAsSelectedDate;
- (void)_showEvent:(id)a3 viewController:(id)a4 animated:(BOOL)a5 showComments:(BOOL)a6 modal:(BOOL)a7;
- (void)_timeChangedSignificantly:(id)a3;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateNavigationTitleToDate:(id)a3;
- (void)_updatePaletteWeekDayHeaderDayFrames;
- (void)_updateSeparatorVisibilityForOccurrenceCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateSeparatorVisibilityForRowAtIndexPath:(id)a3;
- (void)_weekNumberChanged:(id)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventIconButtonPressed:(id)a3;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (void)loadView;
- (void)paste:(id)a3;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)refresh;
- (void)refreshIfNeeded;
- (void)scrollToDate:(id)a3 animated:(BOOL)a4;
- (void)scrollToTodayAnimated:(BOOL)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)selectEvent:(id)a3 animated:(BOOL)a4;
- (void)setNeedsRefresh:(BOOL)a3;
- (void)setSelectedDateAndFirstVisibleHeaderDate:(id)a3;
- (void)setUpViewConstraints;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)updatePalette:(id)a3;
- (void)updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:(id)a3;
- (void)updateUIToTopHeaderDate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ListViewController

- (ListViewController)initWithModel:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Non-nil 'model' required." userInfo:0];
    objc_exception_throw(v12);
  }

  v8 = v7;
  v13.receiver = self;
  v13.super_class = ListViewController;
  v9 = [(MainViewController *)&v13 initWithWindow:v7 model:v6];
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

  v6 = [(MainViewController *)self model];
  [v5 setKey:@"model" withObject:v6];

  v7 = [v5 build];

  return v7;
}

- (void)dealloc
{
  v3 = [(ListViewController *)self tableView];
  [v3 setDelegate:0];

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
    v4 = [(MainViewController *)self model];
    v5 = [v4 calendar];
    v6 = [v5 timeZone];
    v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v6];
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
  v22 = [(ListViewController *)self view];
  [v22 addSubview:v9];

  v23 = [(ListViewController *)self cellFactory];
  if (v23)
  {
    v24 = [[DayNavigationViewController alloc] initWithModel:self->super._model];
    scrubberController = self->_scrubberController;
    self->_scrubberController = v24;

    [(DayNavigationViewController *)self->_scrubberController setCellFactory:v23];
    [(DayNavigationViewController *)self->_scrubberController setDelegate:self];
    [(ListViewController *)self addChildViewController:self->_scrubberController];
    [(DayNavigationViewController *)self->_scrubberController didMoveToParentViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = ListViewController;
  [(ListViewController *)&v16 viewWillAppear:a3];
  [(ListViewController *)self setUpViewConstraints];
  self->_isVisible = 1;
  [(ListViewController *)self _addAllObservers];
  [(ListViewController *)self refresh];
  v4 = [(ListViewController *)self tableView];
  v5 = [v4 indexPathsForVisibleRows];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 section];
    v8 = [(MainViewController *)self model];
    [v8 fetchCachedDaysInBackgroundStartingFromSection:v7 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];
  }

  v9 = [(CUIKCalendarModel *)self->super._model selectedDay];
  v10 = [v9 date];
  firstVisibleHeaderDate = self->_firstVisibleHeaderDate;
  self->_firstVisibleHeaderDate = v10;

  v12 = [(MainViewController *)self model];
  v13 = [(CUIKCalendarModel *)self->super._model selectedDay];
  v14 = [v13 date];
  self->_cachedTopHeaderSection = [v12 sectionForCachedOccurrencesOnDate:v14 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  if (CalSolariumEnabled())
  {
    v15 = [(CUIKCalendarModel *)self->super._model selectedDay];
    [(ListViewController *)self _updateNavigationTitleToDate:v15];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ListViewController;
  [(MainViewController *)&v6 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ListViewController_ViewDidAppearNotification" object:self];

  v5 = [(MainViewController *)self model];
  [v5 startNotificationMonitor];

  [(CUIKCalendarModel *)self->super._model simulateFirstLoadFinished];
  [(ListViewController *)self setPreventScrollingForNextViewAppear:0];
}

- (void)setUpViewConstraints
{
  v3 = [(ListViewController *)self tableView];
  v9 = [v3 superview];

  if (v9)
  {
    v4 = [(ListViewController *)self tableView];
    v5 = [(ListViewController *)self tableView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
    [v6 setActive:1];

    v7 = [NSLayoutConstraint constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    [v7 setActive:1];

    v8 = [NSLayoutConstraint constraintWithItem:v9 attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:1.0 constant:0.0];
    [v8 setActive:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(ListViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ListViewController;
  [(ListViewController *)&v4 viewDidDisappear:a3];
  [(ListViewController *)self _deselectAllSelectedRowsAnimated:0];
}

- (void)setSelectedDateAndFirstVisibleHeaderDate:(id)a3
{
  v4 = a3;
  v5 = [(ListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ListViewController *)self delegate];
    v8 = [v4 date];
    [v7 listViewController:self didScrollToDate:v8];
  }

  else
  {
    [(CUIKCalendarModel *)self->super._model setSelectedDate:v4];
  }

  v9 = [v4 date];

  firstVisibleHeaderDate = self->_firstVisibleHeaderDate;
  self->_firstVisibleHeaderDate = v9;
}

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setTodayButtonVisible:0];
  [v4 setDateStringVisible:0];
  [v4 setWeekdayHeaderVisible:0];
  [v4 setDividerLineVisible:0];
  [v4 setDayScrubberController:0];
  if (CalSolariumEnabled())
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [v4 setFocusBannerPlacement:v3];
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
  v2 = [(DayNavigationViewController *)self->_scrubberController weekScrollView];
  [v2 cellSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v20 = a3;
  v10 = a6;
  v11 = [(ListViewController *)self parentViewController];
  if (![v11 conformsToProtocol:&OBJC_PROTOCOL___ListViewControllerDelegate])
  {
    goto LABEL_6;
  }

  v12 = [(ListViewController *)self parentViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [(ListViewController *)self parentViewController];
  v14 = [v13 listViewControllerContainerHandlesShowEvent];

  if (v14)
  {
    v15 = [(ListViewController *)self parentViewController];
    [v15 showEvent:v20 animated:v8 showMode:a5 context:v10];
    goto LABEL_16;
  }

LABEL_7:
  if (!a5)
  {
    v15 = 0;
LABEL_14:
    v18 = 0;
    v17 = v20;
    goto LABEL_15;
  }

  if (a5 != 3)
  {
    v19 = [(MainViewController *)self augmentEventDetailsContext:v10];
    v15 = [EKEventViewController eventDetailViewControllerWithEvent:v20 delegate:self context:v19 canvasView:3];
    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [v15 ekui_adjustNavBarToTransparentStyle];
    }

    goto LABEL_14;
  }

  v16 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v20 model:self->super._model creationMethod:0 viewStart:3 eventEditViewDelegate:self];
  v17 = v20;
  v15 = v16;
  v18 = 1;
LABEL_15:
  [(ListViewController *)self _showEvent:v17 viewController:v15 animated:v8 showComments:a5 == 2 modal:v18];
LABEL_16:
}

- (void)_showEvent:(id)a3 viewController:(id)a4 animated:(BOOL)a5 showComments:(BOOL)a6 modal:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = [v12 startCalendarDate];
  [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v14];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v12];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  if (!v13)
  {
    [(ListViewController *)self selectEvent:v12 animated:v9];
    goto LABEL_10;
  }

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = [(ListViewController *)self navigationController];
    [v16 presentViewController:v13 animated:v9 completion:v15];

    goto LABEL_8;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001AFC8;
  v17[3] = &unk_10020EB00;
  v18 = v13;
  v15 = objc_retainBlock(v17);

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  [(ListViewController *)self showViewController:v13 sender:self animated:v9 completion:v15];
LABEL_8:

LABEL_10:
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(ListViewController *)self parentViewController];
  v14 = [v13 navigationItem];
  v15 = [(ListViewController *)self backButtonTitleForEventDetails];
  [v14 setBackButtonTitle:v15];

  if ([(ListViewController *)self isMemberOfClass:objc_opt_class()]&& CalSolariumEnabled())
  {
    [(ListViewController *)self presentViewController:v10 animated:1 completion:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ListViewController;
    [(MainViewController *)&v16 showViewController:v10 sender:v11 animated:v7 completion:v12];
  }
}

- (id)backButtonTitleForEventDetails
{
  v3 = [(CUIKCalendarModel *)self->super._model selectedDate];
  v4 = [v3 dayComponents];
  v5 = [(CUIKCalendarModel *)self->super._model calendar];
  v6 = CUIKStringForDateComponents();

  return v6;
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:?];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(ListViewController *)self setNeedsRefresh:1];
  if (self->_isVisible)
  {
    dateToShowWhenVisible = self->_dateToShowWhenVisible;
    self->_dateToShowWhenVisible = 0;

    [(ListViewController *)self scrollToSelectedDateAnimated:v4];
  }

  else
  {
    objc_storeStrong(&self->_dateToShowWhenVisible, a3);
  }

  [(ListViewController *)self updateUIToTopHeaderDate];
}

- (void)_selectTodayDate
{
  v7 = CUIKTodayDate();
  v3 = [(MainViewController *)self model];
  v4 = [v3 eventStore];
  v5 = [v4 timeZone];

  v6 = [[EKCalendarDate alloc] initWithDate:v7 timeZone:v5];
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
      v3 = [(ListViewController *)self tableView];
      v4 = [v3 indexPathsForSelectedRows];
      [v3 reloadData];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v4;
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

      v10 = [v3 numberOfSections];
      if (v3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
        }
      }

      if (v10 && self->_dateToShowWhenVisible)
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

- (void)setNeedsRefresh:(BOOL)a3
{
  if (self->_needsRefresh != a3)
  {
    self->_needsRefresh = a3;
  }
}

- (BOOL)hasContent
{
  v2 = [(ListViewController *)self tableView];
  v3 = [v2 numberOfSections] != 0;

  return v3;
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v5 = a3;
  if ([(ListViewController *)self hasContent])
  {
    [(ListViewController *)self _setContentUnavailableConfiguration:0];
  }

  else
  {
    v4 = [(ListViewController *)self contentUnavailableConfigurationForState:v5];
    [(ListViewController *)self _setContentUnavailableConfiguration:v4];
  }
}

- (id)contentUnavailableConfigurationForState:(id)a3
{
  v3 = a3;
  v4 = +[UIContentUnavailableConfiguration emptyConfiguration];
  v5 = [v4 updatedConfigurationForState:v3];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"No Events" value:&stru_1002133B8 table:0];
  [v5 setText:v7];

  v8 = +[UIColor secondaryLabelColor];
  v9 = [v5 textProperties];
  [v9 setColor:v8];

  return v5;
}

- (BOOL)_selectedDateIsVisible
{
  v3 = [(ListViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];
  if ([v4 count])
  {
    v5 = [(MainViewController *)self model];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = v4;
      v18 = v3;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v5 dateForCachedOccurrencesInSection:objc_msgSend(*(*(&v19 + 1) + 8 * i) usingFilter:{"section", v17, v18, v19), -[ListViewController showFilteredData](self, "showFilteredData")}];
          v12 = [v5 selectedDay];
          v13 = [v12 date];
          v14 = [v11 isEqualToDate:v13];

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
      v4 = v17;
      v3 = v18;
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
  v3 = [(ListViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
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

- (void)scrollToTodayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = CUIKTodayDate();
  [(ListViewController *)self scrollToDate:v5 animated:v3];
}

- (void)scrollToDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v29 = v6;
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

      v13 = [(ListViewController *)self _dateForFirstVisibleRow];
      if (v13)
      {
        v14 = v13;
        v15 = [(MainViewController *)self model];
        v16 = [v15 calendar];
        v17 = [(ListViewController *)self _dateForFirstVisibleRow];
        v18 = [v16 components:16 fromDate:v17 toDate:v29 options:0];
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
          v4 = v4;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v21 = v29;
      }

      v22 = [(ListViewController *)self _indexPathForDate:v21];
      if ([v22 row] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [(ListViewController *)self tableView];
        [v23 scrollToRowAtIndexPath:v22 atScrollPosition:1 animated:v4];
      }

      v24 = [(ListViewController *)self _indexPathForDate:v29];
      v25 = [v24 section];
      v26 = [(ListViewController *)self tableView];
      v27 = [v26 numberOfSections];

      if (v25 <= v27)
      {
        v28 = [(ListViewController *)self tableView];
        [v28 scrollToRowAtIndexPath:v24 atScrollPosition:1 animated:v4];
      }
    }

    v6 = v29;
  }
}

- (id)_indexPathForDate:(id)a3
{
  v4 = a3;
  if ([(CUIKCalendarModel *)self->super._model numberOfDaysWithCachedOccurrencesUsingFilter:[(ListViewController *)self showFilteredData]])
  {
    v5 = [(CUIKCalendarModel *)self->super._model eventStore];
    v6 = [v5 timeZone];
    v7 = [v4 dateForDayInTimeZone:v6];

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
    v3 = [(MainViewController *)self model];
    if (v10)
    {
      v4 = [v3 selectedDate];
      v5 = [v4 date];
      v6 = [(NSDate *)v10 compare:v5];

      if (v6)
      {
        v7 = [v3 calendar];
        v8 = [v7 timeZone];

        v9 = [EKCalendarDate calendarDateWithDate:v10 timeZone:v8];
        [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v9];
      }
    }
  }
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(ListViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateBackButtonToDate:v5];
  }
}

- (void)_updateNavigationTitleToDate:(id)a3
{
  v5 = a3;
  v4 = [(ListViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateTitleToDate:v5];
  }
}

- (double)contentInset
{
  v2 = [(ListViewController *)self tableView];
  [v2 contentInset];
  v4 = v3;

  return v4;
}

- (BOOL)_processScrollingMessagesOnEveryFrameFromListViewController
{
  v3 = [(ListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ListViewController *)self delegate];
    v5 = [v4 wantsScrollingMessagesOnEveryFrameFromListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultEventForSelectedDate
{
  v3 = [(ListViewController *)self _dateForFirstVisibleRow];
  v4 = [(ListViewController *)self _indexPathForDate:v3];
  v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v4 section]);

  if ([v5 section] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [NSIndexPath indexPathForRow:0 inSection:0];

    v5 = v6;
  }

  v7 = [(ListViewController *)self _eventForRowAtIndexPath:v5];

  return v7;
}

- (void)selectEvent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CUIKCalendarModel *)self->super._model indexPathsForOccurrence:v6 usingFilter:[(ListViewController *)self showFilteredData]];
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

        [(ListViewController *)self _selectRowAtIndexPath:*(*(&v12 + 1) + 8 * v11) animated:v4 scrollPosition:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 row] >= 1)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v5 row] - 1, objc_msgSend(v5, "section"));
    [(ListViewController *)self _updateSeparatorVisibilityForRowAtIndexPath:v4];
  }

  [(ListViewController *)self _updateSeparatorVisibilityForRowAtIndexPath:v5];
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

- (void)_timeChangedSignificantly:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  if (([v6 BOOLValue] & 1) != 0 || !v6)
  {
    v5 = [(ListViewController *)self tableView];
    [v5 reloadData];
  }

  _objc_release_x1();
}

- (void)_localeChanged:(id)a3
{
  v3 = [(ListViewController *)self tableView];
  [v3 reloadData];
}

- (void)_weekNumberChanged:(id)a3
{
  v3 = [(ListViewController *)self tableView];
  [v3 reloadData];
}

- (void)_selectedOccurrencesChanged:(id)a3
{
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedOccurrences];
  v6 = [NSSet setWithArray:v5];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = [(MainViewController *)self model];
        v14 = [v13 cachedOccurrenceAtIndexPath:v12];

        if (([v6 containsObject:v14] & 1) == 0)
        {
          [(ListViewController *)self _deselectRowAtIndexPath:v12 animated:1];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
        v21 = [(MainViewController *)self model];
        v22 = [v21 indexPathsForOccurrence:v20 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

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

- (void)_contentCategorySizeChangedNotification:(id)a3
{
  v6 = [(ListViewController *)self _dateForFirstVisibleRow];
  v4 = [(ListViewController *)self tableView];
  [v4 reloadData];

  v5 = v6;
  if (v6)
  {
    [(ListViewController *)self scrollToDate:v6 animated:0];
    v5 = v6;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self model];
  v6 = [v5 numberOfDaysWithCachedOccurrencesUsingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  swipedRow = self->_swipedRow;
  if (swipedRow)
  {
    v6 = ((__PAIR128__(v6, [(ListViewController *)self tableView:v4 numberOfRowsInSection:[(NSIndexPath *)swipedRow section]]) - 1) >> 64);
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MainViewController *)self model];
  v7 = [v6 numberOfCachedOccurrencesInSection:a4 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  swipedRow = self->_swipedRow;
  if (swipedRow)
  {
    return v7 - ([(NSIndexPath *)swipedRow section]== a4);
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MainViewController *)self model];
  v9 = [v8 cachedOccurrenceAtIndexPath:v7 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  v43 = -[CUIKCalendarModel dateForCachedOccurrencesInSection:usingFilter:](self->super._model, "dateForCachedOccurrencesInSection:usingFilter:", [v7 section], -[ListViewController showFilteredData](self, "showFilteredData"));
  v10 = [v9 endDate];
  v11 = CUIKNowDate();
  v12 = CUIKCalendar();
  if ([v10 isBeforeDate:v11])
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
    v16 = [v6 dequeueReusableCellWithIdentifier:v15 forIndexPath:v7];

    [v16 setDelegate:self];
LABEL_8:
    [v16 updateWithEvent:v9 dimmed:v13];
    goto LABEL_10;
  }

  if ([v9 isAllDay])
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v16 = [v6 dequeueReusableCellWithIdentifier:v18 forIndexPath:v7];

    goto LABEL_8;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v16 = [v6 dequeueReusableCellWithIdentifier:v20 forIndexPath:v7];

  v21 = [v9 startDate];
  [v9 endDateUnadjustedForLegacyClients];
  HIDWORD(v42) = v13;
  v22 = v11;
  v24 = v23 = v10;
  LODWORD(v42) = [v12 cal_isMultidayEventForUIWithStartDate:v21 endDate:v24];

  v10 = v23;
  v11 = v22;

  [v16 updateWithEvent:v9 isMultiday:v42 occurrenceStartDate:v43 dimmed:HIDWORD(v42)];
LABEL_10:
  [objc_opt_class() adjustedSeparatorInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [v6 safeAreaInsets];
  if (IsLeftToRight)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v37 = CalInterfaceIsLeftToRight();
  [v6 safeAreaInsets];
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
  [(ListViewController *)self _updateSeparatorVisibilityForOccurrenceCell:v16 atIndexPath:v7];

  return v16;
}

- (void)_updateSeparatorVisibilityForRowAtIndexPath:(id)a3
{
  v5 = a3;
  v4 = [(ListTableView *)self->_tableView cellForRowAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ListViewController *)self _updateSeparatorVisibilityForOccurrenceCell:v4 atIndexPath:v5];
  }
}

- (void)_updateSeparatorVisibilityForOccurrenceCell:(id)a3 atIndexPath:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(MainViewController *)self model];
  v8 = [v7 numberOfCachedOccurrencesInSection:objc_msgSend(v13 usingFilter:{"section"), -[ListViewController showFilteredData](self, "showFilteredData")}];

  if ([v13 row] >= (v8 - 1) || -[ListViewController _rowDrawsBackground:](self, "_rowDrawsBackground:", v13))
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v13 row] + 1, objc_msgSend(v13, "section"));
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

  if ([v13 row])
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  [v6 setSeparatorEdges:v12];
}

- (BOOL)_rowDrawsBackground:(id)a3
{
  v4 = a3;
  v5 = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v6 = v5;
  if (v5 && ([v5 containsObject:v4] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(MainViewController *)self model];
    v9 = [v8 cachedOccurrenceAtIndexPath:v4 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    v7 = [EKUIListViewCell drawsBackgroundForEvent:v9];
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MainViewController *)self model];
  v8 = [v7 dateForCachedOccurrencesInSection:a4 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"ListViewSectionHeaderView"];

  v10 = [(MainViewController *)self model];
  v11 = [v10 calendar];
  v12 = [v11 timeZone];
  [v9 configureWithDate:v8 timeZone:v12];

  return v9;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v16 = a3;
  v8 = a4;
  if (self->_userIsScrolling)
  {
    if (self->_cachedTopHeaderSection > a5)
    {
      v9 = [(CUIKCalendarModel *)self->super._model dateForCachedOccurrencesInSection:a5 usingFilter:[(ListViewController *)self showFilteredData]];
      v10 = [(CUIKCalendarModel *)self->super._model calendar];
      v11 = [v10 timeZone];
      v12 = [EKCalendarDate calendarDateWithDate:v9 timeZone:v11];

      [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v12];
      [(ListViewController *)self updateUIToTopHeaderDate];
    }

    v13 = [(ListViewController *)self tableView];
    v14 = [v13 indexPathsForVisibleRows];

    v15 = [v14 firstObject];
    if ([v15 section] >= a5)
    {
      self->_cachedTopHeaderSection = a5;
    }
  }
}

- (void)tableView:(id)a3 didEndDisplayingHeaderView:(id)a4 forSection:(int64_t)a5
{
  v18 = a3;
  v8 = a4;
  if (self->_userIsScrolling && self->_cachedTopHeaderSection >= a5)
  {
    v9 = [(ListViewController *)self tableView];
    v10 = [v9 indexPathsForVisibleRows];

    v11 = [v10 firstObject];
    v12 = v11;
    if (v11)
    {
      cachedTopHeaderSection = [v11 section];
    }

    else
    {
      cachedTopHeaderSection = self->_cachedTopHeaderSection;
    }

    self->_cachedTopHeaderSection = cachedTopHeaderSection;
    v14 = [(CUIKCalendarModel *)self->super._model dateForCachedOccurrencesInSection:cachedTopHeaderSection usingFilter:[(ListViewController *)self showFilteredData]];
    v15 = [(CUIKCalendarModel *)self->super._model calendar];
    v16 = [v15 timeZone];
    v17 = [EKCalendarDate calendarDateWithDate:v14 timeZone:v16];

    [(ListViewController *)self setSelectedDateAndFirstVisibleHeaderDate:v17];
    [(ListViewController *)self updateUIToTopHeaderDate];
  }
}

- (void)updateUIToTopHeaderDate
{
  if (![(ListViewController *)self _processScrollingMessagesOnEveryFrameFromListViewController])
  {
    v3 = CalSolariumEnabled();
    v4 = [(CUIKCalendarModel *)self->super._model selectedDate];
    if (v3)
    {
      [(ListViewController *)self _updateNavigationTitleToDate:v4];
    }

    else
    {
      [(ListViewController *)self _updateBackButtonOnBackViewControllerToDate:v4];
    }

    [(MainViewController *)self setSceneTitleNeedsUpdate];
  }

  v5 = [(PaletteView *)self->_palette dayScrubberController];
  [v5 setSelectedDate:self->_firstVisibleHeaderDate animated:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(ListViewController *)self presentedViewController];

  if (!v5)
  {
    [(ListViewController *)self setPreventScrollingForNextViewAppear:1];
    v6 = [(MainViewController *)self model];
    v7 = [v6 cachedOccurrenceAtIndexPath:v8 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    [(ListViewController *)self showEvent:v7 animated:1 showMode:1 context:0];
  }

  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:v8];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(ListViewController *)self showFilteredData])
  {
    [(ListViewController *)self tableView:v9 didSelectRowAtIndexPath:v6];
  }

  else
  {
    v7 = [(MainViewController *)self model];
    v8 = [v7 cachedOccurrenceAtIndexPath:v6 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    [(CUIKCalendarModel *)self->super._model deselectOccurrence:v8];
    [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:v6];
  }
}

- (void)_deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  tableView = self->_tableView;
  v7 = a3;
  [(ListTableView *)tableView deselectRowAtIndexPath:v7 animated:v4];
  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:v7];
}

- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5
{
  v6 = a4;
  tableView = self->_tableView;
  v9 = a3;
  [(ListTableView *)tableView selectRowAtIndexPath:v9 animated:v6 scrollPosition:a5];
  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:v9];
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = a3;
  [v5 setDelegate:0];
  v6 = [(ListViewController *)self navigationController];
  [v6 popViewControllersAfterAndIncluding:v5 animated:!self->_editorDismissedFromDelete];

  self->_editorDismissedFromDelete = 0;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = v6;
  if (v6)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10001D9BC;
    v12 = &unk_10020EBC8;
    v13 = self;
    v14 = v6;
    v8 = objc_retainBlock(&v9);
  }

  else
  {
    v8 = 0;
  }

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:0, v9, v10, v11, v12];
  [(ListViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    self->_userIsScrolling = 0;
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if (v8 && (-[ListViewController presentedViewController](self, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isBeingDismissed], v9, (v10 & 1) == 0))
  {
    v12 = [(ListViewController *)self _eventForRowAtIndexPath:v8];
    if (v12)
    {
      v13 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v14 = [v13 containsObject:v12];

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
      v11 = [UIContextMenuConfiguration configurationWithIdentifier:v8 previewProvider:v18 actionProvider:v17];
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

- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [v6 cellForRowAtIndexPath:v7];

  v9 = [v5 identifier];

  v16 = v9;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [v6 reloadRowsAtIndexPaths:v10 withRowAnimation:100];

  if (v8)
  {
    v11 = [v8 window];

    if (v11)
    {
      v12 = [UITargetedPreview alloc];
      v13 = [v8 contentView];
      v14 = objc_alloc_init(UIPreviewParameters);
      v11 = [v12 initWithView:v13 parameters:v14];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
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
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001E038;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = v9;
    [v6 addAnimations:v10];
  }
}

- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(CUIKCalendarModel *)self->super._model selectedOccurrences:a3];
  v7 = [v6 count];

  if (v7 == 1)
  {
    model = self->super._model;

    [(CUIKCalendarModel *)model setSelectedOccurrences:&__NSArray0__struct];
  }
}

- (id)_eventForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self model];
  v6 = [v5 cachedOccurrenceAtIndexPath:v4 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[CUIKPreferences sharedPreferences];
  v11 = [v10 swipeToDeleteEnabled];

  if (a4 == 1 && v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001E2FC;
    v13[3] = &unk_10020EC90;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    [(ListViewController *)self _deleteEventAtIndexPath:v14 withCompletionHandler:v13];
  }

  else
  {
    swipedRow = self->_swipedRow;
    self->_swipedRow = 0;
  }
}

- (void)_deleteEventAtIndexPath:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ListViewController *)self _eventForRowAtIndexPath:a3];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Delete" value:&stru_1002133B8 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E5F0;
  v14[3] = &unk_10020ECB8;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:0 viewController:self barButtonItem:0 forEvent:v11 stringForDeleteButton:v9 withCompletionHandler:v14];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v12;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(ListViewController *)self _eventForRowAtIndexPath:a4];
  v5 = +[CUIKPreferences sharedPreferences];
  if (![v5 swipeToDeleteEnabled])
  {

    goto LABEL_5;
  }

  v6 = [v4 isEditable];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 nextOccurrence];
    if (v8)
    {
      v9 = [(ListViewController *)self tableView];
      v10 = [(ListViewController *)self numberOfSectionsInTableView:v9];

      v11 = [(ListViewController *)self tableView];
      v12 = [(ListViewController *)self tableView:v11 numberOfRowsInSection:--v10];

      v23 = v10;
      v24 = v12 - 1;
      v13 = [NSIndexPath indexPathWithIndexes:&v23 length:2];
      v14 = [(MainViewController *)self model];
      v15 = [v14 cachedOccurrenceAtIndexPath:v13 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

      v16 = [v8 startDate];
      v17 = [v15 startDate];
      v18 = [v16 isBeforeDate:v17];
LABEL_8:
      v20 = v18;

      goto LABEL_9;
    }
  }

  else
  {
    v19 = [v6 previousOccurrence];
    v8 = v19;
    if (v19 && [v19 reminderOccurrenceType] != 1)
    {
      v23 = 0;
      v24 = 0;
      v13 = [NSIndexPath indexPathWithIndexes:&v23 length:2];
      v21 = [(MainViewController *)self model];
      v15 = [v21 cachedOccurrenceAtIndexPath:v13 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

      v16 = [v8 startDate];
      v17 = [v15 startDate];
      v18 = [v16 isAfterDate:v17];
      goto LABEL_8;
    }
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v4)
  {
    [v6 nextOccurrence];
  }

  else
  {
    [v6 previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 startCalendarDate];
    [(ListViewController *)self selectDate:v9 animated:1];

    [(ListViewController *)self selectEvent:v8 animated:1];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 nextOccurrence];

  if (v5)
  {
    [(ListViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(ListViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 previousOccurrence];

  if (v5)
  {
    [(ListViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(ListViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ListViewController *)self eventViewController:v7 didCompleteWithAction:0];
  v8 = [v7 context];

  [(ListViewController *)self showEvent:v6 animated:1 showMode:1 context:v8];
}

- (id)pasteboardManager
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 pasteboardManager];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  v6 = multiSelectGestureRecognizer != v4 || ([(UITapGestureRecognizer *)multiSelectGestureRecognizer modifierFlags]& 0x120000) != 0;

  return v6;
}

- (void)_multiSelect:(id)a3
{
  [a3 locationInView:self->_tableView];
  v4 = [(ListTableView *)self->_tableView indexPathForRowAtPoint:?];
  if (v4)
  {
    v8 = v4;
    v5 = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
    v6 = [(MainViewController *)self model];
    v7 = [v6 cachedOccurrenceAtIndexPath:v8 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

    if ([v5 containsObject:v8])
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

- (void)_deselectAllSelectedRowsAnimated:(BOOL)a3
{
  v4 = [(ListTableView *)self->_tableView indexPathsForSelectedRows];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(ListViewController *)self _deselectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0)
  {
    if ("paste:" == a3)
    {
      v8 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
      v7 = [v8 canPerformPaste];

      goto LABEL_11;
    }

    if ("copy:" == a3)
    {
      v9 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v10 = 1;
    }

    else
    {
      if ("cut:" != a3)
      {
        v12.receiver = self;
        v12.super_class = ListViewController;
        v7 = [(ListViewController *)&v12 canPerformAction:a3 withSender:v6];
        goto LABEL_11;
      }

      v9 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
      v10 = 0;
    }

    v7 = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:v9];

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)cut:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 copyEvents:v5 delegate:self];
  }
}

- (void)paste:(id)a3
{
  v7 = [(CUIKCalendarModel *)self->super._model selectedOccurrence];
  if (v7)
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [v7 startDate];
    [v4 setDateForPaste:v5];
  }

  v6 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [v6 pasteEventsWithDateMode:0 delegate:self];
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)eventIconButtonPressed:(id)a3
{
  v4 = [a3 event];
  [v4 setCompleted:{objc_msgSend(v4, "completed") ^ 1}];
  v5 = [(ListViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [v5 saveEvent:v4 span:0 error:&v9];
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