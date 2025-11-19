@interface RestaurantReservationConfirmationViewController
- (NSDateFormatter)dateFormatter;
- (NSNumberFormatter)numberFormatter;
- (RestaurantReservationConfirmationViewController)initWithUserBooking:(id)a3 mapItem:(id)a4 appName:(id)a5 analyticsCaptor:(id)a6;
- (RestaurantReservationConfirmationViewControllerDelegate)reservationDelegate;
- (id)confirmationSubtitleTextForUserBooking:(id)a3;
- (id)dayAndRestaurantDescriptionForUserBooking:(id)a3;
- (id)headerTextForUserBookingStatus:(unint64_t)a3;
- (id)tableDescriptionForUserBooking:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timeAndTableDescriptionForUserBooking:(id)a3;
- (id)userInfoStringForGuest:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)buildSections;
- (void)checkUserBookingForRefresh:(id)a3;
- (void)configureHeaderCell:(id)a3;
- (void)configureTableView;
- (void)registerCellClasses;
- (void)requestRefresh;
- (void)reservationConfirmationHeaderCellAccessoryButtonWasTapped:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setUserBooking:(id)a3;
- (void)setupConstraints;
- (void)updateTheme;
- (void)viewDidLoad;
@end

@implementation RestaurantReservationConfirmationViewController

- (RestaurantReservationConfirmationViewControllerDelegate)reservationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reservationDelegate);

  return WeakRetained;
}

- (void)requestRefresh
{
  v3 = [(RestaurantReservationConfirmationViewController *)self reservationDelegate];
  [v3 restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:self];
}

- (void)checkUserBookingForRefresh:(id)a3
{
  if (![a3 status])
  {

    [(RestaurantReservationConfirmationViewController *)self performSelector:"requestRefresh" withObject:0 afterDelay:20.0];
  }
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:1];
    [(NSDateFormatter *)self->_dateFormatter setDateStyle:0];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)setUserBooking:(id)a3
{
  v6 = a3;
  [(RestaurantReservationConfirmationViewController *)self checkUserBookingForRefresh:v6];
  if (([v6 isEqual:self->_userBooking] & 1) == 0)
  {
    objc_storeStrong(&self->_userBooking, a3);
    v5 = [(RestaurantReservationConfirmationViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    v5 = v6;
  }
}

- (id)tableDescriptionForUserBooking:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_name_table_format" value:@"localized string not found" table:0];

  v7 = objc_alloc_init(NSPersonNameComponentsFormatter);
  [v7 setStyle:0];
  v8 = [v4 guest];
  v9 = [v8 nameComponents];
  v10 = [v7 stringFromPersonNameComponents:v9];

  v11 = [NSString alloc];
  v12 = [(RestaurantReservationConfirmationViewController *)self numberFormatter];
  v13 = [v4 partySize];

  v14 = [NSNumber numberWithUnsignedInteger:v13];
  v15 = [v12 stringFromNumber:v14];
  v16 = [v11 initWithFormat:v6, v10, v15];

  return v16;
}

- (id)dayAndRestaurantDescriptionForUserBooking:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_day_restaurant_name_format_key" value:@"localized string not found" table:0];

  v7 = [NSString alloc];
  v8 = [(RestaurantReservationConfirmationViewController *)self mapItem];
  v9 = [v8 timeZone];
  v10 = [v4 bookingDate];

  v11 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:v9 bookingDate:v10];
  v12 = [(RestaurantReservationConfirmationViewController *)self mapItem];
  v13 = [v12 name];
  v14 = [v7 initWithFormat:v6, v11, v13];

  return v14;
}

- (id)timeAndTableDescriptionForUserBooking:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationConfirmationViewController *)self mapItem];
  v6 = [v5 timeZone];
  v7 = [(RestaurantReservationConfirmationViewController *)self dateFormatter];
  [v7 setTimeZone:v6];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"reservation_date_table_size_key" value:@"localized string not found" table:0];

  v10 = [(RestaurantReservationConfirmationViewController *)self dateFormatter];
  v11 = [v4 bookingDate];
  v12 = [v10 stringFromDate:v11];

  v13 = [NSString alloc];
  v14 = [v4 partySize];

  v15 = [v13 initWithFormat:v9, v12, v14];

  return v15;
}

