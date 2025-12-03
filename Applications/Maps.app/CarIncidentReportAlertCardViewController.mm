@interface CarIncidentReportAlertCardViewController
- (CarIncidentReportAlertCardViewController)initWithDelegate:(id)delegate incidentLayoutItem:(id)item report:(id)report;
- (CarIncidentReportAlertViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_cancelDismissTimer;
- (void)_dismissTrafficAlert;
- (void)loadView;
- (void)updateIncidentLayoutItem:(id)item report:(id)report;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarIncidentReportAlertCardViewController

- (CarIncidentReportAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  trafficAlertView = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  preferredFocusEnvironments = [trafficAlertView preferredFocusEnvironments];

  return preferredFocusEnvironments;
}

- (NSArray)focusOrderSubItems
{
  trafficAlertView = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  focusOrderSubItems = [trafficAlertView focusOrderSubItems];

  return focusOrderSubItems;
}

- (void)_dismissTrafficAlert
{
  [(CarIncidentReportAlertCardViewController *)self _cancelDismissTimer];
  delegate = [(CarIncidentReportAlertCardViewController *)self delegate];
  [delegate trafficAlertCardViewControllerDismiss:self];
}

- (void)_cancelDismissTimer
{
  dismissTimer = [(CarIncidentReportAlertCardViewController *)self dismissTimer];
  [dismissTimer invalidate];

  [(CarIncidentReportAlertCardViewController *)self setDismissTimer:0];
}

- (void)updateIncidentLayoutItem:(id)item report:(id)report
{
  itemCopy = item;
  objc_storeStrong(&self->_report, report);
  reportCopy = report;
  incidentLayoutItem = self->_incidentLayoutItem;
  self->_incidentLayoutItem = itemCopy;
  v9 = itemCopy;

  v10 = self->_incidentLayoutItem;
  trafficAlertView = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  [trafficAlertView setIncidentLayoutItem:v10];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CarIncidentReportAlertCardViewController;
  [(CarIncidentReportAlertCardViewController *)&v4 viewWillDisappear:disappear];
  [(CarIncidentReportAlertCardViewController *)self _cancelDismissTimer];
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = CarIncidentReportAlertCardViewController;
  [(CarIncidentReportAlertCardViewController *)&v16 viewDidAppear:appear];
  GEOConfigGetDouble();
  if (v4 > 0.0)
  {
    v5 = v4;
    objc_initWeak(&location, self);
    trafficAlertView = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
    [trafficAlertView startProgressAnimationWithDuration:v5];

    [(CarIncidentReportAlertCardViewController *)self _cancelDismissTimer];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100C8032C;
    v13 = &unk_101661BC8;
    objc_copyWeak(&v14, &location);
    v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v10 block:v5];
    [(CarIncidentReportAlertCardViewController *)self setDismissTimer:v7, v10, v11, v12, v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (![(TrafficIncidentReport *)self->_report isSiriContext])
  {
    v8 = +[MKMapService sharedService];
    incidentTypeAsString = [(TrafficIncidentLayoutItem *)self->_incidentLayoutItem incidentTypeAsString];
    [v8 captureUserAction:2152 onTarget:1001 eventValue:incidentTypeAsString];
  }

  [(TrafficIncidentReport *)self->_report submitWithCompletionHandler:0];
}

- (void)loadView
{
  v3 = [[CarTrafficAlertView alloc] initWithDelegate:self incidentLayoutItem:self->_incidentLayoutItem];
  [(CarTrafficAlertView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarTrafficAlertView *)v3 setProgressionHidden:0];
  [(CarIncidentReportAlertCardViewController *)self setView:v3];
  [(CarIncidentReportAlertCardViewController *)self setTrafficAlertView:v3];
}

- (CarIncidentReportAlertCardViewController)initWithDelegate:(id)delegate incidentLayoutItem:(id)item report:(id)report
{
  delegateCopy = delegate;
  itemCopy = item;
  reportCopy = report;
  v14.receiver = self;
  v14.super_class = CarIncidentReportAlertCardViewController;
  v11 = [(CarIncidentReportAlertCardViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_incidentLayoutItem, item);
    objc_storeStrong(&v12->_report, report);
  }

  return v12;
}

@end