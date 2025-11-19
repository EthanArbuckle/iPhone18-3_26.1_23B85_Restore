@interface CompactDayViewController
- (BOOL)shouldShowWeekDayLabel;
- (BOOL)showWeekdayLabel;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)cellFactory;
- (id)dayHeaderFrames;
- (id)interactionControllerForPresentation:(id)a3;
- (id)occurrenceViewForEvent:(id)a3;
- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4;
- (int64_t)contentInsetAdjustmentBehavior;
- (void)_receivedSelectedDateChangeNotification:(id)a3;
- (void)_showWeekdayLabelPreferenceChanged;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3;
- (void)_updateWeekDayHeaderDayFrames;
- (void)dayViewController:(id)a3 didStartDeceleratingTargettingDate:(id)a4;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)loadView;
- (void)showEditViewController:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CompactDayViewController

- (void)_updateWeekDayHeaderDayFrames
{
  v2 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1);
  v3 = [(CompactDayViewController *)self dayHeaderFrames];
  [v2 setDayHeaderFrames:v3];
}

- (id)dayHeaderFrames
{
  v3 = +[NSMutableArray array];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  [(DayViewController *)self cellSize];
  v7 = v6;
  v9 = v8;
  v10 = 7;
  do
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v12 = [NSValue valueWithCGRect:x, y, v7, v9];
    if (IsLeftToRight)
    {
      [v3 addObject:v12];
    }

    else
    {
      [v3 insertObject:v12 atIndex:0];
    }

    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = v7;
    v15.size.height = v9;
    x = CGRectGetMaxX(v15);
    --v10;
  }

  while (v10);

  return v3;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CompactDayViewController;
  [(DayViewController *)&v5 loadView];
  if (CalSolariumEnabled())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_showWeekdayLabelPreferenceChanged" name:CUIKLocaleChangedNotification object:0];
    [v3 addObserver:self selector:"_showWeekdayLabelPreferenceChanged" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];
  }

  if (CalCanvasPocketEnabled())
  {
    v4 = 15;
  }

  else
  {
    if (!CalSystemSolariumEnabled())
    {
      return;
    }

    v4 = 4;
  }

  [(CompactDayViewController *)self setEdgesForExtendedLayout:v4];
}

- (id)cellFactory
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)showWeekdayLabel
{
  if (!CalSolariumEnabled())
  {
    return 1;
  }

  return [(CompactDayViewController *)self shouldShowWeekDayLabel];
}

- (int64_t)contentInsetAdjustmentBehavior
{
  if (CalCanvasPocketEnabled())
  {
    return 2;
  }

  if (CalSystemSolariumEnabled())
  {
    return 1;
  }

  return 2;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v4 viewIsAppearing:a3];
  [(CompactDayViewController *)self ekui_adjustNavAndToolBarToTranslucentGrayStyles];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CompactDayViewController;
  [(DayViewController *)&v10 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(DayViewController *)self day];
    v9 = [v8 date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CompactDayViewController;
  [(DayViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  if (height > width)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  v8 = [(DayViewController *)self dayView];
  [v8 validateInterfaceOrientationWithFutureOrientation:v7];
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(CompactDayViewController *)self navigationController];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (CalSolariumEnabled() & 1) == 0)
  {
    [v4 updateBackButtonToDate:v5];
  }
}

- (void)_receivedSelectedDateChangeNotification:(id)a3
{
  v6.receiver = self;
  v6.super_class = CompactDayViewController;
  [(DayViewController *)&v6 _receivedSelectedDateChangeNotification:a3];
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedDate];
  [(CompactDayViewController *)self _updateBackButtonOnBackViewControllerToDate:v5];
}

- (BOOL)shouldShowWeekDayLabel
{
  v2 = CUIKGetOverlayCalendar();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[CUIKPreferences sharedPreferences];
    v3 = [v4 showWeekNumbers];
  }

  return v3;
}

- (void)_showWeekdayLabelPreferenceChanged
{
  v2.receiver = self;
  v2.super_class = CompactDayViewController;
  [(DayViewController *)&v2 _showWeekdayLabelPreferenceChanged];
}

