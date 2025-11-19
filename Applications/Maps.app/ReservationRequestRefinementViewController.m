@interface ReservationRequestRefinementViewController
- (NSDate)date;
- (ReservationRequestRefinementViewController)initWithDate:(id)a3 partySize:(unint64_t)a4 minimumPartySize:(unint64_t)a5 maximumPartySize:(unint64_t)a6 analyticsCaptor:(id)a7 timeZone:(id)a8 analyticsBookingSession:(id)a9;
- (ReservationRequestRefinementViewControllerDelegate)refinementDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (unint64_t)partySize;
- (void)configureNavBar;
- (void)configureTableView;
- (void)datePickerChanged;
- (void)stepperChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ReservationRequestRefinementViewController

- (ReservationRequestRefinementViewControllerDelegate)refinementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_refinementDelegate);

  return WeakRetained;
}

- (NSDate)date
{
  v2 = [(ReservationRequestRefinementViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:1];
  v4 = [v2 cellForRowAtIndexPath:v3];

  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 datePicker];
    v5 = [v6 date];
  }

  return v5;
}

- (unint64_t)partySize
{
  v3 = [(ReservationRequestRefinementViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [v3 cellForRowAtIndexPath:v4];

  objc_opt_class();
  defaultPartySize = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 stepperControl];
    [v7 value];
    defaultPartySize = v8;

    if (!defaultPartySize)
    {
      defaultPartySize = self->_defaultPartySize;
    }
  }

  return defaultPartySize;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (!a4)
  {
    v6 = @"Table Size";
    goto LABEL_5;
  }

  if (a4 == 1)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v10 = [v6 dequeueReusableCellWithIdentifier:v22];

    v23 = [(ReservationRequestRefinementViewController *)self minimumPartySize];
    v24 = [v10 stepperControl];
    [v24 setMinimumValue:v23];

    v25 = [(ReservationRequestRefinementViewController *)self maximumPartySize];
    v26 = [v10 stepperControl];
    [v26 setMaximumValue:v25];

    [v10 updateStepperValueToValue:{-[ReservationRequestRefinementViewController defaultPartySize](self, "defaultPartySize")}];
    v18 = [v10 stepperControl];
    v19 = v18;
    v20 = "stepperChanged:";
    goto LABEL_5;
  }

  if ([v7 section] == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 dequeueReusableCellWithIdentifier:v9];

    v11 = [NSDate dateWithTimeIntervalSinceNow:60.0];
    v12 = [v10 datePicker];
    [v12 setMinimumDate:v11];

    v13 = [v10 datePicker];
    [v13 setMinuteInterval:30];

    v14 = [(ReservationRequestRefinementViewController *)self timeZone];
    v15 = [v10 datePicker];
    [v15 setTimeZone:v14];

    v16 = [(ReservationRequestRefinementViewController *)self defaultDate];
    v17 = [v10 datePicker];
    [v17 setDate:v16];

    v18 = [v10 datePicker];
    v19 = v18;
    v20 = "datePickerChanged";
LABEL_5:
    [v18 addTarget:self action:v20 forControlEvents:4096];

    goto LABEL_7;
  }

  v10 = objc_opt_new();
LABEL_7:

  return v10;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 row])
  {
    if ([v4 row] == 1)
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
  v3 = [(ReservationRequestRefinementViewController *)self analyticsBookingSession];
  [v3 setTappedDatePicker:1];

  v4 = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
  [v4 captureMoreOptionsSelectDateTime];
}

- (void)stepperChanged:(id)a3
{
  v8 = a3;
  [v8 value];
  if (v4 <= [(ReservationRequestRefinementViewController *)self previousPartySize])
  {
    [v8 value];
    if (v6 >= [(ReservationRequestRefinementViewController *)self previousPartySize])
    {
      goto LABEL_6;
    }

    v5 = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
    [v5 captureMoreOptionsDecreaseTableSize];
  }

  else
  {
    v5 = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
    [v5 captureMoreOptionsIncreaseTableSize];
  }

LABEL_6:
  [v8 value];
  [(ReservationRequestRefinementViewController *)self setPreviousPartySize:v7];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ReservationRequestRefinementViewController;
  [(ReservationRequestRefinementViewController *)&v11 viewWillDisappear:a3];
  v4 = [(ReservationRequestRefinementViewController *)self analyticsCaptor];
  [v4 captureMoreOptionsSubmit];

  v5 = [(ReservationRequestRefinementViewController *)self analyticsBookingSession];
  [v5 setCurrentView:5];

  v6 = [(ReservationRequestRefinementViewController *)self date];
  v7 = [(ReservationRequestRefinementViewController *)self defaultDate];
  if (![v6 isEqualToDate:v7])
  {

    goto LABEL_5;
  }

  v8 = [(ReservationRequestRefinementViewController *)self partySize];
  v9 = [(ReservationRequestRefinementViewController *)self defaultPartySize];

  if (v8 != v9)
  {
LABEL_5:
    v10 = [(ReservationRequestRefinementViewController *)self refinementDelegate];
    [v10 reservationRequestRefinementViewControllerDidRefine:self];
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
  v3 = [(ReservationRequestRefinementViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(ReservationRequestRefinementViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];

  v11 = [(ReservationRequestRefinementViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v11 registerClass:v12 forCellReuseIdentifier:v14];

  v15 = [(ReservationRequestRefinementViewController *)self tableView];
  [v15 setRowHeight:UITableViewAutomaticDimension];

  v16 = [(ReservationRequestRefinementViewController *)self tableView];
  [v16 setScrollEnabled:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ReservationRequestRefinementViewController;
  [(ReservationRequestRefinementViewController *)&v3 viewDidLoad];
  [(ReservationRequestRefinementViewController *)self configureTableView];
  [(ReservationRequestRefinementViewController *)self configureNavBar];
}

- (ReservationRequestRefinementViewController)initWithDate:(id)a3 partySize:(unint64_t)a4 minimumPartySize:(unint64_t)a5 maximumPartySize:(unint64_t)a6 analyticsCaptor:(id)a7 timeZone:(id)a8 analyticsBookingSession:(id)a9
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = ReservationRequestRefinementViewController;
  v19 = [(ReservationRequestRefinementViewController *)&v22 initWithStyle:1];
  v20 = v19;
  if (v19)
  {
    [(ReservationRequestRefinementViewController *)v19 setDefaultPartySize:a4];
    [(ReservationRequestRefinementViewController *)v20 setDefaultDate:v15];
    [(ReservationRequestRefinementViewController *)v20 setMinimumPartySize:a5];
    [(ReservationRequestRefinementViewController *)v20 setMaximumPartySize:a6];
    [(ReservationRequestRefinementViewController *)v20 setPreviousPartySize:[(ReservationRequestRefinementViewController *)v20 defaultPartySize]];
    [(ReservationRequestRefinementViewController *)v20 setAnalyticsCaptor:v16];
    [(ReservationRequestRefinementViewController *)v20 setTimeZone:v17];
    [(ReservationRequestRefinementViewController *)v20 setAnalyticsBookingSession:v18];
  }

  return v20;
}

@end