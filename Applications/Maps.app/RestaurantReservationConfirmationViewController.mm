@interface RestaurantReservationConfirmationViewController
- (NSDateFormatter)dateFormatter;
- (NSNumberFormatter)numberFormatter;
- (RestaurantReservationConfirmationViewController)initWithUserBooking:(id)booking mapItem:(id)item appName:(id)name analyticsCaptor:(id)captor;
- (RestaurantReservationConfirmationViewControllerDelegate)reservationDelegate;
- (id)confirmationSubtitleTextForUserBooking:(id)booking;
- (id)dayAndRestaurantDescriptionForUserBooking:(id)booking;
- (id)headerTextForUserBookingStatus:(unint64_t)status;
- (id)tableDescriptionForUserBooking:(id)booking;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timeAndTableDescriptionForUserBooking:(id)booking;
- (id)userInfoStringForGuest:(id)guest;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)buildSections;
- (void)checkUserBookingForRefresh:(id)refresh;
- (void)configureHeaderCell:(id)cell;
- (void)configureTableView;
- (void)registerCellClasses;
- (void)requestRefresh;
- (void)reservationConfirmationHeaderCellAccessoryButtonWasTapped:(id)tapped;
- (void)setMapItem:(id)item;
- (void)setUserBooking:(id)booking;
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
  reservationDelegate = [(RestaurantReservationConfirmationViewController *)self reservationDelegate];
  [reservationDelegate restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:self];
}

