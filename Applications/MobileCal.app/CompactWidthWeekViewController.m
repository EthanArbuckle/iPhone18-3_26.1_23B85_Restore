@interface CompactWidthWeekViewController
- (BOOL)_focusBannerVisible;
- (CompactWidthWeekViewController)initWithModel:(id)a3 window:(id)a4;
- (double)headerVerticalOffset;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForPresentation:(id)a3;
- (void)_focusConfigurationChanged;
- (void)editorDidSaveEvent:(id)a3;
- (void)focusBannerViewToggled:(id)a3;
- (void)layoutCellsAnimated:(BOOL)a3;
- (void)loadView;
- (void)overlayCalendarDidChange;
- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showReminderDetail:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)updateBannerDateStrings:(id)a3;
- (void)updateTimeViewBaseline;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)weekGroupViewDidLayout:(id)a3;
@end

@implementation CompactWidthWeekViewController

- (CompactWidthWeekViewController)initWithModel:(id)a3 window:(id)a4
{
  v7.receiver = self;
  v7.super_class = CompactWidthWeekViewController;
  v4 = [(WeekViewController *)&v7 initWithModel:a3 window:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_focusConfigurationChanged" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:0];
  }

  return v4;
}

- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v6 = a4;
  v8 = a3;
  v12 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v8 delegate:self];
  [v12 setPreferModalPresentation:1];
  [v12 setTransitioningDelegate:self];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  v11 = [(CompactWidthWeekViewController *)self navigationItem];
  [v11 setBackButtonTitle:v10];

  [(CUIKCalendarModel *)self->super.super._model setSelectedOccurrences:v8];
  [(CompactWidthWeekViewController *)self showViewController:v12 sender:self animated:v6 completion:0];
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setPreferModalPresentation:1];
  }

  v13 = [(CompactWidthWeekViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [(CompactWidthWeekViewController *)self presentedViewController];
    v16 = [v10 presentationController];
    [v16 setDelegate:v15];

    v17 = [(CompactWidthWeekViewController *)self presentedViewController];
    [v17 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CompactWidthWeekViewController;
    [(MainViewController *)&v18 showViewController:v10 sender:v11 animated:v7 completion:v12];
  }
}

- (void)loadView
{
  self->_currentlyDisplayedMonth = -1;
  self->_currentlyDisplayedMonthInOverlayCalendar = -1;
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 loadView];
  v3 = [(WeekViewController *)self timeView];
  [v3 setUseCompactWidthStyle:1];

  [(CompactWidthWeekViewController *)self _focusConfigurationChanged];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v7 viewWillAppear:?];
  v5 = [(CompactWidthWeekViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];

  v6 = [(CompactWidthWeekViewController *)self navigationController];
  [v6 setToolbarHidden:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v10 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(WeekViewController *)self displayedDate];
    v9 = [v8 date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v6 viewWillDisappear:?];
  v5 = [(CompactWidthWeekViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:v3];
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
    v9 = [(CompactWidthWeekViewController *)self view];
    [v9 bounds];
    v11 = v10;

    [(EKUIFocusBannerView *)self->_focusBanner setFrame:v4, v6, v11, v8];
  }

  v12.receiver = self;
  v12.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v12 viewWillLayoutSubviews];
}

- (void)updateTimeViewBaseline
{
  v3 = [(WeekViewController *)self visibleWeeks];
  v4 = [v3 lastObject];
  v19 = [v4 weekView];

  v5 = [v19 allDayView];
  [v5 baselineForWeekdayNumbers];
  v7 = v6;

  if (v7 > 0.0)
  {
    v8 = [(WeekViewController *)self timeView];
    v9 = [v19 allDayView];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v14 = [v19 allDayView];
    v15 = [v14 superview];
    [v8 convertPoint:v15 fromView:{v11, v13}];
    v17 = v16;

    v18 = [(WeekViewController *)self timeView];
    [v18 setMonthTextBaselineOffset:v7 + v17];
  }
}

- (void)layoutCellsAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 layoutCellsAnimated:a3];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v3 viewDidLayoutSubviews];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (void)weekGroupViewDidLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthWeekViewController;
  [(WeekViewController *)&v4 weekGroupViewDidLayout:a3];
  [(CompactWidthWeekViewController *)self updateTimeViewBaseline];
}

