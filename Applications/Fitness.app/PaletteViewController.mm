@interface PaletteViewController
- (PaletteViewController)initWithSizingDelegate:(id)delegate dateProvider:(id)provider pauseRingsCoordinator:(id)coordinator;
- (void)_registerForNotifications;
- (void)currentSelectedDateChanged:(id)changed;
- (void)dealloc;
- (void)paletteDateSelected:(id)selected;
- (void)paletteScrolledInDirection:(BOOL)direction;
- (void)setActivitySummaryProvider:(id)provider;
- (void)setIsExpanded:(BOOL)expanded collapseDayMarkers:(BOOL)markers;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PaletteViewController

- (PaletteViewController)initWithSizingDelegate:(id)delegate dateProvider:(id)provider pauseRingsCoordinator:(id)coordinator
{
  delegateCopy = delegate;
  providerCopy = provider;
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = PaletteViewController;
  v12 = [(PaletteViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sizingDelegate, delegate);
    objc_storeStrong(&v13->_dateProvider, provider);
    objc_storeStrong(&v13->_pauseRingsCoordinator, coordinator);
    [(PaletteViewController *)v13 _registerForNotifications];
  }

  return v13;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PaletteViewController;
  [(PaletteViewController *)&v11 viewDidLoad];
  view = [(PaletteViewController *)self view];
  [view setClipsToBounds:1];

  v4 = objc_alloc_init(PaletteWeekdayHeaderView);
  paletteView = self->_paletteView;
  self->_paletteView = v4;

  [(PaletteWeekdayHeaderView *)self->_paletteView setIsExpanded:1];
  view2 = [(PaletteViewController *)self view];
  [view2 addSubview:self->_paletteView];

  v7 = [[PaletteScrollViewController alloc] initWithPauseRingsCoordinator:self->_pauseRingsCoordinator];
  paletteScrollVC = self->_paletteScrollVC;
  self->_paletteScrollVC = v7;

  [(PaletteScrollViewController *)self->_paletteScrollVC setDelegate:self];
  [(PaletteViewController *)self addChildViewController:self->_paletteScrollVC];
  view3 = [(PaletteViewController *)self view];
  view4 = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  [view3 addSubview:view4];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PaletteViewController;
  [(PaletteViewController *)&v5 viewWillLayoutSubviews];
  paletteView = self->_paletteView;
  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate bounds];
  [(PaletteWeekdayHeaderView *)paletteView setFrame:?];
  view = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate bounds];
  [view setFrame:?];
}

- (void)setActivitySummaryProvider:(id)provider
{
  paletteView = self->_paletteView;
  providerCopy = provider;
  -[PaletteWeekdayHeaderView adjustWeekLabelsByOffset:](paletteView, "adjustWeekLabelsByOffset:", [providerCopy fitnessStartOfWeekOffset]);
  [(PaletteScrollViewController *)self->_paletteScrollVC setActivitySummaryProvider:providerCopy];
}

- (void)_registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"currentSelectedDateChanged:" name:@"FitnessCurrentSelectedDateChangedNotification" object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PaletteViewController;
  [(PaletteViewController *)&v4 dealloc];
}

- (void)currentSelectedDateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentSelectedDate = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
    object2 = [changedCopy object];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    paletteScrollVC = self->_paletteScrollVC;
    if (v8)
    {
      [(PaletteScrollViewController *)paletteScrollVC reloadViewDataAtDate:currentSelectedDate];
    }

    else
    {
      [(PaletteScrollViewController *)paletteScrollVC scrollOrRelayoutWeekIfNeededToDate:currentSelectedDate];
    }

    [(PaletteWeekdayHeaderView *)self->_paletteView highlightWeekdayLabelForDateAndSetDay:currentSelectedDate];
  }
}

- (void)setIsExpanded:(BOOL)expanded collapseDayMarkers:(BOOL)markers
{
  markersCopy = markers;
  expandedCopy = expanded;
  [(PaletteWeekdayHeaderView *)self->_paletteView setIsExpanded:?];
  view = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  v8 = view;
  v9 = 0.0;
  if (expandedCopy)
  {
    v9 = 1.0;
  }

  [view setAlpha:v9];

  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate size];
  if (expandedCopy)
  {
    [(PaletteWeekdayHeaderView *)self->_paletteView setAlpha:1.0];
    paletteView = self->_paletteView;
    currentSelectedDate = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
    [(PaletteWeekdayHeaderView *)paletteView highlightWeekdayLabelForDateAndSetDay:currentSelectedDate];
  }

  else if (markersCopy)
  {
    v11 = self->_paletteView;

    [(PaletteWeekdayHeaderView *)v11 setAlpha:0.0];
  }
}

- (void)paletteScrolledInDirection:(BOOL)direction
{
  if (direction)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  v13 = +[NSCalendar currentCalendar];
  currentSelectedDate = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
  v6 = [v13 dateByAddingUnit:0x2000 value:v4 toDate:currentSelectedDate options:0];

  v7 = +[NSDate date];
  v8 = [v13 startOfDayForDate:v7];

  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v8 timeIntervalSinceReferenceDate];
  if (v10 > v11)
  {
    v12 = v8;

    v6 = v12;
  }

  [(ActivityDateProviding *)self->_dateProvider setWithCurrentSelectedDate:v6 caller:self];
  [(PaletteWeekdayHeaderView *)self->_paletteView highlightWeekdayLabelForDateAndSetDay:v6];
}

- (void)paletteDateSelected:(id)selected
{
  dateProvider = self->_dateProvider;
  selectedCopy = selected;
  [(ActivityDateProviding *)dateProvider setWithCurrentSelectedDate:selectedCopy caller:self];
  [(PaletteWeekdayHeaderView *)self->_paletteView highlightWeekdayLabelForDateAndSetDay:selectedCopy];
}

@end