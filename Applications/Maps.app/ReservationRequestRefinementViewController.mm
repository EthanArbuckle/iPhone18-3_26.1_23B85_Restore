@interface ReservationRequestRefinementViewController
- (NSDate)date;
- (ReservationRequestRefinementViewController)initWithDate:(id)date partySize:(unint64_t)size minimumPartySize:(unint64_t)partySize maximumPartySize:(unint64_t)maximumPartySize analyticsCaptor:(id)captor timeZone:(id)zone analyticsBookingSession:(id)session;
- (ReservationRequestRefinementViewControllerDelegate)refinementDelegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (unint64_t)partySize;
- (void)configureNavBar;
- (void)configureTableView;
- (void)datePickerChanged;
- (void)stepperChanged:(id)changed;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ReservationRequestRefinementViewController

- (ReservationRequestRefinementViewControllerDelegate)refinementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_refinementDelegate);

  return WeakRetained;
}

- (NSDate)date
{
  tableView = [(ReservationRequestRefinementViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:1];
  v4 = [tableView cellForRowAtIndexPath:v3];

  objc_opt_class();
  date = 0;
  if (objc_opt_isKindOfClass())
  {
    datePicker = [v4 datePicker];
    date = [datePicker date];
  }

  return date;
}

- (unint64_t)partySize
{
  tableView = [(ReservationRequestRefinementViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [tableView cellForRowAtIndexPath:v4];

  objc_opt_class();
  defaultPartySize = 0;
  if (objc_opt_isKindOfClass())
  {
    stepperControl = [v5 stepperControl];
    [stepperControl value];
    defaultPartySize = v8;

    if (!defaultPartySize)
    {
      defaultPartySize = self->_defaultPartySize;
    }
  }

  return defaultPartySize;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (!section)
  {
    v6 = @"Table Size";
    goto LABEL_5;
  }

  if (section == 1)
  {
    v6 = @"Preferred Date & Time";
LABEL_5:
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v22];

    minimumPartySize = [(ReservationRequestRefinementViewController *)self minimumPartySize];
    stepperControl = [v10 stepperControl];
    [stepperControl setMinimumValue:minimumPartySize];

    maximumPartySize = [(ReservationRequestRefinementViewController *)self maximumPartySize];
    stepperControl2 = [v10 stepperControl];
    [stepperControl2 setMaximumValue:maximumPartySize];

    [v10 updateStepperValueToValue:{-[ReservationRequestRefinementViewController defaultPartySize](self, "defaultPartySize")}];
    stepperControl3 = [v10 stepperControl];
    v19 = stepperControl3;
    v20 = "stepperChanged:";
    goto LABEL_5;
  }

  if ([pathCopy section] == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

    v11 = [NSDate dateWithTimeIntervalSinceNow:60.0];
    datePicker = [v10 datePicker];
    [datePicker setMinimumDate:v11];

    datePicker2 = [v10 datePicker];
    [datePicker2 setMinuteInterval:30];

    timeZone = [(ReservationRequestRefinementViewController *)self timeZone];
    datePicker3 = [v10 datePicker];
    [datePicker3 setTimeZone:timeZone];

    defaultDate = [(ReservationRequestRefinementViewController *)self defaultDate];
    datePicker4 = [v10 datePicker];
    [datePicker4 setDate:defaultDate];

    stepperControl3 = [v10 datePicker];
    v19 = stepperControl3;
    v20 = "datePickerChanged";
LABEL_5:
    [stepperControl3 addTarget:self action:v20 forControlEvents:4096];

    goto LABEL_7;
  }

  v10 = objc_opt_new();
LABEL_7:

  return v10;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row])
  {
    if ([pathCopy row] == 1)
    {
      v5 = 120.0;
    }

    else
    {
      v5 = 1000.0;
    }
  }

  else
  {
    v5 = 120.0;
  }

  return v5;
}

- (void)datePickerChanged
{
  analyticsBookingSession = [(ReservationRequestRefinementViewController *)self analyticsBookingSession];
  [analyticsBookingSession setTappedDatePicker:1];

  analyticsCaptor = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
  [analyticsCaptor captureMoreOptionsSelectDateTime];
}