- (id)confirmationSubtitleTextForUserBooking:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationConfirmationViewController *)self dayAndRestaurantDescriptionForUserBooking:v4];
  v6 = [(RestaurantReservationConfirmationViewController *)self timeAndTableDescriptionForUserBooking:v4];

  v7 = [NSString stringWithFormat:@"%@\n%@", v5, v6];

  return v7;
}

- (id)userInfoStringForGuest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 nameComponents];

  if (v5)
  {
    v6 = [v3 nameComponents];
    v7 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v6 style:3 options:0];

    if ([v7 length])
    {
      [v4 addObject:v7];
    }
  }

  v8 = [v3 phoneNumber];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 phoneNumber];
    [v4 addObject:v10];
  }

  v11 = [v3 emailAddress];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v3 emailAddress];
    [v4 addObject:v13];
  }

  v14 = [v4 componentsJoinedByString:@"\n"];

  return v14;
}

- (id)headerTextForUserBookingStatus:(unint64_t)a3
{
  if (a3 <= 2)
  {
    v4 = off_101637358[a3];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (void)reservationConfirmationHeaderCellAccessoryButtonWasTapped:(id)a3
{
  v4 = [(RestaurantReservationConfirmationViewController *)self analyticsCaptor];
  [v4 captureBookedChangeReservation];

  v5 = [(RestaurantReservationConfirmationViewController *)self reservationDelegate];
  [v5 restaurantReservationConfirmationViewControllerDidSelectEditReservation:self];
}

- (void)updateTheme
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(RestaurantReservationConfirmationViewController *)self buttons];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(RestaurantReservationConfirmationViewController *)self theme];
        v10 = [v9 controlTintColor];
        [v8 setTintColor:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)configureHeaderCell:(id)a3
{
  v4 = a3;
  [v4 setSubtitleType:1];
  v5 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v6 = -[RestaurantReservationConfirmationViewController headerTextForUserBookingStatus:](self, "headerTextForUserBookingStatus:", [v5 status]);
  v7 = [v4 mainLabel];
  [v7 setText:v6];

  v8 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v9 = [(RestaurantReservationConfirmationViewController *)self confirmationSubtitleTextForUserBooking:v8];
  v10 = [v4 subLabel];
  [v10 setText:v9];

  [v4 setActionDelegate:self];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"reservation_change_reservation_key" value:@"localized string not found" table:0];
  [v4 setAccessoryButtonTitle:v12];

  v13 = [v4 contentView];
  [v13 layoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v4 contentView];

  [v20 setLayoutMargins:{v15, v17, 30.0, v19}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v16 = [v6 dequeueReusableCellWithIdentifier:v20];

    [(RestaurantReservationConfirmationViewController *)self configureHeaderCell:v16];
    goto LABEL_13;
  }

  v8 = [v7 section];
  v9 = v8 - 1;
  if (v8 < 1 || (-[RestaurantReservationConfirmationViewController sections](self, "sections"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9 >= v11))
  {
    v16 = objc_opt_new();
    goto LABEL_13;
  }

  v12 = [(RestaurantReservationConfirmationViewController *)self sections];
  v13 = [v12 objectAtIndexedSubscript:v9];

  if ([v7 row])
  {
    if ([v7 row] != 1)
    {
      v16 = objc_opt_new();
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v6 dequeueReusableCellWithIdentifier:v15];

    v17 = [v13 sectionText];
    v18 = [v16 details];
    [v18 setText:v17];
  }

  else
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v16 = [v6 dequeueReusableCellWithIdentifier:v22];

    v23 = [v13 sectionTitle];
    [v16 setText:v23];

    v17 = +[UIColor secondaryLabelColor];
    [v16 setTextColor:v17];
  }

LABEL_12:
LABEL_13:

  return v16;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(RestaurantReservationConfirmationViewController *)self sections];
  v4 = [v3 count];

  return v4 + 1;
}

