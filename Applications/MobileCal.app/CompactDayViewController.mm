@interface CompactDayViewController
- (BOOL)shouldShowWeekDayLabel;
- (BOOL)showWeekdayLabel;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)cellFactory;
- (id)dayHeaderFrames;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)occurrenceViewForEvent:(id)event;
- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated;
- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated;
- (int64_t)contentInsetAdjustmentBehavior;
- (void)_receivedSelectedDateChangeNotification:(id)notification;
- (void)_showWeekdayLabelPreferenceChanged;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)date;
- (void)_updateWeekDayHeaderDayFrames;
- (void)dayViewController:(id)controller didStartDeceleratingTargettingDate:(id)date;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)loadView;
- (void)showEditViewController:(id)controller;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CompactDayViewController

- (void)_updateWeekDayHeaderDayFrames
{
  v2 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1);
  dayHeaderFrames = [(CompactDayViewController *)self dayHeaderFrames];
  [v2 setDayHeaderFrames:dayHeaderFrames];
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

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v4 viewIsAppearing:appearing];
  [(CompactDayViewController *)self ekui_adjustNavAndToolBarToTranslucentGrayStyles];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CompactDayViewController;
  [(DayViewController *)&v10 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(DayViewController *)self day];
    date = [v8 date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CompactDayViewController;
  [(DayViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  if (height > width)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  dayView = [(DayViewController *)self dayView];
  [dayView validateInterfaceOrientationWithFutureOrientation:v7];
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(CompactDayViewController *)self navigationController];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (CalSolariumEnabled() & 1) == 0)
  {
    [navigationController updateBackButtonToDate:dateCopy];
  }
}

- (void)_receivedSelectedDateChangeNotification:(id)notification
{
  v6.receiver = self;
  v6.super_class = CompactDayViewController;
  [(DayViewController *)&v6 _receivedSelectedDateChangeNotification:notification];
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  [(CompactDayViewController *)self _updateBackButtonOnBackViewControllerToDate:selectedDate];
}

- (BOOL)shouldShowWeekDayLabel
{
  v2 = CUIKGetOverlayCalendar();
  if (v2)
  {
    showWeekNumbers = 1;
  }

  else
  {
    v4 = +[CUIKPreferences sharedPreferences];
    showWeekNumbers = [v4 showWeekNumbers];
  }

  return showWeekNumbers;
}

- (void)_showWeekdayLabelPreferenceChanged
{
  v2.receiver = self;
  v2.super_class = CompactDayViewController;
  [(DayViewController *)&v2 _showWeekdayLabelPreferenceChanged];
}

- (void)dayViewController:(id)controller didStartDeceleratingTargettingDate:(id)date
{
  v11.receiver = self;
  v11.super_class = CompactDayViewController;
  dateCopy = date;
  [(DayViewController *)&v11 dayViewController:controller didStartDeceleratingTargettingDate:dateCopy];
  v7 = [(MainViewController *)self model:v11.receiver];
  calendar = [v7 calendar];
  timeZone = [calendar timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:dateCopy timeZone:timeZone];

  [(CompactDayViewController *)self _updateBackButtonOnBackViewControllerToDate:v10];
}

- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  eventCopy = event;
  parentViewController = [(CompactDayViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  dayComponents = [selectedDate dayComponents];
  model2 = [(MainViewController *)self model];
  calendar = [model2 calendar];
  v15 = CUIKStringForDateComponents();
  [navigationItem setBackButtonTitle:v15];

  v16 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];

  v17 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v16 canvasView:0];

  [(CompactDayViewController *)self ekui_adjustToolBarToTransparentStyle];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    [v17 ekui_adjustNavBarToTransparentStyle];
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  navigationItem2 = [(CompactDayViewController *)self navigationItem];
  [navigationItem2 setTitle:v19];

  [(CompactDayViewController *)self showViewController:v17 sender:self animated:animatedCopy completion:0];

  return v17;
}

- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated
{
  animatedCopy = animated;
  eventsCopy = events;
  v7 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];

  [v7 setTransitioningDelegate:self];
  [v7 setPreferModalPresentation:1];
  [(CompactDayViewController *)self showViewController:v7 sender:self animated:animatedCopy completion:0];

  return v7;
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

  presentedViewController = [(CompactDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentedViewController2 = [(CompactDayViewController *)self presentedViewController];
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:presentedViewController2];

    presentedViewController3 = [(CompactDayViewController *)self presentedViewController];
    [presentedViewController3 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CompactDayViewController;
    [(MainViewController *)&v18 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)showEditViewController:(id)controller
{
  controllerCopy = controller;
  event = [(DockableEventContainerController *)controllerCopy event];
  isNew = [event isNew];

  if (isNew)
  {
    [(DockableEventContainerController *)controllerCopy setModalPresentationDelegate:self];
  }

  v6 = controllerCopy;
  if (CalDraftUIEnabled())
  {
    v6 = controllerCopy;
    if ([(DockableEventContainerController *)controllerCopy conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
    {
      v6 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:controllerCopy];
    }
  }

  navigationController = [(CompactDayViewController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (id)occurrenceViewForEvent:(id)event
{
  eventCopy = event;
  dayView = [(DayViewController *)self dayView];
  v6 = [dayView occurrenceViewForEvent:eventCopy];

  return v6;
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

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setTodayButtonVisible:0];
  [paletteCopy setDateStringVisible:0];
  [paletteCopy setDividerLineVisible:1];
  if (CalSolariumEnabled())
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [paletteCopy setFocusBannerPlacement:v5];
  v8.receiver = self;
  v8.super_class = CompactDayViewController;
  [(DayViewController *)&v8 updatePalette:paletteCopy];
  [(CompactDayViewController *)self _updateWeekDayHeaderDayFrames];
  v6 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1);
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) = paletteCopy;
  v7 = paletteCopy;

  [v7 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v3 viewDidLayoutSubviews];
  [(CompactDayViewController *)self _updateWeekDayHeaderDayFrames];
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = CompactDayViewController;
  [(CompactDayViewController *)&v8 willMoveToParentViewController:?];
  if (controller)
  {
    model = [(MainViewController *)self model];
    selectedOccurrence = [model selectedOccurrence];

    if (selectedOccurrence)
    {
      model2 = [(MainViewController *)self model];
      [model2 setSelectedOccurrence:0];
    }
  }
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  v13.receiver = self;
  v13.super_class = CompactDayViewController;
  [(DayViewController *)&v13 eventEditViewController:controllerCopy didCompleteWithAction:action completionHandler:handlerCopy];

  if (!selectedOccurrence)
  {
    model2 = [(MainViewController *)self model];
    [model2 setSelectedOccurrence:0];
  }
}

@end