- (void)stepperChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy value];
  if (v4 <= [(ReservationRequestRefinementViewController *)self previousPartySize])
  {
    [changedCopy value];
    if (v6 >= [(ReservationRequestRefinementViewController *)self previousPartySize])
    {
      goto LABEL_6;
    }

    analyticsCaptor = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
    [analyticsCaptor captureMoreOptionsDecreaseTableSize];
  }

  else
  {
    analyticsCaptor = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
    [analyticsCaptor captureMoreOptionsIncreaseTableSize];
  }

LABEL_6:
  [changedCopy value];
  [(ReservationRequestRefinementViewController *)self setPreviousPartySize:v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = ReservationRequestRefinementViewController;
  [(ReservationRequestRefinementViewController *)&v11 viewWillDisappear:disappear];
  analyticsCaptor = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
  [analyticsCaptor captureMoreOptionsSubmit];

  analyticsBookingSession = [(ReservationRequestRefinementViewController *)self analyticsBookingSession];
  [analyticsBookingSession setCurrentView:5];

  date = [(ReservationRequestRefinementViewController *)self date];
  defaultDate = [(ReservationRequestRefinementViewController *)self defaultDate];
  if (![date isEqualToDate:defaultDate])
  {

    goto LABEL_5;
  }

  partySize = [(ReservationRequestRefinementViewController *)self partySize];
  defaultPartySize = [(ReservationRequestRefinementViewController *)self defaultPartySize];

  if (partySize != defaultPartySize)
  {
LABEL_5:
    refinementDelegate = [(ReservationRequestRefinementViewController *)self refinementDelegate];
    [refinementDelegate reservationRequestRefinementViewControllerDidRefine:self];
  }
}

- (void)configureNavBar
{
  v4 = +[NSBundle mainBundle];
  v3 = [v4 localizedStringForKey:@"reservation_date_and_party_size_key" value:@"localized string not found" table:0];
  [(ReservationRequestRefinementViewController *)self setTitle:v3];
}

- (void)configureTableView
{
  tableView = [(ReservationRequestRefinementViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  tableView2 = [(ReservationRequestRefinementViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView2 registerClass:v8 forCellReuseIdentifier:v10];

  tableView3 = [(ReservationRequestRefinementViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [tableView3 registerClass:v12 forCellReuseIdentifier:v14];

  tableView4 = [(ReservationRequestRefinementViewController *)self tableView];
  [tableView4 setRowHeight:UITableViewAutomaticDimension];

  tableView5 = [(ReservationRequestRefinementViewController *)self tableView];
  [tableView5 setScrollEnabled:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ReservationRequestRefinementViewController;
  [(ReservationRequestRefinementViewController *)&v3 viewDidLoad];
  [(ReservationRequestRefinementViewController *)self configureTableView];
  [(ReservationRequestRefinementViewController *)self configureNavBar];
}

- (ReservationRequestRefinementViewController)initWithDate:(id)date partySize:(unint64_t)size minimumPartySize:(unint64_t)partySize maximumPartySize:(unint64_t)maximumPartySize analyticsCaptor:(id)captor timeZone:(id)zone analyticsBookingSession:(id)session
{
  dateCopy = date;
  captorCopy = captor;
  zoneCopy = zone;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = ReservationRequestRefinementViewController;
  v19 = [(ReservationRequestRefinementViewController *)&v22 initWithStyle:1];
  v20 = v19;
  if (v19)
  {
    [(ReservationRequestRefinementViewController *)v19 setDefaultPartySize:size];
    [(ReservationRequestRefinementViewController *)v20 setDefaultDate:dateCopy];
    [(ReservationRequestRefinementViewController *)v20 setMinimumPartySize:partySize];
    [(ReservationRequestRefinementViewController *)v20 setMaximumPartySize:maximumPartySize];
    [(ReservationRequestRefinementViewController *)v20 setPreviousPartySize:[(ReservationRequestRefinementViewController *)v20 defaultPartySize]];
    [(ReservationRequestRefinementViewController *)v20 setAnalyticsCaptor:captorCopy];
    [(ReservationRequestRefinementViewController *)v20 setTimeZone:zoneCopy];
    [(ReservationRequestRefinementViewController *)v20 setAnalyticsBookingSession:sessionCopy];
  }

  return v20;
}

@end