- (void)dayViewController:(id)a3 didStartDeceleratingTargettingDate:(id)a4
{
  v11.receiver = self;
  v11.super_class = CompactDayViewController;
  v6 = a4;
  [(DayViewController *)&v11 dayViewController:a3 didStartDeceleratingTargettingDate:v6];
  v7 = [(MainViewController *)self model:v11.receiver];
  v8 = [v7 calendar];
  v9 = [v8 timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:v6 timeZone:v9];

  [(CompactDayViewController *)self _updateBackButtonOnBackViewControllerToDate:v10];
}

- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v23 = a5;
  v7 = a4;
  v22 = a3;
  v8 = [(CompactDayViewController *)self parentViewController];
  v9 = [v8 navigationItem];
  v10 = [(MainViewController *)self model];
  v11 = [v10 selectedDate];
  v12 = [v11 dayComponents];
  v13 = [(MainViewController *)self model];
  v14 = [v13 calendar];
  v15 = CUIKStringForDateComponents();
  [v9 setBackButtonTitle:v15];

  v16 = [(MainViewController *)self augmentEventDetailsContext:v7];

  v17 = [EKEventViewController eventDetailViewControllerWithEvent:v22 delegate:self context:v16 canvasView:0];

  [(CompactDayViewController *)self ekui_adjustToolBarToTransparentStyle];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    [v17 ekui_adjustNavBarToTransparentStyle];
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  v20 = [(CompactDayViewController *)self navigationItem];
  [v20 setTitle:v19];

  [(CompactDayViewController *)self showViewController:v17 sender:self animated:v23 completion:0];

  return v17;
}

- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v6 delegate:self];

  [v7 setTransitioningDelegate:self];
  [v7 setPreferModalPresentation:1];
  [(CompactDayViewController *)self showViewController:v7 sender:self animated:v4 completion:0];

  return v7;
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

  v13 = [(CompactDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [(CompactDayViewController *)self presentedViewController];
    v16 = [v10 presentationController];
    [v16 setDelegate:v15];

    v17 = [(CompactDayViewController *)self presentedViewController];
    [v17 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CompactDayViewController;
    [(MainViewController *)&v18 showViewController:v10 sender:v11 animated:v7 completion:v12];
  }
}

- (void)showEditViewController:(id)a3
{
  v8 = a3;
  v4 = [(DockableEventContainerController *)v8 event];
  v5 = [v4 isNew];

  if (v5)
  {
    [(DockableEventContainerController *)v8 setModalPresentationDelegate:self];
  }

  v6 = v8;
  if (CalDraftUIEnabled())
  {
    v6 = v8;
    if ([(DockableEventContainerController *)v8 conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
    {
      v6 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:v8];
    }
  }

  v7 = [(CompactDayViewController *)self navigationController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (id)occurrenceViewForEvent:(id)a3
{
  v4 = a3;
  v5 = [(DayViewController *)self dayView];
  v6 = [v5 occurrenceViewForEvent:v4];

  return v6;
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

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setTodayButtonVisible:0];
  [v4 setDateStringVisible:0];
  [v4 setDividerLineVisible:1];
  if (CalSolariumEnabled())
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v4 setFocusBannerPlacement:v5];
  v8.receiver = self;
  v8.super_class = CompactDayViewController;
  [(DayViewController *)&v8 updatePalette:v4];
  [(CompactDayViewController *)self _updateWeekDayHeaderDayFrames];
  v6 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1);
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) = v4;
  v7 = v4;

  [v7 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v3 viewDidLayoutSubviews];
  [(CompactDayViewController *)self _updateWeekDayHeaderDayFrames];
}

- (void)willMoveToParentViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v8 willMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(MainViewController *)self model];
    v6 = [v5 selectedOccurrence];

    if (v6)
    {
      v7 = [(MainViewController *)self model];
      [v7 setSelectedOccurrence:0];
    }
  }
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MainViewController *)self model];
  v11 = [v10 selectedOccurrence];

  v13.receiver = self;
  v13.super_class = CompactDayViewController;
  [(DayViewController *)&v13 eventEditViewController:v9 didCompleteWithAction:a4 completionHandler:v8];

  if (!v11)
  {
    v12 = [(MainViewController *)self model];
    [v12 setSelectedOccurrence:0];
  }
}

@end