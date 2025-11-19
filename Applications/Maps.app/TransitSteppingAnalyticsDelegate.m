@interface TransitSteppingAnalyticsDelegate
- (void)recordDetailsTapOnTray;
- (void)recordEndSteppingTapOnTray;
- (void)recordEnterGuidanceWithRouteDetails:(id)a3;
- (void)recordOpenRouteClusterActionSheet;
- (void)recordOverviewTapOnTray;
- (void)recordResumeFromOverviewTapOnTray;
- (void)recordSignAutoAdvanceWithRouteDetails:(id)a3;
- (void)recordSwipeToNextSignWithRouteDetails:(id)a3;
- (void)recordSwipeToPreviousSignWithRouteDetails:(id)a3;
- (void)recordTapOnTransitStationPOI;
- (void)recordTapToNextSignWithRouteDetails:(id)a3;
- (void)recordTapToPreviousSignWithRouteDetails:(id)a3;
@end

@implementation TransitSteppingAnalyticsDelegate

- (void)recordEndSteppingTapOnTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3002 onTarget:403 eventValue:0];
}

- (void)recordDetailsTapOnTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3004 onTarget:403 eventValue:0];
}

- (void)recordResumeFromOverviewTapOnTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3051 onTarget:403 eventValue:0];
}

- (void)recordOverviewTapOnTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3050 onTarget:403 eventValue:0];
}

- (void)recordOpenRouteClusterActionSheet
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3037 onTarget:618 eventValue:0];
}

- (void)recordSignAutoAdvanceWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3066 onTarget:618 eventValue:0 routeDetails:v3];
}

- (void)recordEnterGuidanceWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3065 onTarget:618 eventValue:0 routeDetails:v3];
}

- (void)recordTapOnTransitStationPOI
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:1011 onTarget:505 eventValue:0];
}

- (void)recordTapToPreviousSignWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:15 onTarget:618 eventValue:0 routeDetails:v3];
}

- (void)recordTapToNextSignWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:16 onTarget:618 eventValue:0 routeDetails:v3];
}

- (void)recordSwipeToPreviousSignWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:5 onTarget:618 eventValue:0 routeDetails:v3];
}

- (void)recordSwipeToNextSignWithRouteDetails:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6 onTarget:618 eventValue:0 routeDetails:v3];
}

@end