- (void)checkUserBookingForRefresh:(id)refresh
{
  if (![refresh status])
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

- (void)setUserBooking:(id)booking
{
  bookingCopy = booking;
  [(RestaurantReservationConfirmationViewController *)self checkUserBookingForRefresh:bookingCopy];
  if (([bookingCopy isEqual:self->_userBooking] & 1) == 0)
  {
    objc_storeStrong(&self->_userBooking, booking);
    tableView = [(RestaurantReservationConfirmationViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    itemCopy = v6;
  }
}

- (id)tableDescriptionForUserBooking:(id)booking
{
  bookingCopy = booking;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_name_table_format" value:@"localized string not found" table:0];

  v7 = objc_alloc_init(NSPersonNameComponentsFormatter);
  [v7 setStyle:0];
  guest = [bookingCopy guest];
  nameComponents = [guest nameComponents];
  v10 = [v7 stringFromPersonNameComponents:nameComponents];

  v11 = [NSString alloc];
  numberFormatter = [(RestaurantReservationConfirmationViewController *)self numberFormatter];
  partySize = [bookingCopy partySize];

  v14 = [NSNumber numberWithUnsignedInteger:partySize];
  v15 = [numberFormatter stringFromNumber:v14];
  v16 = [v11 initWithFormat:v6, v10, v15];

  return v16;
}

- (id)dayAndRestaurantDescriptionForUserBooking:(id)booking
{
  bookingCopy = booking;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_day_restaurant_name_format_key" value:@"localized string not found" table:0];

  v7 = [NSString alloc];
  mapItem = [(RestaurantReservationConfirmationViewController *)self mapItem];
  timeZone = [mapItem timeZone];
  bookingDate = [bookingCopy bookingDate];

  v11 = [NSDate _maps_dayDescriptionStringShortDescription:1 timeZone:timeZone bookingDate:bookingDate];
  mapItem2 = [(RestaurantReservationConfirmationViewController *)self mapItem];
  name = [mapItem2 name];
  v14 = [v7 initWithFormat:v6, v11, name];

  return v14;
}

- (id)timeAndTableDescriptionForUserBooking:(id)booking
{
  bookingCopy = booking;
  mapItem = [(RestaurantReservationConfirmationViewController *)self mapItem];
  timeZone = [mapItem timeZone];
  dateFormatter = [(RestaurantReservationConfirmationViewController *)self dateFormatter];
  [dateFormatter setTimeZone:timeZone];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"reservation_date_table_size_key" value:@"localized string not found" table:0];

  dateFormatter2 = [(RestaurantReservationConfirmationViewController *)self dateFormatter];
  bookingDate = [bookingCopy bookingDate];
  v12 = [dateFormatter2 stringFromDate:bookingDate];

  v13 = [NSString alloc];
  partySize = [bookingCopy partySize];

  v15 = [v13 initWithFormat:v9, v12, partySize];

  return v15;
}

- (id)confirmationSubtitleTextForUserBooking:(id)booking
{
  bookingCopy = booking;
  v5 = [(RestaurantReservationConfirmationViewController *)self dayAndRestaurantDescriptionForUserBooking:bookingCopy];
  v6 = [(RestaurantReservationConfirmationViewController *)self timeAndTableDescriptionForUserBooking:bookingCopy];

  v7 = [NSString stringWithFormat:@"%@\n%@", v5, v6];

  return v7;
}

- (id)userInfoStringForGuest:(id)guest
{
  guestCopy = guest;
  v4 = objc_opt_new();
  nameComponents = [guestCopy nameComponents];

  if (nameComponents)
  {
    nameComponents2 = [guestCopy nameComponents];
    v7 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([v7 length])
    {
      [v4 addObject:v7];
    }
  }

  phoneNumber = [guestCopy phoneNumber];
  v9 = [phoneNumber length];

  if (v9)
  {
    phoneNumber2 = [guestCopy phoneNumber];
    [v4 addObject:phoneNumber2];
  }

  emailAddress = [guestCopy emailAddress];
  v12 = [emailAddress length];

  if (v12)
  {
    emailAddress2 = [guestCopy emailAddress];
    [v4 addObject:emailAddress2];
  }

  v14 = [v4 componentsJoinedByString:@"\n"];

  return v14;
}

- (id)headerTextForUserBookingStatus:(unint64_t)status
{
  if (status <= 2)
  {
    v4 = off_101637358[status];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (void)reservationConfirmationHeaderCellAccessoryButtonWasTapped:(id)tapped
{
  analyticsCaptor = [(RestaurantReservationConfirmationViewController *)self analyticsCaptor];
  [analyticsCaptor captureBookedChangeReservation];

  reservationDelegate = [(RestaurantReservationConfirmationViewController *)self reservationDelegate];
  [reservationDelegate restaurantReservationConfirmationViewControllerDidSelectEditReservation:self];
}

- (void)updateTheme
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buttons = [(RestaurantReservationConfirmationViewController *)self buttons];
  v4 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        theme = [(RestaurantReservationConfirmationViewController *)self theme];
        controlTintColor = [theme controlTintColor];
        [v8 setTintColor:controlTintColor];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)configureHeaderCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setSubtitleType:1];
  userBooking = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v6 = -[RestaurantReservationConfirmationViewController headerTextForUserBookingStatus:](self, "headerTextForUserBookingStatus:", [userBooking status]);
  mainLabel = [cellCopy mainLabel];
  [mainLabel setText:v6];

  userBooking2 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  v9 = [(RestaurantReservationConfirmationViewController *)self confirmationSubtitleTextForUserBooking:userBooking2];
  subLabel = [cellCopy subLabel];
  [subLabel setText:v9];

  [cellCopy setActionDelegate:self];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"reservation_change_reservation_key" value:@"localized string not found" table:0];
  [cellCopy setAccessoryButtonTitle:v12];

  contentView = [cellCopy contentView];
  [contentView layoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  contentView2 = [cellCopy contentView];

  [contentView2 setLayoutMargins:{v15, v17, 30.0, v19}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v20];

    [(RestaurantReservationConfirmationViewController *)self configureHeaderCell:v16];
    goto LABEL_13;
  }

  section = [pathCopy section];
  v9 = section - 1;
  if (section < 1 || (-[RestaurantReservationConfirmationViewController sections](self, "sections"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9 >= v11))
  {
    v16 = objc_opt_new();
    goto LABEL_13;
  }

  sections = [(RestaurantReservationConfirmationViewController *)self sections];
  v13 = [sections objectAtIndexedSubscript:v9];

  if ([pathCopy row])
  {
    if ([pathCopy row] != 1)
    {
      v16 = objc_opt_new();
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];

    sectionText = [v13 sectionText];
    details = [v16 details];
    [details setText:sectionText];
  }

  else
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v22];

    sectionTitle = [v13 sectionTitle];
    [v16 setText:sectionTitle];

    sectionText = +[UIColor secondaryLabelColor];
    [v16 setTextColor:sectionText];
  }

LABEL_12:
LABEL_13:

  return v16;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(RestaurantReservationConfirmationViewController *)self sections];
  v4 = [sections count];

  return v4 + 1;
}

