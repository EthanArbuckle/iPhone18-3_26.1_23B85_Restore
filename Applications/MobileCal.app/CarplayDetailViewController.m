@interface CarplayDetailViewController
- (BOOL)organizerCanBeMessaged;
- (CarplayDetailViewController)initWithEvent:(id)a3 showDayName:(BOOL)a4;
- (id)_createTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_donateUserActivity:(id)a3;
- (void)_initActionIdentifiers;
- (void)createAndActivateLayoutConstraints;
- (void)eventStoreChanged:(id)a3;
- (void)pushViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateViewWithEvent;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarplayDetailViewController

- (CarplayDetailViewController)initWithEvent:(id)a3 showDayName:(BOOL)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = CarplayDetailViewController;
  v8 = [(CarplayDetailViewController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_showDayName = a4;
    objc_storeStrong(&v8->_event, a3);
    v10 = objc_opt_new();
    actionIdentifiers = v9->_actionIdentifiers;
    v9->_actionIdentifiers = v10;

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Event Details" value:&stru_1002133B8 table:0];
    v14 = [(CarplayDetailViewController *)v9 navigationItem];
    [v14 setTitle:v13];

    [(CarplayDetailViewController *)v9 _initActionIdentifiers];
    [(CarplayDetailViewController *)v9 _donateUserActivity:v9->_event];
    [EKMapsUtilities geocodeEventIfNeeded:v7];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarplayDetailViewController *)self navigationController];
  [v5 setNavigationBarHidden:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"eventStoreChanged:" name:EKEventStoreChangedNotification object:0];
  v7.receiver = self;
  v7.super_class = CarplayDetailViewController;
  [(CarplayDetailViewController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EKEventStoreChangedNotification object:0];
  v6.receiver = self;
  v6.super_class = CarplayDetailViewController;
  [(CarplayDetailViewController *)&v6 viewWillDisappear:v3];
}