- (void)buildSections
{
  v40 = [NSMutableArray arrayWithCapacity:5];
  v3 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v4 = [v3 advisementText];
  v5 = [v4 length];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"reservations_from_restaurant_key" value:@"localized string not found" table:0];
    [v6 setSectionTitle:v8];

    v9 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    v10 = [v9 advisementText];
    [v6 setSectionText:v10];

    [v40 addObject:v6];
  }

  v11 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v12 = [v11 guest];
  v13 = [(RestaurantReservationConfirmationViewController *)self userInfoStringForGuest:v12];
  v14 = [v13 length];

  if (v14)
  {
    v15 = objc_opt_new();
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"reservations_your_info_key" value:@"localized string not found" table:0];
    [v15 setSectionTitle:v17];

    v18 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    v19 = [v18 guest];
    v20 = [(RestaurantReservationConfirmationViewController *)self userInfoStringForGuest:v19];
    [v15 setSectionText:v20];

    [v40 addObject:v15];
  }

  v21 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v22 = [v21 selectedOffer];
  v23 = [v22 offerDetailText];
  v24 = [v23 length];

  if (v24)
  {
    v25 = objc_opt_new();
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"reservations_selected_offer_key" value:@"localized string not found" table:0];
    [v25 setSectionTitle:v27];

    v28 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    v29 = [v28 selectedOffer];
    v30 = [v29 offerTitleText];
    [v25 setSectionText:v30];

    [v40 addObject:v25];
  }

  v31 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v32 = [v31 guestProvidedSpecialRequestText];
  v33 = [v32 length];

  if (v33)
  {
    v34 = objc_opt_new();
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"reservations_special_request_key" value:@"localized string not found" table:0];
    [v34 setSectionTitle:v36];

    v37 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    v38 = [v37 guestProvidedSpecialRequestText];
    [v34 setSectionText:v38];

    [v40 addObject:v34];
  }

  v39 = [NSArray arrayWithArray:v40];
  [(RestaurantReservationConfirmationViewController *)self setSections:v39];
}

- (void)setupConstraints
{
  v3 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v22 = [v24 leadingAnchor];
  v23 = [(RestaurantReservationConfirmationViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v17 = [v19 trailingAnchor];
  v18 = [(RestaurantReservationConfirmationViewController *)self view];
  v16 = [v18 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v4 = [v14 bottomAnchor];
  v5 = [(RestaurantReservationConfirmationViewController *)self view];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v25[2] = v7;
  v8 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v9 = [v8 topAnchor];
  v10 = [(RestaurantReservationConfirmationViewController *)self view];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)registerCellClasses
{
  v3 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];

  v14 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v14 registerClass:v11 forCellReuseIdentifier:v13];
}

- (void)configureTableView
{
  v3 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RestaurantReservationConfirmationViewController *)self setTableView:v3];

  v4 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v4 setDelegate:self];

  v5 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v7 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v8 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v8 setEstimatedSectionHeaderHeight:0.0];

  v9 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v9 setSeparatorStyle:0];

  v10 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v10 setAllowsSelection:0];

  v12 = [(RestaurantReservationConfirmationViewController *)self view];
  v11 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [v12 addSubview:v11];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RestaurantReservationConfirmationViewController;
  [(RestaurantReservationConfirmationViewController *)&v3 viewDidLoad];
  [(RestaurantReservationConfirmationViewController *)self configureTableView];
  [(RestaurantReservationConfirmationViewController *)self registerCellClasses];
  [(RestaurantReservationConfirmationViewController *)self setupConstraints];
  [(RestaurantReservationConfirmationViewController *)self buildSections];
}

- (RestaurantReservationConfirmationViewController)initWithUserBooking:(id)a3 mapItem:(id)a4 appName:(id)a5 analyticsCaptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = RestaurantReservationConfirmationViewController;
  v14 = [(RestaurantReservationConfirmationViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(RestaurantReservationConfirmationViewController *)v14 setUserBooking:v10];
    [(RestaurantReservationConfirmationViewController *)v15 setMapItem:v11];
    [(RestaurantReservationConfirmationViewController *)v15 setAppName:v12];
    [(RestaurantReservationConfirmationViewController *)v15 setAnalyticsCaptor:v13];
  }

  return v15;
}

@end