- (void)buildSections
{
  v40 = [NSMutableArray arrayWithCapacity:5];
  userBooking = [(RestaurantReservationConfirmationViewController *)self userBooking];
  advisementText = [userBooking advisementText];
  v5 = [advisementText length];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"reservations_from_restaurant_key" value:@"localized string not found" table:0];
    [v6 setSectionTitle:v8];

    userBooking2 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    advisementText2 = [userBooking2 advisementText];
    [v6 setSectionText:advisementText2];

    [v40 addObject:v6];
  }

  userBooking3 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  guest = [userBooking3 guest];
  v13 = [(RestaurantReservationConfirmationViewController *)self userInfoStringForGuest:guest];
  v14 = [v13 length];

  if (v14)
  {
    v15 = objc_opt_new();
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"reservations_your_info_key" value:@"localized string not found" table:0];
    [v15 setSectionTitle:v17];

    userBooking4 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    guest2 = [userBooking4 guest];
    v20 = [(RestaurantReservationConfirmationViewController *)self userInfoStringForGuest:guest2];
    [v15 setSectionText:v20];

    [v40 addObject:v15];
  }

  userBooking5 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  selectedOffer = [userBooking5 selectedOffer];
  offerDetailText = [selectedOffer offerDetailText];
  v24 = [offerDetailText length];

  if (v24)
  {
    v25 = objc_opt_new();
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"reservations_selected_offer_key" value:@"localized string not found" table:0];
    [v25 setSectionTitle:v27];

    userBooking6 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    selectedOffer2 = [userBooking6 selectedOffer];
    offerTitleText = [selectedOffer2 offerTitleText];
    [v25 setSectionText:offerTitleText];

    [v40 addObject:v25];
  }

  userBooking7 = [(RestaurantReservationConfirmationViewController *)self userBooking];
  guestProvidedSpecialRequestText = [userBooking7 guestProvidedSpecialRequestText];
  v33 = [guestProvidedSpecialRequestText length];

  if (v33)
  {
    v34 = objc_opt_new();
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"reservations_special_request_key" value:@"localized string not found" table:0];
    [v34 setSectionTitle:v36];

    userBooking8 = [(RestaurantReservationConfirmationViewController *)self userBooking];
    guestProvidedSpecialRequestText2 = [userBooking8 guestProvidedSpecialRequestText];
    [v34 setSectionText:guestProvidedSpecialRequestText2];

    [v40 addObject:v34];
  }

  v39 = [NSArray arrayWithArray:v40];
  [(RestaurantReservationConfirmationViewController *)self setSections:v39];
}

- (void)setupConstraints
{
  tableView = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(RestaurantReservationConfirmationViewController *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  view = [(RestaurantReservationConfirmationViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  tableView3 = [(RestaurantReservationConfirmationViewController *)self tableView];
  trailingAnchor = [tableView3 trailingAnchor];
  view2 = [(RestaurantReservationConfirmationViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v15;
  tableView4 = [(RestaurantReservationConfirmationViewController *)self tableView];
  bottomAnchor = [tableView4 bottomAnchor];
  view3 = [(RestaurantReservationConfirmationViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[2] = v7;
  tableView5 = [(RestaurantReservationConfirmationViewController *)self tableView];
  topAnchor = [tableView5 topAnchor];
  view4 = [(RestaurantReservationConfirmationViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)registerCellClasses
{
  tableView = [(RestaurantReservationConfirmationViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  tableView2 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView2 registerClass:v8 forCellReuseIdentifier:v10];

  tableView3 = [(RestaurantReservationConfirmationViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [tableView3 registerClass:v11 forCellReuseIdentifier:v13];
}

- (void)configureTableView
{
  v3 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RestaurantReservationConfirmationViewController *)self setTableView:v3];

  tableView = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView4 setSectionHeaderHeight:UITableViewAutomaticDimension];

  tableView5 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView5 setEstimatedSectionHeaderHeight:0.0];

  tableView6 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView6 setSeparatorStyle:0];

  tableView7 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [tableView7 setAllowsSelection:0];

  view = [(RestaurantReservationConfirmationViewController *)self view];
  tableView8 = [(RestaurantReservationConfirmationViewController *)self tableView];
  [view addSubview:tableView8];
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

- (RestaurantReservationConfirmationViewController)initWithUserBooking:(id)booking mapItem:(id)item appName:(id)name analyticsCaptor:(id)captor
{
  bookingCopy = booking;
  itemCopy = item;
  nameCopy = name;
  captorCopy = captor;
  v17.receiver = self;
  v17.super_class = RestaurantReservationConfirmationViewController;
  v14 = [(RestaurantReservationConfirmationViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(RestaurantReservationConfirmationViewController *)v14 setUserBooking:bookingCopy];
    [(RestaurantReservationConfirmationViewController *)v15 setMapItem:itemCopy];
    [(RestaurantReservationConfirmationViewController *)v15 setAppName:nameCopy];
    [(RestaurantReservationConfirmationViewController *)v15 setAnalyticsCaptor:captorCopy];
  }

  return v15;
}

@end