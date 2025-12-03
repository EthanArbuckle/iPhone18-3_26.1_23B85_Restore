@interface TransitSteppingAnalyticsDelegate
- (void)recordDetailsTapOnTray;
- (void)recordEndSteppingTapOnTray;
- (void)recordEnterGuidanceWithRouteDetails:(id)details;
- (void)recordOpenRouteClusterActionSheet;
- (void)recordOverviewTapOnTray;
- (void)recordResumeFromOverviewTapOnTray;
- (void)recordSignAutoAdvanceWithRouteDetails:(id)details;
- (void)recordSwipeToNextSignWithRouteDetails:(id)details;
- (void)recordSwipeToPreviousSignWithRouteDetails:(id)details;
- (void)recordTapOnTransitStationPOI;
- (void)recordTapToNextSignWithRouteDetails:(id)details;
- (void)recordTapToPreviousSignWithRouteDetails:(id)details;
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

- (void)recordSignAutoAdvanceWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3066 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

- (void)recordEnterGuidanceWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3065 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

- (void)recordTapOnTransitStationPOI
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:1011 onTarget:505 eventValue:0];
}

- (void)recordTapToPreviousSignWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:15 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

- (void)recordTapToNextSignWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:16 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

- (void)recordSwipeToPreviousSignWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:5 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

- (void)recordSwipeToNextSignWithRouteDetails:(id)details
{
  detailsCopy = details;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6 onTarget:618 eventValue:0 routeDetails:detailsCopy];
}

@end