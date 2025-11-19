@interface CarIncidentReportModeController
- (CarIncidentReportModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (id)_cardTitle;
- (id)desiredCards;
- (void)_commonInit;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)reportIncidentViewController:(id)a3 didSelectReport:(id)a4;
- (void)setDisplayedFromMapControl:(BOOL)a3;
- (void)setIncidentLayoutItem:(id)a3 report:(id)a4;
- (void)setState:(int64_t)a3;
- (void)trafficAlertCardViewControllerDismiss:(id)a3;
@end

@implementation CarIncidentReportModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  v2 = [(CarIncidentReportModeController *)self chromeViewController];
  v3 = [v2 itemRepresentingOverlays];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (NSArray)preferredCarFocusEnvironments
{
  v3 = [(CarIncidentReportModeController *)self state];
  if (v3 == 2)
  {
    v4 = [(CarIncidentReportModeController *)self carIncidentReportAlertViewController];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v9 = v5;
    v6 = &v9;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(CarIncidentReportModeController *)self reportViewController];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v10 = v5;
    v6 = &v10;
LABEL_5:
    v7 = [NSArray arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  v7 = &__NSArray0__struct;
LABEL_7:

  return v7;
}

- (void)trafficAlertCardViewControllerDismiss:(id)a3
{
  v4 = +[CarChromeModeCoordinator sharedInstance];
  [v4 popFromContext:self];
}

- (void)reportIncidentViewController:(id)a3 didSelectReport:(id)a4
{
  v9 = a4;
  objc_storeStrong(&self->_selectedIncidentLayoutItem, a4);
  v6 = [[TrafficIncidentReport alloc] initWithUserLocation:self->_incidentLocation type:[(TrafficIncidentLayoutItem *)self->_selectedIncidentLayoutItem incidentType] userPath:5];
  [(TrafficIncidentReport *)v6 setReportedFromCarplay:1];
  if (self->_carIncidentReportAlertViewController)
  {
    carIncidentReportAlertViewController = [(CarIncidentReportModeController *)self carIncidentReportAlertViewController];
    [carIncidentReportAlertViewController updateIncidentLayoutItem:self->_selectedIncidentLayoutItem report:v6];
  }

  else
  {
    v8 = [[CarIncidentReportAlertCardViewController alloc] initWithDelegate:self incidentLayoutItem:self->_selectedIncidentLayoutItem report:v6];
    carIncidentReportAlertViewController = self->_carIncidentReportAlertViewController;
    self->_carIncidentReportAlertViewController = v8;
  }

  [(CarIncidentReportModeController *)self setState:2];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = [(CarIncidentReportModeController *)self carChromeViewController:a3];
  [v5 setHardwareBackButtonBehavior:0 forContext:self];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v18 = a3;
  v5 = [(CarIncidentReportModeController *)self _cardTitle];
  [v18 setTitle:v5];

  v6 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v6 setEdgePosition:0];
  [(CarCardLayout *)v6 setCornerPosition:4];
  [(CarCardLayout *)v6 setPrimaryAxis:1];
  [(CarCardLayout *)v6 setPinnedEdges:0];
  [(CarCardLayout *)v6 setPrimaryAxisFillMode:0];
  LODWORD(v7) = 1.0;
  [(CarCardLayout *)v6 setPrimaryAxisFillModePriority:v7];
  [(CarCardLayout *)v6 setSecondaryAxisFillMode:2];
  LODWORD(v8) = 1148846080;
  [(CarCardLayout *)v6 setSecondaryAxisFillModePriority:v8];
  [(CarCardLayout *)v6 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v6 setFlipForRightHandDrive:1];
  v9 = v6;
  v10 = [(CarCardLayout *)v9 primaryAxis];
  v11 = [(CarCardLayout *)v9 cornerPosition];
  if (v10 == 1)
  {
    if (v11 == 4 || [(CarCardLayout *)v9 cornerPosition]== 1 || [(CarCardLayout *)v9 edgePosition]== 2)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if ([(CarCardLayout *)v9 cornerPosition]== 8 || [(CarCardLayout *)v9 cornerPosition]== 2 || [(CarCardLayout *)v9 edgePosition]== 8)
    {
      v12 |= 2uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 1)
    {
      v12 |= 4uLL;
    }

    v13 = v12 | ([(CarCardLayout *)v9 edgePosition]== 4);
  }

  else
  {
    v13 = v11 == 4 || [(CarCardLayout *)v9 cornerPosition]== 8 || [(CarCardLayout *)v9 edgePosition]== 4;
    if ([(CarCardLayout *)v9 cornerPosition]== 1 || [(CarCardLayout *)v9 cornerPosition]== 2 || [(CarCardLayout *)v9 edgePosition]== 1)
    {
      v13 |= 4uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 2)
    {
      v13 |= 8uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 8)
    {
      v13 |= 2uLL;
    }
  }

  [(CarCardLayout *)v9 setEdgesAffectingMapInsets:v13];
  [(CarCardLayout *)v9 setHorizontallyCenterMapInsets:0];
  [v18 setLayout:v9];

  v14 = [(CarIncidentReportModeController *)self state];
  if (v14 == 2)
  {
    [v18 setContent:self->_carIncidentReportAlertViewController];
    v17 = 0;
LABEL_32:
    [v18 setAccessoryType:v17];
    v16 = v18;
    goto LABEL_33;
  }

  v15 = v14 == 1;
  v16 = v18;
  if (v15)
  {
    [v18 setContent:self->_reportViewController];
    if ([(CarIncidentReportModeController *)self displayedFromMapControl])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)setDisplayedFromMapControl:(BOOL)a3
{
  if (self->_displayedFromMapControl != a3)
  {
    self->_displayedFromMapControl = a3;
    v4 = [(CarIncidentReportModeController *)self chromeViewController];
    v5 = [v4 isTopContext:self];

    if (v5)
    {
      v6 = [(CarIncidentReportModeController *)self chromeViewController];
      [v6 setNeedsUpdateComponent:@"cards" animated:1];
    }
  }
}

- (id)_cardTitle
{
  if ([(CarIncidentReportModeController *)self state]== 1)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Report Incident [Nav value:Tray table:{CarPlay]", @"localized string not found", 0}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"Unknown";
      if (a3 == 1)
      {
        v6 = @"IncidentList";
      }

      if (a3 == 2)
      {
        v6 = @"IncidentReport";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "CarReportIncidentModeController: setState: %@, -> updating cardsOverlay.", &v8, 0xCu);
    }

    v7 = [(CarIncidentReportModeController *)self carChromeViewController];
    [v7 updateCardsForContext:self animated:1];
  }
}

- (void)setIncidentLayoutItem:(id)a3 report:(id)a4
{
  objc_storeStrong(&self->_selectedIncidentLayoutItem, a3);
  v7 = a3;
  v8 = a4;
  v9 = [[CarIncidentReportAlertCardViewController alloc] initWithDelegate:self incidentLayoutItem:self->_selectedIncidentLayoutItem report:v8];

  carIncidentReportAlertViewController = self->_carIncidentReportAlertViewController;
  self->_carIncidentReportAlertViewController = v9;

  [(CarIncidentReportModeController *)self setState:2];
}

- (void)_commonInit
{
  self->_state = 1;
  v3 = [[_TtC4Maps31CarReportIncidentViewController alloc] initWithDelegate:self];
  reportViewController = self->_reportViewController;
  self->_reportViewController = v3;

  v7 = +[MKLocationManager sharedLocationManager];
  v5 = [v7 currentLocation];
  incidentLocation = self->_incidentLocation;
  self->_incidentLocation = v5;
}

- (CarIncidentReportModeController)init
{
  v5.receiver = self;
  v5.super_class = CarIncidentReportModeController;
  v2 = [(CarIncidentReportModeController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CarIncidentReportModeController *)v2 _commonInit];
  }

  return v3;
}

@end