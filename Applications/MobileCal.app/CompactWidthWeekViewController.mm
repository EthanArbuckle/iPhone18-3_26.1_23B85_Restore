@interface CompactWidthWeekViewController
- (BOOL)_focusBannerVisible;
- (CompactWidthWeekViewController)initWithModel:(id)model window:(id)window;
- (double)headerVerticalOffset;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForPresentation:(id)presentation;
- (void)_focusConfigurationChanged;
- (void)editorDidSaveEvent:(id)event;
- (void)focusBannerViewToggled:(id)toggled;
- (void)layoutCellsAnimated:(BOOL)animated;
- (void)loadView;
- (void)overlayCalendarDidChange;
- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showReminderDetail:(id)detail;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)updateBannerDateStrings:(id)strings;
- (void)updateTimeViewBaseline;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)weekGroupViewDidLayout:(id)layout;
@end

@implementation CompactWidthWeekViewController

- (CompactWidthWeekViewController)initWithModel:(id)model window:(id)window
{
  v7.receiver = self;
  v7.super_class = CompactWidthWeekViewController;
  v4 = [(WeekViewController *)&v7 initWithModel:model window:window];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_focusConfigurationChanged" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:0];
  }

  return v4;
}

- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventsCopy = events;
  v12 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
  [v12 setPreferModalPresentation:1];
  [v12 setTransitioningDelegate:self];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  navigationItem = [(CompactWidthWeekViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v10];

  [(CUIKCalendarModel *)self->super.super._model setSelectedOccurrences:eventsCopy];
  [(CompactWidthWeekViewController *)self showViewController:v12 sender:self animated:animatedCopy completion:0];
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setPreferModalPresentation:1];
  }

  presentedViewController = [(CompactWidthWeekViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentedViewController2 = [(CompactWidthWeekViewController *)self presentedViewController];
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:presentedViewController2];

    presentedViewController3 = [(CompactWidthWeekViewController *)self presentedViewController];
    [presentedViewController3 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CompactWidthWeekViewController;
    [(MainViewController *)&v18 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)loadView
{
  self->_currentlyDisplayedMonth = -1;
  self->_currentlyDisplayedMonthInOverlayCalendar = -1;
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 loadView];
  timeView = [(WeekViewController *)self timeView];
  [timeView setUseCompactWidthStyle:1];

  [(CompactWidthWeekViewController *)self _focusConfigurationChanged];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v7 viewWillAppear:?];
  navigationController = [(CompactWidthWeekViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];

  navigationController2 = [(CompactWidthWeekViewController *)self navigationController];
  [navigationController2 setToolbarHidden:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v10 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    displayedDate = [(WeekViewController *)self displayedDate];
    date = [displayedDate date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v6 viewWillDisappear:?];
  navigationController = [(CompactWidthWeekViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  if ([(CompactWidthWeekViewController *)self _focusBannerVisible])
  {
    [(EKUIFocusBannerView *)self->_focusBanner sizeToFit];
    [(EKUIFocusBannerView *)self->_focusBanner frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    view = [(CompactWidthWeekViewController *)self view];
    [view bounds];
    v11 = v10;

    [(EKUIFocusBannerView *)self->_focusBanner setFrame:v4, v6, v11, v8];
  }

  v12.receiver = self;
  v12.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v12 viewWillLayoutSubviews];
}

- (void)updateTimeViewBaseline
{
  visibleWeeks = [(WeekViewController *)self visibleWeeks];
  lastObject = [visibleWeeks lastObject];
  weekView = [lastObject weekView];

  allDayView = [weekView allDayView];
  [allDayView baselineForWeekdayNumbers];
  v7 = v6;

  if (v7 > 0.0)
  {
    timeView = [(WeekViewController *)self timeView];
    allDayView2 = [weekView allDayView];
    [allDayView2 frame];
    v11 = v10;
    v13 = v12;
    allDayView3 = [weekView allDayView];
    superview = [allDayView3 superview];
    [timeView convertPoint:superview fromView:{v11, v13}];
    v17 = v16;

    timeView2 = [(WeekViewController *)self timeView];
    [timeView2 setMonthTextBaselineOffset:v7 + v17];
  }
}

- (void)layoutCellsAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 layoutCellsAnimated:animated];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v3 viewDidLayoutSubviews];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (void)weekGroupViewDidLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 weekGroupViewDidLayout:layout];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (double)headerVerticalOffset
{
  _focusBannerVisible = [(CompactWidthWeekViewController *)self _focusBannerVisible];
  result = 0.0;
  if (_focusBannerVisible)
  {
    [(EKUIFocusBannerView *)self->_focusBanner frame];
    return v5;
  }

  return result;
}

- (void)updateBannerDateStrings:(id)strings
{
  stringsCopy = strings;
  v21 = +[CalChronometry activeCalendar];
  date = [stringsCopy date];

  v6 = [v21 components:2097278 fromDate:date];

  v7 = CUIKTodayComponents();
  month = [v6 month];
  if (month == [v7 month] && (v9 = objc_msgSend(v6, "year"), v9 == objc_msgSend(v7, "year")))
  {
    v10 = [v6 era];
    v11 = v10 == [v7 era];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if ([v6 month] != self->_currentlyDisplayedMonth)
  {
    self->_currentlyDisplayedMonth = [v6 month];
    [v6 month];
    v12 = CUIKStringAbbreviationForMonth();
    timeView = [(WeekViewController *)self timeView];
    [timeView setMonthText:v12 isCurrentMonth:v11];
  }

LABEL_8:
  v14 = CUIKGetOverlayCalendar();
  if ([(WeekViewController *)self showOverlayCalendar]&& v14)
  {
    v15 = CUIKCalendar();
    centerDateComponents = [(WeekViewController *)self centerDateComponents];
    v17 = [v15 dateFromComponents:centerDateComponents];

    v18 = [v14 component:8 fromDate:v17];
    if (v18 != self->_currentlyDisplayedMonthInOverlayCalendar)
    {
      self->_currentlyDisplayedMonthInOverlayCalendar = v18;
      v19 = [CUIKDateStrings overlayYearStringForDate:v17 inCalendar:v14];
      timeView2 = [(WeekViewController *)self timeView];
      [timeView2 setOverlayMonthText:v19];
    }
  }
}

- (void)overlayCalendarDidChange
{
  v9.receiver = self;
  v9.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v9 overlayCalendarDidChange];
  if ([(WeekViewController *)self showOverlayCalendar])
  {
    v3 = +[CalChronometry activeCalendar];
    centerDateComponents = [(WeekViewController *)self centerDateComponents];
    v5 = [EKCalendarDate alloc];
    timeZone = [v3 timeZone];
    v7 = [v5 initWithDateComponents:centerDateComponents timeZone:timeZone];

    [(CompactWidthWeekViewController *)self updateBannerDateStrings:v7];
  }

  else
  {
    timeView = [(WeekViewController *)self timeView];
    [timeView setOverlayMonthText:0];

    self->_currentlyDisplayedMonthInOverlayCalendar = -1;
  }
}

- (BOOL)_focusBannerVisible
{
  model = [(WeekViewController *)self model];
  if ([model focusFilterMode])
  {
    v3 = CalSolariumEnabled() ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_focusConfigurationChanged
{
  _focusBannerVisible = [(CompactWidthWeekViewController *)self _focusBannerVisible];
  superview = [(EKUIFocusBannerView *)self->_focusBanner superview];

  if (((_focusBannerVisible ^ (superview == 0)) & 1) == 0)
  {
    focusBanner = self->_focusBanner;
    if (_focusBannerVisible)
    {
      if (!focusBanner)
      {
        v6 = objc_opt_new();
        v7 = self->_focusBanner;
        self->_focusBanner = v6;

        [(EKUIFocusBannerView *)self->_focusBanner setDelegate:self];
        [(EKUIFocusBannerView *)self->_focusBanner setLayout:1];
      }

      view = [(CompactWidthWeekViewController *)self view];
      [view addSubview:self->_focusBanner];

      model = [(WeekViewController *)self model];
      -[EKUIFocusBannerView setOn:](self->_focusBanner, "setOn:", [model focusFilterMode] == 1);
    }

    else
    {
      [(EKUIFocusBannerView *)focusBanner removeFromSuperview];
    }
  }

  view2 = [(CompactWidthWeekViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)editorDidSaveEvent:(id)event
{
  eventCopy = event;
  model = [(WeekViewController *)self model];
  [model addOccurrenceAwaitingRefresh:eventCopy];

  [(WeekViewController *)self reloadData];
}

- (void)focusBannerViewToggled:(id)toggled
{
  if ([(EKUIFocusBannerView *)self->_focusBanner on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  model = [(WeekViewController *)self model];
  [model setFocusFilterMode:v4];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerAnimatedTransitioning])
  {
    v6 = controllerCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerAnimatedTransitioning])
  {
    v4 = controllerCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if ([presentationCopy conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerInteractiveTransitioning])
  {
    v4 = presentationCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showReminderDetail:(id)detail
{
  detailCopy = detail;
  v7 = [(MainViewController *)self augmentEventDetailsContext:0];
  v5 = objc_alloc_init(UINavigationController);
  v6 = [EKEventViewController eventDetailViewControllerWithEvent:detailCopy delegate:self context:v7 canvasView:1];

  [v5 pushViewController:v6 animated:0];
  [(CompactWidthWeekViewController *)self showViewController:v5 sender:self animated:1 completion:0];
}

@end