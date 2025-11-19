@interface PaletteViewController
- (PaletteViewController)initWithSizingDelegate:(id)a3 dateProvider:(id)a4 pauseRingsCoordinator:(id)a5;
- (void)_registerForNotifications;
- (void)currentSelectedDateChanged:(id)a3;
- (void)dealloc;
- (void)paletteDateSelected:(id)a3;
- (void)paletteScrolledInDirection:(BOOL)a3;
- (void)setActivitySummaryProvider:(id)a3;
- (void)setIsExpanded:(BOOL)a3 collapseDayMarkers:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PaletteViewController

- (PaletteViewController)initWithSizingDelegate:(id)a3 dateProvider:(id)a4 pauseRingsCoordinator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PaletteViewController;
  v12 = [(PaletteViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sizingDelegate, a3);
    objc_storeStrong(&v13->_dateProvider, a4);
    objc_storeStrong(&v13->_pauseRingsCoordinator, a5);
    [(PaletteViewController *)v13 _registerForNotifications];
  }

  return v13;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PaletteViewController;
  [(PaletteViewController *)&v11 viewDidLoad];
  v3 = [(PaletteViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = objc_alloc_init(PaletteWeekdayHeaderView);
  paletteView = self->_paletteView;
  self->_paletteView = v4;

  [(PaletteWeekdayHeaderView *)self->_paletteView setIsExpanded:1];
  v6 = [(PaletteViewController *)self view];
  [v6 addSubview:self->_paletteView];

  v7 = [[PaletteScrollViewController alloc] initWithPauseRingsCoordinator:self->_pauseRingsCoordinator];
  paletteScrollVC = self->_paletteScrollVC;
  self->_paletteScrollVC = v7;

  [(PaletteScrollViewController *)self->_paletteScrollVC setDelegate:self];
  [(PaletteViewController *)self addChildViewController:self->_paletteScrollVC];
  v9 = [(PaletteViewController *)self view];
  v10 = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  [v9 addSubview:v10];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PaletteViewController;
  [(PaletteViewController *)&v5 viewWillLayoutSubviews];
  paletteView = self->_paletteView;
  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate bounds];
  [(PaletteWeekdayHeaderView *)paletteView setFrame:?];
  v4 = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate bounds];
  [v4 setFrame:?];
}

- (void)setActivitySummaryProvider:(id)a3
{
  paletteView = self->_paletteView;
  v5 = a3;
  -[PaletteWeekdayHeaderView adjustWeekLabelsByOffset:](paletteView, "adjustWeekLabelsByOffset:", [v5 fitnessStartOfWeekOffset]);
  [(PaletteScrollViewController *)self->_paletteScrollVC setActivitySummaryProvider:v5];
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

- (void)currentSelectedDateChanged:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
    v7 = [v10 object];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    paletteScrollVC = self->_paletteScrollVC;
    if (v8)
    {
      [(PaletteScrollViewController *)paletteScrollVC reloadViewDataAtDate:v6];
    }

    else
    {
      [(PaletteScrollViewController *)paletteScrollVC scrollOrRelayoutWeekIfNeededToDate:v6];
    }

    [(PaletteWeekdayHeaderView *)self->_paletteView highlightWeekdayLabelForDateAndSetDay:v6];
  }
}

- (void)setIsExpanded:(BOOL)a3 collapseDayMarkers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(PaletteWeekdayHeaderView *)self->_paletteView setIsExpanded:?];
  v7 = [(PaletteScrollViewController *)self->_paletteScrollVC view];
  v8 = v7;
  v9 = 0.0;
  if (v5)
  {
    v9 = 1.0;
  }

  [v7 setAlpha:v9];

  [(CHPaletteViewControllerSizingDelegate *)self->_sizingDelegate size];
  if (v5)
  {
    [(PaletteWeekdayHeaderView *)self->_paletteView setAlpha:1.0];
    paletteView = self->_paletteView;
    v12 = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
    [(PaletteWeekdayHeaderView *)paletteView highlightWeekdayLabelForDateAndSetDay:v12];
  }

  else if (v4)
  {
    v11 = self->_paletteView;

    [(PaletteWeekdayHeaderView *)v11 setAlpha:0.0];
  }
}

- (void)paletteScrolledInDirection:(BOOL)a3
{
  if (a3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  v13 = +[NSCalendar currentCalendar];
  v5 = [(ActivityDateProviding *)self->_dateProvider currentSelectedDate];
  v6 = [v13 dateByAddingUnit:0x2000 value:v4 toDate:v5 options:0];

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

- (void)paletteDateSelected:(id)a3
{
  dateProvider = self->_dateProvider;
  v5 = a3;
  [(ActivityDateProviding *)dateProvider setWithCurrentSelectedDate:v5 caller:self];
  [(PaletteWeekdayHeaderView *)self->_paletteView highlightWeekdayLabelForDateAndSetDay:v5];
}

@end