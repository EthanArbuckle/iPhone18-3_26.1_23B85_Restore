@interface MultiDayWeekViewController
- (CGSize)cellSize;
- (MultiDayWeekViewController)initWithModel:(id)model window:(id)window;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)cellFactory;
- (id)dateForWeek:(int64_t)week;
- (id)dayHeaderFrames;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated;
- (void)_calendarModelTimeZoneChanged:(id)changed;
- (void)_significantTimeChanged:(id)changed;
- (void)_updateWeekDayHeaderDayFrames;
- (void)dayNavigationViewController:(id)controller didSelectDate:(id)date;
- (void)displayedDateChanged:(id)changed userInitiated:(BOOL)initiated;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)setDisplayedDate:(id)date forceScroll:(BOOL)scroll animated:(BOOL)animated;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showReminderDetail:(id)detail;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)updatePalette:(id)palette;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MultiDayWeekViewController

- (MultiDayWeekViewController)initWithModel:(id)model window:(id)window
{
  v9.receiver = self;
  v9.super_class = MultiDayWeekViewController;
  v4 = [(WeekViewController *)&v9 initWithModel:model window:window];
  if (v4)
  {
    v4->_numMultiDays = +[MultiDayWeekView numMultiDays];
    v5 = [[DayNavigationViewController alloc] initWithModel:v4->super.super._model];
    scrubberControllerNeue = v4->_scrubberControllerNeue;
    v4->_scrubberControllerNeue = v5;

    cellFactory = [(MultiDayWeekViewController *)v4 cellFactory];
    [(DayNavigationViewController *)v4->_scrubberControllerNeue setCellFactory:cellFactory];

    [(DayNavigationViewController *)v4->_scrubberControllerNeue setDelegate:v4];
    [(DayNavigationViewController *)v4->_scrubberControllerNeue setShowsMultiDay:1];
    [(MultiDayWeekViewController *)v4 addChildViewController:v4->_scrubberControllerNeue];
    [(DayNavigationViewController *)v4->_scrubberControllerNeue didMoveToParentViewController:v4];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v4 viewDidLoad];
  timeView = [(WeekViewController *)self timeView];
  [timeView setOrientation:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v4 viewWillAppear:appear];
  [(WeekViewController *)self _clearSelectedOccurrenceViews];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewController;
  [(MultiDayWeekViewController *)&v4 viewIsAppearing:appearing];
  [(MultiDayWeekViewController *)self ekui_adjustNavAndToolBarToTranslucentGrayStyles];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MultiDayWeekViewController;
  coordinatorCopy = coordinator;
  [(WeekViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074954;
  v8[3] = &unk_10020F240;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)_significantTimeChanged:(id)changed
{
  v7.receiver = self;
  v7.super_class = MultiDayWeekViewController;
  changedCopy = changed;
  [(WeekViewController *)&v7 _significantTimeChanged:changedCopy];
  userInfo = [changedCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  if (([v6 BOOLValue] & 1) != 0 || !v6)
  {
    [(DayNavigationViewController *)self->_scrubberControllerNeue significantTimeChangeOccurred];
  }
}

- (void)_calendarModelTimeZoneChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v4 _calendarModelTimeZoneChanged:changed];
  [(DayNavigationViewController *)self->_scrubberControllerNeue timeZoneChanged];
}

- (id)dateForWeek:(int64_t)week
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  referenceWeekStart = [(WeekViewController *)self referenceWeekStart];
  v7 = referenceWeekStart;
  if (IsLeftToRight)
  {
    v8 = self->_numMultiDays * (week - 27040);
  }

  else
  {
    v8 = -(self->_numMultiDays * (week - 27040));
  }

  v9 = [referenceWeekStart calendarDateByAddingDays:v8];

  return v9;
}

- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [DayViewContainerViewController alloc];
  model = [(WeekViewController *)self model];
  window = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:window];

  navigationController = [(MultiDayWeekViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:animatedCopy];

  return v9;
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v18 showEvent:event animated:animatedCopy showMode:mode context:contextCopy];
  navigationItem = [(MultiDayWeekViewController *)self navigationItem];
  [navigationItem setTitle:0];

  if (!contextCopy || ([contextCopy objectForKeyedSubscript:@"Context_DateSelected"], (displayedDate = objc_claimAutoreleasedReturnValue()) == 0))
  {
    displayedDate = [(WeekViewController *)self displayedDate];
  }

  v13 = displayedDate;
  date = [displayedDate date];

  v15 = CUIKStringForDate();
  parentViewController = [(MultiDayWeekViewController *)self parentViewController];
  navigationItem2 = [parentViewController navigationItem];
  [navigationItem2 setBackButtonTitle:v15];
}

- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventsCopy = events;
  v9 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
  [v9 setPreferModalPresentation:1];
  [v9 setTransitioningDelegate:self];
  [(CUIKCalendarModel *)self->super.super._model setSelectedOccurrences:eventsCopy];

  [(MultiDayWeekViewController *)self showViewController:v9 sender:self animated:animatedCopy completion:0];
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

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [controllerCopy setMinimalMode:0];
    }
  }

  presentedViewController = [(MultiDayWeekViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentedViewController2 = [(MultiDayWeekViewController *)self presentedViewController];
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:presentedViewController2];

    presentedViewController3 = [(MultiDayWeekViewController *)self presentedViewController];
    [presentedViewController3 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = MultiDayWeekViewController;
    [(MainViewController *)&v18 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)displayedDateChanged:(id)changed userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  changedCopy = changed;
  v9.receiver = self;
  v9.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v9 displayedDateChanged:changedCopy userInitiated:initiatedCopy];
  if (initiatedCopy)
  {
    dayScrubberController = [(MultiDayWeekViewController *)self dayScrubberController];
    date = [changedCopy date];
    [dayScrubberController setSelectedDate:date animated:1];
  }
}

- (void)setDisplayedDate:(id)date forceScroll:(BOOL)scroll animated:(BOOL)animated
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = MultiDayWeekViewController;
  dateCopy = date;
  [(WeekViewController *)&v10 setDisplayedDate:dateCopy forceScroll:1 animated:animatedCopy];
  v8 = [(MultiDayWeekViewController *)self dayScrubberController:v10.receiver];
  date = [dateCopy date];

  [v8 setSelectedDate:date animated:animatedCopy];
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  [model setSelectedDate:dateCopy];

  calendarDateForDay = [dateCopy calendarDateForDay];
  displayedDate = [(WeekViewController *)self displayedDate];
  v9 = [calendarDateForDay differenceInDays:displayedDate];

  if (v9 || !animatedCopy)
  {
    if (v9)
    {
      [(WeekViewController *)self setDisplayedDate:dateCopy animated:animatedCopy];
    }
  }

  else
  {
    [(DayNavigationViewController *)self->_scrubberControllerNeue pulseToday];
  }

  [(WeekViewController *)self scrollToCurrentTimeOfDayAnimated:animatedCopy];
}

- (id)cellFactory
{
  v2 = objc_opt_new();

  return v2;
}

- (CGSize)cellSize
{
  weekScrollView = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  [weekScrollView cellSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [(PaletteView *)paletteCopy setWeekdayHeaderVisible:1];
  [(PaletteView *)paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  dayScrubberController = [(MultiDayWeekViewController *)self dayScrubberController];
  [(PaletteView *)paletteCopy setDayScrubberController:dayScrubberController];
  [dayScrubberController setShowsWeekNumberWhenEnabled:0];
  view = [dayScrubberController view];
  [view setNeedsLayout];

  [(PaletteView *)paletteCopy setTodayButtonVisible:0];
  [(PaletteView *)paletteCopy setDateStringVisible:0];
  [(PaletteView *)paletteCopy setDividerLineVisible:1];
  if (CalSolariumEnabled())
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [(PaletteView *)paletteCopy setFocusBannerPlacement:v6];
  [(MultiDayWeekViewController *)self _updateWeekDayHeaderDayFrames];
  [(PaletteView *)paletteCopy sizeToFit];
  [(PaletteView *)paletteCopy frame];
  v8 = v7;
  containingPalette = [(PaletteView *)paletteCopy containingPalette];
  [containingPalette setPreferredHeight:v8];

  palette = self->_palette;
  self->_palette = paletteCopy;
  v11 = paletteCopy;

  [(PaletteView *)v11 setNeedsLayout];
}

- (void)_updateWeekDayHeaderDayFrames
{
  palette = self->_palette;
  dayHeaderFrames = [(MultiDayWeekViewController *)self dayHeaderFrames];
  [(PaletteView *)palette setDayHeaderFrames:dayHeaderFrames];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MultiDayWeekViewController;
  [(WeekViewController *)&v3 viewDidLayoutSubviews];
  [(MultiDayWeekViewController *)self _updateWeekDayHeaderDayFrames];
}

- (id)dayHeaderFrames
{
  v3 = +[NSMutableArray array];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  [(MultiDayWeekViewController *)self cellSize];
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

- (void)dayNavigationViewController:(id)controller didSelectDate:(id)date
{
  model = self->super.super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v9 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  [(MultiDayWeekViewController *)self setDisplayedDate:v9 forceScroll:1 animated:1];
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
  v6 = [EKEventViewController eventDetailViewControllerWithEvent:detailCopy delegate:self context:v7 canvasView:0];

  [v5 pushViewController:v6 animated:0];
  [(MultiDayWeekViewController *)self showViewController:v5 sender:self animated:1 completion:0];
}

@end