- (double)headerVerticalOffset
{
  v3 = [(CompactWidthWeekViewController *)self _focusBannerVisible];
  result = 0.0;
  if (v3)
  {
    [(EKUIFocusBannerView *)self->_focusBanner frame];
    return v5;
  }

  return result;
}

- (void)updateBannerDateStrings:(id)a3
{
  v4 = a3;
  v21 = +[CalChronometry activeCalendar];
  v5 = [v4 date];

  v6 = [v21 components:2097278 fromDate:v5];

  v7 = CUIKTodayComponents();
  v8 = [v6 month];
  if (v8 == [v7 month] && (v9 = objc_msgSend(v6, "year"), v9 == objc_msgSend(v7, "year")))
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
    v13 = [(WeekViewController *)self timeView];
    [v13 setMonthText:v12 isCurrentMonth:v11];
  }

LABEL_8:
  v14 = CUIKGetOverlayCalendar();
  if ([(WeekViewController *)self showOverlayCalendar]&& v14)
  {
    v15 = CUIKCalendar();
    v16 = [(WeekViewController *)self centerDateComponents];
    v17 = [v15 dateFromComponents:v16];

    v18 = [v14 component:8 fromDate:v17];
    if (v18 != self->_currentlyDisplayedMonthInOverlayCalendar)
    {
      self->_currentlyDisplayedMonthInOverlayCalendar = v18;
      v19 = [CUIKDateStrings overlayYearStringForDate:v17 inCalendar:v14];
      v20 = [(WeekViewController *)self timeView];
      [v20 setOverlayMonthText:v19];
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
    v4 = [(WeekViewController *)self centerDateComponents];
    v5 = [EKCalendarDate alloc];
    v6 = [v3 timeZone];
    v7 = [v5 initWithDateComponents:v4 timeZone:v6];

    [(CompactWidthWeekViewController *)self updateBannerDateStrings:v7];
  }

  else
  {
    v8 = [(WeekViewController *)self timeView];
    [v8 setOverlayMonthText:0];

    self->_currentlyDisplayedMonthInOverlayCalendar = -1;
  }
}

- (BOOL)_focusBannerVisible
{
  v2 = [(WeekViewController *)self model];
  if ([v2 focusFilterMode])
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
  v3 = [(CompactWidthWeekViewController *)self _focusBannerVisible];
  v4 = [(EKUIFocusBannerView *)self->_focusBanner superview];

  if (((v3 ^ (v4 == 0)) & 1) == 0)
  {
    focusBanner = self->_focusBanner;
    if (v3)
    {
      if (!focusBanner)
      {
        v6 = objc_opt_new();
        v7 = self->_focusBanner;
        self->_focusBanner = v6;

        [(EKUIFocusBannerView *)self->_focusBanner setDelegate:self];
        [(EKUIFocusBannerView *)self->_focusBanner setLayout:1];
      }

      v8 = [(CompactWidthWeekViewController *)self view];
      [v8 addSubview:self->_focusBanner];

      v9 = [(WeekViewController *)self model];
      -[EKUIFocusBannerView setOn:](self->_focusBanner, "setOn:", [v9 focusFilterMode] == 1);
    }

    else
    {
      [(EKUIFocusBannerView *)focusBanner removeFromSuperview];
    }
  }

  v10 = [(CompactWidthWeekViewController *)self view];
  [v10 setNeedsLayout];
}

- (void)editorDidSaveEvent:(id)a3
{
  v4 = a3;
  v5 = [(WeekViewController *)self model];
  [v5 addOccurrenceAwaitingRefresh:v4];

  [(WeekViewController *)self reloadData];
}

- (void)focusBannerViewToggled:(id)a3
{
  if ([(EKUIFocusBannerView *)self->_focusBanner on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(WeekViewController *)self model];
  [v5 setFocusFilterMode:v4];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = a3;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerAnimatedTransitioning])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerAnimatedTransitioning])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___UIViewControllerInteractiveTransitioning])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showReminderDetail:(id)a3
{
  v4 = a3;
  v7 = [(MainViewController *)self augmentEventDetailsContext:0];
  v5 = objc_alloc_init(UINavigationController);
  v6 = [EKEventViewController eventDetailViewControllerWithEvent:v4 delegate:self context:v7 canvasView:1];

  [v5 pushViewController:v6 animated:0];
  [(CompactWidthWeekViewController *)self showViewController:v5 sender:self animated:1 completion:0];
}

@end