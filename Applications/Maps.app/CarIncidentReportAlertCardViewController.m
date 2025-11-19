@interface CarIncidentReportAlertCardViewController
- (CarIncidentReportAlertCardViewController)initWithDelegate:(id)a3 incidentLayoutItem:(id)a4 report:(id)a5;
- (CarIncidentReportAlertViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_cancelDismissTimer;
- (void)_dismissTrafficAlert;
- (void)loadView;
- (void)updateIncidentLayoutItem:(id)a3 report:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarIncidentReportAlertCardViewController

- (CarIncidentReportAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  v3 = [v2 preferredFocusEnvironments];

  return v3;
}

- (NSArray)focusOrderSubItems
{
  v2 = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  v3 = [v2 focusOrderSubItems];

  return v3;
}

- (void)_dismissTrafficAlert
{
  [(CarIncidentReportAlertCardViewController *)self _cancelDismissTimer];
  v3 = [(CarIncidentReportAlertCardViewController *)self delegate];
  [v3 trafficAlertCardViewControllerDismiss:self];
}

- (void)_cancelDismissTimer
{
  v3 = [(CarIncidentReportAlertCardViewController *)self dismissTimer];
  [v3 invalidate];

  [(CarIncidentReportAlertCardViewController *)self setDismissTimer:0];
}

- (void)updateIncidentLayoutItem:(id)a3 report:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_report, a4);
  v7 = a4;
  incidentLayoutItem = self->_incidentLayoutItem;
  self->_incidentLayoutItem = v6;
  v9 = v6;

  v10 = self->_incidentLayoutItem;
  v11 = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
  [v11 setIncidentLayoutItem:v10];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarIncidentReportAlertCardViewController;
  [(CarIncidentReportAlertCardViewController *)&v4 viewWillDisappear:a3];
  [(CarIncidentReportAlertCardViewController *)self _cancelDismissTimer];
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CarIncidentReportAlertCardViewController;
  [(CarIncidentReportAlertCardViewController *)&v16 viewDidAppear:a3];
  GEOConfigGetDouble();
  if (v4 > 0.0)
  {
    v5 = v4;
    objc_initWeak(&location, self);
    v6 = [(CarIncidentReportAlertCardViewController *)self trafficAlertView];
    [v6 startProgressAnimationWithDuration:v5];

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
    v9 = [(TrafficIncidentLayoutItem *)self->_incidentLayoutItem incidentTypeAsString];
    [v8 captureUserAction:2152 onTarget:1001 eventValue:v9];
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

- (CarIncidentReportAlertCardViewController)initWithDelegate:(id)a3 incidentLayoutItem:(id)a4 report:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CarIncidentReportAlertCardViewController;
  v11 = [(CarIncidentReportAlertCardViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_incidentLayoutItem, a4);
    objc_storeStrong(&v12->_report, a5);
  }

  return v12;
}

@end