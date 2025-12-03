@interface CarplayDetailViewController
- (BOOL)organizerCanBeMessaged;
- (CarplayDetailViewController)initWithEvent:(id)event showDayName:(BOOL)name;
- (id)_createTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_donateUserActivity:(id)activity;
- (void)_initActionIdentifiers;
- (void)createAndActivateLayoutConstraints;
- (void)eventStoreChanged:(id)changed;
- (void)pushViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateViewWithEvent;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarplayDetailViewController

- (CarplayDetailViewController)initWithEvent:(id)event showDayName:(BOOL)name
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = CarplayDetailViewController;
  v8 = [(CarplayDetailViewController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_showDayName = name;
    objc_storeStrong(&v8->_event, event);
    v10 = objc_opt_new();
    actionIdentifiers = v9->_actionIdentifiers;
    v9->_actionIdentifiers = v10;

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Event Details" value:&stru_1002133B8 table:0];
    navigationItem = [(CarplayDetailViewController *)v9 navigationItem];
    [navigationItem setTitle:v13];

    [(CarplayDetailViewController *)v9 _initActionIdentifiers];
    [(CarplayDetailViewController *)v9 _donateUserActivity:v9->_event];
    [EKMapsUtilities geocodeEventIfNeeded:eventCopy];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(CarplayDetailViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"eventStoreChanged:" name:EKEventStoreChangedNotification object:0];
  v7.receiver = self;
  v7.super_class = CarplayDetailViewController;
  [(CarplayDetailViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EKEventStoreChangedNotification object:0];
  v6.receiver = self;
  v6.super_class = CarplayDetailViewController;
  [(CarplayDetailViewController *)&v6 viewWillDisappear:disappearCopy];
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
    _createTableView = [(CarplayDetailViewController *)self _createTableView];
    tableView = self->_tableView;
    self->_tableView = _createTableView;

    view = [(CarplayDetailViewController *)self view];
    [view addSubview:self->_tableView];

    [(CarplayDetailViewController *)self createAndActivateLayoutConstraints];
  }
}

- (void)createAndActivateLayoutConstraints
{
  view = [(CarplayDetailViewController *)self view];
  if (CalSystemSolariumEnabled())
  {
    v4 = +[UIColor clearColor];
    [view setBackgroundColor:v4];
  }

  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v17;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v6;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  topAnchor2 = [view topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v9;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:4];
  [v14 activateConstraints:v13];
}

- (BOOL)organizerCanBeMessaged
{
  organizer = [(EKEvent *)self->_event organizer];
  if (organizer)
  {
    organizer2 = [(EKEvent *)self->_event organizer];
    v5 = [organizer2 isCurrentUser] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)eventStoreChanged:(id)changed
{
  if (([(EKEvent *)self->_event refreshIfRefreshableAndNotify:1]& 1) != 0)
  {

    [(CarplayDetailViewController *)self updateViewWithEvent];
  }

  else
  {
    navigationController = [(CarplayDetailViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)updateViewWithEvent
{
  [(CarplayDetailViewController *)self _initActionIdentifiers];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_donateUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilecal"];
  v6 = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:@"com.apple.mobilecal"];
  title = [activityCopy title];
  [v6 setContentDescription:title];

  structuredLocation = [activityCopy structuredLocation];
  v9 = structuredLocation;
  if (structuredLocation)
  {
    title2 = [structuredLocation title];
    [v6 setNamedLocation:title2];

    geoLocation = [v9 geoLocation];
    [geoLocation coordinate];
    v12 = [NSNumber numberWithDouble:?];
    [v6 setLatitude:v12];

    geoLocation2 = [v9 geoLocation];
    [geoLocation2 coordinate];
    v15 = [NSNumber numberWithDouble:v14];
    [v6 setLongitude:v15];

    [v6 setSupportsNavigation:&__kCFBooleanTrue];
  }

  virtualConference = [activityCopy virtualConference];
  firstPhoneNumber = [virtualConference firstPhoneNumber];
  v18 = firstPhoneNumber;
  if (firstPhoneNumber)
  {
    conferenceURLForDisplay = firstPhoneNumber;
  }

  else
  {
    conferenceURLForDisplay = [activityCopy conferenceURLForDisplay];
  }

  v20 = conferenceURLForDisplay;

  if ([v20 cal_hasSchemeTel])
  {
    absoluteString = [v20 absoluteString];
    v23 = absoluteString;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  actionIdentifiers = self->_actionIdentifiers;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](actionIdentifiers, "objectAtIndexedSubscript:", [pathCopy row]);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___DayNameToggleable])
  {
    [v10 setShowDayName:self->_showDayName];
  }

  [v10 setDelegate:self];
  [v10 updateWithEvent:self->_event];

  return v10;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  if ([v6 isSelectable])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v7 cellWasTapped];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)pushViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(CarplayDetailViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

@end