- (id)_createTableView
{
  v3 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setDelegate:self];
  [v3 setDataSource:self];
  if (CalSystemSolariumEnabled())
  {
    v4 = +[UIColor clearColor];
    [v3 setBackgroundColor:v4];
  }

  v5 = objc_opt_class();
  v6 = +[(CarplayDetailTableViewCell *)CarplayStaticEventDetailsTableViewCell];
  [v3 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[(CarplayDetailTableViewCell *)CarplayLocationTableViewCell];
  [v3 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = +[(CarplayDetailTableViewCell *)CarplayConferenceTableViewCell];
  [v3 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = +[(CarplayDetailTableViewCell *)CarplayAttendeeTableViewCell];
  [v3 registerClass:v11 forCellReuseIdentifier:v12];

  return v3;
}

- (void)_initActionIdentifiers
{
  [(NSMutableArray *)self->_actionIdentifiers removeAllObjects];
  actionIdentifiers = self->_actionIdentifiers;
  v4 = +[(CarplayDetailTableViewCell *)CarplayStaticEventDetailsTableViewCell];
  [(NSMutableArray *)actionIdentifiers addObject:v4];

  if ([CarplayUtilities eventCanNavigate:self->_event])
  {
    v5 = self->_actionIdentifiers;
    v6 = +[(CarplayDetailTableViewCell *)CarplayLocationTableViewCell];
    [(NSMutableArray *)v5 addObject:v6];
  }

  if ([CarplayUtilities eventCanDialIn:self->_event])
  {
    v7 = self->_actionIdentifiers;
    v8 = +[(CarplayDetailTableViewCell *)CarplayConferenceTableViewCell];
    [(NSMutableArray *)v7 addObject:v8];
  }

  if ([(CarplayDetailViewController *)self organizerCanBeMessaged])
  {
    v9 = self->_actionIdentifiers;
    v10 = +[(CarplayDetailTableViewCell *)CarplayAttendeeTableViewCell];
    [(NSMutableArray *)v9 addObject:v10];
  }

  if (!self->_tableView)
  {
    v11 = [(CarplayDetailViewController *)self _createTableView];
    tableView = self->_tableView;
    self->_tableView = v11;

    v13 = [(CarplayDetailViewController *)self view];
    [v13 addSubview:self->_tableView];

    [(CarplayDetailViewController *)self createAndActivateLayoutConstraints];
  }
}

- (void)createAndActivateLayoutConstraints
{
  v3 = [(CarplayDetailViewController *)self view];
  if (CalSystemSolariumEnabled())
  {
    v4 = +[UIColor clearColor];
    [v3 setBackgroundColor:v4];
  }

  v19 = [(UITableView *)self->_tableView leadingAnchor];
  v20 = [v3 safeAreaLayoutGuide];
  v18 = [v20 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v15 = [(UITableView *)self->_tableView trailingAnchor];
  v16 = [v3 safeAreaLayoutGuide];
  v5 = [v16 trailingAnchor];
  v6 = [v15 constraintEqualToAnchor:v5];
  v21[1] = v6;
  v7 = [(UITableView *)self->_tableView topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[2] = v9;
  v10 = [(UITableView *)self->_tableView bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[3] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:4];
  [v14 activateConstraints:v13];
}

- (BOOL)organizerCanBeMessaged
{
  v3 = [(EKEvent *)self->_event organizer];
  if (v3)
  {
    v4 = [(EKEvent *)self->_event organizer];
    v5 = [v4 isCurrentUser] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)eventStoreChanged:(id)a3
{
  if (([(EKEvent *)self->_event refreshIfRefreshableAndNotify:1]& 1) != 0)
  {

    [(CarplayDetailViewController *)self updateViewWithEvent];
  }

  else
  {
    v5 = [(CarplayDetailViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)updateViewWithEvent
{
  [(CarplayDetailViewController *)self _initActionIdentifiers];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_donateUserActivity:(id)a3
{
  v4 = a3;
  v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilecal"];
  v6 = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:@"com.apple.mobilecal"];
  v7 = [v4 title];
  [v6 setContentDescription:v7];

  v8 = [v4 structuredLocation];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 title];
    [v6 setNamedLocation:v10];

    v11 = [v9 geoLocation];
    [v11 coordinate];
    v12 = [NSNumber numberWithDouble:?];
    [v6 setLatitude:v12];

    v13 = [v9 geoLocation];
    [v13 coordinate];
    v15 = [NSNumber numberWithDouble:v14];
    [v6 setLongitude:v15];

    [v6 setSupportsNavigation:&__kCFBooleanTrue];
  }

  v16 = [v4 virtualConference];
  v17 = [v16 firstPhoneNumber];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v4 conferenceURLForDisplay];
  }

  v20 = v19;

  if ([v20 cal_hasSchemeTel])
  {
    v21 = [v20 absoluteString];
    v23 = v21;
    v22 = [NSArray arrayWithObjects:&v23 count:1];
    [v6 setPhoneNumbers:v22];

    [v6 setSupportsPhoneCall:&__kCFBooleanTrue];
  }

  [v5 setContentAttributeSet:v6];
  [v5 setEligibleForSearch:1];
  [v5 setNeedsSave:1];
  [v5 becomeCurrent];
  [(CarplayDetailViewController *)self setUserActivity:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  actionIdentifiers = self->_actionIdentifiers;
  v7 = a4;
  v8 = a3;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](actionIdentifiers, "objectAtIndexedSubscript:", [v7 row]);
  v10 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___DayNameToggleable])
  {
    [v10 setShowDayName:self->_showDayName];
  }

  [v10 setDelegate:self];
  [v10 updateWithEvent:self->_event];

  return v10;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  if ([v6 isSelectable])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 cellForRowAtIndexPath:v5];
  [v7 cellWasTapped];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (void)pushViewController:(id)a3
{
  v4 = a3;
  v5 = [(CarplayDetailViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

@end